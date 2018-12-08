require("Resources/Script/MonsterAI_Constants.lua")
function Create(monster)
  SetAnimation(monster)
  Arg = monster:GetArg()
  Arg:PushLStr("TargetBase", "beta_safezone_00")
end
function CreateAttack1(monster)
end
function CreateAttack2(monster)
end
function CreateAttack3(monster)
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
  Arg = monster:GetArg()
  strTargetBase = Arg:GetLStr("TargetBase")
  vEndPos = UTIL:GetSafeAreaPos(strTargetBase)
  vNewPos = MAKEVECTOR3(0, 0, 0)
  if monster:FindPath(vNewPos, vEndPos) then
    monster:SetWaitTime(INTERVAL_UPDATE_TIME)
    AI_CONTROLLER:RegisterReservedCommand(CreateMoveToCommand(GAMETIME + ADDTIME, monster:GetID(), monster:GetPosition(), monster:GetGoalPosition(), 1))
  else
    monster:SetWaitTime(2000)
  end
end
