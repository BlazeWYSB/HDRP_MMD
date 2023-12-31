using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using static Unity.Burst.Intrinsics.X86.Avx;

[ExecuteAlways]
public class SDFFaceDirection : MonoBehaviour
{
    public List<Material> face=new List<Material>();

    // Start is called before the first frame update
    Vector2 Tmp;
    // Update is called once per frame
    void Update()
    {
        Tmp.x = transform.forward.x;
        Tmp.y = transform.forward.z;
        Tmp=Tmp.normalized;
        for(int i = 0; i < face.Count; i++)
        {
            face[i].SetVector("_SDFFront", Tmp);
        }


        Tmp.x = transform.right.x;
        Tmp.y = transform.right.z;
        Tmp = Tmp.normalized;
        for (int i = 0; i < face.Count; i++)
        {
            face[i].SetVector("_SDFRight", Tmp);
        }
    }
    //private void OnDrawGizmos()
    //{Gizmos.color = Color.red;

    //    Gizmos.DrawLine(transform.position, transform.position + transform.forward);
    //    Gizmos.color =Color.green;
    //    Gizmos.DrawLine(transform.position, transform.position + transform.right);
    //}

}
