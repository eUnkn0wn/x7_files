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
  ENEMY_2 = 4,
  ENEMY_3 = 5
}
POS = {
  MYPOINT = {
    _01 = {
      -30,
      2925,
      4308
    }
  },
  ENEMY_SPAWN = {
    _01 = {
      235,
      2925,
      -286
    },
    _02 = {
      -259,
      2925,
      -1515
    },
    _03 = {
      251,
      2925,
      -3362
    },
    _04 = {
      -321,
      2925,
      -4235
    }
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
STATE_BLOW = 16
STATE_BOUNDBLOW = 17
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
WEAPON = {SHARP = 2030006}
MAX_SCRIPT_MENT_COUNT = 7
g_Script_Ment = {}
function Init_tutorial2()
  local scriptTotal = MAX_SCRIPT_MENT_COUNT
  for i = 1, scriptTotal do
    strKey = string.format("BTC_WEAPON_snipe_%d", i)
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
    TutorialSystem2:ClearEnableInput()
    TutorialSystem2:CreateActorPos(ACTOR.ME, false, MAKEVECTOR3(POS.MYPOINT._01[1], POS.MYPOINT._01[2], POS.MYPOINT._01[3]), 90, 0, 0)
    TutorialSystem2:SetWeaponSlot(ACTOR.ME, 0, WEAPON.SHARP, 0)
    TutorialSystem2:ChangeWeapon(ACTOR.ME, 0)
    TutorialSystem2:SetWeaponChange(ACTOR.ME, true)
    TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
    TutorialSystem2:LockGamePlayInput(true)
    TutorialSystem2:SetSkillActive(false)
    TutorialSystem2:SetInvincibility(ACTOR.ME, true)
    TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0)
    TutorialSystem2:SetStep(step + 1)
    TutorialSystem2:InitCount()
    TutorialSystem2:SetPlayCount()
    TutorialSystem2:SetTargetMaxPos(0)
    TutorialSystem2:SetAllAttackLimit(false)
    TutorialSystem2:SetUnlimitAmmo()
  end
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
  for i = ment_id + 1, ment_id + 3 do
    ment_id = i
    step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time)
  end
  if step == step_c then
    TutorialSystem2:SetItemControlUI(WEAPON.SHARP)
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  if step == step_c then
    TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0)
    TutorialSystem2:SetTimer(0, 60000)
    TutorialSystem2:CreateActorPos(ACTOR.ENEMY_0, true, MAKEVECTOR3(POS.ENEMY_SPAWN._01[1], POS.ENEMY_SPAWN._01[2], POS.ENEMY_SPAWN._01[3]), 0, 100, 100, "A")
    TutorialSystem2:SetActorDir(-90, ACTOR.ENEMY_0)
    TutorialSystem2:CreateActorPos(ACTOR.ENEMY_1, true, MAKEVECTOR3(POS.ENEMY_SPAWN._02[1], POS.ENEMY_SPAWN._02[2], POS.ENEMY_SPAWN._02[3]), 0, 100, 100, "B")
    TutorialSystem2:SetActorDir(-90, ACTOR.ENEMY_1)
    TutorialSystem2:CreateActorPos(ACTOR.ENEMY_2, true, MAKEVECTOR3(POS.ENEMY_SPAWN._03[1], POS.ENEMY_SPAWN._03[2], POS.ENEMY_SPAWN._03[3]), 0, 100, 100, "C")
    TutorialSystem2:SetActorDir(-90, ACTOR.ENEMY_2)
    TutorialSystem2:CreateActorPos(ACTOR.ENEMY_3, true, MAKEVECTOR3(POS.ENEMY_SPAWN._04[1], POS.ENEMY_SPAWN._04[2], POS.ENEMY_SPAWN._04[3]), 0, 100, 100, "D")
    TutorialSystem2:SetActorDir(-90, ACTOR.ENEMY_3)
    TutorialSystem2:PushActorCommandState(ACTOR.ENEMY_0, STATE_NORMAL, 0)
    TutorialSystem2:PushActorCommandState(ACTOR.ENEMY_1, STATE_NORMAL, 0)
    TutorialSystem2:PushActorCommandState(ACTOR.ENEMY_2, STATE_NORMAL, 0)
    TutorialSystem2:PushActorCommandState(ACTOR.ENEMY_3, STATE_NORMAL, 0)
    TutorialSystem2:SetInvincibility(ACTOR.ENEMY_0, true)
    TutorialSystem2:SetInvincibility(ACTOR.ENEMY_1, true)
    TutorialSystem2:SetInvincibility(ACTOR.ENEMY_2, true)
    TutorialSystem2:SetInvincibility(ACTOR.ENEMY_3, true)
    TutorialSystem2:InitPlayerAttackCount()
    TutorialSystem2:SetReturn(false)
    TutorialSystem2:SetStep(step + 1)
    TutorialSystem2:SetData(1, 0)
    TutorialSystem2:SetData(0, 0)
    TutorialSystem2:SetPointMent(0)
    TutorialSystem2:ClearEnableInput()
    TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0)
    TutorialSystem2:LockGamePlayInput(false)
    TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
  end
  step_c = step_c + 1
  TempStep = step_c
  if step == step_c then
    TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0)
    TutorialSystem2:SetTimer(0, 60000)
    TutorialSystem2:SetTimer(1, 0)
    TutorialSystem2:SetData(0, 0)
    TutorialSystem2:SetData(2, 0)
    TutorialSystem2:SetData(3, 0)
    TutorialSystem2:SetData(4, 0)
    TutorialSystem2:SetData(5, 0)
    TutorialSystem2:LockGamePlayInput(true)
    TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
    TutorialSystem2:ClearEnableInput()
    TutorialSystem2:PushEnableInput(INPUT_USE_WEAPON2)
    TutorialSystem2:PushEnableInput(INPUT_USE_WEAPON2_BEGIN)
    TutorialSystem2:PushEnableInput(INPUT_USE_WEAPON2_END)
    TutorialSystem2:PushEnableInput(INPUT_USE_WEAPON1)
    TutorialSystem2:PushEnableInput(INPUT_USE_WEAPON1_BEGIN)
    TutorialSystem2:PushEnableInput(INPUT_USE_WEAPON1_END)
    TutorialSystem2:PushEnableInput(INPUT_USE_WEAPON_BEGIN)
    TutorialSystem2:PushEnableInput(INPUT_USE_WEAPON1_END_SHORT)
    TutorialSystem2:PushEnableInput(INPUT_USE_WEAPON1_END_LONG)
    TutorialSystem2:PushEnableInput(INPUT_USE_WEAPON2_END_SHORT)
    TutorialSystem2:PushEnableInput(INPUT_USE_WEAPON2_END_LONG)
    TutorialSystem2:PushEnableInput(INPUT_USE_WEAPON1_END)
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  if step == step_c then
    if TutorialSystem2:GetActorPosY(ACTOR.ME) < -3000 then
      TutorialSystem2:SetActorPos(POS.MYPOINT._01[1], POS.MYPOINT._01[2], POS.MYPOINT._01[3], ACTOR.ME)
      TutorialSystem2:SetActorDir(90, ACTOR.ME)
    end
    if TutorialSystem2:GetTimerState(0) == TIMER.END and TutorialSystem2:GetData(0) == 0 then
      TutorialSystem2:SetTimer(0, 30000)
      TutorialSystem2:InitPlayerAttackCount()
      TutorialSystem2:InitDamageCounter(ACTOR.ENEMY_1)
      TutorialSystem2:LockGamePlayInput(false)
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
      TutorialSystem2:SetReturn(true)
      TutorialSystem2:ClearEnableInput()
      TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0)
      TutorialSystem2:SetStep(step + 1)
    end
    if TutorialSystem2:GetData(2) == 0 and TutorialSystem2:GetMatchActorState(ACTOR.ENEMY_0, STATE_BLOW) then
      TutorialSystem2:SetData(2, 1)
      TutorialSystem2:SetInvincibility(ACTOR.ENEMY_0, false)
      TutorialSystem2:SetRealHP(ACTOR.ENEMY_0, 0)
    end
    if TutorialSystem2:GetData(3) == 0 and TutorialSystem2:GetMatchActorState(ACTOR.ENEMY_1, STATE_BLOW) then
      TutorialSystem2:SetData(3, 1)
      TutorialSystem2:SetInvincibility(ACTOR.ENEMY_1, false)
      TutorialSystem2:SetRealHP(ACTOR.ENEMY_1, 0)
    end
    if TutorialSystem2:GetData(4) == 0 and TutorialSystem2:GetMatchActorState(ACTOR.ENEMY_2, STATE_BLOW) then
      TutorialSystem2:SetData(4, 1)
      TutorialSystem2:SetInvincibility(ACTOR.ENEMY_2, false)
      TutorialSystem2:SetRealHP(ACTOR.ENEMY_2, 0)
    end
    if TutorialSystem2:GetData(5) == 0 and TutorialSystem2:GetMatchActorState(ACTOR.ENEMY_3, STATE_BLOW) then
      TutorialSystem2:SetData(5, 1)
      TutorialSystem2:SetInvincibility(ACTOR.ENEMY_3, false)
      TutorialSystem2:SetRealHP(ACTOR.ENEMY_3, 0)
    end
    if TutorialSystem2:GetData(2) == 1 and TutorialSystem2:GetData(3) == 1 and TutorialSystem2:GetData(4) == 1 and TutorialSystem2:GetData(5) == 1 then
      if TutorialSystem2:GetData(0) == 0 then
        TutorialSystem2:SetTimer(1, 1000)
        TutorialSystem2:SetData(0, 1)
      end
      if TutorialSystem2:GetTimerState(1) == TIMER.END then
        TutorialSystem2:ClearEnableInput()
        TutorialSystem2:LockGamePlayInput(true)
        TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
        TutorialSystem2:ChangeMessageWindow(MENT.CHARACTER1, 0)
        TutorialSystem2:SetStep(step + 1)
      end
    end
  end
  step_c = step_c + 1
  if TutorialSystem2:GetReturn() == true and TutorialSystem2:GetPlayCount() == 1 then
    ment_id = ment_id + 2
    step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time)
  end
  if step == step_c then
    if TutorialSystem2:GetReturn() == false then
      TutorialSystem2:SetStep(step + 1)
    end
    if TutorialSystem2:GetReturn() == true and TutorialSystem2:GetPlayCount() == 1 then
      TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0)
      TutorialSystem2:SetTimer(0, 30000)
      TutorialSystem2:SetActorPos(POS.MYPOINT._01[1], POS.MYPOINT._01[2], POS.MYPOINT._01[3], ACTOR.ME)
      TutorialSystem2:SetActorDir(90, ACTOR.ME)
      if TutorialSystem2:GetData(2) == 1 then
        TutorialSystem2:CreateActorPos(ACTOR.ENEMY_0, true, MAKEVECTOR3(POS.ENEMY_SPAWN._01[1], POS.ENEMY_SPAWN._01[2], POS.ENEMY_SPAWN._01[3]), 0, 100, 100, "A")
        TutorialSystem2:SetActorDir(-90, ACTOR.ENEMY_0)
      else
        TutorialSystem2:SetActorPos(POS.ENEMY_SPAWN._01[1], POS.ENEMY_SPAWN._01[2], POS.ENEMY_SPAWN._01[3], ACTOR.ENEMY_0)
      end
      if TutorialSystem2:GetData(3) == 1 then
        TutorialSystem2:CreateActorPos(ACTOR.ENEMY_1, true, MAKEVECTOR3(POS.ENEMY_SPAWN._02[1], POS.ENEMY_SPAWN._02[2], POS.ENEMY_SPAWN._02[3]), 0, 100, 100, "B")
        TutorialSystem2:SetActorDir(-90, ACTOR.ENEMY_1)
      else
        TutorialSystem2:SetActorPos(POS.ENEMY_SPAWN._02[1], POS.ENEMY_SPAWN._02[2], POS.ENEMY_SPAWN._02[3], ACTOR.ENEMY_1)
      end
      if TutorialSystem2:GetData(4) == 1 then
        TutorialSystem2:CreateActorPos(ACTOR.ENEMY_2, true, MAKEVECTOR3(POS.ENEMY_SPAWN._03[1], POS.ENEMY_SPAWN._03[2], POS.ENEMY_SPAWN._03[3]), 0, 100, 100, "C")
        TutorialSystem2:SetActorDir(-90, ACTOR.ENEMY_2)
      else
        TutorialSystem2:SetActorPos(POS.ENEMY_SPAWN._03[1], POS.ENEMY_SPAWN._03[2], POS.ENEMY_SPAWN._03[3], ACTOR.ENEMY_2)
      end
      if TutorialSystem2:GetData(5) == 1 then
        TutorialSystem2:CreateActorPos(ACTOR.ENEMY_3, true, MAKEVECTOR3(POS.ENEMY_SPAWN._04[1], POS.ENEMY_SPAWN._04[2], POS.ENEMY_SPAWN._04[3]), 0, 100, 100, "D")
        TutorialSystem2:SetActorDir(-90, ACTOR.ENEMY_3)
      else
        TutorialSystem2:SetActorPos(POS.ENEMY_SPAWN._04[1], POS.ENEMY_SPAWN._04[2], POS.ENEMY_SPAWN._04[3], ACTOR.ENEMY_3)
      end
      TutorialSystem2:SetReturn(false)
      TutorialSystem2:InitPlayerAttackCount()
      TutorialSystem2:InitDamageCounter(ACTOR.ENEMY_0)
      TutorialSystem2:InitDamageCounter(ACTOR.ENEMY_1)
      TutorialSystem2:InitDamageCounter(ACTOR.ENEMY_2)
      TutorialSystem2:InitDamageCounter(ACTOR.ENEMY_3)
      TutorialSystem2:SetStep(TempStep)
    end
  end
  step_c = step_c + 1
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time)
  if step == step_c then
    TutorialSystem2:LockGamePlayInput(true)
    TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  if step == step_c then
    TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0)
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  if step == step_c then
    TutorialSystem2:LockGamePlayInput(false)
    TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
    TutorialSystem2:SetStep(step + 1)
    TutorialSystem2:SetShowWeaponUI(true)
  end
end
