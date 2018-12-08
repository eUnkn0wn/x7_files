SPAWN_FOCUS_ACTOR = 0
SPAWN_ENERMY_SENTRYGUN = 1
SPAWN_ENERMY_SENTYFORCE = 2
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
function OnFryingLicenseTest()
  TutorialSystem:SetTotalStage(2)
  OnFlyingLicenseTestStep01()
  OnFlyingLicenseTestStep02()
end
NI_START = 101
NI_Text_Welcom01_OFF = 102
NI_Text_Welcom02_OFF = 103
NI_Text_Welcom03_OFF = 104
NI_SCORE_COMPLETED01 = 105
NI_SKILL_FLY = 106
NI_Text_CompleteTip01_on = 107
NI_Text_CompleteTip01_off = 108
NI_Text_CompleteTip02_on = 109
NI_Text_CompleteTip02_off = 110
NI_CONGRATULATION = 111
NI_SCORE_COMPLETED02 = 112
LoadStringTable("Language/Script/tutorial_string_table.x7")
TXT_Skill_flying_01 = GetString("TXT_Skill_flying_01")
TXT_Skill_flying_02 = GetString("TXT_Skill_flying_02")
TXT_Skill_flying_03 = GetString("TXT_Skill_flying_03")
TXT_Skill_flying_04 = GetString("TXT_Skill_flying_04")
TXT_Skill_flying_05 = GetString("TXT_Skill_flying_05")
TXT_Skill_flying_06 = GetString("TXT_Skill_flying_06")
TXT_Skill_flying_07 = GetString("TXT_Skill_flying_07")
TXT_Skill_flying_08 = GetString("TXT_Skill_flying_08")
TXT_Skill_flying_09 = GetString("TXT_Skill_flying_09")
TXT_Skill_flying_10 = GetString("TXT_Skill_flying_10")
TXT_Skill_flying_11 = GetString("TXT_Skill_flying_11")
TXT_Skill_flying_12 = GetString("TXT_Skill_flying_12")
TXT_Skill_flying_13 = GetString("TXT_Skill_flying_13")
TXT_Skill_flying_14 = GetString("TXT_Skill_flying_14")
TXT_Skill_flying_15 = GetString("TXT_Skill_flying_15")
TXT_Skill_flying_16 = GetString("TXT_Skill_flying_16")
TXT_Skill_flying_17 = GetString("TXT_Skill_flying_17")
ClearStringTable()
function OnFlyingLicenseTestStep01()
  FlyingLicense = TutorialSystem:GetEmptyStage()
  ActorSpawn = TriggerPackage:GetSpawnHelper(SPAWN_TRIGGER_BEGIN, SPAWN_FOCUS_ACTOR, "trg_spawn_point_01", 0, 0, 0, 0, true)
  FlyingLoad = TriggerPackage:GetItemDuplicator(0, 3020001, 0, 0)
  Timer_TextStart = TriggerPackage:GetEventAlram(0, NI_START, 0, 0, false)
  Timer_Text_Welcom01_Delay = TriggerPackage:GetEventAlram(NI_START, NI_Text_Welcom01_OFF, 5000, 0, false)
  Timer_Text_Welcom02_Delay = TriggerPackage:GetEventAlram(NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, 2000, 0, false)
  Timer_Text_Welcom03_Delay = TriggerPackage:GetEventAlram(NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, 3000, 0, false)
  Timer_Text_CompleteTip01_on = TriggerPackage:GetEventAlram(NI_SCORE_COMPLETED01, NI_Text_CompleteTip01_on, 1000, 0, false)
  Timer_Text_CompleteTip01_off = TriggerPackage:GetEventAlram(NI_Text_CompleteTip01_on, NI_Text_CompleteTip01_off, 6000, 0, false)
  Timer_Text_CompleteTip02_on = TriggerPackage:GetEventAlram(NI_SCORE_COMPLETED02, NI_Text_CompleteTip02_on, 1000, 0, false)
  Timer_Text_CompleteTip02_off = TriggerPackage:GetEventAlram(NI_Text_CompleteTip02_on, NI_Text_CompleteTip02_off, 6000, 0, false)
  Text_ClearStep01 = TriggerPackage:GetTextViewerEx(220, 250, NI_Text_CompleteTip02_off, 0, TXT_Skill_flying_10, "Resources/GUI/New/TutorialImage_1.gui")
  KeyPermiter01 = TriggerPackage:GetKeyPermiter(TutorialSystem:GetInputSystem(), NI_START, NI_START, false)
  KeyPermiter02 = TriggerPackage:GetKeyPermiter(TutorialSystem:GetInputSystem(), NI_Text_Welcom03_OFF, NI_Text_Welcom03_OFF, true)
  KeyPermiter03 = TriggerPackage:GetKeyPermiter(TutorialSystem:GetInputSystem(), NI_Text_CompleteTip01_on, NI_Text_CompleteTip01_on, false)
  KeyPermiter04 = TriggerPackage:GetKeyPermiter(TutorialSystem:GetInputSystem(), NI_Text_CompleteTip01_off, NI_Text_CompleteTip01_off, true)
  KeyPermiter05 = TriggerPackage:GetKeyPermiter(TutorialSystem:GetInputSystem(), NI_Text_CompleteTip02_on, NI_Text_CompleteTip02_on, false)
  KeyPermiter06 = TriggerPackage:GetKeyPermiter(TutorialSystem:GetInputSystem(), NI_Text_CompleteTip02_off, NI_Text_CompleteTip02_off, true)
  Arrow_Arrow2_off_01 = TriggerPackage:GetSceneVisible(true, "lc_arrow2.scn", NI_START)
  Arrow_Anc_off_01 = TriggerPackage:GetSceneVisible(true, "lc_anc_arrow.scn", NI_START)
  Arrow_Fly_off_01 = TriggerPackage:GetSceneVisible(true, "lc_fly_point.scn", NI_START)
  Arrow_Gate_off_01 = TriggerPackage:GetSceneVisible(true, "lc_arrow.scn", NI_START)
  Arrow_AncPoint_off_01 = TriggerPackage:GetSceneVisible(true, "lc_anc_point.scn", NI_START)
  Arrow_Fly_on_01 = TriggerPackage:GetSceneVisible(false, "lc_fly_point.scn", NI_Text_CompleteTip01_off)
  Arrow_Fly_off_02 = TriggerPackage:GetSceneVisible(true, "lc_fly_point.scn", NI_Text_CompleteTip02_off)
  Arrow_Gate_on_01 = TriggerPackage:GetSceneVisible(false, "lc_arrow.scn", NI_Text_CompleteTip02_off)
  Text_Welcom01 = TriggerPackage:GetTextViewerExA(512, 250, NI_START, NI_Text_Welcom01_OFF, TXT_Skill_flying_01, "Resources/GUI/New/TutorialImage_1.gui", true, false)
  Text_Welcom02 = TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, TXT_Skill_flying_02, "Resources/GUI/New/TutorialImage_1.gui", true, false)
  Text_Welcom03 = TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, TXT_Skill_flying_03, "Resources/GUI/New/TutorialImage_1.gui", true, false)
  Text_Guide01 = TriggerPackage:GetTextViewerEx(600, 500, NI_Text_Welcom03_OFF, NI_Text_CompleteTip01_on, TXT_Skill_flying_04, "Resources/GUI/New/TutorialImage_1.gui")
  Text_Guide02 = TriggerPackage:GetTextViewerEx(600, 500, NI_Text_CompleteTip01_off, NI_Text_CompleteTip02_on, TXT_Skill_flying_09, "Resources/GUI/New/TutorialImage_1.gui")
  Text_CompleteTip01 = TriggerPackage:GetTextViewerExA(512, 300, NI_Text_CompleteTip01_on, NI_Text_CompleteTip01_off, TXT_Skill_flying_07, "Resources/GUI/New/TutorialImage_0.gui", true, false)
  Text_CompleteTip02 = TriggerPackage:GetTextViewerExA(512, 300, NI_Text_CompleteTip02_on, NI_Text_CompleteTip02_off, TXT_Skill_flying_08, "Resources/GUI/New/TutorialImage_0.gui", true, false)
  ScoreCheck01 = TriggerPackage:GetScoreObserver(50, 200, NI_SKILL_FLY, NI_SCORE_COMPLETED01, TXT_Skill_flying_05, 3)
  Dummy_ScoreCheck01 = TriggerPackage:GetTextViewerEx(50, 200, NI_SCORE_COMPLETED01, NI_SKILL_FLY, TXT_Skill_flying_06, "")
  ActorAttackCheck01 = TriggerPackage:GetActorAttackObserver(NI_SCORE_COMPLETED01, NI_SKILL_FLY, "SKILL_FLY", ScoreCheck01)
  RegActorAttackCheck01 = TriggerPackage:GetObserverRegister(NI_Text_Welcom03_OFF, ActorAttackCheck01)
  NarOK01 = TriggerPackage:GetNarrationPlayer(TutorialSystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED01, 0, 0, 0, 0)
  NarOK02 = TriggerPackage:GetNarrationPlayer(TutorialSystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED02, 0, 0, 0, 0)
  GateOpen_Step01 = TriggerPackage:GetCollisionChecker("trg_arrive_03", NI_SCORE_COMPLETED02, false)
  RegGateOpen_Step01 = TriggerPackage:GetObserverRegister(NI_Text_CompleteTip01_off, GateOpen_Step01)
  GateOpen_Step02 = TriggerPackage:GetCollisionChecker("trg_arrive_01", NI_CONGRATULATION, false)
  RegGateOpen_Step02 = TriggerPackage:GetObserverRegister(NI_Text_CompleteTip02_off, GateOpen_Step02)
  MessageBox_Step01 = TriggerPackage:GetStageChanger(TutorialSystem, 0, 1, 0, 14)
  Congraturation_Step01 = TriggerPackage:GetTutorialComplete(NI_CONGRATULATION)
  FlyingLicense:Register(ActorSpawn)
  FlyingLicense:Register(FlyingLoad)
  FlyingLicense:Register(Timer_TextStart)
  FlyingLicense:Register(Timer_Text_Welcom01_Delay)
  FlyingLicense:Register(Timer_Text_Welcom02_Delay)
  FlyingLicense:Register(Timer_Text_Welcom03_Delay)
  FlyingLicense:Register(Timer_Text_CompleteTip01_on)
  FlyingLicense:Register(Timer_Text_CompleteTip01_off)
  FlyingLicense:Register(Timer_Text_CompleteTip02_on)
  FlyingLicense:Register(Timer_Text_CompleteTip02_off)
  FlyingLicense:Register(Text_ClearStep01)
  FlyingLicense:Register(KeyPermiter01)
  FlyingLicense:Register(KeyPermiter02)
  FlyingLicense:Register(KeyPermiter03)
  FlyingLicense:Register(KeyPermiter04)
  FlyingLicense:Register(KeyPermiter05)
  FlyingLicense:Register(KeyPermiter06)
  FlyingLicense:Register(Arrow_Arrow2_off_01)
  FlyingLicense:Register(Arrow_Anc_off_01)
  FlyingLicense:Register(Arrow_Fly_off_01)
  FlyingLicense:Register(Arrow_Gate_off_01)
  FlyingLicense:Register(Arrow_AncPoint_off_01)
  FlyingLicense:Register(Arrow_Fly_on_01)
  FlyingLicense:Register(Arrow_Fly_off_02)
  FlyingLicense:Register(Arrow_Gate_on_01)
  FlyingLicense:Register(Text_Welcom01)
  FlyingLicense:Register(Text_Welcom02)
  FlyingLicense:Register(Text_Welcom03)
  FlyingLicense:Register(Text_Guide01)
  FlyingLicense:Register(Text_Guide02)
  FlyingLicense:Register(Text_CompleteTip01)
  FlyingLicense:Register(Text_CompleteTip02)
  FlyingLicense:Register(Dummy_ScoreCheck01)
  FlyingLicense:Register(RegActorAttackCheck01)
  FlyingLicense:Register(NarOK01)
  FlyingLicense:Register(NarOK02)
  FlyingLicense:Register(RegGateOpen_Step01)
  FlyingLicense:Register(RegGateOpen_Step02)
  FlyingLicense:Register(Congraturation_Step01)
  FlyingLicense:Register(MessageBox_Step01)
  TutorialSystem:AddStage(0, FlyingLicense)
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
function OnFlyingLicenseTestStep02()
  TestStage = TutorialSystem:GetEmptyStage()
  ActorSpawn = TriggerPackage:GetSpawnHelper(SPAWN_TRIGGER_BEGIN, SPAWN_FOCUS_ACTOR, "trg_spawn_point_01", 0, 0, 0, 0, true)
  FlyingLoad = TriggerPackage:GetItemDuplicator(0, 3020001, 0, 0)
  Timer_StartStep02 = TriggerPackage:GetEventAlram(0, NI_Start_Step02, 0, 0, false)
  Timer_Text_Step02Start = TriggerPackage:GetEventAlram(NI_Start_Step02, NI_Text_Step02Start_off, 5000, 0, false)
  Timer_ReadyStep02 = TriggerPackage:GetEventAlram(NI_Text_Step02Start_off, NI_TestStart_Step02, 5000, 0, false)
  Timer_Text_TestStartStep02_off = TriggerPackage:GetEventAlram(NI_TestStart_Step02, NI_Text_TestStartStep02_OFF, 2000, 0, false)
  Timer_End = TriggerPackage:GetEventAlram(NI_TestStart_Step02, NI_Fail, 60000, NI_Success, false)
  TriggerPackage:SetShowEventAlram(Timer_End, 470, 50, TXT_Skill_flying_11, 1)
  Timer_Text_TestFail_off = TriggerPackage:GetEventAlram(NI_Fail, NI_Text_TestFail_OFF, 3000, 0, false)
  Timer_Text_TestSuccess_off = TriggerPackage:GetEventAlram(NI_Success, NI_Text_TestSuccess_OFF, 10000, 0, false)
  Hold_Actor_Step02_01 = TriggerPackage:GetKeyPermiter(TutorialSystem:GetInputSystem(), NI_Start_Step02, NI_Start_Step02, false)
  Realse_Actor_Step02_01 = TriggerPackage:GetKeyPermiter(TutorialSystem:GetInputSystem(), NI_TestStart_Step02, NI_TestStart_Step02, true)
  Arrow_AncPoint_off_01 = TriggerPackage:GetSceneVisible(false, "lc_anc_point.scn", NI_Text_CompleteTip01_off)
  Arrow_Gate_off_01 = TriggerPackage:GetSceneVisible(false, "lc_arrow.scn", NI_Text_CompleteTip02_off)
  Arrow_Arrow2_on_01 = TriggerPackage:GetSceneVisible(false, "lc_arrow2.scn", NI_Start_Step02)
  Arrow_Anc_on_01 = TriggerPackage:GetSceneVisible(false, "lc_anc_arrow.scn", NI_Start_Step02)
  Text_Step02Start = TriggerPackage:GetTextViewerExA(512, 250, NI_Start_Step02, NI_Text_Step02Start_off, TXT_Skill_flying_12, "Resources/GUI/New/TutorialImage_1.gui", true, false)
  Text_Step02Ready = TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Step02Start_off, NI_TestStart_Step02, TXT_Skill_flying_13, "Resources/GUI/New/TutorialImage_1.gui", true, false)
  Text_TestStartStep02 = TriggerPackage:GetTextViewerExA(512, 250, NI_TestStart_Step02, NI_Text_TestStartStep02_OFF, TXT_Skill_flying_14, "Resources/GUI/New/TutorialImage_1.gui", true, false)
  Text_Guide_Step02_01 = TriggerPackage:GetTextViewerEx(600, 500, NI_Text_TestStartStep02_OFF, 0, TXT_Skill_flying_15, "Resources/GUI/New/TutorialImage_1.gui")
  Text_TestFail = TriggerPackage:GetTextViewerExA(512, 250, NI_Fail, NI_Text_TestFail_OFF, TXT_Skill_flying_16, "Resources/GUI/New/TutorialImage_1.gui", true, false)
  Text_TestSuccess = TriggerPackage:GetTextViewerExA(512, 200, NI_Success, NI_Text_TestSuccess_OFF, TXT_Skill_flying_17, "Resources/GUI/New/TutorialImage_1.gui", true, false)
  GoalOpen_Step01 = TriggerPackage:GetCollisionChecker("trg_arrive_02", NI_Success, false)
  RegGateOpen_Step01 = TriggerPackage:GetObserverRegister(NI_Text_TestStartStep02_OFF, GoalOpen_Step01)
  Timer_SayThree = TriggerPackage:GetEventAlram(NI_Text_Step02Start_off, NI_SayThree, 2000, 0, false)
  Timer_SayTwo = TriggerPackage:GetEventAlram(NI_SayThree, NI_SayTwo, 1000, 0, false)
  Timer_SayOne = TriggerPackage:GetEventAlram(NI_SayTwo, NI_SayOne, 1000, 0, false)
  NarThree = TriggerPackage:GetNarrationPlayer(TutorialSystem:GetBGMController(), "resources\\sound\\interface\\3.ogg", "", NI_SayThree, 0, 0, 0, 0)
  NarTwo = TriggerPackage:GetNarrationPlayer(TutorialSystem:GetBGMController(), "resources\\sound\\interface\\2.ogg", "", NI_SayTwo, 0, 0, 0, 0)
  NarOne = TriggerPackage:GetNarrationPlayer(TutorialSystem:GetBGMController(), "resources\\sound\\interface\\1.ogg", "", NI_SayOne, 0, 0, 0, 0)
  NarEnd = TriggerPackage:GetNarrationPlayer(TutorialSystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_Success, 0, 0, 0, 0)
  NarWinGame = TriggerPackage:GetNarrationPlayer(TutorialSystem:GetBGMController(), "resources\\sound\\interface\\you_have_won_the_match.ogg", "", NI_Success, 0, 0, 0, 0)
  InPutLicense = TriggerPackage:GetItemLicensed(NI_Success, 14)
  Hold_Actor_Fail = TriggerPackage:GetKeyPermiter(TutorialSystem:GetInputSystem(), NI_Fail, NI_Fail, false)
  NarTimeIsUP = TriggerPackage:GetNarrationPlayer(TutorialSystem:GetBGMController(), "resources\\sound\\interface\\inter_timeover.ogg", "", NI_Fail, 0, 0, 0, 0)
  NarLostGame = TriggerPackage:GetNarrationPlayer(TutorialSystem:GetBGMController(), "resources\\sound\\interface\\you_lost_the_match1.ogg", "", NI_Fail, 0, 0, 0, 0)
  MessageBox_Step02 = TriggerPackage:GetStageChanger(TutorialSystem, 0, 1, NI_Text_TestFail_OFF, 14)
  MessageBox_Step03 = TriggerPackage:GetStageChanger(TutorialSystem, 0, 1, 0, 14)
  TestSuccessEnd = TriggerPackage:GetTutorialComplete(NI_Text_TestSuccess_OFF)
  TestStage:Register(ActorSpawn)
  TestStage:Register(FlyingLoad)
  TestStage:Register(Timer_StartStep02)
  TestStage:Register(Timer_Text_Step02Start)
  TestStage:Register(Timer_ReadyStep02)
  TestStage:Register(Timer_Text_TestStartStep02_off)
  TestStage:Register(Timer_End)
  TestStage:Register(Timer_Text_TestFail_off)
  TestStage:Register(Timer_Text_TestSuccess_off)
  TestStage:Register(Hold_Actor_Step02_01)
  TestStage:Register(Realse_Actor_Step02_01)
  TestStage:Register(Arrow_AncPoint_off_01)
  TestStage:Register(Arrow_Gate_off_01)
  TestStage:Register(Arrow_Arrow2_on_01)
  TestStage:Register(Arrow_Anc_on_01)
  TestStage:Register(Text_Step02Start)
  TestStage:Register(Text_Step02Ready)
  TestStage:Register(Text_TestStartStep02)
  TestStage:Register(Text_Guide_Step02_01)
  TestStage:Register(Text_TestFail)
  TestStage:Register(Text_TestSuccess)
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
