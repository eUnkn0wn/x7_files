TEAM_ALPHA = 1
TEAM_BETA = 2
function Initialize()
  MAX_MONSTER_COUNT = 6
  currMonsterCount = 0
  missionChecked = false
  RULE:SetUpdateScriptTime(500)
  RULE:SetKillComboTime(1500)
  RULE:SetKillByOneAttackTime(100)
  ruleArg = RULE:GetArg()
  ruleArg:PushLU32("1002", 0)
  ruleArg:PushLU32("1012", 0)
  ruleArg:PushLU32("1202", 0)
  ruleArg:PushLU32("PHASE_ID", 1)
  ruleArg:PushLU32("MissionTimeCount", 0)
  RULE:SetRoundLimitTime()
  ruleArg:SetLU32("MissionMonsterCount", 80)
  u32PhaseCheck = 2
  isKnightSpawn = false
  PhaseGoalCount = 20
  PhaseKillCount = 0
end
function PhaseAdd()
  ruleArg = RULE:GetArg()
  u32PhaseCheck = u32PhaseCheck + 1
  ruleArg:SetLU32("PHASE_ID", u32PhaseCheck)
end
function PhaseGoto(phaseNumber)
  ruleArg = RULE:GetArg()
  u32PhaseCheck = phaseNumber
  ruleArg:SetLU32("PHASE_ID", u32PhaseCheck)
end
function CheckMissionComplete()
  if true == missionChecked then
    RULE:RemoveAllMonster()
    return
  end
  ruleArg = RULE:GetArg()
  local missionMonsterCount = ruleArg:GetLU32("MissionMonsterCount")
  local accumKillCount = RULE:GetAccumKillCount()
  if missionMonsterCount == accumKillCount then
    RULE:MissionSuccess()
    missionChecked = true
    return
  end
end
function IsMonsterSpawn()
  if true == missionChecked then
    return false
  end
  currMonsterCount = RULE:GetCurrMonsterCount()
  if MAX_MONSTER_COUNT > currMonsterCount then
    return true
  end
  return false
end
function CalcMonsterSpawnCount()
  currMonsterCount = RULE:GetCurrMonsterCount()
  local todoCount = PhaseGoalCount - PhaseKillCount
  if todoCount >= MAX_MONSTER_COUNT then
    return MAX_MONSTER_COUNT - currMonsterCount
  else
    return math.max(todoCount - currMonsterCount, 0)
  end
  return 0
end
function MonsterSpawn(iCount, iMonsterType, iTeam, iSpawnIndex, fOffsetX, fOffsetZ, isSimplePath, isNormalPath, isDiffcultPath)
  for index = 1, iCount do
    RULE:MonsterSpawn(iMonsterType, iTeam, iSpawnIndex, fOffsetX, fOffsetZ, isSimplePath, isNormalPath, isDiffcultPath)
  end
end
function FirstUpdate()
  RULE:LuaTriggerNotify(NI_START)
end
function WeaponDrop()
end
function ItemDrop()
end
function UpdateGenocide(uiTimeDelta)
  CheckMissionComplete()
  if false == IsMonsterSpawn() then
    return
  end
  local killCountByOneAttack = RULE:GetKillByOneAttack()
  local elapsedTime = RULE:GetElapsedTime()
  local accumKillCount = RULE:GetAccumKillCount()
  local killComboCount = RULE:GetKillComboCount()
  local currWeaponType = RULE:GetCurrWeaponType()
  local actorHP = RULE:GetMyActorHP()
  local deltaCount = CalcMonsterSpawnCount()
  local missionMonsterCount = ruleArg:GetLU32("MissionMonsterCount")
  if isKnightSpawn == true then
    MonsterSpawn(1, 1202, TEAM_BETA, math.random(6, 7), 100, 100, true, false, false)
    isKnightSpawn = false
    deltaCount = deltaCount - 1
  end
  for count = 1, deltaCount do
    MonsterSpawn(1, 1002, TEAM_BETA, math.random(18, 23), 100, 100, true, false, false)
  end
end
function UpdateChallange(uiTimeDelta)
  CheckMissionComplete()
  if u32PhaseCheck == 1 then
    MonsterSpawn(1, 1002, TEAM_BETA, 0, 100, 100, true, false, false)
    MonsterSpawn(1, 1002, TEAM_BETA, 1, 100, 100, true, false, false)
    MonsterSpawn(1, 1002, TEAM_BETA, 2, 100, 100, true, false, false)
    MonsterSpawn(1, 1002, TEAM_BETA, 3, 100, 100, true, false, false)
    MonsterSpawn(1, 1002, TEAM_BETA, 4, 100, 100, true, false, false)
    MonsterSpawn(1, 1002, TEAM_BETA, 5, 100, 100, true, false, false)
    PhaseAdd()
  elseif u32PhaseCheck == 3 then
    MonsterSpawn(1, 1002, TEAM_BETA, 0, 100, 100, true, false, false)
    MonsterSpawn(1, 1002, TEAM_BETA, 1, 100, 100, true, false, false)
    MonsterSpawn(1, 1002, TEAM_BETA, 2, 100, 100, true, false, false)
    MonsterSpawn(1, 1002, TEAM_BETA, 3, 100, 100, true, false, false)
    MonsterSpawn(1, 1002, TEAM_BETA, 4, 100, 100, true, false, false)
    MonsterSpawn(1, 1002, TEAM_BETA, 5, 100, 100, true, false, false)
    PhaseAdd()
  end
end
function Update(uiTimeDelta)
  UpdateGenocide(uiTimeDelta)
end
function OnNotify(notifyID)
  if notifyID == 2 then
    MonsterSpawn(1, 1202, TEAM_BETA, 0, 100, 100, true, false, false)
  end
end
function RemoveMonster(monster)
  if true == missionChecked then
    return
  end
  PhaseKillCount = PhaseKillCount + 1
  if PhaseGoalCount == PhaseKillCount then
    PhaseGoalCount = 0
    PhaseKillCount = 0
    local accumKillCount = RULE:GetAccumKillCount()
    local missionMonsterCount = ruleArg:GetLU32("MissionMonsterCount")
    if missionMonsterCount ~= accumKillCount then
      if u32PhaseCheck == 1 then
        isKnightSpawn = true
        PhaseGoalCount = 1
        PhaseGoto(2)
      elseif u32PhaseCheck == 2 then
        PhaseGoalCount = math.min(79, missionMonsterCount - accumKillCount)
        isKnightSpawn = false
        PhaseGoto(1)
      end
    end
  end
end
