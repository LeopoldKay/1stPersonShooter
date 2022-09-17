using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InputM: MonoBehaviour
{
    public static InputM I { get; private set; }
    public CharacterC player;

    void Awake()
    {
        I = this;
    }

    void Update()
    {
        if(GameController.I.gameState != GameState.Play)
            return;

        if (Input.GetMouseButtonDown(0))
        {
            EventAggregator.Post(this, new FireButtonPressedHandler(){characterId = 0});
        }

        if (Input.GetMouseButtonDown(1))
        {
            Camera.main.fieldOfView = 40;
            if(player.GetComponent<FireC>().activeGun != null)
                player.GetComponent<FireC>().activeGun.gameObject.transform.localPosition += new Vector3(-0.2f, -0.1f,0);
        }

        if (Input.GetMouseButtonUp(1))
        {
            Camera.main.fieldOfView = 60;
            if (player.GetComponent<FireC>().activeGun != null)
                player.GetComponent<FireC>().activeGun.gameObject.transform.localPosition += new Vector3(0.2f, 0.1f, 0);
        }
    }
}
