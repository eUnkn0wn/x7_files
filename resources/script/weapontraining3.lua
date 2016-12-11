require("Resources/Script/KeyMacro.lua")
LoadStringTable("Language/Script/tutorial_string_table.x7")
MENT = {
  HIDE = 1,
  CHARACTER1 = 2,
  CHARACTER2 = 3,
  CHARACTER3 = 4,
  CHARACTER4 = 5,
  CHARACTER5 = 6,
  CHARACTER6 = 7
}
STR = {
  TARGET_POS_SEQ = "groundtarget_eff_01",
  SPAWN_BOX_01 = "alpha_spawn_pos_01"
}
ACTOR = {
  ME = 0,
  ENEMY_0 = 3,
  ENEMY_1 = 2,
  ENEMY_2 = 4
}
POS = {
  MYPOINT = {
    _01 = {
      -31.13,
      2925,
      4202
    }
  },
  ENEMY_SPAWN = {
    _01 = {
      -227,
      2925,
      -3888
    },
    _02 = {
      232,
      2925,
      -3907
    },
    _03 = {
      -633,
      964,
      -1.8
    }
  },
  NAVI = {
    {
      1479,
      964,
      431
    },
    {
      -193,
      964,
      1060
    },
    {
      -5843,
      994,
      169
    },
    {
      -6236,
      2205,
      4014
    },
    {
      -3769,
      2923,
      4422
    }
  },
  EFFECT = {
    -2223,
    2924,
    4760
  }
}
STATE_WAIT = 3
STATE_STANDBY = 4
STATE_NORMAL = 5
STATE_RUN = 6
STATE_SIT = 7
STATE_JUMP = 8
STATE_BOUNDJUMP = 9
STATE_FALL = 10
STATE_DODGE_LEFT = 11
STATE_DODGE_RIGHT = 12
STATE_STUN = 13
STATE_COUNTERATTACK_DAMAGE = 19
STATE_DODGE_LEFT_AFTER_STUN = 22
STATE_DODGE_RIGHT_AFTER_STUN = 23
STATE_USE_WEAPON1 = 39
STATE_USE_WEAPON2 = 40
STATE_USE_WEAPON2_WEAK = 41
STATE_USE_WEAPON2_STRONG = 42
STATE_USE_WEAPON1_WEAK = 43
STATE_USE_WEAPON1_STRONG = 44
STATE_USE_WEAPON1_JUMP = 45
STATE_USE_WEAPON1_STRONG1 = 46
STATE_USE_WEAPON1_ATTACK2 = 47
STATE_USE_WEAPON1_COUNTERATTACK = 51
STATE_ARCADERESULTACTION = 52
STATE_STANDBY_INSTALL = 53
STATE_NORMAL_INSTALL = 54
STATE_USE_WEAPON1_INSTALL = 56
STATE_USE_WEAPON2_INSTALL = 57
STATE_SKILL_FLY = 31
STATE_SKILL_ANCHORING = 32
STATE_SKILL_STEALTH = 33
STATE_SKILL_SHIELD = 34
STATE_SKILL_WALL_CREATION = 35
STATE_SKILL_BIND = 36
STATE_SKILL_METALIC = 37
INPUT_STOP = 0
INPUT_DIRECT_ACTION_BEGIN = 1
INPUT_MOVE = 2
INPUT_USE_WEAPON_BEGIN = 3
INPUT_USE_WEAPON1 = 4
INPUT_USE_WEAPON1_BEGIN = 5
INPUT_USE_WEAPON1_END = 6
INPUT_USE_WEAPON1_END_SHORT = 7
INPUT_USE_WEAPON1_END_LONG = 8
INPUT_USE_WEAPON2 = 9
INPUT_USE_WEAPON2_BEGIN = 10
INPUT_USE_WEAPON2_END = 11
INPUT_USE_WEAPON2_END_SHORT = 12
INPUT_USE_WEAPON2_END_LONG = 13
INPUT_USE_WEAPON_END = 14
INPUT_JUMP = 15
INPUT_FLY_END = 16
INPUT_FLY_FALL = 17
INPUT_SIT = 18
INPUT_SIT_CANCEL = 19
INPUT_SPECIAL_ACTION1 = 20
INPUT_SPECIAL_ACTION1_END = 21
INPUT_SPECIAL_ACTION2 = 22
INPUT_SPECIAL_ACTION2_END = 23
INPUT_DODGE_BEGIN = 24
INPUT_DODGE_FRONT = 25
INPUT_DODGE_BACK = 26
INPUT_DODGE_LEFT = 27
INPUT_DODGE_RIGHT = 28
INPUT_DODGE_END = 29
INPUT_RELOAD = 30
Weapon1State = 0
Weapon2State = 1
Weapon2TempState = 2
Weapon1WeakState = 3
Weapon1StrongState = 4
Weapon1JumpState = 5
Weapon1Strong1State = 6
Weapon1Attack2State = 7
Weapon1Attack3State = 8
Weapon1Attack4State = 9
Weapon1Attack5State = 10
Weapon1CounterAttackState = 11
Weapon2WeakState = 12
Weapon2StrongState = 13
Weapon1InstallState = 14
Weapon2InstallState = 15
TIMER = {
  NOINIT = 0,
  DOING = 1,
  END = 2
}
WEAPON = {TURRET = 2020005, SENTRY = 2040001}
MAX_SCRIPT_MENT_COUNT = 11
g_Script_Ment = {}
function Init_tutorial2()
  local scriptTotal = MAX_SCRIPT_MENT_COUNT
  for i = 1, scriptTotal do
    strKey = string.format("BTC_WEAPON_Equip_%d", i)
    g_Script_Ment[i] = GetString(strKey)
  end
  ClearStringTable()
