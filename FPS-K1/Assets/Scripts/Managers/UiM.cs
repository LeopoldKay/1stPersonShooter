using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class UiM : MonoBehaviour
{
    public TextMeshProUGUI InfoText;

    void OnEnable()
    {
        EventAggregator.Subscribe<ShowInfoMessageHandler>(ShowInfoMessage);
    }

    void OnDisable()
    {
        EventAggregator.Unsubscribe<ShowInfoMessageHandler>(ShowInfoMessage);
    }

    void ShowInfoMessage(object sender, ShowInfoMessageHandler handler)
    {
        InfoText.text = handler.messageText;
    }
}