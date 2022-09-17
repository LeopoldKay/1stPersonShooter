using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public enum EventTypes
{
    None
}


public class ChangeHealthValueHandler
{
    public int characterId;
    public int value;
}

public class ShowInfoMessageHandler
{
    public string messageText;
}

public class FireButtonPressedHandler
{
    public int characterId;
}

public class ChangeBulletsQuantityForActiveGunInInventoryHandler
{
    public int characterId;
    public int quantity;
}

public class ChangeBulletsQuantityInClipHandler
{
    public int characterId;
    public int quantity;
    public int cellCapacity;
}

public class Events
{
}
