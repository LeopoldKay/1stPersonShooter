using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DetectorC : MonoBehaviour
{
    public ItemGun ActiveGunOnGround;
    public ItemAmmoOnGround ActiveAmmoOnGround;


    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.T) && ActiveGunOnGround != null)
        {
            {
                InventoryM.I.AddGun(ActiveGunOnGround);
                GetComponentInParent<FireC>().ChangeGunInHands(ActiveGunOnGround.gunType);

                EventAggregator.Post<ShowInfoMessageHandler>(this, new ShowInfoMessageHandler() {messageText = ""});
                ActiveGunOnGround.gameObject.SetActive(false);
                InventoryM.I.UpdateAmmoInInventory(ActiveGunOnGround.gunType);
                //ActiveGunOnGround = null;
            }
        }

        if (Input.GetKeyDown(KeyCode.T) && ActiveAmmoOnGround != null)
        {
            {
                InventoryM.I.AddAmmo(ActiveAmmoOnGround.gunType, ActiveAmmoOnGround.Quantity);
                
                EventAggregator.Post(this, new ShowInfoMessageHandler() { messageText = "" });
                ActiveAmmoOnGround.gameObject.SetActive(false);
                //ActiveAmmoOnGround = null;
            }
        }
    }

    public void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.GetComponent<ItemGun>() != null)
        {
            ActiveGunOnGround = other.gameObject.GetComponent<ItemGun>();

            if (ActiveGunOnGround.gunType == GetComponentInParent<FireC>().activeGun.gunType)
                return;

            EventAggregator.Post<ShowInfoMessageHandler>(this, new ShowInfoMessageHandler() { messageText = "T - Take gun" });
        }

        if (other.gameObject.GetComponent<ItemAmmoOnGround>() != null)
        {
            ActiveAmmoOnGround = other.gameObject.GetComponent<ItemAmmoOnGround>();

            EventAggregator.Post<ShowInfoMessageHandler>(this, new ShowInfoMessageHandler() { messageText = "T - Take ammo" });
        }
    }

    public void OnTriggerExit(Collider other)
    {
        EventAggregator.Post<ShowInfoMessageHandler>(this, new ShowInfoMessageHandler() { messageText = "" });

        if (ActiveGunOnGround != null)
        {
            ActiveGunOnGround.gameObject.SetActive(true);
            ActiveGunOnGround = null;
        }

        if (ActiveAmmoOnGround != null)
        {
            ActiveAmmoOnGround.gameObject.SetActive(true);
            ActiveAmmoOnGround = null;
        }

    }

    public bool IsItemInView(ItemGun itemGun)
    {

        return Mathf.Abs(Vector3.Angle(transform.forward, itemGun.transform.position - transform.position)) > 30;
    }

}
