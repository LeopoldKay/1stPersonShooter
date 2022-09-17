using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BulletC : MonoBehaviour
{

    public int damage = 0;

    void Awake()
    {
        StartCoroutine(DestroyBullet());
    }

    void Update()
    {
        RaycastHit hit;
        if (Physics.Raycast(transform.position, transform.TransformDirection(Vector3.forward), out hit, 5))
        {
            Debug.DrawRay(transform.position, transform.TransformDirection(Vector3.forward) * hit.distance, Color.yellow);
            if (hit.collider.tag == "Character")
            {
                //Debug.Log("Hit in " + hit.collider.gameObject.name);

                hit.collider.gameObject.GetComponent<HealthC>().ChangeHealthValue(-1 * damage);

                Destroy(this.gameObject.transform.parent.gameObject);
            }
        }
    }
    IEnumerator DestroyBullet()
    {
        yield return new WaitForSeconds(InventoryM.I.GetBulletLifeTime());
        Destroy(this.gameObject.transform.parent.gameObject);
    }
}
