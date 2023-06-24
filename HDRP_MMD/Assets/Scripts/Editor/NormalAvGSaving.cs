
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using System.IO;

public class NormalAvGSaving : EditorWindow
{
    public static string outputPath= @"Assets/ArtAssets/PrivateAssets/OutputMeshs";
    public static string basePath = @"Assets/ArtAssets/PrivateAssets/Avatar";
    [MenuItem("Tools/ModelExchange")]
    static void Init()
    {
        // Get existing open window or if none, make a new one:
        NormalAvGSaving window = (NormalAvGSaving)GetWindow(typeof(NormalAvGSaving));
        window.Show();
    }

    void OnGUI()
    {
        EditorGUILayout.BeginHorizontal();
        EditorGUILayout.LabelField("选择修改模型",GUILayout.Width(80));
        basePath = EditorGUILayout.TextField(basePath);
        if (GUILayout.Button("...", GUILayout.ExpandWidth(false)))
        {
            basePath = EditorUtility.OpenFilePanel("选择HLOD根目录", basePath, "prefab");
            //如果再assets中，查找根目录进行替换
            basePath = basePath.Replace(Application.dataPath, "Assets");
        }
        EditorGUILayout.EndHorizontal();

        if (GUILayout.Button("转法线", GUILayout.Height(40)))
        {
           if(basePath.ToLower().EndsWith(".prefab")){
               SaveNormal(basePath);
           }    
        }   
    }

    Dictionary<int, int> vertexIndex = new Dictionary<int, int>();
    List<int> vertexIndexList = new List<int>();
    void SaveNormal(string path){
        //GameObject curMesh=AssetDatabase.LoadAssetAtPath<GameObject>(path);
        var name=path.Split('.')[path.Split('.').Length-1];
        var rootPath= path.Substring(0,path.Length-name.Length-1);
        DirectoryInfo root = new DirectoryInfo("Assets");
        ignoreLength = root.FullName.Length - 6;
        string truePath = root.FullName + (rootPath + "/").Substring(6);
        if (!Directory.Exists(truePath))
        {
            Directory.CreateDirectory(truePath);
        }
        GameObject go = AssetDatabase.LoadAssetAtPath<GameObject>(path);
        var goInstance = Instantiate(go);

        SkinnedMeshRenderer[] meshRenderer = goInstance.GetComponentsInChildren<SkinnedMeshRenderer>();
        foreach (var meshr in meshRenderer)
        {
            Mesh mesh = Mesh.Instantiate(meshr.sharedMesh);
            SaveToVertexColor(ref mesh);
            string meshPath = rootPath + "/" + meshr.sharedMesh.name+".mesh";
            AssetDatabase.DeleteAsset(meshPath);
            AssetDatabase.CreateAsset(mesh, meshPath);
            meshr.sharedMesh = mesh;
        }
        PrefabUtility.SaveAsPrefabAsset(goInstance, path);
        DestroyImmediate(goInstance, true);
    }

    float max = 0;
    private int ignoreLength;

