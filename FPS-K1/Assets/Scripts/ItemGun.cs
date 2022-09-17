using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

[Serializable]
public class ItemGun: MonoBehaviour
{
    public GunTypes gunType;

    public GameObject fireOut;
    public GameObject fireLight;
    public int bulletsInClip;
    public GunInfo gunInfo;

    void Awake()
    {
        Init();
    }

    void Init()
    {
        gunInfo = InventoryM.I.GetGunInfo(gunType);

        var characterC = GetComponentInParent<CharacterC>();

        if (characterC != null && characterC.CharacterType == CharacterTypes.Player)
            EventAggregator.Post(this, new ChangeBulletsQuantityInClipHandler() { characterId = 0, quantity = 0, cellCapacity = gunInfo.clipCapacity });
    }

    public void OneShot()
    {
        GameObject newBullet = null;
        CharacterC characterC = null;

        switch (gunType)
        {
            case GunTypes.Pistol:
            case GunTypes.Sniper:
                newBullet = Instantiate(gunInfo.bulletPrefab, fireOut.transform.position, Quaternion.identity);
                newBullet.transform.rotation = fireOut.transform.rotation;
                newBullet.GetComponent<Rigidbody>().AddForce(newBullet.transform.forward * 20);
                newBullet.GetComponentInChildren<BulletC>().damage = gunInfo.damage;

                bulletsInClip--;
                characterC = GetComponentInParent<CharacterC>();

                if (characterC != null && characterC.CharacterType == CharacterTypes.Player)
                    EventAggregator.Post(this, new ChangeBulletsQuantityInClipHandler() { characterId = 0, quantity = bulletsInClip, cellCapacity = gunInfo.clipCapacity});

                break;

            case GunTypes.Rifle:

                newBullet = Instantiate(gunInfo.bulletPrefab, fireOut.transform.position, Quaternion.identity);
                newBullet.transform.rotation = fireOut.transform.rotation;
                newBullet.GetComponent<Rigidbody>().AddForce(newBullet.transform.forward * 20);
                newBullet.GetComponentInChildren<BulletC>().damage = gunInfo.damage;

                bulletsInClip--;
                characterC = GetComponentInParent<CharacterC>();

                if (characterC != null && characterC.CharacterType == CharacterTypes.Player)
                    EventAggregator.Post(this, new ChangeBulletsQuantityInClipHandler() { characterId = 0, quantity = bulletsInClip, cellCapacity = gunInfo.clipCapacity });

                break;
        }


    }
}
