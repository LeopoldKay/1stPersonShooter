using System.Collections.Generic;
using UnityEngine;

public enum EnemyStateType
{
    None,
    Idle,
    MoveTo,
    Follow,
    Attack,
    Death
}

public abstract class EnemyStateAbstract
{
    public EnemyStateAgent CurStateAgent { get; set; }
    public abstract void Enter(EnemyStateAbstract prevState);
    public abstract void Exit(EnemyStateAbstract nextState);
    public virtual EnemyStateType CurType() { return EnemyStateType.None; }
    public abstract void UpdateByTime(float deltaTime);
    public abstract EnemyStateType CheckTransitions();
    public static EnemyStateAbstract CreateState(EnemyStateType stateType)
    {
        switch (stateType)
        {
            case EnemyStateType.Idle: return new EnemyStateIdle();
            case EnemyStateType.MoveTo: return new EnemyStateMoveTo();
            case EnemyStateType.Follow: return new EnemyStateFollow();
            case EnemyStateType.Attack: return new EnemyStateAttack();
            case EnemyStateType.Death: return new EnemyStateDeath();
            default:
		        return null;
        }
    }

    void Update()
    {

    }
}