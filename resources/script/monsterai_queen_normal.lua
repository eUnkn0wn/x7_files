require("Resources/Script/MonsterAI_Constants.lua")
PATTERN_IDLE = 0
PATTERN_PURSUIT = 1
PATTERN_RETURN = 2
function Create(monster)
  monster:CreateStealth()
  CreateAttack1(monster)
  CreateAttack2(monster)
  state = monster:GetMonsterState(MONINPUT_ATTACK_0)
  if nil ~= state then
    state:SetSuperArmor(true)
  end
  state = monster:GetMonsterState(MONSTATE_NORMAL)
  if nil ~= state then
    state:SetSuperArmor(true)
  end
  state = monster:GetMonsterState(MONSTATE_RUN)
  if nil ~= state then
    state:SetSuperArmor(true)
  end
  state = monster:GetMonsterState(MONSTATE_DAMAGE)
  if nil ~= state then
    state:SetSuperArmor(true)
  end
  state = monster:GetMonsterState(MONINPUT_ATTACK_1)
  if nil ~= state then
    state:SetSuperArmor(true)
  end
  SetAnimation(monster)
  Arg = monster:GetArg()
  Arg:PushLStr("TargetBase", "beta_safezone_00")
  Arg:PushLU32("Pattern", PATTERN_IDLE)
  Arg:PushLFloat("AreaDistance", 2000)
end
function CreateAttack1(monster)
  attackState = CreateAttackState(monster, MONINPUT_ATTACK_0, 2000)
  attackState:AddSequence(0, "L_beam_Dummy", "Resources/Effects/pve_mon_queen_attack03.seq")
  attackState:AddSequence(0, "R_beam_Dummy", "Resources/Effects/pve_mon_queen_attack03.seq")
  attackState:AddSequence(1000, "M_beam_Dummy", "Resources/Effects/pve_mon_queen_attack04.seq")
  attackState:AddSequence(450, "queen_effect_Dummy", "Resources/Effects/pve_queen_attack05.seq")
  attackState:AddSequence(0, "M_beam_Dummy", "Resources/Effects/pve_queen_sonic.seq")
  attackState:SetMoveBoxMultiplier(1)
  attackState:SetAnimationSpeed(1)
  Attack1 = CreateCAttack()
  Attack1:InitAttack1(WEAPONTYPE_MELEE_, ATTACKATTRIB_PVE_QUEEN_1, 500, 15, 0)
  Attack1:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 300, 100), MAKEVECTOR3(0, 0, -1), 760, 600, 760), 1, 1, false)
  Attack1:SetCameraShakeEnable(true, true, 0)
  Attack1:AddPushCondition(50, 2000, -5000)
  attackState:AddAttack(Attack1)
  Attack2 = CreateCAttack()
  Attack2:InitAttack1(WEAPONTYPE_MELEE_, ATTACKATTRIB_PVE_QUEEN_1, 750, 15, 0)
  Attack2:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 300, 100), MAKEVECTOR3(0, 0, -1), 760, 600, 760), 1, 1, false)
  Attack2:SetCameraShakeEnable(true, true, 0)
  Attack2:AddPushCondition(50, 2000, -5000)
  attackState:AddAttack(Attack2)
  Attack3 = CreateCAttack()
  Attack3:InitAttack1(WEAPONTYPE_MELEE_, ATTACKATTRIB_PVE_QUEEN_1, 1000, 30, 0)
  Attack3:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 300, 100), MAKEVECTOR3(0, 0, -1), 880.0000000000001, 600, 880.0000000000001), 1, 1, false)
  Attack3:SetCameraShakeEnable(true, true, 0)
  Attack3:AddBlowCondition(2000, 2000)
  attackState:AddAttack(Attack3)
  monster:AddState(MONINPUT_ATTACK_0, attackState)
