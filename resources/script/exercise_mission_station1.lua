require("Resources/Script/Constants.lua")
require("Resources/Script/SentryGunAttrib_Constants.lua")
SPAWN_FOCUS_ACTOR = 0
SPAWN_ENERMY_SENTRYGUN = 1
SPAWN_ENERMY_SENTYFORCE = 2
SPAWN_TRIGGER_BEGIN = 0
SPAWN_NOTIFY = 1
NI_START = 1
NI_STAGE_STARTMSG_END = 2
NI_SPAWN_TEXT_END = 3
NI_DESTROY_TEXT_END = 4
NI_SPAWN_SENTRYGUN = 24
NI_SPAWN_SENTRYGUN_END = 25
NI_DESTROY_ENEMY = 26
NI_SPAWN_RANDOM = 1000
NI_KILLSOUND_RANDOM = 2000
SPAWN_SENTRYGUN = 3000
TRIGGER_COUNT_HELPER = 1
LoadStringTable("Language/Script/exercise_string_table.x7")
TXT_Exercise_01 = GetString("TXT_Exercise_01")
TXT_Exercise_02 = GetString("TXT_Exercise_02")
ClearStringTable()
index = 0
KEY_GUIDE = index
index = index + 1
KEYBOARD_STATE_MOVE = index
index = index + 1
KEYBOARD_STATE_JUMP = index
index = index + 1
KEYBOARD_STATE_SKILL = index
index = index + 1
KEYBOARD_STATE_SLIDE = index
index = index + 1
KEYBOARD_STATE_NON = index
index = index + 1
MOUSE_GUIDE = index
index = index + 1
MOUSE_STATE_ACTIVE = index
index = index + 1
MOUSE_STATE_NON = index
index = index + 1
function InitMissionTrigger()
  TutorialSystem:SetTotalStage(1)
  ExerciseMission = TutorialSystem:GetEmptyStage()
  Timer_Start = TriggerPackage:GetEventAlram(0, NI_START, 0, 0, false)
  ExerciseMission:Register(Timer_Start)
  arrWeaponID = {
    ID_WEAPON_PLASMA_SWORD,
    ID_WEAPON_COUNTER_SWORD,
    ID_WEAPON_SUBMACHINE_GUN,
    ID_WEAPON_REVOLVER,
    ID_WEAPON_SEMI_RIFLE,
    ID_WEAPON_RAIL_GUN,
    ID_WEAPON_CANNONADE,
    ID_WEAPON_SENTRY_GUN,
    ID_WEAPON_MIND_ENERGY,
    ID_WEAPON_MIND_SHOCK
  }
  for i = 1, table.getn(arrWeaponID) do
    SetWeaponData = TriggerPackage:GetSetWeaponData(NI_START, 0, arrWeaponID[i], 1, -1)
    ExerciseMission:Register(SetWeaponData)
  end
  Text_StageStart = TriggerPackage:GetTextViewerEx(300, 200, NI_START, NI_STAGE_STARTMSG_END, TXT_Exercise_01, "Resources/GUI/New/TutorialImage_1.gui")
  ExerciseMission:Register(Text_StageStart)
  Timer_StageStartMsgEnd = TriggerPackage:GetEventAlram(0, NI_STAGE_STARTMSG_END, 5000, 0, false)
  ExerciseMission:Register(Timer_StageStartMsgEnd)
  Timer_DestroyTextEnd = TriggerPackage:GetEventAlram(NI_DESTROY_ENEMY, NI_DESTROY_TEXT_END, 1000, 0, false)
  ExerciseMission:Register(Timer_DestroyTextEnd)
  Text_DestroySentryGun = TriggerPackage:GetTextViewerEx(600, 200, NI_DESTROY_ENEMY, NI_DESTROY_TEXT_END, TXT_Exercise_02, "Resources/GUI/New/TutorialImage_1.gui")
  ExerciseMission:Register(Text_DestroySentryGun)
  AdderScore0 = TriggerPackage:GetScoreAdder(NI_DESTROY_ENEMY, 1)
  ExerciseMission:Register(AdderScore0)
  Timer_SpawnSentrygun = TriggerPackage:GetEventAlram(NI_STAGE_STARTMSG_END, NI_SPAWN_SENTRYGUN, 2000, NI_SPAWN_SENTRYGUN_END, true)
  ExerciseMission:Register(Timer_SpawnSentrygun)
  arrSpawnPointNames = {}
  for i = 1, 9 do
    for j = 1, 5 do
      strName = string.format("trg_box%d_%d", i, j)
      table.insert(arrSpawnPointNames, strName)
    end
  end
  nSpawnPointCount = table.getn(arrSpawnPointNames)
  TYPE_SENTRYGUN = SENTRYGUNATTRIB_EXERCISE_SENTRYGUN1
  nLimitScore = Setting:GetLimitScore()
  if nLimitScore == 50 then
    TYPE_SENTRYGUN = SENTRYGUNATTRIB_EXERCISE_SENTRYGUN2
  elseif nLimitScore == 75 then
    TYPE_SENTRYGUN = SENTRYGUNATTRIB_EXERCISE_SENTRYGUN3
  elseif nLimitScore == 100 then
    TYPE_SENTRYGUN = SENTRYGUNATTRIB_EXERCISE_SENTRYGUN4
  end
  SpawnCountMgr = TriggerPackage:GetSpawnHelperCountMgr(TRIGGER_COUNT_HELPER, SPAWN_SENTRYGUN, NI_DESTROY_ENEMY, 10)
  ExerciseMission:Register(SpawnCountMgr)
  RandomSpawn = TriggerPackage:GetRandomEventNotify(NI_SPAWN_SENTRYGUN, NI_SPAWN_RANDOM, NI_SPAWN_RANDOM + nSpawnPointCount * 5)
  ExerciseMission:Register(RandomSpawn)
  for i = 1, nSpawnPointCount do
    for j = 0, 4 do
      trg = TriggerPackage:GetSpawnHelper(SPAWN_NOTIFY, SPAWN_ENERMY_SENTRYGUN, arrSpawnPointNames[i], NI_SPAWN_RANDOM + (i - 1) * 5 + j, NI_DESTROY_ENEMY, SPAWN_SENTRYGUN, TRIGGER_COUNT_HELPER, true)
      TriggerPackage:SetSpawnHelperRandomPos(trg, 300)
      TriggerPackage:SetSpawnHelperAttribID(trg, TYPE_SENTRYGUN)
      ExerciseMission:Register(trg)
    end
  end
  TutorialSystem:AddStage(0, ExerciseMission)
end
