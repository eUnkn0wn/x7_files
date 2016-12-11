require("Resources/Script/KeyMacro.lua")
SPAWN_FOCUS_ACTOR = 0
SPAWN_ENERMY_SENTRYGUN = 1
SPAWN_ENERMY_SENTYFORCE = 2
SPAWN_TRIGGER_BEGIN = 0
SPAWN_NOTIFY = 1
NI_START = 101
NI_Text_Welcom01_OFF = 102
NI_Text_Welcom02_OFF = 103
NI_Text_Welcom03_OFF = 104
NI_SCORE_COMPLETED01 = 105
NI_ATTACK_1_SUBMACHINE_GUN = 106
NI_Text_CompleteTip01_on = 107
NI_Text_CompleteTip01_off = 108
NI_Text_CompleteTip02_on = 109
NI_Text_CompleteTip02_off = 110
NI_SCORE_COMPLETED02 = 111
NI_RELOAD_SUBMACHINE_GUN = 112
NI_CONGRATULATION = 113
NI_ESC_CHECK = 114
LoadStringTable("Language/Script/challenge_string_table.x7")
TXT_Weapon_Bomber_01 = GetString("TXT_Weapon_Bomber_01")
TXT_Weapon_Bomber_02 = GetString("TXT_Weapon_Bomber_02")
TXT_Weapon_Bomber_03 = GetString("TXT_Weapon_Bomber_03")
TXT_Weapon_Bomber_04 = GetString("TXT_Weapon_Bomber_04")
TXT_Weapon_Bomber_06 = GetString("TXT_Weapon_Bomber_06")
TXT_Weapon_Bomber_07 = GetString("TXT_Weapon_Bomber_07")
TXT_Weapon_Bomber_08 = GetString("TXT_Weapon_Bomber_08")
TXT_Weapon_Bomber_11 = GetString("TXT_Weapon_Bomber_11")
TXT_Weapon_Bomber_12 = GetString("TXT_Weapon_Bomber_12")
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
function InitPvETrigger()
  PvESystem:SetTotalStage(1)
  OnBomberTestStep01()
