using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

public enum FireState
{
    None,
    Idle,
    Fire,
    Reload
}

public class FireC : MonoBehaviour
{
    [SerializeField] private int characterId;

    [SerializeField] private GameObject hands;

    [SerializeField] public ItemGun activeGun;

    public FireState fireState = FireState.None;


    [Header("Default inventory")]
    public GunTypes defaultGun;
    public GunTypes defaultAmmo;
    public int defaultAmmoQuantity;


    void OnEnable()
    {
        EventAggregator.Subscribe<FireButtonPressedHandler>(FireButtonPressed);
    }

    void OnDisable()
    {
        EventAggregator.Unsubscribe<FireButtonPressedHandler>(FireButtonPressed);
    }

    void Start()
    {
        Init();
    }

    void Init()
    {
        characterId = GetComponent<CharacterC>().CharacterId;
        AddDefaultsItems();

    }

    void Update()
    {
        if (activeGun != null
            && fireState != FireState.Reload
            && fireState != FireState.Fire
            && activeGun.bulletsInClip == 0)
        {
            if (GetComponent<CharacterC>().CharacterType == CharacterTypes.Player)
            {
                if(InventoryM.I.AmmoQuantityInInventory(activeGun.gunType) > 0)
                    StartCoroutine(Reload());
            }
            else
                StartCoroutine(Reload());
        }
    }

    private void AddDefaultsItems()
    {
        if (defaultGun != GunTypes.None)
            ChangeGunInHands(defaultGun);

        if (defaultAmmo != GunTypes.None && defaultAmmoQuantity != 0)
            AddAmmo(defaultAmmo, defaultAmmoQuantity);
    }

    public void ChangeGunInHands(GunTypes gunType)
    {
        if (hands == null)  
            return;

        if(hands.transform.childCount > 0)
            Destroy(hands.transform.GetChild(0).gameObject);

        var gunInfo = InventoryM.I.GetGunInfo(gunType);
        
        var newGun = Instantiate(gunInfo.gunPrefab, hands.transform);

        newGun.transform.localPosition = gunInfo.positionInHands;
        newGun.transform.localEulerAngles = gunInfo.rotationInHands;
        newGun.transform.localScale = gunInfo.scaleInHands;

        if (activeGun != null)
            InventoryM.I.RemoveGun(activeGun);

        activeGun = newGun.GetComponent<ItemGun>();
        InventoryM.I.AddGun(activeGun);

        fireState = FireState.None;
    }

    private void AddAmmo(GunTypes gunType, int quantity)
    {
        InventoryM.I.AddAmmo(gunType, quantity);
    }

    private IEnumerator Reload()
    {
        EventAggregator.Post<ShowInfoMessageHandler>(this, new ShowInfoMessageHandler() { messageText = "Reloading"});
        fireState = FireState.Reload;
        activeGun.gameObject.SetActive(false);
        
        yield return new WaitForSeconds(activeGun.gunInfo.reloadTime);

        activeGun.bulletsInClip = GetComponent<CharacterC>().CharacterType != CharacterTypes.Player 
            ? activeGun.gunInfo.clipCapacity 
            : InventoryM.I.ReloadAmmo(activeGun.gunType);

        EventAggregator.Post<ShowInfoMessageHandler>(this, new ShowInfoMessageHandler() { messageText = "" });
        fireState = FireState.Idle;
        activeGun.gameObject.SetActive(true);
    }

    private void FireButtonPressed(object sender, FireButtonPressedHandler handler)
    {
        if (activeGun == null 
            || fireState == FireState.Reload 
            || fireState == FireState.Fire 
            ||  activeGun.bulletsInClip == 0
            || handler.characterId != characterId)
            return;

        fireState = FireState.Fire;

        switch (activeGun.gunType)
        {
            case GunTypes.Pistol:

                StartCoroutine(FirePistol());
                break;

            case GunTypes.Rifle:

                StartCoroutine(FireRifle());
                break;

            case GunTypes.Sniper:

                StartCoroutine(FirePistol());
                break;

        }
    }


    IEnumerator FirePistol()
    {
        activeGun.OneShot();
        yield return new WaitForSeconds(activeGun.gunInfo.fireRate);
        fireState = FireState.Idle;
    }

    IEnumerator FireRifle()
    {
        for (int i = 0; i < 3; i++)
        {
            if (activeGun.bulletsInClip == 0)
                yield break;

            activeGun.OneShot();
            yield return new WaitForSeconds(activeGun.gunInfo.fireRate);
        }
        fireState = FireState.Idle;
    }
}