using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityStandardAssets.Characters.FirstPerson;
using UnityEngine.UI;

public enum GameState
{
    None,
    Play,
    Stop
}

public class GameController : MonoBehaviour
{
    public static GameController I { get; private set; }

    public List<CharacterC> Enemies = new List<CharacterC>();
    public GameObject PanelNewGame;
    public TextMeshProUGUI TextInfo;

    public string sceneName ="MainScene";
    public GameState gameState;
    public GameObject Player;

    void Awake()
    {
        I = this;
        PanelNewGame.SetActive(false);
        gameState = GameState.Play;
    }
    void Update()
    {
        var result = true;

        foreach (var curEnemy in Enemies)
        {
            if(curEnemy.GetComponent<HealthC>().HealthValue > 0)
                result = false;
        }

        if (result)  
            ShowPanel("You WIN!");

        if(Player.GetComponent<HealthC>().HealthValue <= 0)
            ShowPanel("You LOSE!");
    }

    public void ShowPanel(string message)
    {
        TextInfo.text = message;
        gameState = GameState.Stop;
        Player.GetComponent<FirstPersonController>().m_MouseLook.lockCursor = false;
        Player.GetComponent<FirstPersonController>().enabled = false;
        Player.GetComponent<CharacterController>().enabled = false;
        PanelNewGame.SetActive(true);
        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = true;
    }

    public void ReloadScene()
    {
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
        SceneManager.LoadScene(sceneName);
    }
}
