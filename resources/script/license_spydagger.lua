SPAWN_FOCUS_ACTOR = 0
SPAWN_ENERMY_SENTRYGUN = 1
SPAWN_ENERMY_SENTYFORCE = 2
SPAWN_ALLIANCE_MALE = 3
SPAWN_ALLIANCE_FEMALE = 4
SPAWN_ENEMY_MALE = 5
SPAWN_ENEMY_FEMALE = 6
SPAWN_TRIGGER_BEGIN = 0
SPAWN_NOTIFY = 1
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
function OnSpyDaggerLicenseTest()
  TutorialSystem:SetTotalStage(2)
  OnSpyDaggerLicenseTestStep01()
  OnSpyDaggerLicenseTestStep02()
end
NI_START = 101
NI_Text_Welcom01_OFF = 102
NI_Text_Welcom02_OFF = 103
NI_Text_Welcom03_OFF = 104
NI_SCORE_COMPLETED01 = 105
NI_ATTACK_1_SPYDAGGER = 106
NI_Text_CompleteTip01_on = 107
NI_Text_CompleteTip01_off = 108
NI_Text_CompleteTip02_on = 109
NI_Text_CompleteTip02_off = 110
NI_SCORE_COMPLETED02 = 111
NI_ATTACK_2_SPYDAGGER = 112
NI_CONGRATULATION = 113
LoadStringTable("Language/Script/tutorial_string_table.x7")
TXT_Weapon_SpyDagger_01 = GetString("TXT_Weapon_SpyDagger_01")
TXT_Weapon_SpyDagger_02 = GetString("TXT_Weapon_SpyDagger_02")
TXT_Weapon_SpyDagger_03 = GetString("TXT_Weapon_SpyDagger_03")
TXT_Weapon_SpyDagger_04 = GetString("TXT_Weapon_SpyDagger_04")
TXT_Weapon_SpyDagger_05 = GetString("TXT_Weapon_SpyDagger_05")
TXT_Weapon_SpyDagger_06 = GetString("TXT_Weapon_SpyDagger_06")
TXT_Weapon_SpyDagger_07 = GetString("TXT_Weapon_SpyDagger_07")
TXT_Weapon_SpyDagger_08 = GetString("TXT_Weapon_SpyDagger_08")
TXT_Weapon_SpyDagger_09 = GetString("TXT_Weapon_SpyDagger_09")
TXT_Weapon_SpyDagger_10 = GetString("TXT_Weapon_SpyDagger_10")
TXT_Weapon_SpyDagger_11 = GetString("TXT_Weapon_SpyDagger_11")
TXT_Weapon_SpyDagger_12 = GetString("TXT_Weapon_SpyDagger_12")
TXT_Weapon_SpyDagger_13 = GetString("TXT_Weapon_SpyDagger_13")
TXT_Weapon_SpyDagger_14 = GetString("TXT_Weapon_SpyDagger_14")
TXT_Weapon_SpyDagger_15 = GetString("TXT_Weapon_SpyDagger_15")
TXT_Weapon_SpyDagger_16 = GetString("TXT_Weapon_SpyDagger_16")
TXT_Weapon_SpyDagger_17 = GetString("TXT_Weapon_SpyDagger_17")
TXT_Weapon_SpyDagger_18 = GetString("TXT_Weapon_SpyDagger_18")
TXT_Weapon_SpyDagger_19 = GetString("TXT_Weapon_SpyDagger_19")
TXT_Weapon_SpyDagger_20 = GetString("TXT_Weapon_SpyDagger_20")
TXT_Weapon_SpyDagger_21 = GetString("TXT_Weapon_SpyDagger_21")
ClearStringTable()
function OnSpyDaggerLicenseTestStep01()
  SpyDaggerLicense = TutorialSystem:GetEmptyStage()
  ActorSpawn = TriggerPackage:GetSpawnHelper(SPAWN_TRIGGER_BEGIN, SPAWN_FOCUS_ACTOR, "trg_spawn_point_01", 0, 0, 0, 0, true)
  SpyDaggerLoad = TriggerPackage:GetItemDuplicator(0, 2000006, 0, 0)
  Timer_TextStart = TriggerPackage:GetEventAlram(0, NI_START, 0, 0, false)
  Timer_Text_Welcom01_Delay = TriggerPackage:GetEventAlram(NI_START, NI_Text_Welcom01_OFF, 5000, 0, false)
  Timer_Text_Welcom02_Delay = TriggerPackage:GetEventAlram(NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, 5000, 0, false)
  Timer_Text_Welcom03_Delay = TriggerPackage:GetEventAlram(NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, 5000, 0, false)
  Timer_Text_CompleteTip01_on = TriggerPackage:GetEventAlram(NI_SCORE_COMPLETED01, NI_Text_CompleteTip01_on, 500, 0, false)
  Timer_Text_CompleteTip01_off = TriggerPackage:GetEventAlram(NI_Text_CompleteTip01_on, NI_Text_CompleteTip01_off, 6000, 0, false)
  Timer_Text_CompleteTip02_on = TriggerPackage:GetEventAlram(NI_SCORE_COMPLETED02, NI_Text_CompleteTip02_on, 500, 0, false)
  Timer_Text_CompleteTip02_off = TriggerPackage:GetEventAlram(NI_Text_CompleteTip02_on, NI_Text_CompleteTip02_off, 6000, 0, false)
  KeyPermiter01 = TriggerPackage:GetKeyPermiter(TutorialSystem:GetInputSystem(), NI_START, NI_START, false)
  KeyPermiter02 = TriggerPackage:GetKeyPermiter(TutorialSystem:GetInputSystem(), NI_Text_Welcom03_OFF, NI_Text_Welcom03_OFF, true)
  KeyPermiter03 = TriggerPackage:GetKeyPermiter(TutorialSystem:GetInputSystem(), NI_Text_CompleteTip01_on, NI_Text_CompleteTip01_on, false)
  KeyPermiter04 = TriggerPackage:GetKeyPermiter(TutorialSystem:GetInputSystem(), NI_Text_CompleteTip01_off, NI_Text_CompleteTip01_off, true)
  KeyPermiter05 = TriggerPackage:GetKeyPermiter(TutorialSystem:GetInputSystem(), NI_Text_CompleteTip02_on, NI_Text_CompleteTip02_on, false)
  KeyPermiter06 = TriggerPackage:GetKeyPermiter(TutorialSystem:GetInputSystem(), NI_Text_CompleteTip02_off, NI_Text_CompleteTip02_off, true)
  Text_Welcom01 = TriggerPackage:GetTextViewerExA(512, 250, NI_START, NI_Text_Welcom01_OFF, TXT_Weapon_SpyDagger_01, "Resources/GUI/New/TutorialImage_1.gui", true, false)
  Text_Welcom02 = TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, TXT_Weapon_SpyDagger_02, "Resources/GUI/New/TutorialImage_1.gui", true, false)
  Text_Welcom03 = TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, TXT_Weapon_SpyDagger_03, "Resources/GUI/New/TutorialImage_1.gui", true, false)
  Text_Guide01 = TriggerPackage:GetTextViewerEx(600, 500, NI_Text_Welcom03_OFF, NI_SCORE_COMPLETED01, TXT_Weapon_SpyDagger_04, "Resources/GUI/New/TutorialImage_1.gui")
  Text_Guide02 = TriggerPackage:GetTextViewerEx(600, 500, NI_Text_CompleteTip01_off, NI_SCORE_COMPLETED02, TXT_Weapon_SpyDagger_05, "Resources/GUI/New/TutorialImage_1.gui")
  Text_CompleteTip01 = TriggerPackage:GetTextViewerExA(512, 300, NI_SCORE_COMPLETED01, NI_Text_CompleteTip01_off, TXT_Weapon_SpyDagger_08, "Resources/GUI/New/TutorialImage_0.gui", true, false)
  Text_CompleteTip02 = TriggerPackage:GetTextViewerExA(512, 300, NI_SCORE_COMPLETED02, NI_Text_CompleteTip02_off, TXT_Weapon_SpyDagger_09, "Resources/GUI/New/TutorialImage_0.gui", true, false)
  Text_ClearStep01 = TriggerPackage:GetTextViewerExA(512, 250, NI_Text_CompleteTip02_off, 0, TXT_Weapon_SpyDagger_12, "Resources/GUI/New/TutorialImage_1.gui", true, false)
  ScoreCheck01 = TriggerPackage:GetScoreObserver(50, 200, NI_ATTACK_1_SPYDAGGER, NI_SCORE_COMPLETED01, TXT_Weapon_SpyDagger_06, 3)
  ScoreCheck02 = TriggerPackage:GetScoreObserver(50, 220, NI_ATTACK_2_SPYDAGGER, NI_SCORE_COMPLETED02, TXT_Weapon_SpyDagger_10, 3)
  Dummy_ScoreCheck01 = TriggerPackage:GetTextViewerEx(50, 200, NI_SCORE_COMPLETED01, 0, TXT_Weapon_SpyDagger_07, "")
  Dummy_ScoreCheck02 = TriggerPackage:GetTextViewerEx(50, 220, NI_SCORE_COMPLETED02, 0, TXT_Weapon_SpyDagger_11, "")
  ActorAttackCheck01 = TriggerPackage:GetActorAttackObserver(NI_SCORE_COMPLETED01, NI_ATTACK_1_SPYDAGGER, "ATTACK_1_SPYDAGGER", ScoreCheck01)
  ActorAttackCheck02 = TriggerPackage:GetActorAttackObserver(NI_SCORE_COMPLETED02, NI_ATTACK_2_SPYDAGGER, "ATTACK_2_SPYDAGGER", ScoreCheck02)
  RegActorAttackCheck01 = TriggerPackage:GetObserverRegister(NI_Text_Welcom03_OFF, ActorAttackCheck01)
  RegActorAttackCheck02 = TriggerPackage:GetObserverRegister(NI_SCORE_COMPLETED01, ActorAttackCheck02)
  BlastObject01 = TriggerPackage:GetDeployTutoBlastObject("blast2_block100", "mapeffect_blast_box.seq", "wall_destroy_steel.ogg", "wall_create.ogg", 500, 5000, 3, 0)
  TriggerPackage:SetupDeployTutoBlastObject(BlastObject01, 0, NI_null, NI_START, 0, 0)
  BlastObject02 = TriggerPackage:GetDeployTutoBlastObject("blast2_block100_2", "mapeffect_blast_box.seq", "wall_destroy_steel.ogg", "wall_create.ogg", 500, 5000, 3, 0)
  TriggerPackage:SetupDeployTutoBlastObject(BlastObject01, 0, NI_null, NI_START, 0, 0)
  InviBox = TriggerPackage:GetDeployTutoBlastObject("blast2_invibox", "eff_target_green.seq", "wall_destroy_steel.ogg", "wall_create.ogg", 500, 5000, 3, 0)
  TriggerPackage:SetupDeployTutoBlastObject(InviBox, 0, NI_null, NI_START, 0, 0)
  BlastObject02AnimController = TriggerPackage:GetTutoBlastObjectAnimControllerPlay(NI_null, InviBox, 0)
  InviBox02 = TriggerPackage:GetDeployTutoBlastObject("blast2_invibox02", "eff_target_green.seq", "wall_destroy_steel.ogg", "wall_create.ogg", 500, 5000, 3, 0)
  TriggerPackage:SetupDeployTutoBlastObject(InviBox02, 0, NI_null, NI_START, 0, 0)
  BlastObject03AnimController = TriggerPackage:GetTutoBlastObjectAnimControllerPlay(NI_null, InviBox02, 0)
  InviBox03 = TriggerPackage:GetDeployTutoBlastObject("blast2_invibox03", "eff_target_green.seq", "wall_destroy_steel.ogg", "wall_create.ogg", 500, 5000, 3, 0)
  TriggerPackage:SetupDeployTutoBlastObject(InviBox03, 0, NI_null, NI_START, 0, 0)
  BlastObject04AnimController = TriggerPackage:GetTutoBlastObjectAnimControllerPlay(NI_null, InviBox03, 0)
  InviBox04 = TriggerPackage:GetDeployTutoBlastObject("blast2_invibox04", "eff_target_green.seq", "wall_destroy_steel.ogg", "wall_create.ogg", 500, 5000, 3, 0)
  TriggerPackage:SetupDeployTutoBlastObject(InviBox04, 0, NI_null, NI_START, 0, 0)
  BlastObject05AnimController = TriggerPackage:GetTutoBlastObjectAnimControllerPlay(NI_null, InviBox04, 0)
  NarOK01 = TriggerPackage:GetNarrationPlayer(TutorialSystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED01, 0, 0, 0, 0)
  NarOK02 = TriggerPackage:GetNarrationPlayer(TutorialSystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED02, 0, 0, 0, 0)
  GateOpen_Step01 = TriggerPackage:GetCollisionChecker("trg_arrive_01", NI_CONGRATULATION, false)
  RegGateOpen_Step01 = TriggerPackage:GetObserverRegister(NI_Text_CompleteTip02_off, GateOpen_Step01)
  Arrow_Gate_off_01 = TriggerPackage:GetSceneVisible(true, "lc_arrow.scn", NI_START)
  Arrow_Gate_on_01 = TriggerPackage:GetSceneVisible(false, "lc_arrow.scn", NI_Text_CompleteTip02_off)
  MessageBox_Step01 = TriggerPackage:GetStageChanger(TutorialSystem, 0, 1, 0, 10)
  Congraturation_Step01 = TriggerPackage:GetTutorialComplete(NI_CONGRATULATION)
  SpyDaggerLicense:Register(ActorSpawn)
  SpyDaggerLicense:Register(SpyDaggerLoad)
  SpyDaggerLicense:Register(Timer_TextStart)
  SpyDaggerLicense:Register(Timer_Text_Welcom01_Delay)
  SpyDaggerLicense:Register(Timer_Text_Welcom02_Delay)
  SpyDaggerLicense:Register(Timer_Text_Welcom03_Delay)
  SpyDaggerLicense:Register(Timer_Text_CompleteTip01_on)
  SpyDaggerLicense:Register(Timer_Text_CompleteTip01_off)
  SpyDaggerLicense:Register(Timer_Text_CompleteTip02_on)
  SpyDaggerLicense:Register(Timer_Text_CompleteTip02_off)
  SpyDaggerLicense:Register(Text_ClearStep01)
  SpyDaggerLicense:Register(KeyPermiter01)
  SpyDaggerLicense:Register(KeyPermiter02)
  SpyDaggerLicense:Register(KeyPermiter03)
  SpyDaggerLicense:Register(KeyPermiter04)
  SpyDaggerLicense:Register(KeyPermiter05)
  SpyDaggerLicense:Register(KeyPermiter06)
  SpyDaggerLicense:Register(Text_Welcom01)
  SpyDaggerLicense:Register(Text_Welcom02)
  SpyDaggerLicense:Register(Text_Welcom03)
  SpyDaggerLicense:Register(Text_Guide01)
  SpyDaggerLicense:Register(Text_Guide02)
  SpyDaggerLicense:Register(Text_CompleteTip01)
  SpyDaggerLicense:Register(Text_CompleteTip02)
  SpyDaggerLicense:Register(Dummy_ScoreCheck01)
  SpyDaggerLicense:Register(Dummy_ScoreCheck02)
  SpyDaggerLicense:Register(RegActorAttackCheck01)
  SpyDaggerLicense:Register(RegActorAttackCheck02)
  SpyDaggerLicense:Register(NarOK01)
  SpyDaggerLicense:Register(NarOK02)
  SpyDaggerLicense:Register(RegGateOpen_Step01)
  SpyDaggerLicense:Register(Arrow_Gate_off_01)
  SpyDaggerLicense:Register(Arrow_Gate_on_01)
  SpyDaggerLicense:Register(MessageBox_Step01)
  SpyDaggerLicense:Register(Congraturation_Step01)
  SpyDaggerLicense:Register(BlastObject01)
  SpyDaggerLicense:Register(BlastObject02)
  SpyDaggerLicense:Register(InviBox)
  SpyDaggerLicense:Register(BlastObject02AnimController)
  SpyDaggerLicense:Register(InviBox02)
  SpyDaggerLicense:Register(BlastObject03AnimController)
  SpyDaggerLicense:Register(InviBox03)
  SpyDaggerLicense:Register(BlastObject04AnimController)
  SpyDaggerLicense:Register(InviBox04)
  SpyDaggerLicense:Register(BlastObject05AnimController)
  TutorialSystem:AddStage(0, SpyDaggerLicense)
