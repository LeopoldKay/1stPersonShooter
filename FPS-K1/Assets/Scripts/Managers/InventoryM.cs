using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Linq;

public class InventoryM : MonoBehaviour
{
    public static InventoryM I;

    [SerializeField] private Data Data;
    [SerializeField] private List<ItemGun> ItemsGun;
    [SerializeField] private List<ItemAmmo> ItemsAmmo;
    [SerializeField] public int charactersIdCounter;

    private void Awake()
    {
        I = this;
        Init();
    }

    public void Init()
    {
        charactersIdCounter = 1;
    }

    public void AddGun(ItemGun itemGun)
    {
        ItemsGun.Add(itemGun);
    }

    public void RemoveGun(ItemGun itemGun)
    {
        ItemsGun.Remove(itemGun);
    }

    public void AddAmmo(GunTypes gunType, int quantity)
    {
        var itemAmmo = ItemsAmmo.FirstOrDefault(x => x.gunType == gunType);

        if (itemAmmo == null)
            ItemsAmmo.Add(new ItemAmmo(gunType, quantity));
        else
            itemAmmo.Quantity = Mathf.Clamp(itemAmmo.Quantity + quantity, 0, GetGunInfo(gunType).ammoLimit);

        EventAggregator.Post(this, new ChangeBulletsQuantityForActiveGunInInventoryHandler() { characterId = 0, quantity = quantity });
    }

    public int ReloadAmmo(GunTypes gunType)
    {
        var itemAmmo = ItemsAmmo.FirstOrDefault(x => x.gunType == gunType);

        int result = 0;

        if (itemAmmo != null)
        {
            result = itemAmmo.Quantity >= GetGunInfo(gunType).clipCapacity ? GetGunInfo(gunType).clipCapacity : itemAmmo.Quantity;

            itemAmmo.Quantity -= result;

            EventAggregator.Post(this, new ChangeBulletsQuantityForActiveGunInInventoryHandler() { characterId = 0, quantity = itemAmmo.Quantity <= 0 ? 0 : itemAmmo.Quantity });
            EventAggregator.Post(this, new ChangeBulletsQuantityInClipHandler() { characterId = 0, quantity = result, cellCapacity = GetGunInfo(gunType).clipCapacity });

            if (itemAmmo.Quantity <= 0)
            {
                ItemsAmmo.Remove(itemAmmo);
            }

        }

        return result;
    }


    public void UpdateAmmoInInventory(GunTypes gunType)
    {
        var itemAmmo = ItemsAmmo.FirstOrDefault(x => x.gunType == gunType);

        EventAggregator.Post(this, new ChangeBulletsQuantityForActiveGunInInventoryHandler() { characterId = 0, quantity = itemAmmo != null ? itemAmmo.Quantity : 0 });
    }

    public GunInfo GetGunInfo(GunTypes gunType)
    {
        return Data.gunInfo.FirstOrDefault(x => x.gunType == gunType);
    }

    public GunWeight GetGunWeight(GunTypes gunType)
    {
        var result = Data.gunInfo.FirstOrDefault(x => x.gunType == gunType);
        return result == null ? GunWeight.None : result.gunWeight;
    }

    public int GetDefaultHealthValue()
    {
        return Data.DefaultHealthValue;
    }

    public int GetBulletLifeTime()
    {
        return Data.BulletLifeTime;
    }

    public int AmmoQuantityInInventory(GunTypes gunType)
    {
        var ammo = ItemsAmmo.FirstOrDefault(t => t.gunType == gunType);
        return ammo == null || ammo.Quantity == 0 ? 0 : ammo.Quantity;
    }
}
