using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[ExecuteAlways]
public class SDFFaceDirection : MonoBehaviour
{
    public Material face;
    // Start is called before the first frame update

    // Update is called once per frame
    void Update()
    {
        Vector3 modelSpaceForward = transform.localToWorldMatrix.MultiplyVector(Vector3.forward);
        face.SetVector("_SDFFront", modelSpaceForward);
        Vector3 modelrightRight = transform.localToWorldMatrix.MultiplyVector(Vector3.right);
        face.SetVector("_SDFRight", modelrightRight);
    }


}
