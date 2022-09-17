using UnityEngine;
using System.Collections.Generic;
using UnityEngine.AI;

public class EnemyStateAgent : MonoBehaviour
{

    [Header("Состояния Enemy")]
    [Tooltip("Начальное состояние Enemy")]
    public EnemyStateType DefaultState;
    public EnemyStateAbstract CurState;
    public EnemyStateAbstract PrevState;
    public string state;

    [Header("Компоненты")]
    public Animator CurAnimator;
    public NavMeshAgent CurNavMeshAgent;

    public List<GameObject> PatrolPoints;
    public int PatrolPointIdx;

    public float timer;
    public float timeIdle = 3;

    public Vector3 LastTargetPosition;
    public GameObject Player;
    public bool isFollow;
    
    void Awake()
    {
        PatrolPointIdx = Random.Range(0, PatrolPoints.Count - 1);

        LastTargetPosition = new Vector3(9999, 9999, 9999);
    }

    void Start()
    {
        CurState = EnemyStateAbstract.CreateState(DefaultState);

        if (CurState != null)
        {
            CurState.CurStateAgent = this;
            CurState.Enter(null);
        }
    }

    void Update()
    {

        if (CurState != null)
        {
            if (CurState.CurType() == EnemyStateType.Death)
                return;


            CurState.UpdateByTime(Time.deltaTime);
            EnemyStateType nextStateType = EnemyStateType.Idle;

            if (!GetComponent<HealthC>().IsAlive())
            {
                nextStateType = EnemyStateType.Death;
            }
            else
            {
                nextStateType = CurState.CheckTransitions();
            }

            if (nextStateType != CurState.CurType())
            {
                EnemyStateAbstract nextState = EnemyStateAbstract.CreateState(nextStateType);
                nextState.CurStateAgent = this;
                CurState.Exit(nextState);
                EnemyStateAbstract prevState = CurState;
                CurState = nextState;
                CurState.Enter(prevState);
            }
        }


        if (Vector3.Distance(Player.transform.position, this.gameObject.transform.position) < 10)
        {
            LastTargetPosition = Player.transform.position;
            isFollow = true;
        }
        else
        {
            isFollow = false;
            LastTargetPosition = new Vector3(9999,9999,9999);
        }

        if(CurState != null)
            state = CurState.ToString();
    }

    void LateUpdate()
    {
        if (CurState.CurType() == EnemyStateType.Attack)
        {
            gameObject.transform.LookAt(LastTargetPosition);
            gameObject.transform.localEulerAngles = new Vector3(0, gameObject.transform.localEulerAngles.y + 60, 0);
            CurNavMeshAgent.updateRotation = false;
        }
        else
        {
            CurNavMeshAgent.updateRotation = true;
        }

    }


}

