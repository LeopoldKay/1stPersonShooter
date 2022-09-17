using UnityEngine;

public class EnemyStateDeath : EnemyStateAbstract
{

    public override void Enter(EnemyStateAbstract prevState)
    {
        CurStateAgent.CurNavMeshAgent.isStopped = true;

        if (CurStateAgent.GetComponent<CharacterC>().CharacterType != CharacterTypes.Player)
        {
            CurStateAgent.GetComponent<Animator>().SetTrigger("ToDeath");
        }
        else
        {

        }

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
    }

    public override EnemyStateType CheckTransitions()
    {
        return CurType();
    }
}
