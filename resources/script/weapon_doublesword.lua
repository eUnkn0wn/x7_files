require("Resources/Script/ActorStates_Constants.lua")
function StandardDoubleSwordJumpDash(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetDrop(500, MAKEVECTOR3(0, -10000, 0))
  STATE:SetStealthCancel(true)
  STATE:SetMoveBoxMultiplier(1)
  STATE:SetHitStop(210, 310)
  STATE:SetCheckChargeAttack(false)
  STATE:InitLua("", "", 600, 600, 40, false, 0)
  local range = WEAPON:GetRange()
  Attack1 = CreateCAttack()
  Attack1:InitAttack1(WEAPONTYPE_DOUBLE_SWORD, ATTACKATTRIB_DOUBLE_SWORD_JUMPDASH, 210, Power + AdditionalPower, AddtionalPower)
  Attack1:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 0, -100), MAKEVECTOR3(0, 0, -1), range * 1.5, range * 1.5, range * 1.5), 1, 1, false)
  Attack1:AddBlowCondition(1500, 2000)
  Attack1:SetCameraShakeEnable(true, true, 0)
  Attack1:SetCameraShakeSetFactor1(150, 50, 60)
  Attack1:SetCameraShakeSetFactor2(60, 0, 2000, 3000)
  Attack1:SetCameraShakeWhenSuccess(true)
  AddAttack(ATTACKS, Attack1)
end
function StandardDoubleSwordAfterDash1(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveBoxMultiplier(1.7)
  STATE:SetMoveStopWhenDamage(true)
  STATE:SetStealthCancel(true)
  STATE:SetHitStop(300, 500)
  STATE:InitLua(800, 150, 40, true)
  local range = WEAPON:GetRange()
  Attack1 = CreateCAttack()
  Attack1:InitAttack1(WEAPONTYPE_DOUBLE_SWORD, ATTACKATTRIB_DOUBLE_SWORD_ATTACK1, 100, Power * 0.5 + AdditionalPower, AddtionalPower)
  Attack1:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 250, -100), MAKEVECTOR3(0, 0, -1), range * 0.8, range * 0.5, range * 0.7), 1, 1, false)
  Attack1:SetCameraShakeEnable(true, true, 0)
  Attack1:SetCameraShakeSetFactor1(100, 50, 20)
  Attack1:SetCameraShakeSetFactor2(60, 0, 2000, 3000)
  Attack1:SetCameraShakeWhenSuccess(true)
  AddAttack(ATTACKS, Attack1)
  Attack2 = CreateCAttack()
  Attack2:InitAttack1(WEAPONTYPE_DOUBLE_SWORD, ATTACKATTRIB_DOUBLE_SWORD_ATTACK1, 350, Power + AdditionalPower, AddtionalPower)
  Attack2:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 250, -100), MAKEVECTOR3(0, 0, -1), range * 0.8, range * 0.5, range * 1.4), 1, 1, false)
  Attack2:AddPushCondition(150, 2000, -5000)
  Attack2:SetCameraShakeEnable(true, true, 0)
  Attack2:SetCameraShakeSetFactor1(100, 50, 20)
  Attack2:SetCameraShakeSetFactor2(60, 0, 2000, 3000)
  Attack2:SetCameraShakeWhenSuccess(true)
  AddAttack(ATTACKS, Attack2)
