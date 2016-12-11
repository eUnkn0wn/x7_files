require("Resources/Script/MonsterAI_Constants.lua")
PATTERN_IDLE = 0
PATTERN_PURSUIT = 1
PATTERN_RETURN = 2
function Create(monster)
  CreateAttack1(monster)
  SetAnimation(monster)
  Arg = monster:GetArg()
  Arg:PushLStr("TargetBase", "beta_safezone_00")
  Arg:PushLU32("Pattern", PATTERN_IDLE)
  Arg:PushLFloat("AreaDistance", 2000)
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
    state:AddSound(200, "Resources/Sound/challenge_arcade/AI_damage.ogg")
  end
  state = monster:GetMonsterState(MONSTATE_BLOW)
  if nil ~= state then
    state:SetAnimtionBlend("00004", true, 100, 100, true, true)
  end
  state = monster:GetMonsterState(MONSTATE_DEATH)
  if nil ~= state then
    state:SetAnimtionBlend("00001", false, 100, 100, false, true)
    state:AddSound(200, "Resources/Sound/challenge_arcade/destroy.ogg")
  end
  state = monster:GetMonsterState(MONSTATE_ATTACK_0)
  if nil ~= state then
    state:SetAnimtionBlend("00003", false, 100, 100, false, true)
    state:AddSound(200, "Resources/Sound/challenge_arcade/bishop_fire_attack.ogg")
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
    monster:SetWaitTime(500)
  end
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
function ActorCheck(timeDelta, monster)
  Arg = monster:GetArg()
  if nearActor then
    monster:SetMoveType(MONMOVE_ACTOR)
    monster:SetTargetActorID(nearActor:GetID())
    distanceMonsterToActor = UTIL:GetDist(monster, nearActor)
    if attackMinDistance > distanceMonsterToActor then
      if UTIL:IsSafeZoneEnable("beta_safezone_00") then
        local strTargetBase = Arg:GetLStr("TargetBase")
        vEndPos = UTIL:GetSafeAreaPos(strTargetBase)
        vNewPos = MAKEVECTOR3(0, 0, 0)
        local distBySafeArea = UTIL:GetDistBySafeArea(monster, strTargetBase)
        MoveToWayPoint(monster, distBySafeArea, vEndPos, vNewPos, monster:GetEscapeMoveSpeedRate())
      end
    elseif attackMaxDistance > distanceMonsterToActor then
      monster:SetWaitTime(monster:GetRateOfFire(MONINPUT_ATTACK_0))
      AI_CONTROLLER:RegisterReservedCommand(CreateAttackCommand(GAMETIME + ADDTIME, monster:GetID(), MONINPUT_ATTACK_0, monster:GetPosition(), UTIL:GetDirection2To1(nearActor, monster)))
    else
      monster:SetWaitTime(100)
      AI_CONTROLLER:RegisterReservedCommand(CreateMoveToCommand(GAMETIME + ADDTIME, monster:GetID(), monster:GetPosition(), monster:GetGoalPosition(), monster:GetRakeMoveSpeedRate()))
    end
  end
end
function Update(timeDelta, monster)
  Arg = monster:GetArg()
  strTargetBase = Arg:GetLStr("TargetBase")
  currPattern = Arg:GetLU32("Pattern")
  mainPattern = Arg:GetLU32("MainPattern")
  baseFindDistance = 3000
  if mainPattern == MONPATTERN_MISSION_ATTACK then
    userFindDistance = 10000
  else
    userFindDistance = 3000
  end
  attackMinDistance = 1500
  attackMaxDistance = 2000
  nearActor = UTIL:GetActorByMinDist(true, monster, 0, userFindDistance, false, false)
  if PATTERN_IDLE == currPattern then
    FuncIdle(timeDelta, monster)
  elseif PATTERN_PURSUIT == currPattern then
    FuncPursuit(timeDelta, monster)
  elseif PATTERN_RETURN == currPattern then
    FuncReturn(timeDelta, monster)
  end
end