end
function CreateAttack2(monster)
  attackTime = 750
  attackState = CreateAttackState(monster, MONINPUT_ATTACK_1, 1500)
  attackState:AddSequence(0, "L_beam_Dummy", "Resources/Effects/pve_mon_queen_attack01.seq")
  attackState:AddSequence(0, "R_beam_Dummy", "Resources/Effects/pve_mon_queen_attack01.seq")
  attackState:AddSequence(attackTime, "M_beam_Dummy", "Resources/Effects/pve_mon_queen_attack02.seq")
  Attack1 = CreateCAttack()
  Attack1:InitAttack1(WEAPONTYPE_MISSILE_, ATTACKATTRIB_PVE_QUEEN_0, attackTime, 30, 0)
  Attack1:InitAttack2(MAKETHICKRAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(0, 0, -1), 400, RayDistanceLimit), 1, 1, false)
  Attack1:AddStunCondition(1000, 2000, 0, 1000)
  attackState:AddAttack(Attack1)
  monster:AddState(MONINPUT_ATTACK_1, attackState)
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
    state:AddSound(200, "Resources/Sound/challenge_arcade/AI_damage.ogg")
  end
  state = monster:GetMonsterState(MONSTATE_BLOW)
  if nil ~= state then
    state:SetAnimtionBlend("00004", true, 100, 100, true, true)
  end
  state = monster:GetMonsterState(MONSTATE_DEATH)
  if nil ~= state then
    state:SetDurationTime(3000)
    state:SetAnimtionBlend("00001", false, 100, 100, false, true)
    state:AddSound(200, "Resources/Sound/challenge_arcade/queen_destroy.ogg")
  end
  state = monster:GetMonsterState(MONSTATE_ATTACK_0)
  if nil ~= state then
    state:SetAnimtionBlend("00003", false, 100, 100, false, true)
    state:AddSound(200, "Resources/Sound/challenge_arcade/queen_melee_attack.ogg")
  end
  state = monster:GetMonsterState(MONSTATE_ATTACK_1)
  if nil ~= state then
    state:SetAnimtionBlend("00003_1", false, 100, 100, false, true)
    state:AddSound(200, "Resources/Sound/challenge_arcade/queen_fire_attack.ogg")
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
    monster:SetWaitTime(500)
  end
  StealthCommand(GAMETIME + ADDTIME, monster, false)
end
function FuncIdle(timeDelta, monster)
  Arg = monster:GetArg()
  if mainPattern ~= MONPATTERN_MISSION_PUPPET then
    if nil ~= nearActor then
      Arg:SetLU32("Pattern", PATTERN_PURSUIT)
    elseif mainPattern ~= MONPATTERN_MISSION_RETURN then
      Arg:SetLU32("Pattern", PATTERN_RETURN)
    end
  end
end
function FuncPursuit(timeDelta, monster)
  Arg = monster:GetArg()
  if nil ~= nearActor then
    ActorCheck(timeDelta, monster)
  else
    Arg:SetLU32("Pattern", PATTERN_RETURN)
  end
  if mainPattern == MONPATTERN_MISSION_RETURN then
    AreaDistanceCheck(timeDelta, monster)
  end
end
function FuncReturn(timeDelta, monster)
  Arg = monster:GetArg()
  monster:SetLastAttackStateID(MONINPUT_TOTAL)
  if mainPattern == MONPATTERN_MISSION_RETURN then
    if false == IsReturn(timeDelta, monster) and nil ~= nearActor then
      Arg:SetLU32("Pattern", PATTERN_PURSUIT)
    end
    local strSpawnBase = Arg:GetLStr("SpawnBase")
    local vAreaPos = UTIL:GetAreaPos(strSpawnBase)
    local vNewPos = MAKEVECTOR3(0, 0, 0)
    MoveToWayPoint(monster, 0, vAreaPos, vNewPos, 4)
  elseif mainPattern ~= MONPATTERN_MISSION_RETURN then
    if nil ~= nearActor then
      Arg:SetLU32("Pattern", PATTERN_PURSUIT)
    end
    local vNewPos = MAKEVECTOR3(0, 0, 0)
    if UTIL:IsSafeZoneEnable("beta_safezone_00") then
      local strTargetBase = Arg:GetLStr("TargetBase")
      vEndPos = UTIL:GetSafeAreaPos(strTargetBase)
      local distBySafeArea = UTIL:GetDistBySafeArea(monster, strTargetBase)
      MoveToWayPoint(monster, distBySafeArea, vEndPos, vNewPos, 1)
    end
  end