    private void SaveToVertexColor(ref Mesh mesh)
    {
        //var normalizeNormal = new List<Vector3>();
        //for (var j = 0; j < mesh.normals.Length; j++)
        //{
        //    normalizeNormal.Add(mesh.normals[j].normalized);
        //}
        //mesh.SetNormals(normalizeNormal);
        //mesh.RecalculateTangents();
        //normalizeNormal.Clear();

        //var normalizeTangent = new List<Vector4>();
        //for (var j = 0; j < mesh.normals.Length; j++)
        //{
        //    var x=Vector3.Dot(mesh.normals[j],mesh.tangents[j]);

        //    var tangent =new Vector3(mesh.tangents[j].x, mesh.tangents[j].y, mesh.tangents[j].z) - x * mesh.normals[j];
        //    tangent.Normalize();
        //    normalizeTangent.Add(new Vector4(tangent.x, tangent.y, tangent.z, mesh.tangents[j].w));
        //}
        //mesh.SetTangents(normalizeTangent);

        EditorUtility.DisplayProgressBar("step1", "查重", 0);
        //Vector3是值类型，可以直接做key
        //建立顶点序号和控制点序号映射关系，便于找到相同点
        var ControlPointsHashset = new List<Vector3>();
        var ControlPointsList = new List<int>();
        for (var j = 0; j < mesh.vertexCount; j++)
        { 
            if (!ControlPointsHashset.Contains(mesh.vertices[j]))
            {
                ControlPointsHashset.Add(mesh.vertices[j]);
                ControlPointsList.Add(ControlPointsHashset.Count-1);
            }
            else
            {
                ControlPointsList.Add(ControlPointsHashset.IndexOf(mesh.vertices[j]));
            }
        }

        mesh.RecalculateTangents();
        EditorUtility.DisplayProgressBar("step2", "存角度", 0.25f);
        List<List<Vector3>> VertexNormalsGroup=new List<List<Vector3>>(ControlPointsHashset.Count);
        List<List<float>> VertexAngleWeightsGroup=new List<List<float>>(ControlPointsHashset.Count);
        List<Vector3> VertexAVGNormals=new List<Vector3>(ControlPointsHashset.Count);
        for (var i = 0; i < ControlPointsHashset.Count; i++)
        {
            VertexNormalsGroup.Add(null);
            VertexAngleWeightsGroup.Add(null);
        }

        //从face开始遍历，为了角度加权
        for (var j = 0; j < mesh.triangles.Length / 3; j++)
        {
            //面法线都一样，只计算一次
            int indexA = ControlPointsList[mesh.triangles[3 * j]];
            int indexB = ControlPointsList[mesh.triangles[3 * j + 1]];
            int indexC = ControlPointsList[mesh.triangles[3 * j + 2]];
            Vector3 vertexA = ControlPointsHashset[indexA];
            Vector3 vertexB = ControlPointsHashset[indexB];
            Vector3 vertexC = ControlPointsHashset[indexC];
            //模型太小了，算出法线直接等于0了，这不行
            var edgeA = vertexB*1000 - vertexA * 1000;
            edgeA.Normalize();
            var edgeB = vertexC * 1000 - vertexB * 1000;
            edgeB.Normalize();
            //叉乘算出面法线
            Vector3 faceNormal = Vector3.Cross(edgeA, edgeB);
            faceNormal.Normalize();

            //Angle of vertexA
            float cosAngleA = Vector3.Dot((vertexB * 1000 - vertexA * 1000).normalized, (vertexC * 1000 - vertexA * 1000).normalized);
            float angleWeightA = (180f) / Mathf.PI * Mathf.Acos(cosAngleA);

            //Angle of vertexB
            float cosAngleB = Vector3.Dot((vertexA * 1000 - vertexB * 1000).normalized, (vertexC * 1000 - vertexB * 1000).normalized);
            float angleWeightB = (180f) / Mathf.PI * Mathf.Acos(cosAngleB);

            //Angle of vertexA
            float cosAngleC = Vector3.Dot((vertexB * 1000 - vertexC * 1000).normalized, (vertexA * 1000 - vertexC * 1000).normalized);
            float angleWeightC = (180f) / Mathf.PI * Mathf.Acos(cosAngleC);

            if ((VertexNormalsGroup[indexA] == null) || VertexNormalsGroup[indexA].Count == 0)
            {
                List<float> AngleWeights = new List<float>();
                AngleWeights.Add(angleWeightA);
                VertexAngleWeightsGroup[indexA] = AngleWeights;

                List<Vector3> Normals = new List<Vector3>();
                Normals.Add(faceNormal);
                VertexNormalsGroup[indexA] = Normals;
            }
            else
            {
                VertexAngleWeightsGroup[indexA].Add(angleWeightA);
                VertexNormalsGroup[indexA].Add(faceNormal);
            }

            if ((VertexNormalsGroup[indexB] == null) || VertexNormalsGroup[indexB].Count == 0)
            {
                List<float> AngleWeights = new List<float>();
                AngleWeights.Add(angleWeightB);
                VertexAngleWeightsGroup[indexB] = AngleWeights;

                List<Vector3> Normals = new List<Vector3>();
                Normals.Add(faceNormal);
                VertexNormalsGroup[indexB] = Normals;
            }
            else
            {
                VertexAngleWeightsGroup[indexB].Add(angleWeightB);
                VertexNormalsGroup[indexB].Add(faceNormal);
            }

            if ((VertexNormalsGroup[indexC] == null) || VertexNormalsGroup[indexC].Count == 0)
            {
                List<float> AngleWeights = new List<float>();
                AngleWeights.Add(angleWeightC);
                VertexAngleWeightsGroup[indexC] = AngleWeights;

                List<Vector3> Normals = new List<Vector3>();
                Normals.Add(faceNormal);
                VertexNormalsGroup[indexC] = Normals;
            }
            else
            {
                VertexAngleWeightsGroup[indexC].Add(angleWeightC);
                VertexNormalsGroup[indexC].Add(faceNormal);
            }
        }


        EditorUtility.DisplayProgressBar("step3", "加权平均", 0.5f);
        //计算角度加权平均
        for (int i = 0; i < VertexNormalsGroup.Count; i++)
        {
            Vector3 angleWeightedNormal = Vector3.zero;
            List<Vector3> normalList = VertexNormalsGroup[i];
            List<float> angleList = VertexAngleWeightsGroup[i];
            float angleTotal = 0;
            for (int j = 0; j < normalList.Count; j++)
            {
                angleWeightedNormal += normalList[j] * angleList[j];
                angleTotal += angleList[j];
            }
            VertexAVGNormals.Add((angleWeightedNormal/ angleTotal).normalized);
        }
        List<Vector3> newNormal = new List<Vector3>();
        for (var j = 0; j < mesh.vertexCount; j++)
        {
            newNormal.Add(VertexAVGNormals[ControlPointsList[j]]);
        }

        EditorUtility.DisplayProgressBar("step4", "计算切空间", 0.75f);
        var colors = new Color[mesh.vertexCount];
        var recentColor = mesh.colors;
        var mNormals = mesh.normals;
        var mTangents = mesh.tangents;
        for (var j = 0; j < mesh.vertexCount; j++)
        {
            var curNormal = newNormal[j];
            //转到切线空间 并且设置成[0,1]范围
            var mNormal = (mNormals[j]);
            var mTangent = (mTangents[j]);
            var mBinormal = (Vector3.Cross(mNormal, new Vector3(mTangent.x, mTangent.y, mTangent.z)) * mTangent.w);
            //tbn矩阵


            //投影到切线空间

            float x = Vector3.Dot(mTangent, curNormal) ;
            float y = Vector3.Dot(mBinormal, curNormal) ;
            float z = Vector3.Dot(mNormal, curNormal) ;
            Vector3 b =new Vector3(x, y, z);
            b = b * 0.5f + new Vector3(0.5f, 0.5f, 0.5f);
            //z一定大于0.5，可以由xy求出
            //因此color的ba通道存原来颜色
            if (recentColor.Length == 0)
            {
                colors[j] = new Color(b.x, b.y, 0, 0);
            }
            else
            {
                colors[j] = new Color(b.x, b.y, recentColor[j].b, recentColor[j].a);
            }
           
        }

       // mesh.SetNormals(newNormal);
        mesh.SetColors(colors);
        EditorUtility.ClearProgressBar();

        Debug.Log(max);
    }

}
