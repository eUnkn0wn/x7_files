require("Resources/Script/MonsterAI_Constants.lua")
function Create(monster)
  monster:CreateDefenseAura(200, 1000, 1, "Resources/Effects/pve_mon_buf_eff01.seq")
  monster:SetCanSufferDefenseAura(false)
  SetAnimation(monster)
  Arg = monster:GetArg()
  Arg:PushLStr("TargetBase", "beta_safezone_00")
  Arg:PushLStr("TargetBase1", "beta_safezone_01")
  Arg:PushLStr("TargetBase2", "beta_safezone_02")
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
  distBySafeArea1 = UTIL:GetDistBySafeArea(monster, "beta_safezone_01")
  distBySafeArea2 = UTIL:GetDistBySafeArea(monster, "beta_safezone_02")
  if distBySafeArea1 >= distBySafeArea2 then
    if UTIL:IsSafeZoneEnable("beta_safezone_02") then
      strTargetBase = Arg:GetLStr("TargetBase2")
    else
      strTargetBase = Arg:GetLStr("TargetBase")
    end
  elseif UTIL:IsSafeZoneEnable("beta_safezone_01") then
    strTargetBase = Arg:GetLStr("TargetBase1")
  else
    strTargetBase = Arg:GetLStr("TargetBase")
  end
  vEndPos = UTIL:GetSafeAreaPos(strTargetBase)
  vNewPos = MAKEVECTOR3(0, 0, 0)
  if monster:FindPath(vNewPos, vEndPos) then
    monster:SetWaitTime(INTERVAL_UPDATE_TIME)
    AI_CONTROLLER:RegisterReservedCommand(CreateMoveToCommand(GAMETIME + ADDTIME, monster:GetID(), monster:GetPosition(), monster:GetGoalPosition(), 1))
  else
    monster:SetWaitTime(2000)
  end
end
