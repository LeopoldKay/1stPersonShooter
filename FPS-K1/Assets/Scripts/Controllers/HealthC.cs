using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HealthC : MonoBehaviour
{
    [SerializeField] private int healthValue = 0;
    [SerializeField] private int characterId;

    public int HealthValue
    {
        get { return healthValue; }
    }

    void Start()
    {
        Init();
    }

    void Init()
    {
        characterId = GetComponent<CharacterC>().CharacterId;
        
        ChangeHealthValue(InventoryM.I.GetDefaultHealthValue());
    }

    public void ChangeHealthValue(int value)
    {
        healthValue += value;

        if (healthValue < 0)
        {
            healthValue = 0;
        }

        EventAggregator.Post(this, new ChangeHealthValueHandler() { characterId = characterId, value = healthValue });
    }

    public bool IsAlive()
    {
        return healthValue > 0;
    }
}
