using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LookAtCamera : MonoBehaviour
{
    void Update()
    {
        gameObject.transform.LookAt(Camera.main.transform);
        //gameObject.transform.localEulerAngles = new Vector3(gameObject.transform.localEulerAngles.x , -1 * gameObject.transform.localEulerAngles.y, gameObject.transform.localEulerAngles.z);
    }
}
