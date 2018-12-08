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
function OnVitalShockLicenseTest()
  TutorialSystem:SetTotalStage(2)
  OnVitalShockLicenseTestStep01()
  OnVitalShockLicenseTestStep02()
end
NI_START = 101
NI_Text_Welcom01_OFF = 102
NI_Text_Welcom02_OFF = 103
NI_Text_Welcom03_OFF = 104
NI_SCORE_COMPLETED01 = 105
NI_SKILL_SHIELD = 106
NI_Text_CompleteTip01_on = 107
NI_Text_CompleteTip01_off = 108
NI_Text_CompleteTip02_off = 109
NI_CONGRATULATION = 110
NI_Text_TestSuccess_OFF = 111
TXT_WELCOM_01 = "{F-2002_20}{A-C}{S-S}{CB-255,255,255,255}\185\217\192\204\197\187\188\238\197\169 \182\243\192\204\188\190\189\186 \197\215\189\186\198\174\184\166 \192\167\199\209 \191\172\189\192\176\248\176\163\191\161 \191\192\189\197\176\201 \200\175\191\181 \199\213\180\207\180\217."
TXT_WELCOM_02 = "{F-2002_20}{A-C}{S-S}{CB-255,255,255,255}\191\172\189\192 \193\246\181\181\184\166 \192\167\199\209 \191\236\195\248 \199\207\180\220\192\199 \184\222\189\195\193\246\184\166 \193\214\184\241\199\207\188\188\191\228."
TXT_WELCOM_03 = "{F-2002_20}{A-C}{S-S}{CB-255,255,255,255}\193\246\177\221\186\206\197\205 \185\217\192\204\197\187\188\238\197\169 \187\231\191\235\185\253 \191\172\189\192\192\187 \189\195\192\219\199\213\180\207\180\217."
TXT_GUIDE_01 = "{F-2002_15}{A-C}{S-S}{CB-255,255,255,255}\185\217\192\204\197\187\188\238\197\169 {CB-0,255,255,255}[\188\238\197\169\176\248\176\221]{CB-255,255,255,255}\192\187 \192\205\200\247\188\188\191\228.{N}\184\182\191\236\189\186 \191\222\194\202 \185\246\198\176\192\187 \176\161\186\177\176\212 \180\169\184\163\184\233 \188\238\197\169\176\248\176\221\192\187{N}\190\224 1\195\202\176\163 \189\195\181\181\199\207\184\231, \176\248\176\221 \193\223 \180\217\184\165 \199\224\181\191\192\204 \186\210\176\161\180\201 \199\213\180\207\180\217.{N}\185\217\192\204\197\187\188\238\197\169\184\166 \192\204\191\235\199\216 \188\238\197\169\176\248\176\221\192\187 \189\195\181\181\199\216\186\184\188\188\191\228!"
TXT_ATTACK_1_REVOLVER_TEST = "{F-2002_15}{A-C}{S-S}{CB-255,255,255,255}\185\217\192\204\197\187\188\238\197\169 \187\231\191\235 %d / %d"
TXT_Dummy_01 = "{F-2002_15}{A-C}{S-S}{CB-170,170,170,255}\185\217\192\204\197\187\188\238\197\169 \187\231\191\235 3 / 3"
TXT_TIP_01 = "{F-2002_15}{A-C}{S-S}{CB-255,255,255,255}\185\217\192\204\197\187\188\238\197\169 TIP-1{N}\177\217\176\197\184\174\192\199 \192\251\192\187 \199\226\199\216 \188\238\197\169\184\166 \192\207\192\184\197\176\180\194 \176\248\176\221\192\187 \190\224 1\195\202\176\163 \189\195\181\181\199\213\180\207\180\217.{N}\185\217\192\204\197\187\188\238\197\169\192\199 \176\248\176\221\192\187 \185\222\180\194\181\191\190\200 \176\230\193\247\181\199\190\238 \191\242\193\247\192\207 \188\246 \190\248\176\212 \181\203\180\207\180\217.{N}\182\199\199\209 \177\217\193\162 \188\238\197\169\176\248\176\221\192\184\183\206 \196\171\191\238\197\205\189\186\191\246\181\229\192\199 \185\221\176\221\192\187 \185\171\189\195\199\213\180\207\180\217."
TXT_TIP_02 = "{F-2002_15}{A-C}{S-S}{CB-255,255,255,255}\185\217\192\204\197\187\188\238\197\169 TIP-2{N}\185\217\192\204\197\187\188\238\197\169\192\199 \176\248\176\221\192\187 \185\222\180\194 \192\251\177\186\192\186 SP\184\166 \188\210\184\240\199\207\180\194 \200\184\199\199\192\204\181\191\192\187 \197\235\199\216{N}\176\230\193\247\192\184\183\206\186\206\197\205 \185\254\190\238\179\175 \188\246 \192\214\192\184\180\207 \193\214\192\199\199\207\188\188\191\228."
function OnVitalShockLicenseTestStep01()
  VitalShockLicense = TutorialSystem:GetEmptyStage()
  ActorSpawn = TriggerPackage:GetSpawnHelper(SPAWN_TRIGGER_BEGIN, SPAWN_FOCUS_ACTOR, "trg_spawn_point_01", 0, 0, 0, 0, true)
  VitalShockLoad = TriggerPackage:GetItemDuplicator(0, 2000005, 0, 0)
  Timer_TextStart = TriggerPackage:GetEventAlram(0, NI_START, 0, 0, false)
  Timer_Text_Welcom01_Delay = TriggerPackage:GetEventAlram(NI_START, NI_Text_Welcom01_OFF, 5000, 0, false)
  Timer_Text_Welcom02_Delay = TriggerPackage:GetEventAlram(NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, 3000, 0, false)
  Timer_Text_Welcom03_Delay = TriggerPackage:GetEventAlram(NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, 3000, 0, false)
  Timer_Text_CompleteTip01_on = TriggerPackage:GetEventAlram(NI_SCORE_COMPLETED01, NI_Text_CompleteTip01_on, 500, 0, false)
  Timer_Text_CompleteTip01_off = TriggerPackage:GetEventAlram(NI_Text_CompleteTip01_on, NI_Text_CompleteTip01_off, 8000, 0, false)
  Timer_Text_CompleteTip02_off = TriggerPackage:GetEventAlram(NI_Text_CompleteTip01_off, NI_Text_CompleteTip02_off, 8000, 0, false)
  KeyPermiter01 = TriggerPackage:GetKeyPermiter(TutorialSystem:GetInputSystem(), NI_START, NI_START, false)
  KeyPermiter02 = TriggerPackage:GetKeyPermiter(TutorialSystem:GetInputSystem(), NI_Text_Welcom03_OFF, NI_Text_Welcom03_OFF, true)
  KeyPermiter03 = TriggerPackage:GetKeyPermiter(TutorialSystem:GetInputSystem(), NI_Text_CompleteTip01_on, NI_Text_CompleteTip01_on, false)
  KeyPermiter04 = TriggerPackage:GetKeyPermiter(TutorialSystem:GetInputSystem(), NI_Text_CompleteTip02_off, NI_Text_CompleteTip02_off, true)
  Text_Welcom01 = TriggerPackage:GetTextViewerExA(512, 250, NI_START, NI_Text_Welcom01_OFF, TXT_WELCOM_01, "Resources/GUI/New/TutorialImage_1.gui", true, false)
  Text_Welcom02 = TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, TXT_WELCOM_02, "Resources/GUI/New/TutorialImage_1.gui", true, false)
  Text_Welcom03 = TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, TXT_WELCOM_03, "Resources/GUI/New/TutorialImage_1.gui", true, false)
  Text_Guide01 = TriggerPackage:GetTextViewerEx(600, 500, NI_Text_Welcom03_OFF, 0, TXT_GUIDE_01, "Resources/GUI/New/TutorialImage_1.gui")
  Text_CompleteTip01 = TriggerPackage:GetTextViewerExA(512, 300, NI_SCORE_COMPLETED01, NI_Text_CompleteTip01_off, TXT_TIP_01, "Resources/GUI/New/TutorialImage_0.gui", true, false)
  Text_CompleteTip02 = TriggerPackage:GetTextViewerExA(512, 300, NI_Text_CompleteTip01_off, NI_Text_CompleteTip02_off, TXT_TIP_02, "Resources/GUI/New/TutorialImage_0.gui", true, false)
  Text_TestSuccess = TriggerPackage:GetTextViewerExA(512, 200, NI_Text_CompleteTip02_off, NI_Text_TestSuccess_OFF, "{F-2002_20}{A-C}{S-S}{CB-255,255,255,255}\200\199\184\162\199\207\176\212 \191\172\189\192\192\187 \179\161\184\182\195\198\189\192\180\207\180\217.{N}\200\173\187\236\199\165\176\161 \192\214\180\194 \176\247\192\184\183\206 \192\204\181\191\199\207\184\233 \197\215\189\186\198\174 \192\229\188\210\183\206 \192\204\181\191\199\213\180\207\180\217.{F-2002_15}{N}\193\216\186\241\176\161 \181\199\190\250\180\217\184\233 \182\243\192\204\188\190\189\186 \197\215\189\186\198\174\191\161 \181\181\192\252\199\207\188\188\191\228!", "Resources/GUI/New/TutorialImage_1.gui", true, false)
  ScoreCheck01 = TriggerPackage:GetScoreObserver(50, 200, NI_SKILL_SHIELD, NI_SCORE_COMPLETED01, TXT_ATTACK_1_REVOLVER_TEST, 3)
  Dummy_ScoreCheck01 = TriggerPackage:GetTextViewerEx(50, 200, NI_SCORE_COMPLETED01, NI_SKILL_SHIELD, TXT_Dummy_01, "")
  ActorAttackCheck01 = TriggerPackage:GetActorAttackObserver(NI_SCORE_COMPLETED01, NI_SKILL_SHIELD, "ATTACK_1_ASSASSIN_CLAW", ScoreCheck01)
  RegActorAttackCheck01 = TriggerPackage:GetObserverRegister(NI_Text_Welcom03_OFF, ActorAttackCheck01)
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
  Arrow_Gate_off_01 = TriggerPackage:GetSceneVisible(true, "lc_arrow.scn", NI_START)
  Arrow_Gate_on_01 = TriggerPackage:GetSceneVisible(false, "lc_arrow.scn", NI_Text_CompleteTip02_off)
  GateOpen_Step01 = TriggerPackage:GetCollisionChecker("trg_arrive_01", NI_CONGRATULATION, false)
  RegGateOpen_Step01 = TriggerPackage:GetObserverRegister(NI_Text_CompleteTip02_off, GateOpen_Step01)
  Congraturation_Step01 = TriggerPackage:GetTutorialComplete(NI_CONGRATULATION)
  NarEnd = TriggerPackage:GetNarrationPlayer(TutorialSystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_Text_CompleteTip02_off, 0, 0, 0, 0)
  NarWinGame = TriggerPackage:GetNarrationPlayer(TutorialSystem:GetBGMController(), "resources\\sound\\interface\\you_have_won_the_match.ogg", "", NI_Text_CompleteTip02_off, 0, 0, 0, 0)
  MessageBox_Step01 = TriggerPackage:GetStageChanger(TutorialSystem, 0, 1, 0, 29)
  VitalShockLicense:Register(ActorSpawn)
  VitalShockLicense:Register(VitalShockLoad)
  VitalShockLicense:Register(Timer_TextStart)
  VitalShockLicense:Register(Timer_Text_Welcom01_Delay)
  VitalShockLicense:Register(Timer_Text_Welcom02_Delay)
  VitalShockLicense:Register(Timer_Text_Welcom03_Delay)
  VitalShockLicense:Register(Timer_Text_CompleteTip01_on)
  VitalShockLicense:Register(Timer_Text_CompleteTip01_off)
  VitalShockLicense:Register(Timer_Text_CompleteTip02_off)
  VitalShockLicense:Register(KeyPermiter01)
  VitalShockLicense:Register(KeyPermiter02)
  VitalShockLicense:Register(KeyPermiter03)
  VitalShockLicense:Register(KeyPermiter04)
  VitalShockLicense:Register(Text_Welcom01)
  VitalShockLicense:Register(Text_Welcom02)
  VitalShockLicense:Register(Text_Welcom03)
  VitalShockLicense:Register(Text_Guide01)
  VitalShockLicense:Register(Text_CompleteTip01)
  VitalShockLicense:Register(Text_CompleteTip02)
  VitalShockLicense:Register(Text_TestSuccess)
  VitalShockLicense:Register(ScoreCheck01)
  VitalShockLicense:Register(Dummy_ScoreCheck01)
  VitalShockLicense:Register(RegActorAttackCheck01)
  VitalShockLicense:Register(RegGateOpen_Step01)
  VitalShockLicense:Register(Congraturation_Step01)
  VitalShockLicense:Register(NarEnd)
  VitalShockLicense:Register(NarWinGame)
  VitalShockLicense:Register(MessageBox_Step01)
  VitalShockLicense:Register(BlastObject01)
  VitalShockLicense:Register(BlastObject02)
  VitalShockLicense:Register(InviBox)
  VitalShockLicense:Register(BlastObject02AnimController)
  VitalShockLicense:Register(InviBox02)
  VitalShockLicense:Register(BlastObject03AnimController)
  VitalShockLicense:Register(InviBox03)
  VitalShockLicense:Register(BlastObject04AnimController)
  VitalShockLicense:Register(InviBox04)
  VitalShockLicense:Register(BlastObject05AnimController)
  VitalShockLicense:Register(Arrow_Gate_off_01)
  VitalShockLicense:Register(Arrow_Gate_on_01)
  TutorialSystem:AddStage(0, VitalShockLicense)
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
function OnVitalShockLicenseTestStep02()
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
  Timer_Dummy_Rebirth = TriggerPackage:GetEventAlram(NI_Des, NI_Rebirth01, 5000, 0, false)
  Timer_Trans_Notify01 = TriggerPackage:GetEventAlram(NI_Des01, NI_Des, 2000, 0, false)
  Arrow_Gate_off_02 = TriggerPackage:GetSceneVisible(true, "lc_arrow.scn", NI_Start_Step02)
  VitalShockLoad01 = TriggerPackage:GetItemDuplicator(0, 2000005, 0, 0)
  Timer_StartStep02 = TriggerPackage:GetEventAlram(0, NI_Start_Step02, 0, 0, false)
  Timer_Text_Step02Start = TriggerPackage:GetEventAlram(NI_Start_Step02, NI_Text_Step02Start_off, 5000, 0, false)
  Timer_ReadyStep02 = TriggerPackage:GetEventAlram(NI_Text_Step02Start_off, NI_TestStart_Step02, 5000, 0, false)
  Timer_Text_TestStartStep02_off = TriggerPackage:GetEventAlram(NI_TestStart_Step02, NI_Text_TestStartStep02_OFF, 2000, 0, false)
  Timer_End = TriggerPackage:GetEventAlram(NI_TestStart_Step02, NI_Fail, 200000, NI_Success, false)
  TriggerPackage:SetShowEventAlram(Timer_End, 470, 50, "{F-2002_20}{A-C}{S-S}{CB-255,255,50,255}\193\166\199\209\189\195\176\163{N}", 1)
  Timer_Text_TestFail_off = TriggerPackage:GetEventAlram(NI_Fail, NI_Text_TestFail_OFF, 3000, 0, false)
  Timer_Text_TestSuccess_off = TriggerPackage:GetEventAlram(NI_Success, NI_Text_TestSuccess_OFF, 10000, 0, false)
  Hold_Actor_Step02_01 = TriggerPackage:GetKeyPermiter(TutorialSystem:GetInputSystem(), NI_Start_Step02, NI_Start_Step02, false)
  Realse_Actor_Step02_01 = TriggerPackage:GetKeyPermiter(TutorialSystem:GetInputSystem(), NI_TestStart_Step02, NI_TestStart_Step02, true)
  Text_Step02Start = TriggerPackage:GetTextViewerExA(512, 250, NI_Start_Step02, NI_Text_Step02Start_off, "{F-2002_20}{A-C}{S-S}{CB-255,255,255,255}\185\217\192\204\197\187\188\238\197\169 \197\215\189\186\198\174 \176\248\176\163\191\161 \191\192\189\197\176\201 \200\175\191\181\199\213\180\207\180\217.", "Resources/GUI/New/TutorialImage_1.gui", true, false)
  Text_Step02Ready = TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Step02Start_off, NI_TestStart_Step02, "{F-2002_20}{A-C}{S-S}{CB-255,255,255,255}\193\166\199\209\181\200 \189\195\176\163\190\200\191\161{N}\185\217\192\204\197\187\188\238\197\169\184\166 \200\176\191\235\199\207\191\169 \176\161\187\243\196\179\184\175\197\205\184\166 2\200\184 \190\178\183\175\182\223\184\174\188\188\191\228.{N}\192\225\189\195\200\196 \197\215\189\186\198\174\176\161 \189\195\192\219\181\203\180\207\180\217.{N}\193\216\186\241\199\207\188\188\191\228.{N}", "Resources/GUI/New/TutorialImage_1.gui", true, false)
  Text_TestStartStep02 = TriggerPackage:GetTextViewerExA(512, 250, NI_TestStart_Step02, NI_Text_TestStartStep02_OFF, "{F-2002_20}{A-C}{S-S}{CB-255,255,255,255}    \189\195\192\219\199\213\180\207\180\217    ", "Resources/GUI/New/TutorialImage_1.gui", true, false)
  Text_Guide_Step02_01 = TriggerPackage:GetTextViewerEx(600, 500, NI_TestStart_Step02, NI_Text_TestSuccess_OFF, "{F-2002_15}{A-C}{S-S}{CB-255,255,255,255}\176\161\187\243\192\199 \192\251 \190\178\183\175\182\223\184\174\177\226{N}\185\217\192\204\197\187\188\238\197\169\192\199 {CB-0,255,255,255}[\188\238\197\169\176\248\176\221]{CB-255,255,255,255}\192\187 \187\231\191\235\199\207\191\169 \176\161\187\243\192\199 \192\251{N}\196\179\184\175\197\205\184\166 \193\166\199\209\189\195\176\163 \179\187\191\161 2\200\184 \190\178\183\175\182\223\184\174\188\188\191\228.", "Resources/GUI/New/TutorialImage_1.gui")
  Text_TestFail = TriggerPackage:GetTextViewerExA(512, 250, NI_Fail, NI_Text_TestFail_OFF, "{F-2002_20}{A-C}{S-S}{CB-255,255,255,255}\185\217\192\204\197\187\188\238\197\169 \182\243\192\204\188\190\189\186 \197\215\189\186\198\174 \189\199\198\208!{N}\193\166\199\209\189\195\176\163\192\204 \195\202\176\250 \181\199\190\250\189\192\180\207\180\217.{N}\180\217\189\195 \181\181\192\252\199\216\186\184\188\188\191\228!", "Resources/GUI/New/TutorialImage_1.gui", true, false)
  Text_TestSuccess = TriggerPackage:GetTextViewerExA(512, 200, NI_Success, NI_Text_TestSuccess_OFF, "{F-2002_20}{A-C}{S-S}{CB-255,255,255,255}\185\217\192\204\197\187\188\238\197\169 \182\243\192\204\188\190\189\186 \197\215\189\186\198\174 \188\186\176\248!{N}\195\224\199\207\199\213\180\207\180\217!", "Resources/GUI/New/TutorialImage_1.gui", true, false)
  ScoreCheck01 = TriggerPackage:GetScoreObserver(50, 200, NI_Des, NI_Success, "{F-2002_15}{A-C}{S-S}{CB-255,255,255,255}\176\161\187\243\196\179\184\175\197\205 \193\166\176\197 %d / %d", 2)
  Dummy_ScoreCheck01 = TriggerPackage:GetTextViewerEx(50, 200, NI_SCORE_COMPLETED03, 0, "{F-2002_15}{A-C}{S-S}{CB-170,170,170,255}\176\161\187\243\196\179\184\175\197\205 \193\166\176\197 2 / 2", "")
  Timer_SayThree = TriggerPackage:GetEventAlram(NI_Text_Step02Start_off, NI_SayThree, 2000, 0, false)
  Timer_SayTwo = TriggerPackage:GetEventAlram(NI_SayThree, NI_SayTwo, 1000, 0, false)
  Timer_SayOne = TriggerPackage:GetEventAlram(NI_SayTwo, NI_SayOne, 1000, 0, false)
  NarThree = TriggerPackage:GetNarrationPlayer(TutorialSystem:GetBGMController(), "resources\\sound\\interface\\3.ogg", "", NI_SayThree, 0, 0, 0, 0)
  NarTwo = TriggerPackage:GetNarrationPlayer(TutorialSystem:GetBGMController(), "resources\\sound\\interface\\2.ogg", "", NI_SayTwo, 0, 0, 0, 0)
  NarOne = TriggerPackage:GetNarrationPlayer(TutorialSystem:GetBGMController(), "resources\\sound\\interface\\1.ogg", "", NI_SayOne, 0, 0, 0, 0)
  NarEnd = TriggerPackage:GetNarrationPlayer(TutorialSystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_Success, 0, 0, 0, 0)
  NarWinGame = TriggerPackage:GetNarrationPlayer(TutorialSystem:GetBGMController(), "resources\\sound\\interface\\you_have_won_the_match.ogg", "", NI_Success, 0, 0, 0, 0)
  InPutLicense = TriggerPackage:GetItemLicensed(NI_Success, 29)
  Hold_Actor_Fail = TriggerPackage:GetKeyPermiter(TutorialSystem:GetInputSystem(), NI_Fail, NI_Fail, false)
  NarTimeIsUP = TriggerPackage:GetNarrationPlayer(TutorialSystem:GetBGMController(), "resources\\sound\\interface\\inter_timeover.ogg", "", NI_Fail, 0, 0, 0, 0)
  NarLostGame = TriggerPackage:GetNarrationPlayer(TutorialSystem:GetBGMController(), "resources\\sound\\interface\\you_lost_the_match1.ogg", "", NI_Fail, 0, 0, 0, 0)
  MessageBox_Step02 = TriggerPackage:GetStageChanger(TutorialSystem, 0, 1, NI_Text_TestFail_OFF, 29)
  MessageBox_Step03 = TriggerPackage:GetStageChanger(TutorialSystem, 0, 1, 0, 29)
  TestSuccessEnd = TriggerPackage:GetTutorialComplete(NI_Text_TestSuccess_OFF)
  TestStage:Register(ActorSpawn)
  TestStage:Register(DummyChracterSpawn02)
  TestStage:Register(ActorMoveController01)
  TestStage:Register(DummyChracterSpawn03)
  TestStage:Register(ActorMoveController02)
  TestStage:Register(Timer_Dummy_Rebirth)
  TestStage:Register(Timer_Trans_Notify01)
  TestStage:Register(Arrow_Gate_off_02)
  TestStage:Register(VitalShockLoad01)
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