end
function OnBomberTestStep01()
  OnBomberLicense = PvESystem:GetEmptyStage()
  Timer_TextStart = TriggerPackage:GetEventAlram(0, NI_START, 0, 0, false)
  Timer_Text_Welcom01_Delay = TriggerPackage:GetEventAlram(NI_START, NI_Text_Welcom01_OFF, 5000, 0, false)
  Timer_Text_Welcom02_Delay = TriggerPackage:GetEventAlram(NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, 5000, 0, false)
  Timer_Text_Welcom03_Delay = TriggerPackage:GetEventAlram(NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, 5000, 0, false)
  Timer_Text_CompleteTip01_on = TriggerPackage:GetEventAlram(NI_SCORE_COMPLETED01, NI_Text_CompleteTip01_on, 500, 0, false)
  Timer_Text_CompleteTip01_off = TriggerPackage:GetEventAlram(NI_Text_CompleteTip01_on, NI_Text_CompleteTip01_off, 5000, 0, false)
  Timer_Text_CompleteTip02_on = TriggerPackage:GetEventAlram(NI_SCORE_COMPLETED02, NI_Text_CompleteTip02_on, 500, 0, false)
  Timer_Text_CompleteTip02_off = TriggerPackage:GetEventAlram(NI_Text_CompleteTip02_on, NI_Text_CompleteTip02_off, 5000, 0, false)
  WeaponSlotRemoveAll = TriggerPackage:GetWeaponSlotRemoveAll(NI_START)
  Weapon_Drop_01 = TriggerPackage:GetWeaponDrop(NI_Text_Welcom01_OFF, 2050002, 6, 671, -2199)
  Weapon_Drop_02 = TriggerPackage:GetWeaponDrop(NI_Text_Welcom01_OFF, 2050003, -400, 671, -2199)
  Text_Welcom01 = TriggerPackage:GetTextViewerExA(512, 250, NI_START, NI_Text_Welcom01_OFF, TXT_Weapon_Bomber_01, "Resources/GUI/New/TutorialImage_1.gui", true, false)
  Text_Welcom02 = TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom01_OFF, NI_Text_Welcom02_OFF, TXT_Weapon_Bomber_02, "Resources/GUI/New/TutorialImage_1.gui", true, false)
  Text_Welcom03 = TriggerPackage:GetTextViewerExA(512, 250, NI_Text_Welcom02_OFF, NI_Text_Welcom03_OFF, TXT_Weapon_Bomber_03, "Resources/GUI/New/TutorialImage_1.gui", true, false)
  Text_Guide01 = TriggerPackage:GetTextViewerEx(600, 500, NI_Text_Welcom03_OFF, NI_SCORE_COMPLETED01, TXT_Weapon_Bomber_04, "Resources/GUI/New/TutorialImage_1.gui")
  Text_CompleteTip01 = TriggerPackage:GetTextViewerExA(512, 300, NI_SCORE_COMPLETED01, NI_Text_CompleteTip01_off, TXT_Weapon_Bomber_08, "Resources/GUI/New/TutorialImage_0.gui", true, false)
  Text_ClearStep01 = TriggerPackage:GetTextViewerExA(600, 500, NI_Text_CompleteTip01_off, 0, TXT_Weapon_Bomber_12, "Resources/GUI/New/TutorialImage_1.gui")
  ScoreCheck01 = TriggerPackage:GetScoreObserver(50, 200, NI_ATTACK_1_SUBMACHINE_GUN, NI_SCORE_COMPLETED01, TXT_Weapon_Bomber_06, 1)
  ActorAttackCheck01 = TriggerPackage:GetActorAttackObserver(NI_SCORE_COMPLETED01, NI_ATTACK_1_SUBMACHINE_GUN, "ATTACK_1_MINE_LAUNCHER", ScoreCheck01)
  RegActorAttackCheck01 = TriggerPackage:GetObserverRegister(NI_Text_Welcom03_OFF, ActorAttackCheck01)
  NarOK01 = TriggerPackage:GetNarrationPlayer(PvESystem:GetBGMController(), "resources\\sound\\tutorial\\_rc_tut_nar_ok.ogg", "", NI_SCORE_COMPLETED01, 0, 0, 0, 0)
  PressEscChecker = TriggerPackage:GetKeyPressCheckerEx(NI_Text_CompleteTip01_off, NI_ESC_CHECK, IK_ESCAPE, NI_ESC_CHECK)
  Mission_Prize = TriggerPackage:GetChallengePrize(NI_ESC_CHECK, NI_CONGRATULATION)
  Congraturation_Step01 = TriggerPackage:GetChallengeComplete(NI_CONGRATULATION)
  OnBomberLicense:Register(RegActorAttackCheck01)
  OnBomberLicense:Register(NarOK01)
  OnBomberLicense:Register(Timer_Text_Welcom01_Delay)
  OnBomberLicense:Register(Timer_Text_Welcom02_Delay)
  OnBomberLicense:Register(Timer_Text_Welcom03_Delay)
  OnBomberLicense:Register(Timer_Text_CompleteTip01_on)
  OnBomberLicense:Register(Timer_Text_CompleteTip01_off)
  OnBomberLicense:Register(Timer_Text_CompleteTip02_on)
  OnBomberLicense:Register(Timer_Text_CompleteTip02_off)
  OnBomberLicense:Register(WeaponSlotRemoveAll)
  OnBomberLicense:Register(Weapon_Drop_01)
  OnBomberLicense:Register(Text_Welcom01)
  OnBomberLicense:Register(Text_Welcom02)
  OnBomberLicense:Register(Text_Welcom03)
  OnBomberLicense:Register(Text_Guide01)
  OnBomberLicense:Register(Text_ClearStep01)
  OnBomberLicense:Register(Text_CompleteTip01)
  OnBomberLicense:Register(PressEscChecker)
  OnBomberLicense:Register(Mission_Prize)
  OnBomberLicense:Register(Congraturation_Step01)
  PvESystem:AddStage(0, OnBomberLicense)
end
