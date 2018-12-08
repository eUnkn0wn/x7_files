require("Resources/Script/MonsterAI_Constants.lua")
function Create(monster)
  CreateAttack1(monster)
  SetAnimation(monster)
end
function CreateAttack1(monster)
  attackState = CreateAttackState(monster, MONINPUT_ATTACK_0, 1600)
  attackState:SetUpdatePosDir(true)
  attackState:AddSequence(0, "Bishop_Fire_Dummy", "Resources/Effects/pve_mon_bishop_attack.seq")
  attackState:SetAnimationSpeed(1.5)
  Attack1 = CreateCAttack()
  Attack1:InitAttack1(WEAPONTYPE_MISSILE_, ATTACKATTRIB_PVE_BISHOP, 800, 20, 0)
  Attack1:InitAttack2(MAKETHICKRAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(0, 0, -1), 50, RayDistanceLimit), 1, 1, false)
  Attack1:SetCollisionRangeAdjust(false, false)
  Attack1:AddBlowCondition(1000, 2000)
  attackState:AddAttack(Attack1)
  monster:AddState(MONINPUT_ATTACK_0, attackState)
end
function SetAnimation(monster)
  state = monster:GetMonsterState(MONSTATE_NORMAL)
  if nil ~= state then
    state:SetAnimtionBlend("BASE", true, 100, 100, true, true)
  end
  state = monster:GetMonsterState(MONSTATE_RUN)
  if nil ~= state then
    state:SetAnimtionBlend("BASE", true, 100, 100, true, true)
  end
  state = monster:GetMonsterState(MONSTATE_DAMAGE)
  if nil ~= state then
    state:SetAnimtionBlend("00002", false, 100, 100, false, true)
  end
  state = monster:GetMonsterState(MONSTATE_BLOW)
  if nil ~= state then
    state:SetAnimtionBlend("00004", true, 100, 100, true, true)
  end
  state = monster:GetMonsterState(MONSTATE_DEATH)
  if nil ~= state then
    state:SetAnimtionBlend("00001", false, 100, 100, false, true)
  end
  state = monster:GetMonsterState(MONSTATE_ATTACK_0)
  if nil ~= state then
    state:SetAnimtionBlend("00003", false, 100, 100, false, true)
  end
  state = monster:GetMonsterState(MONSTATE_ATTACK_1)
  if nil ~= state then
    state:SetAnimtionBlend("00003", false, 100, 100, false, true)
  end
  state = monster:GetMonsterState(MONSTATE_ATTACK_2)
  if nil ~= state then
    state:SetAnimtionBlend("00003", false, 100, 100, false, true)
  end
  state = monster:GetMonsterState(MONSTATE_PRE_FASTRUN)
  if nil ~= state then
    state:SetAnimtionBlend("00005", true, 100, 100, true, true)
  end
  state = monster:GetMonsterState(MONSTATE_FASTRUN)
  if nil ~= state then
    state:SetAnimtionBlend("00006", true, 100, 100, true, true)
  end
end
function FirstUpdate(monster)
end
function MoveToWayPoint(monster, distBySafeArea, vEndPos, vNewPos, moveSpeedMultiplier)
  monster:SetMoveType(MONMOVE_WAYPOINT)
  if monster:FindPath(vNewPos, vEndPos) then
    monster:SetWaitTime(INTERVAL_UPDATE_TIME)
    AI_CONTROLLER:RegisterReservedCommand(CreateMoveToCommand(GAMETIME + ADDTIME, monster:GetID(), monster:GetPosition(), monster:GetGoalPosition(), moveSpeedMultiplier))
  else
    monster:SetWaitTime(2000)
  end
end
function Update(timeDelta, monster)
  baseFindDistance = 3000
  userFindDistance = 3000
  attackMinDistance = 1500
  attackMaxDistance = 2000
  distBySafeArea = UTIL:GetDistBySafeArea(monster, "beta_safezone_00")
  vEndPos = UTIL:GetSafeAreaPos("beta_safezone_00")
  vNewPos = MAKEVECTOR3(0, 0, 0)
  if baseFindDistance > distBySafeArea then
    MoveToWayPoint(monster, distBySafeArea, vEndPos, vNewPos, 1)
  else
    nearActor = UTIL:GetActorByMinDist(true, monster, 0, userFindDistance, true, false)
    if nearActor then
      monster:SetMoveType(MONMOVE_ACTOR)
      monster:SetTargetActorID(nearActor:GetID())
      distanceMonsterToActor = UTIL:GetDist(monster, nearActor)
      if attackMinDistance > distanceMonsterToActor then
        MoveToWayPoint(monster, distBySafeArea, vEndPos, vNewPos, monster:GetEscapeMoveSpeedRate())
      elseif attackMaxDistance > distanceMonsterToActor then
        monster:SetWaitTime(monster:GetRateOfFire(MONINPUT_ATTACK_0))
        AI_CONTROLLER:RegisterReservedCommand(CreateAttackCommand(GAMETIME + ADDTIME, monster:GetID(), MONINPUT_ATTACK_0, monster:GetPosition(), UTIL:GetDirection2To1(nearActor, monster)))
      else
        monster:SetWaitTime(300)
        AI_CONTROLLER:RegisterReservedCommand(CreateMoveToCommand(GAMETIME + ADDTIME, monster:GetID(), monster:GetPosition(), monster:GetGoalPosition(), monster:GetRakeMoveSpeedRate()))
      end
    else
      MoveToWayPoint(monster, distBySafeArea, vEndPos, vNewPos, 1)
    end
  end
end
