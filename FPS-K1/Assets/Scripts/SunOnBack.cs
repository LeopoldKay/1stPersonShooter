using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SunOnBack : MonoBehaviour
{
    public Light sun;
    public GameObject Player;
    void Update()
    {
        sun.transform.LookAt(Player.transform);
    }
}