end
NI_Start_Step02 = 201
NI_Text_Step02Start_off = 202
NI_TestStart_Step02 = 203
NI_Text_TestStartStep02_OFF = 204
NI_Fail = 205
NI_Success = 999
NI_Text_TestFail_OFF = 207
NI_Text_TestSuccess_OFF = 208
NI_SayThree = 209
NI_SayTwo = 210
NI_SayOne = 211
NI_Des = 212
NI_Rebirth01 = 213
NI_Des01 = 214
NI_Rebirth02 = 215
NI_Des02 = 216
function OnSpyDaggerLicenseTestStep02()
  TestStage = TutorialSystem:GetEmptyStage()
  ActorSpawn = TriggerPackage:GetSpawnHelper(SPAWN_TRIGGER_BEGIN, SPAWN_FOCUS_ACTOR, "trg_spawn_point_01", 0, 0, 0, 0, true)
  DummyChracterSpawn02 = TriggerPackage:GetSpawnHelper(SPAWN_TRIGGER_BEGIN, SPAWN_ENEMY_MALE, "trg_dummy", 0, NI_Des, 0, 0, true)
  TriggerPackage:SetTriggerID(DummyChracterSpawn02, 1004)
  ActorMoveController01 = TriggerPackage:GetActorMoveController(1004, NI_TestStart_Step02, NI_Des, 0, true)
  TriggerPackage:SetActorMoveControllerWayPoint(ActorMoveController01, "trg_way01")
  TriggerPackage:SetActorMoveControllerWayPoint(ActorMoveController01, "trg_way02")
  TriggerPackage:SetActorMoveControllerWayPoint(ActorMoveController01, "trg_way03")
  TriggerPackage:SetActorMoveControllerWayPoint(ActorMoveController01, "trg_way04")
  DummyChracterSpawn03 = TriggerPackage:GetSpawnHelper(SPAWN_NOTIFY, SPAWN_ENEMY_MALE, "trg_dummy", NI_Rebirth01, NI_Des01, 0, 0, true)
  TriggerPackage:SetTriggerID(DummyChracterSpawn03, 1005)
  ActorMoveController02 = TriggerPackage:GetActorMoveController(1005, NI_Rebirth01, NI_Des01, 0, true)
  TriggerPackage:SetActorMoveControllerWayPoint(ActorMoveController02, "trg_way01")
  TriggerPackage:SetActorMoveControllerWayPoint(ActorMoveController02, "trg_way02")
  TriggerPackage:SetActorMoveControllerWayPoint(ActorMoveController02, "trg_way03")
  TriggerPackage:SetActorMoveControllerWayPoint(ActorMoveController02, "trg_way04")
  DummyChracterSpawn04 = TriggerPackage:GetSpawnHelper(SPAWN_NOTIFY, SPAWN_ENEMY_MALE, "trg_dummy", NI_Rebirth02, NI_Des02, 0, 0, true)
  TriggerPackage:SetTriggerID(DummyChracterSpawn04, 1006)
  ActorMoveController03 = TriggerPackage:GetActorMoveController(1006, NI_Rebirth02, NI_Des02, 0, true)
  TriggerPackage:SetActorMoveControllerWayPoint(ActorMoveController03, "trg_way01")
  TriggerPackage:SetActorMoveControllerWayPoint(ActorMoveController03, "trg_way02")
  TriggerPackage:SetActorMoveControllerWayPoint(ActorMoveController03, "trg_way03")
  TriggerPackage:SetActorMoveControllerWayPoint(ActorMoveController03, "trg_way04")
  Timer_Dummy_Rebirth = TriggerPackage:GetEventAlram(NI_Des, NI_Rebirth01, 5000, 0, false)
  Timer_Trans_Notify01 = TriggerPackage:GetEventAlram(NI_Des01, NI_Des, 2000, 0, false)
  Timer_Trans_Notify02 = TriggerPackage:GetEventAlram(NI_Des01, NI_Rebirth02, 5000, 0, false)
  Timer_Trans_Notify03 = TriggerPackage:GetEventAlram(NI_Des02, NI_Des, 2000, 0, false)
  Arrow_Gate_off_02 = TriggerPackage:GetSceneVisible(true, "lc_arrow.scn", NI_Start_Step02)
  SpyDaggerLoad = TriggerPackage:GetItemDuplicator(0, 2000006, 0, 0)
  SetSpyDaggerData = TriggerPackage:GetSetWeaponData(NI_Start_Step02, NI_Success, 2000006, 1, -1)
  Timer_StartStep02 = TriggerPackage:GetEventAlram(0, NI_Start_Step02, 0, 0, false)
  Timer_Text_Step02Start = TriggerPackage:GetEventAlram(NI_Start_Step02, NI_Text_Step02Start_off, 5000, 0, false)
  Timer_ReadyStep02 = TriggerPackage:GetEventAlram(NI_Text_Step02Start_off, NI_TestStart_Step02, 5000, 0, false)
  Timer_Text_TestStartStep02_off = TriggerPackage:GetEventAlram(NI_TestStart_Step02, NI_Text_TestStartStep02_OFF, 2000, 0, false)
  Timer_End = TriggerPackage:GetEventAlram(NI_TestStart_Step02, NI_Fail, 300000, NI_Success, false)
  TriggerPackage:SetShowEventAlram(Timer_End, 470, 50, TXT_Weapon_SpyDagger_13, 1)
  Timer_Text_TestFail_off = TriggerPackage:GetEventAlram(NI_Fail, NI_Text_TestFail_OFF, 3000, 0, false)
  Timer_Text_TestSuccess_off = TriggerPackage:GetEventAlram(NI_Success, NI_Text_TestSuccess_OFF, 10000, 0, false)
  Hold_Actor_Step02_01 = TriggerPackage:GetKeyPermiter(TutorialSystem:GetInputSystem(), NI_Start_Step02, NI_Start_Step02, false)
  Realse_Actor_Step02_01 = TriggerPackage:GetKeyPermiter(TutorialSystem:GetInputSystem(), NI_TestStart_Step02, NI_TestStart_Step02, true)
  Text_Step02Start = TriggerPackage:GetTextViewerExA(512, 250, NI_Start_Step02, NI_Text_Step02Start_off, TXT_Weapon_SpyDagger_14, "Resources/GUI/New/TutorialImage_1.gui", true, false)
  Text_Step02Ready = TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Step02Start_off, NI_TestStart_Step02, TXT_Weapon_SpyDagger_15, "Resources/GUI/New/TutorialImage_1.gui", true, false)
  Text_TestStartStep02 = TriggerPackage:GetTextViewerExA(512, 250, NI_TestStart_Step02, NI_Text_TestStartStep02_OFF, TXT_Weapon_SpyDagger_16, "Resources/GUI/New/TutorialImage_1.gui", true, false)
  Text_Guide_Step02_01 = TriggerPackage:GetTextViewerEx(600, 500, NI_TestStart_Step02, NI_Text_TestSuccess_OFF, TXT_Weapon_SpyDagger_17, "Resources/GUI/New/TutorialImage_1.gui")
  Text_TestFail = TriggerPackage:GetTextViewerExA(512, 250, NI_Fail, NI_Text_TestFail_OFF, TXT_Weapon_SpyDagger_18, "Resources/GUI/New/TutorialImage_1.gui", true, false)
  Text_TestSuccess = TriggerPackage:GetTextViewerExA(512, 200, NI_Success, NI_Text_TestSuccess_OFF, TXT_Weapon_SpyDagger_19, "Resources/GUI/New/TutorialImage_1.gui", true, false)
  ScoreCheck01 = TriggerPackage:GetScoreObserver(50, 200, NI_Des, NI_Success, TXT_Weapon_SpyDagger_20, 3)
  Dummy_ScoreCheck01 = TriggerPackage:GetTextViewerEx(50, 200, NI_SCORE_COMPLETED03, 0, TXT_Weapon_SpyDagger_21, "")
  Timer_SayThree = TriggerPackage:GetEventAlram(NI_Text_Step02Start_off, NI_SayThree, 2000, 0, false)
  Timer_SayTwo = TriggerPackage:GetEventAlram(NI_SayThree, NI_SayTwo, 1000, 0, false)
  Timer_SayOne = TriggerPackage:GetEventAlram(NI_SayTwo, NI_SayOne, 1000, 0, false)
  NarThree = TriggerPackage:GetNarrationPlayer(TutorialSystem:GetBGMController(), "resources\\sound\\interface\\3.ogg", "", NI_SayThree, 0, 0, 0, 0)
  NarTwo = TriggerPackage:GetNarrationPlayer(TutorialSystem:GetBGMController(), "resources\\sound\\interface\\2.ogg", "", NI_SayTwo, 0, 0, 0, 0)
  NarOne = TriggerPackage:GetNarrationPlayer(TutorialSystem:GetBGMController(), "resources\\sound\\interface\\1.ogg", "", NI_SayOne, 0, 0, 0, 0)
  NarEnd = TriggerPackage:GetNarrationPlayer(TutorialSystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_Success, 0, 0, 0, 0)
  NarWinGame = TriggerPackage:GetNarrationPlayer(TutorialSystem:GetBGMController(), "resources\\sound\\interface\\you_have_won_the_match.ogg", "", NI_Success, 0, 0, 0, 0)
  InPutLicense = TriggerPackage:GetItemLicensed(NI_Success, 33)
  Hold_Actor_Fail = TriggerPackage:GetKeyPermiter(TutorialSystem:GetInputSystem(), NI_Fail, NI_Fail, false)
  NarTimeIsUP = TriggerPackage:GetNarrationPlayer(TutorialSystem:GetBGMController(), "resources\\sound\\interface\\inter_timeover.ogg", "", NI_Fail, 0, 0, 0, 0)
  NarLostGame = TriggerPackage:GetNarrationPlayer(TutorialSystem:GetBGMController(), "resources\\sound\\interface\\you_lost_the_match1.ogg", "", NI_Fail, 0, 0, 0, 0)
  MessageBox_Step02 = TriggerPackage:GetStageChanger(TutorialSystem, 0, 1, NI_Text_TestFail_OFF, 10)
  MessageBox_Step03 = TriggerPackage:GetStageChanger(TutorialSystem, 0, 1, 0, 10)
  TestSuccessEnd = TriggerPackage:GetTutorialComplete(NI_Text_TestSuccess_OFF)
  TestStage:Register(ActorSpawn)
  TestStage:Register(DummyChracterSpawn02)
  TestStage:Register(ActorMoveController01)
  TestStage:Register(DummyChracterSpawn03)
  TestStage:Register(ActorMoveController02)
  TestStage:Register(DummyChracterSpawn04)
  TestStage:Register(ActorMoveController03)
  TestStage:Register(Timer_Dummy_Rebirth)
  TestStage:Register(Timer_Trans_Notify01)
  TestStage:Register(Timer_Trans_Notify02)
  TestStage:Register(Timer_Trans_Notify03)
  TestStage:Register(Arrow_Gate_off_02)
  TestStage:Register(SpyDaggerLoad)
  TestStage:Register(SetSpyDaggerData)
  TestStage:Register(Timer_StartStep02)
  TestStage:Register(Timer_Text_Step02Start)
  TestStage:Register(Timer_ReadyStep02)
  TestStage:Register(Timer_Text_TestStartStep02_off)
  TestStage:Register(Timer_End)
  TestStage:Register(Timer_Text_TestFail_off)
  TestStage:Register(Timer_Text_TestSuccess_off)
  TestStage:Register(Hold_Actor_Step02_01)
  TestStage:Register(Realse_Actor_Step02_01)
  TestStage:Register(Text_Step02Start)
  TestStage:Register(Text_Step02Ready)
  TestStage:Register(Text_TestStartStep02)
  TestStage:Register(Text_Guide_Step02_01)
  TestStage:Register(Text_TestFail)
  TestStage:Register(Text_TestSuccess)
  TestStage:Register(ScoreCheck01)
  TestStage:Register(Dummy_ScoreCheck01)
  TestStage:Register(RegGateOpen_Step01)
  TestStage:Register(Timer_SayThree)
  TestStage:Register(Timer_SayTwo)
  TestStage:Register(Timer_SayOne)
  TestStage:Register(NarThree)
  TestStage:Register(NarTwo)
  TestStage:Register(NarOne)
  TestStage:Register(NarEnd)
  TestStage:Register(NarWinGame)
  TestStage:Register(InPutLicense)
  TestStage:Register(Hold_Actor_Fail)
  TestStage:Register(NarTimeIsUP)
  TestStage:Register(NarLostGame)
  TestStage:Register(MessageBox_Step02)
  TestStage:Register(MessageBox_Step03)
  TestStage:Register(TestSuccessEnd)
  TutorialSystem:AddStage(1, TestStage)
end