end
Init_tutorial2()
function Tutorial_Step_WaitInput(step, compare)
  if step == compare then
    TutorialSystem2:WaitNormalInput()
  end
end
function Tutorial_Step_WaitInput_TAni(step, compare)
  if step == compare then
    TutorialSystem2:WaitNormalInput_IfEndAniTextThenNext()
  end
end
function Tutorial_Step_PrintAniScript(step, compare, ment_id, char_time)
  if ment_id > MAX_SCRIPT_MENT_COUNT then
    return
  end
  if step == compare then
    TutorialSystem2:PrintAniScript(g_Script_Ment[ment_id], char_time)
    TutorialSystem2:SetStep(step + 1)
  end
end
function Tutorial_Step_PrintAniScript_A1(step, compare, ment_id, char_time, strA1)
  if ment_id > MAX_SCRIPT_MENT_COUNT then
    return
  end
  if step == compare then
    string1 = string.format(g_Script_Ment[ment_id], strA1)
    TutorialSystem2:PrintAniScript(string1, char_time)
    TutorialSystem2:SetStep(step + 1)
  end
end
function Tutorial_Step_PrintScript(step, compare, ment_id)
  if ment_id > MAX_SCRIPT_MENT_COUNT then
    return
  end
  if step == compare then
    TutorialSystem2:PrintScript(g_Script_Ment[ment_id])
    TutorialSystem2:SetStep(step + 1)
  end
end
function Tutorial_Step_PrintScript_A1(step, compare, ment_id, strA1)
  if ment_id > MAX_SCRIPT_MENT_COUNT then
    return
  end
  if step == compare then
    string1 = string.format(g_Script_Ment[ment_id], strA1)
    TutorialSystem2:PrintScript(string1)
    TutorialSystem2:SetStep(step + 1)
  end
end
function Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, strA1)
  Tutorial_Step_PrintAniScript_A1(step, step_c, ment_id, char_time, strA1)
  step_c = step_c + 1
  Tutorial_Step_WaitInput_TAni(step, step_c)
  step_c = step_c + 1
  Tutorial_Step_PrintScript_A1(step, step_c, ment_id, strA1)
  step_c = step_c + 1
  Tutorial_Step_WaitInput(step, step_c)
  step_c = step_c + 1
  return step_c
end
function Tutorial_Step_PageScript(step, step_c, ment_id, char_time)
  Tutorial_Step_PrintAniScript(step, step_c, ment_id, char_time)
  step_c = step_c + 1
  Tutorial_Step_WaitInput_TAni(step, step_c)
  step_c = step_c + 1
  Tutorial_Step_PrintScript(step, step_c, ment_id)
  step_c = step_c + 1
  Tutorial_Step_WaitInput(step, step_c)
  step_c = step_c + 1
  return step_c
