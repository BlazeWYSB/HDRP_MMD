
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;
using static UnityEngine.GraphicsBuffer;

public class BodyPartExchange : EditorWindow
{
    private Transform bodyPartA;
    private Transform bodyPartB;
    public List<Renderer> materials = new List<Renderer>();
    Transform[] bBones;
    [MenuItem("Tools/BodyPartTest")]
    static void Init()
    {
        // Get existing open window or if none, make a new one:
        BodyPartExchange window = (BodyPartExchange)GetWindow(typeof(BodyPartExchange));
        window.Show();
    }
    Material OriantedMat = null;
    void OnGUI()
    {
        EditorGUILayout.LabelField("原始Mat", GUILayout.Width(80));
        bodyPartA = EditorGUILayout.ObjectField(bodyPartA, typeof(Transform), true) as Transform;
        EditorGUILayout.LabelField("目标Mat", GUILayout.Width(80));
        bodyPartB = EditorGUILayout.ObjectField(bodyPartB, typeof(Transform), true) as Transform;
        Dictionary<string,Transform> mat = new Dictionary<string,Transform>();
        if (GUILayout.Button("替换"))
        {
            var ba=bodyPartA.GetComponent<SkinnedMeshRenderer>();
            var bb=bodyPartB.GetComponent<SkinnedMeshRenderer>();
            bb.rootBone = ba.rootBone;
            foreach (var bone in ba.bones)
            {
                mat.Add(bone.name, bone);
            }
            bBones = new Transform[bb.bones.Length];
            for (int i = 0; i < bb.bones.Length; i++)
            {
                if (mat.ContainsKey(bb.bones[i].name))
                {
                    bBones[i] = mat[bb.bones[i].name];
                }
            }
            bb.bones= bBones;
        }
    }
}
