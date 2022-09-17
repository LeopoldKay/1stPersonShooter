using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OnGroundM : MonoBehaviour
{
    [SerializeField] private List<GameObject> spawnPoints;
    [SerializeField] private List<GameObject> ItemsOnGround;

    void Start()
    {
        foreach (var curSpawnPoint in spawnPoints)
        {
            var index = Random.Range(0, ItemsOnGround.Count);
            if (ItemsOnGround.Count > 0)
            {
                var newItem = Instantiate(ItemsOnGround[index], curSpawnPoint.transform);
                ItemsOnGround.RemoveAt(index);
            }
        }
    }
}
