using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class CharacterUiC : MonoBehaviour
{
    [SerializeField] private int characterId;
    [SerializeField] private TextMeshProUGUI textCharacterHealth;

    public TextMeshProUGUI textActiveGun;
    public TextMeshProUGUI textAmmoInInventory;

    void OnEnable()
    {
        EventAggregator.Subscribe<ChangeHealthValueHandler>(ChangeHealthValueUi);
        EventAggregator.Subscribe<ChangeBulletsQuantityForActiveGunInInventoryHandler>(ChangeBulletsQuantityForActiveGunInInventory);
        EventAggregator.Subscribe<ChangeBulletsQuantityInClipHandler>(ChangeBulletsQuantityInClip);
    }

    void OnDisable()
    {
        EventAggregator.Unsubscribe<ChangeHealthValueHandler>(ChangeHealthValueUi);
        EventAggregator.Unsubscribe<ChangeBulletsQuantityForActiveGunInInventoryHandler>(ChangeBulletsQuantityForActiveGunInInventory);
        EventAggregator.Unsubscribe<ChangeBulletsQuantityInClipHandler>(ChangeBulletsQuantityInClip);
    }

    void Start()
    {
        Init();
    }

    void Init()
    {
        characterId = GetComponent<CharacterC>().CharacterId;
    }

    void ChangeHealthValueUi(object sender, ChangeHealthValueHandler handler)
    {
        if(handler.characterId != characterId)
            return;

        textCharacterHealth.text = handler.value.ToString();
    }

    void ChangeBulletsQuantityForActiveGunInInventory(object sender, ChangeBulletsQuantityForActiveGunInInventoryHandler handler)
    {
        if (handler.characterId != characterId || textAmmoInInventory == null)
            return;

        textAmmoInInventory.text = handler.quantity.ToString();
    }

    void ChangeBulletsQuantityInClip(object sender, ChangeBulletsQuantityInClipHandler handler)
    {
        if (handler.characterId != characterId || textAmmoInInventory == null)
            return;

        textActiveGun.text = handler.quantity.ToString() + " / " + handler.cellCapacity.ToString();
    }

}

