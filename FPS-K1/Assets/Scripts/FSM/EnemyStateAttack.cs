using UnityEngine;

public class EnemyStateAttack : EnemyStateAbstract
{
    private float timer = 0;
    private float timeBetweenShots = 3f;

    public override void Enter(EnemyStateAbstract prevState)
    {
        CurStateAgent.CurNavMeshAgent.isStopped = true;
        CurStateAgent.CurAnimator.SetFloat("Speed", 0);
    }

    public override void Exit(EnemyStateAbstract nextState)
    {
        CurStateAgent.CurNavMeshAgent.isStopped = false;
    }

    public override EnemyStateType CurType()
    {
        return EnemyStateType.Attack;
    }

    public override void UpdateByTime(float deltaTime)
    {
        if(GameController.I.gameState != GameState.Play)
            return;

        timer -= Time.deltaTime;
        if (timer < 0)
        {
            EventAggregator.Post(this, new FireButtonPressedHandler() {characterId = CurStateAgent.GetComponent<CharacterC>().CharacterId});
            timer = timeBetweenShots;
        }

    }

    public override EnemyStateType CheckTransitions()
    {
        if (Vector3.Distance(CurStateAgent.LastTargetPosition, CurStateAgent.gameObject.transform.position) > 5)
        {
            CurStateAgent.isFollow = true;

            return EnemyStateType.Follow;
        }

        if (Vector3.Distance(CurStateAgent.LastTargetPosition, CurStateAgent.gameObject.transform.position) > 10)
        {
            CurStateAgent.isFollow = false;

            return EnemyStateType.Idle;
        }

        return CurType();
    }
}