end
function Tutorial_Step_First(step)
  if step == 0 then
    TutorialSystem2:PushReloadedAmmoInfinite(WEAPON.SENTRY)
    TutorialSystem2:CreateActorPos(ACTOR.ME, false, MAKEVECTOR3(POS.MYPOINT._01[1], POS.MYPOINT._01[2], POS.MYPOINT._01[3]), 90, 0, 0)
    TutorialSystem2:SetWeaponSlot(ACTOR.ME, 0, WEAPON.TURRET, 0)
    TutorialSystem2:SetWeaponSlot(ACTOR.ME, 1, WEAPON.SENTRY, 0)
    TutorialSystem2:ChangeWeapon(ACTOR.ME, 0)
    TutorialSystem2:SetWeaponChange(ACTOR.ME, true)
    TutorialSystem2:ClearEnableInput()
    TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
    TutorialSystem2:LockGamePlayInput(true)
    TutorialSystem2:SetSkillActive(false)
    TutorialSystem2:SetInvincibility(ACTOR.ME, true)
    TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0)
    TutorialSystem2:SetStep(step + 1)
    TutorialSystem2:InitCount()
    TutorialSystem2:SetPlayCount()
    TutorialSystem2:SetAllAttackLimit(false)
    TutorialSystem2:SetUnlimitAmmo()
    TutorialSystem2:SetCameraLimit(true, 135, 45)
  end
end
function Tutorial_Step_Two(step)
  TutorialSystem2:ChangeWeapon(ACTOR.ME, 1)
  TutorialSystem2:ClearEnableInput()
  TutorialSystem2:SetActorPos(POS.MYPOINT._01[1], POS.MYPOINT._01[2], POS.MYPOINT._01[3], ACTOR.ME)
  TutorialSystem2:SetActorDir(90, ACTOR.ME)
  TutorialSystem2:CreateActorPos(ACTOR.ENEMY_2, true, MAKEVECTOR3(POS.ENEMY_SPAWN._03[1], POS.ENEMY_SPAWN._03[2], POS.ENEMY_SPAWN._03[3]), 0, 100, 100, "A")
  TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
  TutorialSystem2:PushActorCommandState(ACTOR.ENEMY_2, STATE_NORMAL, 0)
  TutorialSystem2:SetInvincibility(ACTOR.ENEMY_2, true)
  TutorialSystem2:LockGamePlayInput(true)
  TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
  TutorialSystem2:SetStep(step + 1)
  TutorialSystem2:SetUnlimitAmmo()
  TutorialSystem2:SetPlayCount()
  TutorialSystem2:SetData(0, 0)
  TutorialSystem2:SetData(1, 0)
