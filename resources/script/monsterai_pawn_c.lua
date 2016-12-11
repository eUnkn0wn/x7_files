require("Resources/Script/MonsterAI_Constants.lua")
deathTime = 0
function Create(monster)
  ChangeDeathState(monster)
  CreateTimerBomb(monster)
  SetAnimation(monster)
end
function CreateAttack1(monster)
end
function CreateAttack2(monster)
end
function CreateAttack3(monster)
end
function CreateTimerBomb(monster)
  monster:CreateTimerBomb("Resources/Effects/set_num3.seq", "")
  Attack = CreateCExplosionAttack()
  Attack:InitAttack1(WEAPONTYPE_MELEE_, ATTACKATTRIB_EARTH_BOMBER, deathTime, 50, 0)
  Attack:InitAttack2(MAKESPHERE(MAKEVECTOR3(0, 0, 0), 800), 1, 1)
  Attack:SetCollisionRangeAdjust(false, false)
  Attack:AddPushCondition(300, 2000, -5000)
  Attack:SetFriendlyDamage(0.5, 0.2)
  Attack:SetDamageApplyType(2)
  Attack:SetDamageRates(0.75, 0.5, 0.25)
  Attack:SetExplosionRanges(0.4, 0.6, 0.8)
  monster:AddTimerBombAttack(Attack)
end
function ChangeDeathState(monster)
  deathBombState = CreateDeathBombState(monster, MONINPUT_DEATH, 2000)
  monster:AddState(MONINPUT_DEATH, deathBombState)
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
function Update(timeDelta, monster)
  vEndPos = UTIL:GetSafeAreaPos("beta_safezone_00")
  vNewPos = MAKEVECTOR3(0, 0, 0)
  local findUserDistance = 1000
  local selfBombDistance = 100
  lastTargetActor = monster:GetTargetActor()
  if lastTargetActor ~= nil then
    findUserDistance = 50000
  end
  nearActor = UTIL:GetActorByMinDist(true, monster, 0, findUserDistance, true, false)
  if nearActor then
    monster:SetMoveType(MONMOVE_ACTOR)
    monster:SetTargetActorID(nearActor:GetID())
    distanceMonsterToActor = UTIL:GetDist(monster, nearActor)
    if selfBombDistance > distanceMonsterToActor then
      AI_CONTROLLER:RegisterReservedCommand(CreateSelfBombCommand(GAMETIME + ADDTIME, monster:GetID(), deathTime))
    else
      monster:SetWaitTime(INTERVAL_UPDATE_TIME)
      AI_CONTROLLER:RegisterReservedCommand(CreateMoveToCommand(GAMETIME + ADDTIME, monster:GetID(), monster:GetPosition(), monster:GetGoalPosition(), monster:GetRakeMoveSpeedRate()))
    end
  elseif monster:FindPath(vNewPos, vEndPos) then
    monster:SetWaitTime(INTERVAL_UPDATE_TIME)
    AI_CONTROLLER:RegisterReservedCommand(CreateMoveToCommand(GAMETIME + ADDTIME, monster:GetID(), monster:GetPosition(), monster:GetGoalPosition(), 1))
  else
    monster:SetWaitTime(2000)
  end
end
