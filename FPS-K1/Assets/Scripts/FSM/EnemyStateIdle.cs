using UnityEngine;
using UnityEngine.AI;

public class EnemyStateIdle : EnemyStateAbstract
{

    public override void Enter(EnemyStateAbstract prevState)
    {
        CurStateAgent.timer = CurStateAgent.timeIdle;
    }

    public override void Exit(EnemyStateAbstract nextState)
    {
    }

    public override EnemyStateType CurType()
    {
        return EnemyStateType.Idle;
    }

    public override void UpdateByTime(float deltaTime)
    {
        CurStateAgent.timer -= Time.deltaTime;
        CurStateAgent.CurAnimator.SetFloat("Speed", CurStateAgent.CurNavMeshAgent.velocity.magnitude);
    }

    public override EnemyStateType CheckTransitions()
    {
        if (CurStateAgent.isFollow)
            return EnemyStateType.Follow;

        if (CurStateAgent.timer < 0)
            return EnemyStateType.MoveTo;

        return CurType();
    }
}