end
g_CurrentAmmo = 0
function Tutorial_Loop()
  local step = TutorialSystem2:GetStep()
  local char_time = 50
  local step_c = 0
  local ment_id = 1
  Tutorial_Step_First(step)
  step_c = step_c + 1
  step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName())
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time)
  if step == step_c then
    TutorialSystem2:SetItemControlUI(WEAPON.TURRET)
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  if step == step_c then
    TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0)
    TutorialSystem2:SetTimer(0, 60000)
    TutorialSystem2:CreateActorPos(ACTOR.ENEMY_1, true, MAKEVECTOR3(POS.ENEMY_SPAWN._01[1], POS.ENEMY_SPAWN._01[2], POS.ENEMY_SPAWN._01[3]), 0, 100, 100, "A")
    TutorialSystem2:SetActorDir(-90, ACTOR.ENEMY_1)
    TutorialSystem2:CreateActorPos(ACTOR.ENEMY_0, true, MAKEVECTOR3(POS.ENEMY_SPAWN._02[1], POS.ENEMY_SPAWN._02[2], POS.ENEMY_SPAWN._02[3]), 0, 100, 100, "B")
    TutorialSystem2:SetActorDir(-90, ACTOR.ENEMY_0)
    TutorialSystem2:SetCostume(ACTOR.ENEMY_1, 1000016, 1010017, 1020031, 1030026, 0, 1050031)
    TutorialSystem2:SetCostume(ACTOR.ENEMY_0, 1000016, 1010017, 1020031, 1030026, 0, 1050031)
    TutorialSystem2:PushActorCommandState(ACTOR.ENEMY_1, STATE_NORMAL, 0)
    TutorialSystem2:PushActorCommandState(ACTOR.ENEMY_0, STATE_NORMAL, 0)
    TutorialSystem2:SetInvincibility(ACTOR.ENEMY_1, true)
    TutorialSystem2:SetInvincibility(ACTOR.ENEMY_0, true)
    TutorialSystem2:InitPlayerAttackCount()
    TutorialSystem2:SetReturn(false)
    TutorialSystem2:SetStep(step + 1)
    TutorialSystem2:SetData(1, 0)
    TutorialSystem2:SetData(0, 0)
    TutorialSystem2:SetPointMent(0)
    TutorialSystem2:ClearEnableInput()
    TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0)
  end
  step_c = step_c + 1
  MoveStep = step_c
  for i = ment_id + 1, ment_id + 2 do
    ment_id = i
    step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time)
  end
  if step == step_c then
    TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0)
    TutorialSystem2:SetInvincibility(ACTOR.ENEMY_0, true)
    TutorialSystem2:SetInvincibility(ACTOR.ENEMY_1, true)
    TutorialSystem2:SetTimer(0, 30000)
    TutorialSystem2:ClearEnableInput()
    TutorialSystem2:LockGamePlayInput(true)
    TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
    TutorialSystem2:PushEnableInput(INPUT_USE_WEAPON2)
    TutorialSystem2:PushEnableInput(INPUT_USE_WEAPON2_BEGIN)
    TutorialSystem2:PushEnableInput(INPUT_USE_WEAPON2_END)
    TutorialSystem2:PushEnableInput(INPUT_USE_WEAPON1)
    TutorialSystem2:PushEnableInput(INPUT_USE_WEAPON1_BEGIN)
    TutorialSystem2:PushEnableInput(INPUT_USE_WEAPON1_END)
    TutorialSystem2:SetStep(step + 1)
    TutorialSystem2:SetData(0, 0)
  end
  step_c = step_c + 1
  if step == step_c then
    if TutorialSystem2:GetTimerState(0) == TIMER.END and TutorialSystem2:GetData(0) == 0 then
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
      TutorialSystem2:SetReturn(true)
      TutorialSystem2:ClearEnableInput()
      TutorialSystem2:SetData(0, 1)
      TutorialSystem2:SetStep(step + 1)
      TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0)
    end
    if TutorialSystem2:GetMatchActorState(ACTOR.ME, STATE_STANDBY_INSTALL) and TutorialSystem2:GetData(0) == 0 then
      TutorialSystem2:ClearEnableInput()
      TutorialSystem2:PushEnableInput(INPUT_USE_WEAPON1)
      TutorialSystem2:PushEnableInput(INPUT_USE_WEAPON1_BEGIN)
      TutorialSystem2:PushEnableInput(INPUT_USE_WEAPON1_END)
      TutorialSystem2:SetCameraLimit(false, 360, -360)
      TutorialSystem2:SetData(0, 1)
      TutorialSystem2:SetStep(step + 1)
      TutorialSystem2:SetPlayCount()
    end
  end
  step_c = step_c + 1
  if TutorialSystem2:GetPlayCount() == 1 and TutorialSystem2:GetReturn() == true then
    ment_id = ment_id + 5
    step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time)
  end
  if step == step_c then
    if TutorialSystem2:GetReturn() == false then
      TutorialSystem2:SetData(0, 0)
      TutorialSystem2:SetData(1, 0)
      TutorialSystem2:SetStep(step + 1)
    end
    if TutorialSystem2:GetReturn() == true then
      TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0)
      TutorialSystem2:SetReturn(false)
      TutorialSystem2:SetData(0, 0)
      TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0)
      TutorialSystem2:SetStep(MoveStep)
    end
  end
  step_c = step_c + 1
  if step == step_c then
    TutorialSystem2:SetInvincibility(ACTOR.ENEMY_1, false)
    TutorialSystem2:ClearAllActorCommands(ACTOR.ENEMY_1)
    TutorialSystem2:PushActorCommandMoveToTarget(POS.MYPOINT._01[1], POS.MYPOINT._01[2], POS.MYPOINT._01[3], -1, ACTOR.ENEMY_1)
    TutorialSystem2:SetInvincibility(ACTOR.ENEMY_0, false)
    TutorialSystem2:ClearAllActorCommands(ACTOR.ENEMY_0)
    TutorialSystem2:PushActorCommandMoveToTarget(POS.MYPOINT._01[1], POS.MYPOINT._01[2], POS.MYPOINT._01[3], -1, ACTOR.ENEMY_0)
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  if step == step_c then
    if TutorialSystem2:GetTimerState(0) == TIMER.END then
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_USE_WEAPON2_INSTALL, 0)
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_STANDBY, 0)
      TutorialSystem2:SetReturn(true)
      TutorialSystem2:ClearEnableInput()
      TutorialSystem2:SetData(0, 1)
      TutorialSystem2:SetStep(step + 1)
      TutorialSystem2:ClearAllActorCommands(ACTOR.ENEMY_1)
      TutorialSystem2:ClearAllActorCommands(ACTOR.ENEMY_0)
      TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0)
    end
    if TutorialSystem2:GetData(0) == 0 and TutorialSystem2:IsDeadActor(ACTOR.ENEMY_1) == false and TutorialSystem2:IsActorLocated(ACTOR.ENEMY_1, POS.MYPOINT._01[1], POS.MYPOINT._01[2], POS.MYPOINT._01[3], 500) == true then
      TutorialSystem2:ClearAllActorCommands(ACTOR.ENEMY_1)
      TutorialSystem2:PushActorCommandState(ACTOR.ENEMY_1, STATE_NORMAL, 0)
      TutorialSystem2:SetData(0, 1)
    end
    if TutorialSystem2:GetData(1) == 0 and TutorialSystem2:IsDeadActor(ACTOR.ENEMY_0) == false and TutorialSystem2:IsActorLocated(ACTOR.ENEMY_0, POS.MYPOINT._01[1], POS.MYPOINT._01[2], POS.MYPOINT._01[3], 500) == true then
      TutorialSystem2:ClearAllActorCommands(ACTOR.ENEMY_0)
      TutorialSystem2:PushActorCommandState(ACTOR.ENEMY_0, STATE_NORMAL, 0)
      TutorialSystem2:SetData(1, 1)
    end
    if TutorialSystem2:IsDeadActor(ACTOR.ENEMY_0) == true or TutorialSystem2:IsDeadActor(ACTOR.ENEMY_1) == true then
      TutorialSystem2:SetTimer(0, 30000)
      TutorialSystem2:ClearEnableInput()
      TutorialSystem2:SetData(0, 0)
      TutorialSystem2:SetData(1, 0)
      TutorialSystem2:SetPlayCount()
      if TutorialSystem2:IsDeadActor(ACTOR.ENEMY_0) == false then
        TutorialSystem2:ClearAllActorCommands(ACTOR.ENEMY_0)
        TutorialSystem2:PushActorCommandState(ACTOR.ENEMY_0, STATE_NORMAL, 0)
      end
      if TutorialSystem2:IsDeadActor(ACTOR.ENEMY_1) == false then
        TutorialSystem2:ClearAllActorCommands(ACTOR.ENEMY_1)
        TutorialSystem2:PushActorCommandState(ACTOR.ENEMY_1, STATE_NORMAL, 0)
      end
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_STANDBY_INSTALL, 0)
      TutorialSystem2:SetStep(step + 1)
      TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0)
    end
  end
  step_c = step_c + 1
  _30Move = step_c
  if TutorialSystem2:GetPlayCount() == 2 and TutorialSystem2:GetReturn() == true then
    ment_id = ment_id + 5
    step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time)
  end
  if step == step_c then
    if TutorialSystem2:GetReturn() == false then
      TutorialSystem2:SetData(0, 0)
      TutorialSystem2:SetData(1, 0)
      TutorialSystem2:SetStep(step + 1)
    end
    if TutorialSystem2:GetReturn() == true then
      TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0)
      TutorialSystem2:SetReturn(false)
      TutorialSystem2:SetData(0, 0)
      TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0)
      TutorialSystem2:SetActorPos(POS.ENEMY_SPAWN._01[1], POS.ENEMY_SPAWN._01[2], POS.ENEMY_SPAWN._01[3], ACTOR.ENEMY_1)
      TutorialSystem2:SetActorPos(POS.ENEMY_SPAWN._02[1], POS.ENEMY_SPAWN._02[2], POS.ENEMY_SPAWN._02[3], ACTOR.ENEMY_0)
      TutorialSystem2:SetStep(MoveStep)
    end
  end
  step_c = step_c + 1
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time)
  if step == step_c then
    TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0)
    TutorialSystem2:LockGamePlayInput(false)
    TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
    TutorialSystem2:SetTimer(0, 30000)
    TutorialSystem2:SetData(0, 0)
    TutorialSystem2:SetData(1, 0)
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  if step == step_c then
    if TutorialSystem2:GetTimerState(0) == TIMER.END and TutorialSystem2:GetData(0) == 0 then
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
      TutorialSystem2:LockGamePlayInput(true)
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
      TutorialSystem2:SetData(0, 1)
      TutorialSystem2:SetReturn(true)
      TutorialSystem2:SetStep(step + 1)
      TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0)
    end
    if TutorialSystem2:GetMatchActorState(ACTOR.ME, STATE_STANDBY) == true and TutorialSystem2:GetData(0) == 0 then
      TutorialSystem2:LockGamePlayInput(true)
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
      TutorialSystem2:SetData(0, 1)
      TutorialSystem2:SetStep(step + 1)
    end
  end
  step_c = step_c + 1
  if TutorialSystem2:GetReturn() == true and TutorialSystem2:GetPlayCount() == 3 then
    ment_id = ment_id + 6
    step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time)
  end
  if step == step_c then
    if TutorialSystem2:GetReturn() == false then
      if TutorialSystem2:IsDeadActor(ACTOR.ENEMY_0) == false then
        TutorialSystem2:SetActorPos(POS.ENEMY_SPAWN._01[1], 1000, POS.ENEMY_SPAWN._01[3], ACTOR.ENEMY_0)
        TutorialSystem2:SetRealHP(ACTOR.ENEMY_0, 0)
      end
      if TutorialSystem2:IsDeadActor(ACTOR.ENEMY_1) == false then
        TutorialSystem2:SetActorPos(POS.ENEMY_SPAWN._02[1], 1000, POS.ENEMY_SPAWN._02[3], ACTOR.ENEMY_1)
        TutorialSystem2:SetRealHP(ACTOR.ENEMY_1, 0)
      end
      TutorialSystem2:SetStep(step + 1)
    end
    if TutorialSystem2:GetReturn() == true then
      TutorialSystem2:SetReturn(false)
      TutorialSystem2:SetStep(_30Move)
    end
  end
  step_c = step_c + 1
  if step == step_c then
    Tutorial_Step_Two(step)
    TutorialSystem2:SetItemControlUI(WEAPON.SENTRY)
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  SentryStep = step_c
  if step == step_c then
    TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0)
    TutorialSystem2:LockGamePlayInput(true)
    TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
    TutorialSystem2:SetActorPos(POS.MYPOINT._01[1], POS.MYPOINT._01[2], POS.MYPOINT._01[3], ACTOR.ME)
    TutorialSystem2:SetActorDir(90, ACTOR.ME)
    TutorialSystem2:SetActorPos(POS.ENEMY_SPAWN._03[1], POS.ENEMY_SPAWN._03[2], POS.ENEMY_SPAWN._03[3], ACTOR.ENEMY_2)
    TutorialSystem2:SetActorDir(0, ACTOR.ENEMY_2)
    TutorialSystem2:SetCameraAxis(9.9, -735.6, true)
    TutorialSystem2:SetStep(step + 1)
    TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0)
  end
  step_c = step_c + 1
  for i = ment_id + 1, ment_id + 2 do
    ment_id = i
    step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time)
  end
  if step == step_c then
    TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0)
    TutorialSystem2:SetSentryGunDir(true, -0.99990261, 0, -0.013958129)
    TutorialSystem2:SetStep(step + 1)
    TutorialSystem2:SetTimer(0, 30000)
    TutorialSystem2:SetData(0, 0)
    TutorialSystem2:SetInvincibility(ACTOR.ENEMY_2, true)
    TutorialSystem2:ClearEnableInput()
    TutorialSystem2:SetTargetMaxPos(0)
    TutorialSystem2:RemoveGenEffectAll()
    TutorialSystem2:GenerateEffect(POS.EFFECT[1], POS.EFFECT[2], POS.EFFECT[3], STR.TARGET_POS_SEQ)
    TutorialSystem2:SetCameraAxis(0, 0, false)
  end
  step_c = step_c + 1
  if step == step_c then
    TutorialSystem2:LockGamePlayInput(false)
    TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  if step == step_c then
    if TutorialSystem2:GetActorPosY(ACTOR.ME) < -3000 then
      TutorialSystem2:SetActorPos(POS.MYPOINT._01[1], POS.MYPOINT._01[2], POS.MYPOINT._01[3], ACTOR.ME)
      TutorialSystem2:SetActorDir(90, ACTOR.ME)
    end
    if TutorialSystem2:GetTimerState(0) == TIMER.END and TutorialSystem2:GetData(0) == 0 then
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
      TutorialSystem2:SetData(0, 1)
      TutorialSystem2:SetStep(step + 1)
      TutorialSystem2:SetReturn(true)
      TutorialSystem2:LockGamePlayInput(true)
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
      TutorialSystem2:ClearEnableInput()
      TutorialSystem2:RemoveSentryGun(ACTOR.ME)
      TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0)
    end
    if TutorialSystem2:IsActorLocated(ACTOR.ME, POS.EFFECT[1], POS.EFFECT[2], POS.EFFECT[3], 300) == true and TutorialSystem2:GetMatchActorState(ACTOR.ME, STATE_USE_WEAPON1) and TutorialSystem2:GetData(0) == 0 then
      TutorialSystem2:RemoveGenEffectAll()
      TutorialSystem2:LockGamePlayInput(true)
      TutorialSystem2:ClearEnableInput()
      TutorialSystem2:PushEnableInput(INPUT_MOVE)
      TutorialSystem2:SetData(0, 1)
      TutorialSystem2:SetStep(step + 1)
      TutorialSystem2:SetTargetMaxPos(0)
      TutorialSystem2:InitDamageCounter(ACTOR.ENEMY_2)
    end
  end
  step_c = step_c + 1
  BotStep = step_c
  if TutorialSystem2:GetReturn() == true and TutorialSystem2:GetPlayCount() == 4 then
    ment_id = ment_id + 4
    step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time)
  end
  if step == step_c then
    if TutorialSystem2:GetReturn() == false then
      TutorialSystem2:SetData(0, 0)
      TutorialSystem2:SetActorSpeed(2)
      TutorialSystem2:SetStep(step + 1)
    end
    if TutorialSystem2:GetReturn() == true then
      TutorialSystem2:SetReturn(false)
      TutorialSystem2:SetStep(SentryStep)
      TutorialSystem2:LockGamePlayInput(true)
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
      TutorialSystem2:ClearEnableInput()
    end
  end
  step_c = step_c + 1
  if step == step_c then
    local j = 1
    while POS.NAVI[j] do
      TutorialSystem2:PushActorCommandMoveToTarget(POS.NAVI[j][1], POS.NAVI[j][2] + 100, POS.NAVI[j][3], -1, ACTOR.ENEMY_2)
      j = j + 1
    end
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  if step == step_c then
    if TutorialSystem2:GetActorPosY(ACTOR.ME) < -3000 then
      TutorialSystem2:SetActorPos(POS.MYPOINT._01[1], POS.MYPOINT._01[2], POS.MYPOINT._01[3], ACTOR.ME)
      TutorialSystem2:SetActorDir(90, ACTOR.ME)
    end
    if 3 <= TutorialSystem2:GetDamageCounter(ACTOR.ENEMY_2) and TutorialSystem2:GetData(0) == 0 then
      TutorialSystem2:LockGamePlayInput(true)
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
      if TutorialSystem2:GetData(1) == 0 then
        TutorialSystem2:ClearAllActorCommands(ACTOR.ENEMY_2)
        TutorialSystem2:PushActorCommandState(ACTOR.ENEMY_2, STATE_NORMAL, 0)
        TutorialSystem2:SetTimer(1, 1000)
        TutorialSystem2:SetData(1, 1)
      end
      if TutorialSystem2:GetTimerState(1) == TIMER.END and TutorialSystem2:GetData(1) == 1 then
        TutorialSystem2:SetData(1, 2)
        TutorialSystem2:SetStep(step + 1)
        TutorialSystem2:SetInvincibility(ACTOR.ENEMY_2, false)
        TutorialSystem2:SetRealHP(ACTOR.ENEMY_2, 0)
        TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0)
      end
    end
  end
  step_c = step_c + 1
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time)
  if step == step_c then
    TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0)
    TutorialSystem2:RemoveSentryGun(ACTOR.ME)
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  if step == step_c then
    TutorialSystem2:LockGamePlayInput(true)
    TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
    TutorialSystem2:SetStep(step + 1)
    TutorialSystem2:SetShowWeaponUI(true)
    TutorialSystem2:PushReloadedAmmoInfinite(0, false)
  end
end
