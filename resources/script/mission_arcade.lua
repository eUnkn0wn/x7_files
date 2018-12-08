require("Resources/Script/mission_trigger_spydagger.lua")
require("Resources/Script/mission_trigger_plasma_sword.lua")
require("Resources/Script/mission_trigger_shooting.lua")
TEAM_ALPHA = 1
TEAM_BETA = 2
function Initialize()
  MAX_MONSTER_COUNT = 1
  currMonsterCount = 0
  missionChecked = false
  RULE:SetUpdateScriptTime(500)
  RULE:SetKillComboTime(2000)
  RULE:SetKillByOneAttackTime(100)
  ruleArg = RULE:GetArg()
  ruleArg:PushLU32("1002", 0)
  ruleArg:PushLU32("1012", 0)
  ruleArg:PushLU32("1202", 0)
  ruleArg:PushLU32("PHASE_ID", 1)
  ruleArg:PushLU32("MissionTimeCount", 0)
  ruleArg:SetLU32("MissionMonsterCount", 5000)
  u32PhaseCheck = 1
  isKnightSpawn = false
  PhaseGoalCount = 20
  PhaseKillCount = 0
end
function CheckMissionComplete()
  if true == missionChecked then
    return
  end
  ruleArg = RULE:GetArg()
  local missionMonsterCount = ruleArg:GetLU32("MissionMonsterCount")
  local accumKillCount = RULE:GetAccumKillCount()
  if missionMonsterCount <= accumKillCount then
    RULE:MissionSuccess()
    missionChecked = true
    return
  end
end
function IsMonsterSpawn()
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
function Update(uiTimeDelta)
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
  local missionMonsterCount = ruleArg:GetLU32("MissionMonsterCount")
  MonsterSpawn(1, 1200, TEAM_BETA, 0, 100, 100, true, false, false)
  MonsterSpawn(1, 1000, TEAM_BETA, 10, 100, 100, true, false, false)
  MonsterSpawn(1, 1000, TEAM_BETA, 11, 100, 100, true, false, false)
  MonsterSpawn(1, 1000, TEAM_BETA, 12, 100, 100, true, false, false)
  MonsterSpawn(1, 1000, TEAM_BETA, 13, 100, 100, true, false, false)
  MonsterSpawn(1, 1000, TEAM_BETA, 14, 100, 100, true, false, false)
  MonsterSpawn(1, 1000, TEAM_BETA, 15, 100, 100, true, false, false)
  MonsterSpawn(1, 1000, TEAM_BETA, 16, 100, 100, true, false, false)
  MonsterSpawn(1, 1000, TEAM_BETA, 17, 100, 100, true, false, false)
end
function OnNotify(notifyID)
  if notifyID == 2 then
  end
end
function RemoveMonster(monster)
end