end
function StandardDoubleSwordAfterDash3(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveBoxMultiplier(1)
  STATE:SetStealthCancel(true)
  STATE:SetHitStop(510, 610)
  STATE:EnableCameraShake(true, false, 260)
  STATE:SetCameraShakeFactor1(250, 50, 50)
  STATE:SetCameraShakeFactor2(60, 0, 2000, 3000)
  STATE:InitLua(800, 300, 40, true)
  local range = WEAPON:GetRange()
  Attack1 = CreateCAttack()
  Attack1:InitAttack1(WEAPONTYPE_DOUBLE_SWORD, ATTACKATTRIB_DOUBLE_SWORD_ATTACK3, 50, Power * 0.4, AddtionalPower)
  Attack1:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 250, -100), MAKEVECTOR3(0, 0, -1), range * 0.8, range * 0.5, range * 1), 1, 1, false)
  Attack1:SetCritical(2, 20)
  Attack1:AddPushCondition(150, 2000, -5000)
  Attack1:SetCameraShakeEnable(true, true, 0)
  Attack1:SetCameraShakeSetFactor1(100, 50, 20)
  Attack1:SetCameraShakeSetFactor2(60, 0, 2000, 3000)
  Attack1:SetCameraShakeWhenSuccess(true)
  AddAttack(ATTACKS, Attack1)
  Attack2 = CreateCAttack()
  Attack2:InitAttack1(WEAPONTYPE_DOUBLE_SWORD, ATTACKATTRIB_DOUBLE_SWORD_ATTACK3, 400, Power * 0.4, AddtionalPower)
  Attack2:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 250, 200), MAKEVECTOR3(0, 0, -1), range * 0.8, range * 0.5, range * 1), 1, 1, false)
  Attack2:AddPushCondition(150, 2000, -5000)
  Attack2:SetCritical(2, 20)
  Attack2:SetCameraShakeEnable(true, true, 0)
  Attack2:SetCameraShakeSetFactor1(100, 50, 20)
  Attack2:SetCameraShakeSetFactor2(60, 0, 2000, 3000)
  Attack2:SetCameraShakeWhenSuccess(true)
  AddAttack(ATTACKS, Attack2)
end
function StandardDoubleSwordGatherGuage(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveSpeedRate(0.7)
  STATE:SetStealthCancel(true)
  STATE:SetHitStop(150, 300)
  STATE:SetMoveBoxMultiplier(2)
  STATE:SetStateMinSp(0)
  STATE:SetChargeTimer(false)
  STATE:InitLua(40, 0, 0, false, true, 3)
  STATE:InitLuaInputSecond(0, 0, 0, "R_Hand_Dummy", "L_Hand_Dummy")
end
function StandardDoubleSwordAfterDash4(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetDrop(400, MAKEVECTOR3(0, -10000, 0))
  STATE:SetMoveBoxMultiplier(1)
  STATE:SetStealthCancel(true)
  STATE:SetHitStop(600, 700)
  STATE:SetCheckChargeAttack(true)
  STATE:SetSettingChargeTime(true)
  STATE:EnableCameraShake(true, false, 560)
  STATE:SetCameraShakeFactor1(300, 50, 60)
  STATE:SetCameraShakeFactor2(60, 0, 2000, 3000)
  STATE:SetSpendSp(30)
  STATE:InitLua("", "", 800, 1000, 40, false, 2000)
  local range = WEAPON:GetRange()
  Attack1 = CreateCAttack()
  Attack1:InitAttack1(WEAPONTYPE_DOUBLE_SWORD, ATTACKATTRIB_DOUBLE_SWORD_ATTACK4, 600, Power + AdditionalPower, AddtionalPower)
  Attack1:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 250, -100), MAKEVECTOR3(0, 0, -1), range * 1.2, range * 1.1, range * 1.6), 1, 1, false)
  Attack1:AddBlowCondition(1500, 900)
  Attack1:SetFullCharge(false)
  AddAttack(ATTACKS, Attack1)
  Attack2 = CreateCAttack()
  Attack2:InitAttack1(WEAPONTYPE_DOUBLE_SWORD, ATTACKATTRIB_DOUBLE_SWORD_ATTACK4, 600, Power + AdditionalPower, AddtionalPower)
  Attack2:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 300, -100), MAKEVECTOR3(0, 0, -1), range * 1.6, range * 1.4, range * 1.8), 1, 1, false)
  Attack2:AddBlowCondition(3000, 1800)
  Attack2:SetFullCharge(true)
  AddAttack(ATTACKS, Attack2)
end
function StandardDoubleSwordAfterDash5(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveSpeedRate(0.7)
  STATE:SetStealthCancel(true)
  STATE:SetHitStop(150, 300)
  STATE:SetMoveBoxMultiplier(2)
  STATE:SetStateMinSp(30)
  STATE:SetChargeTimer(true)
  STATE:InitLua(40, 0, 2000, false, true, 0)
  STATE:InitLuaInputSecond(2000, 0, 0, "R_Hand_Dummy", "L_Hand_Dummy")
end
function StandardDoubleSwordAfterDash2(OneShotTime, Power, Accuracy, AdditionalPower)
end
