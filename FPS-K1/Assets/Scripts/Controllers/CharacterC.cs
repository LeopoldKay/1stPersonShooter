using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CharacterC : MonoBehaviour
{
    [SerializeField] private CharacterTypes characterType;
    [SerializeField] private int characterId;
    [SerializeField] private int healthValue;

    public int CharacterId { get { return characterId; } } 
    public CharacterTypes CharacterType { get { return characterType; } }

    void Awake()
    {
        Init();
    }

    void Init()
    {
        if (characterType == CharacterTypes.Player)
        {
            characterId = 0;
            return;
        }

        characterId = InventoryM.I.charactersIdCounter;
        InventoryM.I.charactersIdCounter++;
    }


}
