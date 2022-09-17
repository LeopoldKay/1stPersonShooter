using UnityEngine;

public class EnemyStateFollow : EnemyStateAbstract
{

    public override void Enter(EnemyStateAbstract prevState)
    {
    }

    public override void Exit(EnemyStateAbstract nextState)
    {
    }

    public override EnemyStateType CurType()
    {
        return EnemyStateType.Follow;
    }

    public override void UpdateByTime(float deltaTime)
    {
        CurStateAgent.CurAnimator.SetFloat("Speed", CurStateAgent.CurNavMeshAgent.velocity.magnitude);

        CurStateAgent.CurNavMeshAgent.SetDestination(CurStateAgent.LastTargetPosition);
    }

    public override EnemyStateType CheckTransitions()
    {
        if (Vector3.Distance(CurStateAgent.LastTargetPosition, CurStateAgent.gameObject.transform.position) < 5)
        {
            CurStateAgent.isFollow = false;

            return EnemyStateType.Attack;
        }


        if (Vector3.Distance(CurStateAgent.LastTargetPosition, CurStateAgent.gameObject.transform.position) > 10)
        {
            CurStateAgent.CurNavMeshAgent.isStopped = true;
            CurStateAgent.isFollow = false;

            return EnemyStateType.Idle;
        }

        return CurType();
    }
}
