require("Resources/Script/KeyMacro.lua")
LoadStringTable("Language/Script/tutorial_string_table.x7")
MENT = {
  HIDE = 1,
  CHARACTER1 = 2,
  CHARACTER2 = 3,
  CHARACTER3 = 4,
  CHARACTER4 = 5,
  CHARACTER5 = 6,
  CHARACTER6 = 7,
  CHARACTER7 = 8
}
EMOTION = {
  _01 = 0,
  _02 = 1,
  _03 = 2,
  _04 = 3,
  _05 = 4,
  _06 = 5,
  _07 = 6
}
CTRL_GUIDE1_HIDE = -1
CTRL_GUIDE1_BASIC = 0
CTRL_GUIDE1_SKILL = 0
CTRL_GUIDE1_DASH = 1
CTRL_GUIDE1_SWORDATT = 2
CTRL_GUIDE1_WALLJUMP = 3
CTRL_GUIDE1_EVASION = 4
CTRL_GUIDE1_ATTACK = 5
CTRL_GUIDE1_RELOAD = 6
CTRL_GUIDE1_CHANGE = 7
CTRL_GUIDE1_ATTACK2 = 8
CTRL_GUIDE1_SPATT = 9
CTRL_GUIDE1_JUMPATT = 10
STR = {
  TARGET_POS_SEQ = "groundtarget_eff_01",
  WALL_TARGET_POS_SEQ = "groundtarget_eff_02",
  ENEMY_TARGET_POS_SEQ = "ai_attack",
  SPAWN_BOX_01 = "alpha_spawn_pos_01"
}
ACTOR = {
  ME = 0,
  OURS_1 = 1,
  ENEMY_1 = 2,
  ENEMY_2 = 3,
  ENEMY_3 = 4,
  ENEMY_4 = 5,
  ENEMY_5 = 6
}
COSTUME = {
  OURS_1 = {
    1000006,
    0,
    1020007,
    1030007,
    1040009,
    1050010
  },
  ENEMY_1 = {
    1061029,
    0,
    1021029,
    1031029,
    1041029,
    1051029
  },
  ENEMY_2 = {
    1001112,
    0,
    1021112,
    1031112,
    1041112,
    1051112
  },
  ENEMY_3 = {
    0,
    0,
    1021089,
    1031089,
    1041089,
    1051089
  },
  ENEMY_4 = {
    0,
    0,
    1021100,
    1031100,
    1041100,
    1051100
  },
  ENEMY_5 = {
    0,
    0,
    1021085,
    1031085,
    1041085,
    1051085
  }
}
POS = {
  PLAYER_SPAWN = {
    145,
    2455,
    6653
  },
  TARGET = {
    _01 = {
      -1098,
      2924,
      4799
    },
    _02 = {
      1217,
      964,
      954
    },
    _02_1 = {
      544,
      962,
      21
    },
    _03 = {
      -1392,
      964,
      -604
    },
    _04 = {
      4530,
      637,
      -168
    },
    _05 = {
      3814,
      2924,
      -4669
    },
    _06 = {
      1476,
      2924,
      -4895
    },
    _07 = {
      3343,
      2922,
      -4974
    },
    _08 = {
      1158,
      3338,
      -4261
    }
  },
  GOAL = {
    1210,
    3021,
    -5884
  },
  OURS_SPAWN = {
    _01 = {
      1797,
      964,
      835
    }
  },
  OURS_AUTO = {
    _01 = {
      {
        1155,
        964,
        34
      },
      {
        22,
        1040,
        3
      }
    },
    _02 = {
      {
        -1174,
        964,
        -55
      },
      {
        -1682,
        964,
        -822
      }
    },
    _03 = {
      {
        2518,
        946,
        -958
      },
      {
        5077,
        803,
        -146
      }
    },
    _04 = {
      {
        6315,
        1328,
        -1277
      },
      {
        6277,
        2062,
        -3461
      },
      {
        3858,
        2924,
        -4923
      }
    },
    _05 = {
      3343,
      2922,
      -4974
    }
  },
  ENEMY_SPAWN = {
    _01 = {
      -3963,
      2923,
      4606
    },
    _02 = {
      -1636,
      2711,
      -4035
    },
    _03 = {
      2628,
      2924,
      -4260
    },
    _04 = {
      2570,
      2924,
      -4917
    },
    _05 = {
      1035,
      2925,
      -4311
    }
  },
  ENEMY_AUTO = {
    _02 = {
      {
        -1594,
        2711,
        -4538
      },
      {
        1207,
        2924,
        -4917
      }
    }
  },
  NAVI = {
    _01 = {
      {
        145,
        2455,
        6653
      },
      {
        34,
        2455,
        6058
      },
      {
        34,
        2924,
        5274
      },
      {
        34,
        2924,
        5274
      },
      {
        -312,
        2924,
        4698
      },
      {
        -1136,
        2924,
        4698
      }
    },
    _02 = {
      {
        -1098,
        2924,
        4799
      },
      {
        -4044,
        2923,
        4722
      },
      {
        -5304,
        2504,
        4382
      },
      {
        -6432,
        1892,
        2930
      },
      {
        -6056,
        1224,
        1004
      },
      {
        -5146,
        848,
        446
      },
      {
        -3973,
        445,
        621
      },
      {
        -3305,
        445,
        899
      },
      {
        -2582,
        946,
        858
      },
      {
        1217,
        964,
        954
      }
    },
    _03_1 = {
      {
        1217,
        964,
        954
      },
      {
        1155,
        964,
        34
      },
      {
        544,
        962,
        21
      }
    },
    _03_2 = {
      {
        544,
        962,
        21
      },
      {
        4,
        1039,
        -26
      },
      {
        -1174,
        964,
        -55
      },
      {
        -1392,
        964,
        -604
      }
    },
    _04 = {
      {
        -1392,
        964,
        -604
      },
      {
        2556,
        964,
        -755
      },
      {
        3282,
        447,
        -636
      },
      {
        4530,
        637,
        -168
      }
    },
    _05 = {
      {
        4530,
        637,
        -168
      },
      {
        6315,
        1328,
        -1277
      },
      {
        6277,
        2062,
        -3461
      },
      {
        4545,
        2732,
        -4368
      },
      {
        3998,
        2922,
        -4557
      }
    },
    _06 = {
      {
        3357,
        2925,
        -4703
      },
      {
        1544,
        2925,
        -4890
      }
    },
    _07 = {
      {
        1544,
        2925,
        -4890
      },
      {
        3343,
        2922,
        -4974
      }
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
INPUT_CHANGE_WEAPON_BEGIN = 31
INPUT_CHANGE_WEAPON_1 = 32
INPUT_CHANGE_WEAPON_2 = 33
INPUT_CHANGE_WEAPON_3 = 34
INPUT_CHANGE_WEAPON_4 = 35
INPUT_CHANGE_WEAPON_5 = 36
INPUT_CHANGE_WEAPON_END = 37
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
TYPE_UNKNOWN = 0
TYPE_LAND_GROUND = 1
TYPE_LAND_STONE = 2
TYPE_LAND_STEEL = 4
TYPE_LAND_WOOD = 8
TYPE_LAND_WATER = 16
TYPE_LAND_GLASS = 32
TYPE_WEAPON = 64
TYPE_BROKEN = 128
TYPE_CRUSH = 256
TYPE_TERRITORY = 512
TYPE_OBSTRUCTION = 1024
TYPE_SHIELD = 2048
TYPE_ACTOR = 4096
TYPE_BALL = 8192
TYPE_CAMERA = 16384
TYPE_DYNAMIC_BROKEN = 32768
TYPE_AIACTOR = 65536
TYPE_BLOCK_ACTOR = 131072
TYPE_BLOCK_AIACTOR = 262144
TYPE_BLOCK_ALPHA = 524288
TYPE_BLOCK_BETA = 1048576
TYPE_MONSTER = 2097152
TYPE_BLOCK_MONSTER = 4194304
TIMER = {
  NOINIT = 0,
  DOING = 1,
  END = 2
}
WEAPON = {
  SUB_MACHINE_GUN = 2010001,
  EXO_SIDE = 2000031,
  TURRET = 2020005
}
SKILL = {
  ANCHORING = 3010001,
  FLY = 3020001,
  STEALTH = 3030001,
  SENSOR = 3040001,
  SHIELD = 3050001,
  WALL_CREATION = 3060001,
  BIND = 3070001,
  METALIC = 3080001
}
MAX_SCRIPT_MENT_COUNT = 45
g_Script_Ment = {}
MAX_SCRIPT_CHAR_NAME_COUNT = 6
g_Script_Name = {}
DATA_KEY_WALLJUMP = 0
function Init_tutorial2()
  for i = 1, MAX_SCRIPT_MENT_COUNT do
    strKey = string.format("BTC_TUTO_SCRIPT_%d", i)
    g_Script_Ment[i] = GetString(strKey)
  end
  local Script_Name = {}
  for i = 1, MAX_SCRIPT_CHAR_NAME_COUNT do
    strKey = string.format("BTC_TUTO_CHARACTER_NAME_%d", i + 2)
    g_Script_Name[i] = GetString(strKey)
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
function Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, strA1, character_id, char_emo_id)
  if step == step_c then
    TutorialSystem2:PushPrevStep(step_c)
    TutorialSystem2:ChangeMessageWindow(character_id, char_emo_id)
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
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
function Tutorial_Step_PageScript(step, step_c, ment_id, char_time, character_id, char_emo_id)
  if step == step_c then
    TutorialSystem2:PushPrevStep(step_c)
    TutorialSystem2:ChangeMessageWindow(character_id, char_emo_id)
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
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
    TutorialSystem2:CreateActorBox(ACTOR.ME, true, STR.SPAWN_BOX_01, 0, 0)
    TutorialSystem2:SetWeaponSlot(ACTOR.ME, 0, WEAPON.SUB_MACHINE_GUN, 0)
    TutorialSystem2:SetWeaponSlot(ACTOR.ME, 1, WEAPON.EXO_SIDE, 0)
    TutorialSystem2:ChangeWeapon(ACTOR.ME, 0)
    TutorialSystem2:SetWeaponChange(ACTOR.ME, true)
    TutorialSystem2:EnableCollisionType(ACTOR.ME, TYPE_ACTOR, false)
    TutorialSystem2:SetSkill(ACTOR.ME, SKILL.SHIELD)
    TutorialSystem2:LockGamePlayInput(true)
    TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
    TutorialSystem2:SetStep(step + 1)
    TutorialSystem2:SetLevel(1)
    TutorialSystem2:SetPrevTargetPos(MAKEVECTOR3(POS.PLAYER_SPAWN[1], POS.PLAYER_SPAWN[2], POS.PLAYER_SPAWN[3]))
    TutorialSystem2:SetProtectCondition(true)
  end
end
function Tutorial_Loop()
  local step = TutorialSystem2:GetStep()
  local char_time = 50
  local step_c = 0
  local ment_id = 0
  Tutorial_Step_First(step)
  step_c = step_c + 1
  if step == step_c then
    TutorialSystem2:SetActorPos(POS.PLAYER_SPAWN[1], POS.PLAYER_SPAWN[2], POS.PLAYER_SPAWN[3], ACTOR.ME)
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(), MENT.CHARACTER1, EMOTION._01)
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time, MENT.CHARACTER1, EMOTION._01)
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time, MENT.CHARACTER1, EMOTION._03)
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time, MENT.CHARACTER1, EMOTION._03)
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time, MENT.CHARACTER1, EMOTION._01)
  if step == step_c then
    TutorialSystem2:ClearPrevStep()
    TutorialSystem2:SetShowControlGuide(true, CTRL_GUIDE1_BASIC, CTRL_GUIDE1_HIDE)
    TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0)
    TutorialSystem2:SetTimer(0, 30000)
    TutorialSystem2:GenerateEffect(POS.TARGET._01[1], POS.TARGET._01[2], POS.TARGET._01[3], STR.TARGET_POS_SEQ)
    TutorialSystem2:SetStep(step + 1)
    local j = 1
    while POS.NAVI._01[j] do
      TutorialSystem2:RegistArrowNode(POS.NAVI._01[j][1], POS.NAVI._01[j][2], POS.NAVI._01[j][3])
      j = j + 1
    end
    TutorialSystem2:SetTutorialGoalMessage(true, 1107)
    TutorialSystem2:SetTutorialStepMessage(true, 1126)
    TutorialSystem2:LockGamePlayInput(false)
  end
  step_c = step_c + 1
  if step == step_c then
    TutorialSystem2:SetCountDownNumber(TutorialSystem2:GetTimerLeftTime(0) / 1000)
    if TutorialSystem2:GetTimerState(0) == TIMER.END then
      TutorialSystem2:SetActorPos(POS.PLAYER_SPAWN[1], POS.PLAYER_SPAWN[2], POS.PLAYER_SPAWN[3], ACTOR.ME)
      TutorialSystem2:SetActorDir(90, ACTOR.ME)
      TutorialSystem2:SetTimer(0, 30000)
    end
    if TutorialSystem2:IsActorLocated(ACTOR.ME, POS.TARGET._01[1], POS.TARGET._01[2], POS.TARGET._01[3], 300) == true then
      TutorialSystem2:SetCountDownNumber(-1)
      TutorialSystem2:SetShowControlGuide(false, 0, 0)
      TutorialSystem2:RemoveGenEffectAll()
      TutorialSystem2:UnRegistAllArrowNodes()
      TutorialSystem2:SetTutorialGoalMessage(false, 0)
      TutorialSystem2:CreateActorPos(ACTOR.ENEMY_1, true, MAKEVECTOR3(POS.ENEMY_SPAWN._01[1], POS.ENEMY_SPAWN._01[2], POS.ENEMY_SPAWN._01[3]), 0, 100, 100, g_Script_Name[ACTOR.ENEMY_1])
      TutorialSystem2:SetCostume(ACTOR.ENEMY_1, COSTUME.ENEMY_1[1], COSTUME.ENEMY_1[2], COSTUME.ENEMY_1[3], COSTUME.ENEMY_1[4], COSTUME.ENEMY_1[5], COSTUME.ENEMY_1[6])
      TutorialSystem2:SetWeaponSlot(ACTOR.ENEMY_1, 0, WEAPON.SUB_MACHINE_GUN, 0)
      TutorialSystem2:ChangeWeapon(ACTOR.ENEMY_1, 0)
      TutorialSystem2:GenerateEffect(POS.ENEMY_SPAWN._01[1], POS.ENEMY_SPAWN._01[2] + 500, POS.ENEMY_SPAWN._01[3], STR.ENEMY_TARGET_POS_SEQ)
      TutorialSystem2:LockGamePlayInput(true)
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
      TutorialSystem2:SetStep(step + 1)
      TutorialSystem2:SetLevel(2)
      TutorialSystem2:ClearPrevStep()
    end
  end
  step_c = step_c + 1
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time, MENT.CHARACTER1, EMOTION._02)
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time, MENT.CHARACTER3, EMOTION._05)
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time, MENT.CHARACTER1, EMOTION._02)
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time, MENT.CHARACTER1, EMOTION._01)
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time, MENT.CHARACTER1, EMOTION._01)
  if step == step_c then
    TutorialSystem2:ClearPrevStep()
    TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0)
    TutorialSystem2:LockGamePlayInput(false)
    TutorialSystem2:SetShowControlGuide(true, CTRL_GUIDE1_HIDE, CTRL_GUIDE1_ATTACK)
    TutorialSystem2:SetTimer(0, 60000)
    TutorialSystem2:SetStep(step + 1)
    TutorialSystem2:SetTutorialGoalMessage(true, 1108)
    TutorialSystem2:SetTutorialStepMessage(true, 1127)
  end
  step_c = step_c + 1
  if step == step_c then
    TutorialSystem2:SetCountDownNumber(TutorialSystem2:GetTimerLeftTime(0) / 1000)
    if TutorialSystem2:GetTimerState(0) == TIMER.END then
      TutorialSystem2:SetActorPos(POS.TARGET._01[1], POS.TARGET._01[2], POS.TARGET._01[3], ACTOR.ME)
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
      TutorialSystem2:SetTimer(0, 60000)
    end
    if TutorialSystem2:IsDeadActor(ACTOR.ENEMY_1) == true then
      TutorialSystem2:SetCountDownNumber(-1)
      TutorialSystem2:RemoveGenEffectAll()
      TutorialSystem2:SetShowControlGuide(false, 0, 0)
      TutorialSystem2:SetTutorialGoalMessage(false, 0)
      TutorialSystem2:LockGamePlayInput(true)
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
      TutorialSystem2:SetStep(step + 1)
    end
  end
  step_c = step_c + 1
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript(step, step_c, ment_id, char_time, MENT.CHARACTER3, EMOTION._06)
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(), MENT.CHARACTER1, EMOTION._01)
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(), MENT.CHARACTER1, EMOTION._03)
  goto_step8 = step_c
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(), MENT.CHARACTER1, EMOTION._01)
  if step == step_c then
    if TutorialSystem2:GetWeaponCurrentAmmo() == TutorialSystem2:GetWeaponMagazineCapacity() then
      TutorialSystem2:LockGamePlayInput(true)
      TutorialSystem2:ClearEnableInput()
      TutorialSystem2:PushEnableInput(INPUT_RELOAD)
      TutorialSystem2:ClearPrevStep()
      TutorialSystem2:SetStep(step + 1)
    else
      TutorialSystem2:LockGamePlayInput(true)
      TutorialSystem2:ClearEnableInput()
      TutorialSystem2:PushEnableInput(INPUT_RELOAD)
      TutorialSystem2:ClearPrevStep()
      TutorialSystem2:SetStep(step + 6)
    end
    TutorialSystem2:SetTutorialGoalMessage(true, 1109)
  end
  step_c = step_c + 1
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(), MENT.CHARACTER1, EMOTION._03)
  if step == step_c then
    TutorialSystem2:ClearPrevStep()
    TutorialSystem2:SetShowControlGuide(true, CTRL_GUIDE1_HIDE, CTRL_GUIDE1_RELOAD)
    TutorialSystem2:SetTempAmmoNum(TutorialSystem2:GetWeaponCurrentAmmo())
    TutorialSystem2:SetTimer(0, 30000)
    TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0)
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  if step == step_c then
    TutorialSystem2:SetCountDownNumber(TutorialSystem2:GetTimerLeftTime(0) / 1000)
    if TutorialSystem2:GetTimerState(0) == TIMER.END then
      TutorialSystem2:ClearPrevStep()
      TutorialSystem2:SetStep(goto_step8)
    end
    if TutorialSystem2:GetWeaponCurrentAmmo() == TutorialSystem2:GetWeaponMagazineCapacity() then
      TutorialSystem2:SetCountDownNumber(-1)
      TutorialSystem2:SetStep(step + 1)
      TutorialSystem2:LockGamePlayInput(false)
      TutorialSystem2:SetShowControlGuide(false, 0, 0)
      TutorialSystem2:SetTutorialGoalMessage(false, 0)
      TutorialSystem2:SetWeaponChange(ACTOR.ME, false)
    end
  end
  step_c = step_c + 1
  if step == step_c then
    TutorialSystem2:CreateActorPos(ACTOR.OURS_1, false, MAKEVECTOR3(POS.OURS_SPAWN._01[1], POS.OURS_SPAWN._01[2], POS.OURS_SPAWN._01[3]), 180, 0, 0, g_Script_Name[ACTOR.OURS_1])
    TutorialSystem2:SetCostume(ACTOR.OURS_1, COSTUME.OURS_1[1], COSTUME.OURS_1[2], COSTUME.OURS_1[3], COSTUME.OURS_1[4], COSTUME.OURS_1[5], COSTUME.OURS_1[6])
    TutorialSystem2:SetWeaponSlot(ACTOR.OURS_1, 0, WEAPON.SUB_MACHINE_GUN, 0)
    TutorialSystem2:ChangeWeapon(ACTOR.OURS_1, 0)
    TutorialSystem2:EnableCollisionType(ACTOR.OURS_1, TYPE_ACTOR, false)
    TutorialSystem2:SetInvincibility(ACTOR.OURS_1, true)
    TutorialSystem2:GenerateEffect(POS.TARGET._02[1], POS.TARGET._02[2], POS.TARGET._02[3], STR.TARGET_POS_SEQ)
    TutorialSystem2:SetPrevTargetPos(MAKEVECTOR3(POS.TARGET._01[1], POS.TARGET._01[2], POS.TARGET._01[3]))
    TutorialSystem2:LockGamePlayInput(true)
    TutorialSystem2:SetStep(step + 1)
    TutorialSystem2:SetLevel(3)
    TutorialSystem2:ClearPrevStep()
  end
  step_c = step_c + 1
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(), MENT.CHARACTER1, EMOTION._01)
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(), MENT.CHARACTER1, EMOTION._03)
  if step == step_c then
    TutorialSystem2:ClearPrevStep()
    local j = 1
    while POS.NAVI._02[j] do
      TutorialSystem2:RegistArrowNode(POS.NAVI._02[j][1], POS.NAVI._02[j][2], POS.NAVI._02[j][3])
      j = j + 1
    end
    TutorialSystem2:SetTutorialGoalMessage(true, 1110)
    TutorialSystem2:SetTutorialStepMessage(true, 1128)
    TutorialSystem2:SetShowControlGuide(true, CTRL_GUIDE1_HIDE, CTRL_GUIDE1_DASH)
    TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0)
    TutorialSystem2:LockGamePlayInput(false)
    TutorialSystem2:SetStep(step + 1)
    TutorialSystem2:SetTimer(0, 60000)
  end
  step_c = step_c + 1
  if step == step_c then
    TutorialSystem2:SetCountDownNumber(TutorialSystem2:GetTimerLeftTime(0) / 1000)
    if TutorialSystem2:GetTimerState(0) == TIMER.END then
      TutorialSystem2:SetActorPos(POS.NAVI._02[1][1], POS.NAVI._02[1][2] + 100, POS.NAVI._02[1][3], ACTOR.ME)
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
      TutorialSystem2:SetTimer(0, 60000)
    end
    if TutorialSystem2:IsActorLocated(ACTOR.ME, POS.TARGET._02[1], POS.TARGET._02[2], POS.TARGET._02[3], 300) == true then
      TutorialSystem2:SetCountDownNumber(-1)
      TutorialSystem2:SetShowControlGuide(false, 0, 0)
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
      TutorialSystem2:RemoveGenEffectAll()
      TutorialSystem2:UnRegistAllArrowNodes()
      TutorialSystem2:SetTutorialGoalMessage(false, 0)
      TutorialSystem2:LockGamePlayInput(true)
      TutorialSystem2:SetStep(step + 1)
    end
  end
  step_c = step_c + 1
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(), MENT.CHARACTER2, EMOTION._07)
  if step == step_c then
    TutorialSystem2:ClearPrevStep()
    local j = 1
    while POS.OURS_AUTO._01[j] do
      TutorialSystem2:PushActorCommandMoveToTarget(POS.OURS_AUTO._01[j][1], POS.OURS_AUTO._01[j][2] + 100, POS.OURS_AUTO._01[j][3], -1, ACTOR.OURS_1)
      j = j + 1
    end
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  if step == step_c and TutorialSystem2:IsExistCommand(ACTOR.OURS_1) == false then
    TutorialSystem2:CatchTheBall(ACTOR.OURS_1)
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(), MENT.CHARACTER1, EMOTION._01)
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(), MENT.CHARACTER1, EMOTION._03)
  if step == step_c then
    TutorialSystem2:ClearPrevStep()
    local j = 1
    while POS.NAVI._03_1[j] do
      TutorialSystem2:RegistArrowNode(POS.NAVI._03_1[j][1], POS.NAVI._03_1[j][2], POS.NAVI._03_1[j][3])
      j = j + 1
    end
    TutorialSystem2:SetTutorialGoalMessage(true, 1111)
    TutorialSystem2:SetShowControlGuide(true, CTRL_GUIDE1_BASIC, CTRL_GUIDE1_HIDE)
    TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0)
    TutorialSystem2:LockGamePlayInput(false)
    TutorialSystem2:GenerateEffect(POS.TARGET._02_1[1], POS.TARGET._02_1[2], POS.TARGET._02_1[3], STR.TARGET_POS_SEQ)
    TutorialSystem2:SetStep(step + 1)
    TutorialSystem2:SetTimer(0, 15000)
  end
  step_c = step_c + 1
  if step == step_c then
    TutorialSystem2:SetCountDownNumber(TutorialSystem2:GetTimerLeftTime(0) / 1000)
    if TutorialSystem2:GetTimerState(0) == TIMER.END then
      TutorialSystem2:SetActorPos(POS.NAVI._02[10][1], POS.NAVI._02[10][2], POS.NAVI._02[10][3], ACTOR.ME)
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
      TutorialSystem2:SetTimer(0, 15000)
    end
    if TutorialSystem2:IsActorLocated(ACTOR.ME, POS.TARGET._02_1[1], POS.TARGET._02_1[2], POS.TARGET._02_1[3], 300) == true then
      TutorialSystem2:LockGamePlayInput(true)
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
      TutorialSystem2:RemoveGenEffectAll()
      TutorialSystem2:UnRegistAllArrowNodes()
      TutorialSystem2:SetTutorialGoalMessage(false, 0)
      local j = 1
      while POS.OURS_AUTO._02[j] do
        TutorialSystem2:PushActorCommandMoveToTarget(POS.OURS_AUTO._02[j][1], POS.OURS_AUTO._02[j][2] + 100, POS.OURS_AUTO._02[j][3], -1, ACTOR.OURS_1)
        j = j + 1
      end
      TutorialSystem2:PushActorCommandLookAtDir(ACTOR.OURS_1, 90)
      TutorialSystem2:CreateActorPos(ACTOR.ENEMY_2, true, MAKEVECTOR3(POS.ENEMY_SPAWN._02[1], POS.ENEMY_SPAWN._02[2], POS.ENEMY_SPAWN._02[3]), 0, 100, 100, g_Script_Name[ACTOR.ENEMY_2])
      TutorialSystem2:SetCostume(ACTOR.ENEMY_2, COSTUME.ENEMY_2[1], COSTUME.ENEMY_2[2], COSTUME.ENEMY_2[3], COSTUME.ENEMY_2[4], COSTUME.ENEMY_2[5], COSTUME.ENEMY_2[6])
      TutorialSystem2:SetWeaponSlot(ACTOR.ENEMY_2, 0, WEAPON.TURRET, 0)
      TutorialSystem2:SetActorDir(270, ACTOR.ENEMY_2)
      TutorialSystem2:SetSkill(ACTOR.ENEMY_2, SKILL.WALL_CREATION)
      TutorialSystem2:PushActorCommandAttack(ACTOR.ENEMY_2, ACTOR.OURS_1, false, true, 0)
      TutorialSystem2:SetInvincibility(ACTOR.ENEMY_2, true)
      TutorialSystem2:SetStep(step + 1)
    end
  end
  step_c = step_c + 1
  if step == step_c and TutorialSystem2:IsExistCommand(ACTOR.OURS_1) == false then
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  if step == step_c then
    local j = 1
    while POS.NAVI._03_2[j] do
      TutorialSystem2:RegistArrowNode(POS.NAVI._03_2[j][1], POS.NAVI._03_2[j][2], POS.NAVI._03_2[j][3])
      j = j + 1
    end
    TutorialSystem2:SetTutorialGoalMessage(true, 1112)
    TutorialSystem2:GenerateEffect(POS.TARGET._03[1], POS.TARGET._03[2], POS.TARGET._03[3], STR.TARGET_POS_SEQ)
    TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0)
    TutorialSystem2:LockGamePlayInput(false)
    TutorialSystem2:SetStep(step + 1)
    TutorialSystem2:SetTimer(0, 15000)
  end
  step_c = step_c + 1
  if step == step_c then
    TutorialSystem2:SetCountDownNumber(TutorialSystem2:GetTimerLeftTime(0) / 1000)
    if TutorialSystem2:GetTimerState(0) == TIMER.END then
      TutorialSystem2:SetActorPos(POS.NAVI._02[10][1], POS.NAVI._02[10][2], POS.NAVI._02[10][3], ACTOR.ME)
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
      TutorialSystem2:SetTimer(0, 15000)
    end
    if TutorialSystem2:IsActorLocated(ACTOR.ME, POS.TARGET._03[1], POS.TARGET._03[2], POS.TARGET._03[3], 300) == true then
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
      TutorialSystem2:UnRegistAllArrowNodes()
      TutorialSystem2:SetTutorialGoalMessage(false, 0)
      TutorialSystem2:LockGamePlayInput(true)
      TutorialSystem2:SetShowControlGuide(false, 0, 0)
      TutorialSystem2:RemoveGenEffectAll()
      TutorialSystem2:SetLevel(4)
      TutorialSystem2:ClearPrevStep()
      TutorialSystem2:SetStep(step + 1)
    end
  end
  step_c = step_c + 1
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(), MENT.CHARACTER4, EMOTION._06)
  if step == step_c then
    TutorialSystem2:ClearPrevStep()
    TutorialSystem2:PushActorCommandAttackPos(ACTOR.ENEMY_2, POS.OURS_AUTO._02[2][1], POS.OURS_AUTO._02[2][2], POS.OURS_AUTO._02[2][3], true, false, 5000)
    TutorialSystem2:SetTimer(0, 1000)
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  if step == step_c and TutorialSystem2:GetTimerState(0) == TIMER.END then
    TutorialSystem2:PushActorCommandState(ACTOR.OURS_1, STATE_DODGE_LEFT, 0)
    TutorialSystem2:PushActorCommandDelayTime(ACTOR.OURS_1, 1000)
    TutorialSystem2:PushActorCommandState(ACTOR.OURS_1, STATE_DODGE_LEFT, 0)
    TutorialSystem2:PushActorCommandDelayTime(ACTOR.OURS_1, 1000)
    local j = 1
    while POS.OURS_AUTO._03[j] do
      TutorialSystem2:PushActorCommandMoveToTarget(POS.OURS_AUTO._03[j][1], POS.OURS_AUTO._03[j][2] + 100, POS.OURS_AUTO._03[j][3], -1, ACTOR.OURS_1)
      j = j + 1
    end
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(), MENT.CHARACTER2, EMOTION._07)
  if step == step_c then
    TutorialSystem2:ClearPrevStep()
    TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0)
    TutorialSystem2:LockGamePlayInput(false)
    TutorialSystem2:GenerateEffect(POS.TARGET._03[1], POS.TARGET._03[2], POS.TARGET._03[3], STR.TARGET_POS_SEQ)
    TutorialSystem2:SetPrevTargetPos(MAKEVECTOR3(POS.TARGET._02[1], POS.TARGET._02[2], POS.TARGET._02[3]))
    TutorialSystem2:SetTimer(0, 10000)
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  if step == step_c then
    TutorialSystem2:SetCountDownNumber(TutorialSystem2:GetTimerLeftTime(0) / 1000)
    if TutorialSystem2:GetTimerState(0) == TIMER.END then
      TutorialSystem2:SetActorPos(POS.TARGET._02[1], POS.TARGET._02[2], POS.TARGET._02[3], ACTOR.ME)
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
      TutorialSystem2:SetTimer(0, 10000)
    end
    if TutorialSystem2:IsActorLocated(ACTOR.ME, POS.TARGET._03[1], POS.TARGET._03[2], POS.TARGET._03[3], 300) == true then
      TutorialSystem2:SetCountDownNumber(-1)
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
      TutorialSystem2:RemoveGenEffectAll()
      TutorialSystem2:UnRegistAllArrowNodes()
      TutorialSystem2:LockGamePlayInput(true)
      TutorialSystem2:SetPrevTargetPos(MAKEVECTOR3(POS.TARGET._03[1], POS.TARGET._03[2], POS.TARGET._03[3]))
      TutorialSystem2:SetStep(step + 1)
    end
  end
  step_c = step_c + 1
  goto_step7 = step_c
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(), MENT.CHARACTER1, EMOTION._04)
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(), MENT.CHARACTER1, EMOTION._01)
  if step == step_c then
    TutorialSystem2:ClearPrevStep()
    TutorialSystem2:SetTutorialGoalMessage(true, 1113)
    TutorialSystem2:SetTutorialStepMessage(true, 1129)
    TutorialSystem2:PushActorCommandAttackPos(ACTOR.ENEMY_2, POS.OURS_AUTO._02[2][1], POS.OURS_AUTO._02[2][2], POS.OURS_AUTO._02[2][3], true, false, 5000)
    TutorialSystem2:SetShowControlGuide(true, CTRL_GUIDE1_HIDE, CTRL_GUIDE1_EVASION)
    TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0)
    TutorialSystem2:LockGamePlayInput(false)
    TutorialSystem2:SetTimer(0, 15000)
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  if step == step_c then
    TutorialSystem2:SetCountDownNumber(TutorialSystem2:GetTimerLeftTime(0) / 1000)
    if TutorialSystem2:GetTimerState(0) == TIMER.END then
      TutorialSystem2:SetActorPos(POS.TARGET._03[1], POS.TARGET._03[2], POS.TARGET._03[3], ACTOR.ME)
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
      TutorialSystem2:LockGamePlayInput(true)
      TutorialSystem2:SetTimer(0, 15000)
      TutorialSystem2:SetStep(goto_step7)
    end
    curStateID = TutorialSystem2:GetCurStateID(ACTOR.ME)
    if curStateID == STATE_DODGE_LEFT or curStateID == STATE_DODGE_RIGHT then
      TutorialSystem2:SetCountDownNumber(-1)
      TutorialSystem2:SetShowControlGuide(false, 0, 0)
      TutorialSystem2:GenerateEffect(POS.TARGET._04[1], POS.TARGET._04[2], POS.TARGET._04[3], STR.TARGET_POS_SEQ)
      TutorialSystem2:SetPrevTargetPos(MAKEVECTOR3(POS.TARGET._03[1], POS.TARGET._03[2], POS.TARGET._03[3]))
      local j = 1
      while POS.NAVI._04[j] do
        TutorialSystem2:RegistArrowNode(POS.NAVI._04[j][1], POS.NAVI._04[j][2], POS.NAVI._04[j][3])
        j = j + 1
      end
      TutorialSystem2:SetTutorialGoalMessage(true, 1114)
      TutorialSystem2:SetShowControlGuide(true, CTRL_GUIDE1_BASIC, CTRL_GUIDE1_HIDE)
      TutorialSystem2:SetTimer(0, 15000)
      TutorialSystem2:PushActorCommandInput(ACTOR.ENEMY_2, INPUT_USE_WEAPON2)
      TutorialSystem2:PushActorCommandMoveToTarget(POS.ENEMY_AUTO._02[1][1], POS.ENEMY_AUTO._02[1][2] + 100, POS.ENEMY_AUTO._02[1][3], 0, ACTOR.ENEMY_2)
      TutorialSystem2:PushActorCommandMoveToTarget(POS.ENEMY_AUTO._02[2][1], POS.ENEMY_AUTO._02[2][2] + 100, POS.ENEMY_AUTO._02[2][3], 0, ACTOR.ENEMY_2)
      TutorialSystem2:SetStep(step + 1)
    end
  end
  step_c = step_c + 1
  if step == step_c then
    TutorialSystem2:SetCountDownNumber(TutorialSystem2:GetTimerLeftTime(0) / 1000)
    if TutorialSystem2:GetTimerState(0) == TIMER.END then
      TutorialSystem2:SetActorPos(POS.TARGET._03[1], POS.TARGET._03[2], POS.TARGET._03[3], ACTOR.ME)
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
      TutorialSystem2:SetTimer(0, 15000)
    end
    if TutorialSystem2:IsActorLocated(ACTOR.ME, POS.TARGET._04[1], POS.TARGET._04[2], POS.TARGET._04[3], 300) == true then
      TutorialSystem2:SetCountDownNumber(-1)
      TutorialSystem2:RemoveGenEffectAll()
      TutorialSystem2:UnRegistAllArrowNodes()
      TutorialSystem2:SetTutorialGoalMessage(false, 0)
      TutorialSystem2:SetShowControlGuide(false, 0, 0)
      TutorialSystem2:SetStep(step + 1)
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
      TutorialSystem2:LockGamePlayInput(true)
      TutorialSystem2:SetLevel(5)
      TutorialSystem2:ClearPrevStep()
    end
  end
  step_c = step_c + 1
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(), MENT.CHARACTER2, EMOTION._01)
  if step == step_c then
    TutorialSystem2:ClearPrevStep()
    TutorialSystem2:SetShowControlGuide(true, CTRL_GUIDE1_BASIC, CTRL_GUIDE1_HIDE)
    TutorialSystem2:CreateActorPos(ACTOR.ENEMY_3, true, MAKEVECTOR3(POS.ENEMY_SPAWN._03[1], POS.ENEMY_SPAWN._03[2], POS.ENEMY_SPAWN._03[3]), 0, 100, 100, g_Script_Name[ACTOR.ENEMY_3])
    TutorialSystem2:CreateActorPos(ACTOR.ENEMY_4, true, MAKEVECTOR3(POS.ENEMY_SPAWN._04[1], POS.ENEMY_SPAWN._04[2], POS.ENEMY_SPAWN._04[3]), 0, 100, 100, g_Script_Name[ACTOR.ENEMY_4])
    TutorialSystem2:CreateActorPos(ACTOR.ENEMY_5, true, MAKEVECTOR3(POS.ENEMY_SPAWN._05[1], POS.ENEMY_SPAWN._05[2], POS.ENEMY_SPAWN._05[3]), 0, 100, 100, g_Script_Name[ACTOR.ENEMY_5])
    TutorialSystem2:SetCostume(ACTOR.ENEMY_3, COSTUME.ENEMY_3[1], COSTUME.ENEMY_3[2], COSTUME.ENEMY_3[3], COSTUME.ENEMY_3[4], COSTUME.ENEMY_3[5], COSTUME.ENEMY_3[6])
    TutorialSystem2:SetCostume(ACTOR.ENEMY_4, COSTUME.ENEMY_4[1], COSTUME.ENEMY_4[2], COSTUME.ENEMY_4[3], COSTUME.ENEMY_4[4], COSTUME.ENEMY_4[5], COSTUME.ENEMY_4[6])
    TutorialSystem2:SetCostume(ACTOR.ENEMY_5, COSTUME.ENEMY_5[1], COSTUME.ENEMY_5[2], COSTUME.ENEMY_5[3], COSTUME.ENEMY_5[4], COSTUME.ENEMY_5[5], COSTUME.ENEMY_5[6])
    TutorialSystem2:SetWeaponSlot(ACTOR.ENEMY_3, 0, WEAPON.SUB_MACHINE_GUN, 0)
    TutorialSystem2:SetWeaponSlot(ACTOR.ENEMY_4, 0, WEAPON.SUB_MACHINE_GUN, 0)
    TutorialSystem2:SetWeaponSlot(ACTOR.ENEMY_5, 0, WEAPON.SUB_MACHINE_GUN, 0)
    TutorialSystem2:SetInvincibility(ACTOR.ENEMY_3, true)
    TutorialSystem2:SetInvincibility(ACTOR.ENEMY_4, true)
    TutorialSystem2:SetInvincibility(ACTOR.ENEMY_5, true)
    local j = 1
    while POS.OURS_AUTO._04[j] do
      TutorialSystem2:PushActorCommandMoveToTarget(POS.OURS_AUTO._04[j][1], POS.OURS_AUTO._04[j][2] + 100, POS.OURS_AUTO._04[j][3], -1, ACTOR.OURS_1)
      j = j + 1
    end
    TutorialSystem2:GenerateEffect(POS.TARGET._05[1], POS.TARGET._05[2], POS.TARGET._05[3], STR.TARGET_POS_SEQ)
    TutorialSystem2:SetPrevTargetPos(MAKEVECTOR3(POS.TARGET._04[1], POS.TARGET._04[2], POS.TARGET._04[3]))
    local j = 1
    while POS.NAVI._05[j] do
      TutorialSystem2:RegistArrowNode(POS.NAVI._05[j][1], POS.NAVI._05[j][2], POS.NAVI._05[j][3])
      j = j + 1
    end
    TutorialSystem2:SetTutorialGoalMessage(true, 1115)
    TutorialSystem2:SetTutorialStepMessage(true, 1130)
    TutorialSystem2:SetTimer(0, 15000)
    TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0)
    TutorialSystem2:LockGamePlayInput(false)
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  if step == step_c then
    TutorialSystem2:SetCountDownNumber(TutorialSystem2:GetTimerLeftTime(0) / 1000)
    if TutorialSystem2:GetTimerState(0) == TIMER.END then
      TutorialSystem2:SetActorPos(POS.TARGET._04[1], POS.TARGET._04[2], POS.TARGET._04[3], ACTOR.ME)
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
      TutorialSystem2:SetTimer(0, 15000)
    end
    if TutorialSystem2:IsActorLocated(ACTOR.ME, POS.TARGET._05[1], POS.TARGET._05[2], POS.TARGET._05[3], 300) == true then
      TutorialSystem2:SetActorPos(POS.ENEMY_AUTO._02[2][1], POS.ENEMY_AUTO._02[2][2] + 100, POS.ENEMY_AUTO._02[2][3], ACTOR.ENEMY_2)
      TutorialSystem2:SetCountDownNumber(-1)
      TutorialSystem2:SetShowControlGuide(false, 0, 0)
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
      TutorialSystem2:RemoveGenEffectAll()
      TutorialSystem2:UnRegistAllArrowNodes()
      TutorialSystem2:SetTutorialGoalMessage(false, 0)
      TutorialSystem2:SetTimer(0, 0)
      TutorialSystem2:SetStep(step + 1)
      TutorialSystem2:LockGamePlayInput(true)
    end
  end
  step_c = step_c + 1
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(), MENT.CHARACTER1, EMOTION._01)
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(), MENT.CHARACTER1, EMOTION._01)
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(), MENT.CHARACTER5, EMOTION._06)
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(), MENT.CHARACTER6, EMOTION._06)
  if step == step_c then
    TutorialSystem2:ClearPrevStep()
    TutorialSystem2:SetShowControlGuide(true, CTRL_GUIDE1_HIDE, CTRL_GUIDE1_SKILL)
    TutorialSystem2:PushActorCommandAttack(ACTOR.ENEMY_3, ACTOR.OURS_1, true, false, 1000000)
    TutorialSystem2:LockGamePlayInput(false)
    TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0)
    TutorialSystem2:SetTutorialGoalMessage(true, 1116)
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  if step == step_c and TutorialSystem2:IsDoingState(ACTOR.ME, STATE_SKILL_SHIELD) == true and 0 < TutorialSystem2:ElapsedTimeFromAttack(ACTOR.ME) and 500 > TutorialSystem2:ElapsedTimeFromAttack(ACTOR.ME) then
    TutorialSystem2:SetTimer(0, 5000)
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  if step == step_c and TutorialSystem2:GetTimerState(0) == TIMER.END and TutorialSystem2:IsDoingState(ACTOR.ME, STATE_SKILL_SHIELD) == true and 0 < TutorialSystem2:ElapsedTimeFromAttack(ACTOR.ME) and 500 > TutorialSystem2:ElapsedTimeFromAttack(ACTOR.ME) then
    TutorialSystem2:ClearAllActorCommands(ACTOR.ENEMY_3)
    TutorialSystem2:PushActorCommandState(ACTOR.ENEMY_3, STATE_NORMAL, 0)
    TutorialSystem2:SetShowControlGuide(false, 0, 0)
    TutorialSystem2:SetSPInfinite(ACTOR.ME, true)
    TutorialSystem2:LockGamePlayInput(true)
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(), MENT.CHARACTER1, EMOTION._04)
  if step == step_c then
    TutorialSystem2:SetTutorialGoalMessage(false, 0)
    TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0)
    TutorialSystem2:PushActorCommandAttack(ACTOR.OURS_1, ACTOR.ENEMY_3, true, false, 1000000)
    TutorialSystem2:SetInvincibility(ACTOR.ENEMY_3, false)
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  if step == step_c and TutorialSystem2:IsDeadActor(ACTOR.ENEMY_3) == true then
    TutorialSystem2:ClearAllActorCommands(ACTOR.OURS_1)
    TutorialSystem2:PushActorCommandMoveToTarget(POS.OURS_AUTO._05[1], POS.OURS_AUTO._05[2] + 100, POS.OURS_AUTO._05[3], -1, ACTOR.OURS_1)
    TutorialSystem2:PushActorCommandAttack(ACTOR.OURS_1, ACTOR.ENEMY_4, true, false, 1000000)
    TutorialSystem2:SetInvincibility(ACTOR.ENEMY_4, false)
    TutorialSystem2:SetStep(step + 1)
    TutorialSystem2:SetTimer(0, 10000)
  end
  step_c = step_c + 1
  if step == step_c then
    if TutorialSystem2:GetTimerState(0) == TIMER.END then
      TutorialSystem2:ClearAllActorCommands(ACTOR.OURS_1)
      TutorialSystem2:PushActorCommandAttack(ACTOR.OURS_1, ACTOR.ENEMY_4, true, false, 1000000)
      TutorialSystem2:SetStep(step + 1)
    end
    if TutorialSystem2:IsDeadActor(ACTOR.ENEMY_4) == true then
      TutorialSystem2:SetStep(step + 1)
    end
  end
  step_c = step_c + 1
  if step == step_c and TutorialSystem2:IsDeadActor(ACTOR.ENEMY_4) == true then
    TutorialSystem2:ClearAllActorCommands(ACTOR.OURS_1)
    TutorialSystem2:PushActorCommandAttack(ACTOR.OURS_1, ACTOR.ENEMY_5, true, false, 1000000)
    TutorialSystem2:SetInvincibility(ACTOR.ENEMY_5, false)
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  if step == step_c and TutorialSystem2:IsDeadActor(ACTOR.ENEMY_5) == true then
    TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
    TutorialSystem2:ClearAllActorCommands(ACTOR.OURS_1)
    TutorialSystem2:PushActorCommandState(ACTOR.OURS_1, STATE_NORMAL, 0)
    TutorialSystem2:PushActorCommandAttack(ACTOR.ENEMY_2, ACTOR.OURS_1, true, false, 1000000)
    TutorialSystem2:SetInvincibility(ACTOR.OURS_1, false)
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  if step == step_c and TutorialSystem2:IsDeadActor(ACTOR.OURS_1) == true then
    TutorialSystem2:LockGamePlayInput(true)
    TutorialSystem2:SetSPInfinite(ACTOR.ME, false)
    TutorialSystem2:ClearAllActorCommands(ACTOR.ENEMY_2)
    TutorialSystem2:PushActorCommandState(ACTOR.ENEMY_2, STATE_NORMAL, 0)
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(), MENT.CHARACTER4, EMOTION._06)
  if step == step_c then
    TutorialSystem2:ClearPrevStep()
    TutorialSystem2:PushActorCommandLookAtDir(ACTOR.ENEMY_2, 90)
    TutorialSystem2:PushActorCommandInput(ACTOR.ENEMY_2, INPUT_SPECIAL_ACTION1)
    TutorialSystem2:SetTimer(0, 1000)
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  if step == step_c and TutorialSystem2:GetTimerState(0) == TIMER.END then
    TutorialSystem2:SetWallObjectInvincibility(ACTOR.ENEMY_2, true)
    TutorialSystem2:SetActorDir(0, ACTOR.ENEMY_2)
    TutorialSystem2:LockGamePlayInput(true)
    TutorialSystem2:SetLevel(6)
    TutorialSystem2:ClearPrevStep()
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  goto_step0 = step_c
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(), MENT.CHARACTER1, EMOTION._04)
  if step == step_c then
    TutorialSystem2:ClearPrevStep()
    TutorialSystem2:SetTimer(0, 15000)
    TutorialSystem2:SetShowControlGuide(true, CTRL_GUIDE1_HIDE, CTRL_GUIDE1_CHANGE)
    TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0)
    TutorialSystem2:SetTutorialGoalMessage(true, 1117)
    TutorialSystem2:SetTutorialStepMessage(true, 1131)
    TutorialSystem2:ClearEnableInput()
    TutorialSystem2:PushEnableInput(INPUT_CHANGE_WEAPON_2)
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  if step == step_c then
    TutorialSystem2:SetCountDownNumber(TutorialSystem2:GetTimerLeftTime(0) / 1000)
    if TutorialSystem2:GetTimerState(0) == TIMER.END then
      TutorialSystem2:LockGamePlayInput(true)
      TutorialSystem2:ClearEnableInput()
      TutorialSystem2:PushEnableInput(INPUT_CHANGE_WEAPON_2)
      TutorialSystem2:SetActorPos(POS.TARGET._05[1], POS.TARGET._05[2], POS.TARGET._05[3], ACTOR.ME)
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
      TutorialSystem2:SetStep(goto_step0)
      TutorialSystem2:SetTimer(0, 15000)
    end
    if TutorialSystem2:GetCurrentWeaponID(ACTOR.ME) == WEAPON.EXO_SIDE then
      TutorialSystem2:SetCountDownNumber(-1)
      TutorialSystem2:SetShowControlGuide(true, CTRL_GUIDE1_BASIC, CTRL_GUIDE1_HIDE)
      TutorialSystem2:LockGamePlayInput(false)
      TutorialSystem2:GenerateEffect(POS.TARGET._06[1], POS.TARGET._06[2], POS.TARGET._06[3], STR.TARGET_POS_SEQ)
      TutorialSystem2:SetPrevTargetPos(MAKEVECTOR3(POS.TARGET._05[1], POS.TARGET._05[2], POS.TARGET._05[3]))
      local j = 1
      while POS.NAVI._06[j] do
        TutorialSystem2:RegistArrowNode(POS.NAVI._06[j][1], POS.NAVI._06[j][2], POS.NAVI._06[j][3])
        j = j + 1
      end
      TutorialSystem2:SetTutorialGoalMessage(true, 1118)
      TutorialSystem2:SetTimer(0, 15000)
      TutorialSystem2:SetStep(step + 1)
    end
  end
  step_c = step_c + 1
  if step == step_c then
    TutorialSystem2:SetCountDownNumber(TutorialSystem2:GetTimerLeftTime(0) / 1000)
    if TutorialSystem2:GetTimerState(0) == TIMER.END then
      TutorialSystem2:SetActorPos(POS.TARGET._05[1], POS.TARGET._05[2], POS.TARGET._05[3], ACTOR.ME)
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
      TutorialSystem2:SetTimer(0, 15000)
    end
    if TutorialSystem2:IsActorLocated(ACTOR.ME, POS.TARGET._06[1], POS.TARGET._06[2], POS.TARGET._06[3], 300) == true then
      TutorialSystem2:SetCountDownNumber(-1)
      TutorialSystem2:SetShowControlGuide(false, 0, 0)
      TutorialSystem2:RemoveGenEffectAll()
      TutorialSystem2:UnRegistAllArrowNodes()
      TutorialSystem2:SetTutorialGoalMessage(false, 0)
      TutorialSystem2:LockGamePlayInput(true)
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
      TutorialSystem2:SetStep(step + 1)
    end
  end
  step_c = step_c + 1
  goto_step1 = step_c
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(), MENT.CHARACTER1, EMOTION._03)
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(), MENT.CHARACTER1, EMOTION._03)
  if step == step_c then
    TutorialSystem2:ClearPrevStep()
    TutorialSystem2:SetShowControlGuide(true, CTRL_GUIDE1_HIDE, CTRL_GUIDE1_SWORDATT)
    TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0)
    TutorialSystem2:SetTutorialGoalMessage(true, 1119)
    TutorialSystem2:SetAllAttackLimit(true)
    TutorialSystem2:SetEnableAttack(Weapon1WeakState)
    TutorialSystem2:InitPlayerAttackCount()
    TutorialSystem2:InitDamageCounter(ACTOR.ENEMY_2)
    TutorialSystem2:LockGamePlayInput(false)
    TutorialSystem2:GenerateEffect(0, 0, 0, STR.ENEMY_TARGET_POS_SEQ)
    TutorialSystem2:AttachCurrentSequence(ACTOR.ENEMY_2, MAKEVECTOR3(0, 500, 0))
    TutorialSystem2:SetTimer(0, 15000)
    TutorialSystem2:EnableCollisionType(ACTOR.ME, TYPE_ACTOR, true)
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  g_fix_start = step_c
  if step == step_c then
    TutorialSystem2:SetCountDownNumber(TutorialSystem2:GetTimerLeftTime(0) / 1000)
    if TutorialSystem2:GetTimerState(0) == TIMER.END then
      TutorialSystem2:SetActorPos(POS.TARGET._06[1], POS.TARGET._06[2], POS.TARGET._06[3], ACTOR.ME)
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
      TutorialSystem2:LockGamePlayInput(true)
      TutorialSystem2:SetTimer(0, 15000)
      TutorialSystem2:SetStep(goto_step1)
    end
    if 4 <= TutorialSystem2:GetPlayerAttackCount(Weapon1WeakState) and 4 <= TutorialSystem2:GetDamageCounter(ACTOR.ENEMY_2) then
      TutorialSystem2:SetCountDownNumber(-1)
      TutorialSystem2:LockGamePlayInput(true)
      TutorialSystem2:SetShowControlGuide(false, 0, 0)
      TutorialSystem2:SetTutorialGoalMessage(false, 0)
      TutorialSystem2:SetStep(step + 1)
    end
  end
  step_c = step_c + 1
  goto_step2 = step_c
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(), MENT.CHARACTER1, EMOTION._01)
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(), MENT.CHARACTER1, EMOTION._01)
  if step == step_c then
    TutorialSystem2:ClearPrevStep()
    TutorialSystem2:SetAllAttackLimit(true)
    TutorialSystem2:SetEnableAttack(Weapon1WeakState)
    TutorialSystem2:SetEnableAttack(Weapon1StrongState)
    TutorialSystem2:InitPlayerAttackCount()
    TutorialSystem2:InitDamageCounter(ACTOR.ENEMY_2)
    TutorialSystem2:LockGamePlayInput(false)
    TutorialSystem2:SetShowControlGuide(true, CTRL_GUIDE1_HIDE, CTRL_GUIDE1_ATTACK2)
    TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0)
    TutorialSystem2:InitPlayerAttackCount()
    TutorialSystem2:InitDamageCounter(ACTOR.ENEMY_2)
    TutorialSystem2:SetTimer(0, 15000)
    TutorialSystem2:SetTutorialGoalMessage(true, 1120)
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  if step == step_c then
    TutorialSystem2:SetCountDownNumber(TutorialSystem2:GetTimerLeftTime(0) / 1000)
    if TutorialSystem2:GetTimerState(0) == TIMER.END then
      TutorialSystem2:SetActorPos(POS.TARGET._06[1], POS.TARGET._06[2], POS.TARGET._06[3], ACTOR.ME)
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
      TutorialSystem2:SetTimer(0, 15000)
      TutorialSystem2:LockGamePlayInput(true)
      TutorialSystem2:SetStep(goto_step2)
    end
    if 2 <= TutorialSystem2:GetPlayerAttackCount(Weapon1StrongState) and 2 <= TutorialSystem2:GetDamageCounter(ACTOR.ENEMY_2) then
      TutorialSystem2:SetCountDownNumber(-1)
      TutorialSystem2:LockGamePlayInput(true)
      TutorialSystem2:SetStep(step + 1)
      TutorialSystem2:SetShowControlGuide(false, 0, 0)
      TutorialSystem2:SetTutorialGoalMessage(false, 0)
      TutorialSystem2:SetProtectCondition(false)
    end
  end
  step_c = step_c + 1
  goto_step3 = step_c
  if step >= g_fix_start and step <= step_c and TutorialSystem2:IsValidActor(ACTOR.ENEMY_2) == true then
    TutorialSystem2:SetActorPos(POS.ENEMY_AUTO._02[2][1], POS.ENEMY_AUTO._02[2][2], POS.ENEMY_AUTO._02[2][3], ACTOR.ENEMY_2)
  end
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(), MENT.CHARACTER1, EMOTION._03)
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(), MENT.CHARACTER1, EMOTION._01)
  if step == step_c then
    TutorialSystem2:ClearPrevStep()
    TutorialSystem2:SetShowControlGuide(true, CTRL_GUIDE1_HIDE, CTRL_GUIDE1_SPATT)
    TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0)
    TutorialSystem2:SetTutorialGoalMessage(true, 1121)
    TutorialSystem2:SetAllAttackLimit(true)
    TutorialSystem2:SetEnableAttack(Weapon1JumpState)
    TutorialSystem2:SetEnableAttack(Weapon2State)
    TutorialSystem2:InitPlayerAttackCount()
    TutorialSystem2:InitDamageCounter(ACTOR.ENEMY_2)
    TutorialSystem2:LockGamePlayInput(false)
    TutorialSystem2:SetTimer(0, 15000)
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  if step == step_c then
    TutorialSystem2:SetCountDownNumber(TutorialSystem2:GetTimerLeftTime(0) / 1000)
    if TutorialSystem2:GetTimerState(0) == TIMER.END then
      TutorialSystem2:SetActorPos(POS.TARGET._06[1], POS.TARGET._06[2], POS.TARGET._06[3], ACTOR.ME)
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
      TutorialSystem2:SetTimer(0, 0)
      TutorialSystem2:LockGamePlayInput(true)
      TutorialSystem2:SetStep(goto_step3)
    end
    if 2 <= TutorialSystem2:GetPlayerAttackCount(Weapon2State) and 2 <= TutorialSystem2:GetDamageCounter(ACTOR.ENEMY_2) then
      TutorialSystem2:SetCountDownNumber(-1)
      TutorialSystem2:InitPlayerAttackCount()
      TutorialSystem2:InitDamageCounter(ACTOR.ENEMY_2)
      TutorialSystem2:LockGamePlayInput(true)
      TutorialSystem2:SetStep(step + 1)
      TutorialSystem2:SetShowControlGuide(false, 0, 0)
      TutorialSystem2:SetTutorialGoalMessage(false, 0)
    end
  end
  step_c = step_c + 1
  goto_step4 = step_c
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(), MENT.CHARACTER1, EMOTION._01)
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(), MENT.CHARACTER1, EMOTION._01)
  if step == step_c then
    TutorialSystem2:ClearPrevStep()
    TutorialSystem2:SetShowControlGuide(true, CTRL_GUIDE1_HIDE, CTRL_GUIDE1_JUMPATT)
    TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0)
    TutorialSystem2:SetTutorialGoalMessage(true, 1122)
    TutorialSystem2:LockGamePlayInput(false)
    TutorialSystem2:SetTimer(0, 15000)
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  if step == step_c then
    TutorialSystem2:SetCountDownNumber(TutorialSystem2:GetTimerLeftTime(0) / 1000)
    if TutorialSystem2:GetTimerState(0) == TIMER.END then
      TutorialSystem2:SetActorPos(POS.TARGET._06[1], POS.TARGET._06[2], POS.TARGET._06[3], ACTOR.ME)
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
      TutorialSystem2:SetTimer(0, 0)
      TutorialSystem2:LockGamePlayInput(true)
      TutorialSystem2:SetStep(goto_step4)
    end
    if 2 <= TutorialSystem2:GetPlayerAttackCount(Weapon1JumpState) and 2 <= TutorialSystem2:GetDamageCounter(ACTOR.ENEMY_2) then
      TutorialSystem2:SetCountDownNumber(-1)
      TutorialSystem2:SetShowControlGuide(false, 0, 0)
      TutorialSystem2:SetTutorialGoalMessage(false, 0)
      TutorialSystem2:SetHP(ACTOR.ENEMY_2, 0)
      TutorialSystem2:RemoveGenEffectAll()
      TutorialSystem2:DetachCurrentSequence()
      TutorialSystem2:SetAllAttackLimit(false)
      TutorialSystem2:LockGamePlayInput(true)
      TutorialSystem2:SetStep(step + 1)
    end
  end
  step_c = step_c + 1
  if step == step_c then
    local j = 1
    while POS.NAVI._07[j] do
      TutorialSystem2:RegistArrowNode(POS.NAVI._07[j][1], POS.NAVI._07[j][2], POS.NAVI._07[j][3])
      j = j + 1
    end
    TutorialSystem2:SetTutorialGoalMessage(true, 1123)
    TutorialSystem2:SetTutorialStepMessage(true, 1132)
    TutorialSystem2:GenerateEffect(POS.TARGET._07[1], POS.TARGET._07[2], POS.TARGET._07[3], STR.TARGET_POS_SEQ)
    TutorialSystem2:LockGamePlayInput(true)
    TutorialSystem2:SetLevel(7)
    TutorialSystem2:ClearPrevStep()
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  goto_step5 = step_c
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(), MENT.CHARACTER1, EMOTION._03)
  if step == step_c then
    TutorialSystem2:ClearPrevStep()
    TutorialSystem2:SetShowControlGuide(true, CTRL_GUIDE1_BASIC, CTRL_GUIDE1_HIDE)
    TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0)
    TutorialSystem2:LockGamePlayInput(false)
    TutorialSystem2:SetTimer(0, 15000)
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  if step == step_c then
    TutorialSystem2:SetCountDownNumber(TutorialSystem2:GetTimerLeftTime(0) / 1000)
    if TutorialSystem2:GetTimerState(0) == TIMER.END then
      TutorialSystem2:SetActorPos(POS.TARGET._06[1], POS.TARGET._06[2], POS.TARGET._06[3], ACTOR.ME)
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
      TutorialSystem2:SetTimer(0, 0)
      TutorialSystem2:LockGamePlayInput(true)
      TutorialSystem2:SetStep(goto_step5)
    end
    if TutorialSystem2:IsActorLocated(ACTOR.ME, POS.TARGET._07[1], POS.TARGET._07[2], POS.TARGET._07[3], 300) == true then
      TutorialSystem2:SetCountDownNumber(-1)
      TutorialSystem2:SetShowControlGuide(false, 0, 0)
      TutorialSystem2:CatchTheBall(ACTOR.ME)
      TutorialSystem2:RemoveGenEffectAll()
      TutorialSystem2:UnRegistAllArrowNodes()
      TutorialSystem2:SetTutorialGoalMessage(false, 0)
      TutorialSystem2:LockGamePlayInput(true)
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
      TutorialSystem2:SetSPInfinite(ACTOR.ME, true)
      TutorialSystem2:SetStep(step + 1)
    end
  end
  step_c = step_c + 1
  goto_step6 = step_c
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(), MENT.CHARACTER1, EMOTION._04)
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(), MENT.CHARACTER1, EMOTION._01)
  if step == step_c then
    TutorialSystem2:ClearPrevStep()
    TutorialSystem2:SetShowControlGuide(true, CTRL_GUIDE1_HIDE, CTRL_GUIDE1_WALLJUMP)
    TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0)
    TutorialSystem2:SetTutorialGoalMessage(true, 1124)
    TutorialSystem2:GenerateEffect(POS.TARGET._08[1], POS.TARGET._08[2], POS.TARGET._08[3], STR.WALL_TARGET_POS_SEQ)
    TutorialSystem2:SetTimer(0, 30000)
    TutorialSystem2:LockGamePlayInput(false)
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  if step == step_c then
    TutorialSystem2:SetCountDownNumber(TutorialSystem2:GetTimerLeftTime(0) / 1000)
    if TutorialSystem2:GetTimerState(0) == TIMER.END then
      TutorialSystem2:SetActorPos(POS.TARGET._07[1], POS.TARGET._07[2] + 100, POS.TARGET._07[3], ACTOR.ME)
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
      TutorialSystem2:SetTimer(0, 0)
      TutorialSystem2:LockGamePlayInput(true)
      TutorialSystem2:SetStep(goto_step6)
    end
    TutorialSystem2:SetSPInfinite(ACTOR.ME, true)
    if TutorialSystem2:IsLocatedWallJump(MAKEVECTOR3(POS.TARGET._08[1], POS.TARGET._08[2], POS.TARGET._08[3]), 300) == true then
      TutorialSystem2:SetData(DATA_KEY_WALLJUMP, 1)
    end
    if TutorialSystem2:GetData(DATA_KEY_WALLJUMP) == 1 and TutorialSystem2:IsActorLocated(ACTOR.ME, POS.GOAL[1], POS.GOAL[2], POS.GOAL[3], 300) == true then
      TutorialSystem2:SetCountDownNumber(-1)
      TutorialSystem2:SetShowControlGuide(false, 0, 0)
      TutorialSystem2:SetTutorialGoalMessage(false, 0)
      TutorialSystem2:SetTutorialStepMessage(false, 0)
      TutorialSystem2:PushActorCommandState(ACTOR.ME, STATE_NORMAL, 0)
      TutorialSystem2:RemoveGenEffectAll()
      TutorialSystem2:LockGamePlayInput(true)
      TutorialSystem2:Goal()
      TutorialSystem2:SetStep(step + 1)
    end
  end
  step_c = step_c + 1
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(), MENT.CHARACTER1, EMOTION._01)
  if step == step_c then
    TutorialSystem2:ClearPrevStep()
    TutorialSystem2:ChangeMessageWindow(MENT.HIDE, 0)
    TutorialSystem2:ReqCompleteReward()
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  if TutorialSystem2:GetLevel() == 8 then
    TutorialSystem2:SetStep(step + 1)
  end
  step_c = step_c + 1
  ment_id = ment_id + 1
  step_c = Tutorial_Step_PageScript_A1(step, step_c, ment_id, char_time, TutorialSystem2:GetFocusActorName(), MENT.CHARACTER1, EMOTION._01)
end
