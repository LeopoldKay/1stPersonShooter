using UnityEngine;

public class EnemyStateMoveTo : EnemyStateAbstract
{

    public override void Enter(EnemyStateAbstract prevState)
    {
        CurStateAgent.CurNavMeshAgent.SetDestination(CurStateAgent.PatrolPoints[CurStateAgent.PatrolPointIdx].transform.position);
        CurStateAgent.CurNavMeshAgent.isStopped = false;
    }

    public override void Exit(EnemyStateAbstract nextState)
    {
    }

    public override EnemyStateType CurType()
    {
        return EnemyStateType.MoveTo;
    }

    public override void UpdateByTime(float deltaTime)
    {
        CurStateAgent.CurNavMeshAgent.SetDestination(CurStateAgent.PatrolPoints[CurStateAgent.PatrolPointIdx].transform.position);
        CurStateAgent.CurAnimator.SetFloat("Speed", CurStateAgent.CurNavMeshAgent.velocity.magnitude);
    }

    public override EnemyStateType CheckTransitions()
    {

        if (CurStateAgent.isFollow)
            return EnemyStateType.Follow;

        if (Vector3.Distance(CurStateAgent.PatrolPoints[CurStateAgent.PatrolPointIdx].transform.position,  CurStateAgent.transform.position) < 1f)
        {
            CurStateAgent.PatrolPointIdx++;
            CurStateAgent.PatrolPointIdx = CurStateAgent.PatrolPointIdx == CurStateAgent.PatrolPoints.Count
                ? 0
                : CurStateAgent.PatrolPointIdx;

            return EnemyStateType.Idle;
        }

        return CurType();
    }
}
