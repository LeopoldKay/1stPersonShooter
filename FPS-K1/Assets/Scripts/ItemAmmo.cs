using System.Collections;
using System.Collections.Generic;
using UnityEngine;

using System;

[Serializable]
public class ItemAmmo
{
    public GunTypes gunType;
    public int Quantity;

    public ItemAmmo(GunTypes gunType, int quantity)
    {
        Quantity = quantity;
        this.gunType = gunType;
    }
}
