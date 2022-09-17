using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Linq;
using System;
using UnityEditor;

public enum CharacterTypes
{
    None,
    Player,
    EnemyOne,
    EnemyTwo
}

public enum ItemTypes
{
    None,
    Gun,
    Ammo
}

public enum GunTypes
{
    None,
    Pistol,
    Rifle,
    Sniper,
    Launcher,
    Grenade
}
public enum GunWeight
{ 
    None,
    Light,
    Heavy,
    Grenade
}


[Serializable]
public class GunInfo
{
    public string gunName;
    public GunTypes gunType;
    public float reloadTime;
    public int clipCapacity;

    public Vector3 positionInHands;
    public Vector3 rotationInHands;
    public Vector3 scaleInHands;

    public int ammoLimit;
    public GameObject bulletPrefab;
    public GameObject gunPrefab;
    public int damage;
    public float fireRate;
    public GunWeight gunWeight;
}

[Serializable, CreateAssetMenu(menuName = "Game/CreateData")]
public class Data : ScriptableObject
{
    [SerializeField] private int defaultHealthValue = 100;
    [SerializeField] private int bulletLifeTime = 2;

    public int DefaultHealthValue => defaultHealthValue;
    public int BulletLifeTime => bulletLifeTime;


    public List<GunInfo> gunInfo;

}