end
function IsReturn(timeDelta, monster)
  Arg = monster:GetArg()
  areaDistance = Arg:GetLFloat("AreaDistance")
  local strSpawnBase = Arg:GetLStr("SpawnBase")
  distanceByArea = UTIL:GetDistByArea(monster, strSpawnBase)
  return distanceByArea > areaDistance
end
function AreaDistanceCheck(timeDelta, monster)
  Arg = monster:GetArg()
  if true == IsReturn(timeDelta, monster) then
    Arg:SetLU32("Pattern", PATTERN_RETURN)
  end
end
function StealthCommand(gametime, monster, isOn)
  if monster:IsStealthOn() ~= isOn then
    AI_CONTROLLER:RegisterReservedCommand(CreateStealthCommand(gametime, monster:GetID(), isOn))
  end
end
function ActorCheck(timeDelta, monster)
  Arg = monster:GetArg()
  if nearActor then
    monster:SetMoveType(MONMOVE_ACTOR)
    monster:SetTargetActorID(nearActor:GetID())
    distanceMonsterToActor = UTIL:GetDist(monster, nearActor)
    attackType = monster:GetLastAttackStateID()
    isAttackProbChoice = false
    if MONINPUT_TOTAL == attackType then
      atkProb = monster:GetRandom(100000)
      if atkProb < 50000 then
        attackType = MONINPUT_ATTACK_1
      else
        attackType = MONINPUT_ATTACK_1
      end
      monster:ResetRateOfFire(attackType)
      monster:SetLastAttackStateID(attackType)
    end
    isAttack = false
    if MONINPUT_ATTACK_1 == attackType then
      StealthCommand(GAMETIME + ADDTIME, monster, false)
      if attack_1_Min_Distance > distanceMonsterToActor then
        if UTIL:IsSafeZoneEnable("beta_safezone_00") then
          local strTargetBase = Arg:GetLStr("TargetBase")
          vEndPos = UTIL:GetSafeAreaPos(strTargetBase)
          vNewPos = MAKEVECTOR3(0, 0, 0)
          local distBySafeArea = UTIL:GetDistBySafeArea(monster, strTargetBase)
          MoveToWayPoint(monster, distBySafeArea, vEndPos, vNewPos, monster:GetEscapeMoveSpeedRate())
        end
      elseif attack_1_Distance > distanceMonsterToActor then
        monster:SetWaitTime(1500)
        AI_CONTROLLER:RegisterReservedCommand(CreateAttackCommand(GAMETIME + ADDTIME, monster:GetID(), MONINPUT_ATTACK_1, monster:GetPosition(), UTIL:GetDirection2To1(nearActor, monster)))
        isAttack = true
      end
    end
    if false == isAttack then
      monster:SetWaitTime(300)
      AI_CONTROLLER:RegisterReservedCommand(CreateMoveToCommand(GAMETIME + ADDTIME, monster:GetID(), monster:GetPosition(), monster:GetGoalPosition(), monster:GetRakeMoveSpeedRate()))
    end
  end
end
function Update(timeDelta, monster)
  Arg = monster:GetArg()
  strTargetBase = Arg:GetLStr("TargetBase")
  currPattern = Arg:GetLU32("Pattern")
  mainPattern = Arg:GetLU32("MainPattern")
  baseFindDistance = 2000
  if mainPattern == MONPATTERN_MISSION_ATTACK then
    userFindDistance = 10000
  else
    userFindDistance = 5000
  end
  attack_0_Distance = 1750
  attack_1_Distance = 2000
  attack_1_Min_Distance = 1500
  nearActor = UTIL:GetActorByMinDist(true, monster, 0, userFindDistance, false, false)
  if PATTERN_IDLE == currPattern then
    FuncIdle(timeDelta, monster)
  elseif PATTERN_PURSUIT == currPattern then
    FuncPursuit(timeDelta, monster)
  elseif PATTERN_RETURN == currPattern then
    FuncReturn(timeDelta, monster)
  end
end
