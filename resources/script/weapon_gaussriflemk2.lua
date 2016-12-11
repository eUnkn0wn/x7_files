require("Resources/Script/ActorStates_Constants.lua")
function GaussRifleMK2_Standard(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetFrontOffset(275)
  STATE:InitLua(900, 250, 200, 260)
  STATE:SetMK2(true)
  ACTORSTATE:SetGunSpreadType(2)
  ACTORSTATE:SetInnerAccuracyVary(18, 1, 0.3, 1)
  ACTORSTATE:SetOuterAccuracyVary(24, 1, 0.3, 1)
  local arDirs = {}
  local i
  for i = 1, 10 do
    arDirs[i] = MAKECVECTOR3(0, 0, -1)
  end
  OneShotTime = 130
  local index = 1
  arDirs[index]:Normalize()
  Attack = CreateCAttack()
  Attack:InitAttack1(WEAPONTYPE_GAUSS_RIFLE_MK2, ATTACKATTRIB_GAUSS_RIFLE_MK2_LEFT_ATTACK, 20, Power, AddtionalPower)
  Attack:InitAttack2(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(arDirs[index]:GetX(), arDirs[index]:GetY(), arDirs[index]:GetZ()), RayDistanceLimit), 1, 1, false)
  Attack:SetCollisionRangeAdjust(false, false)
  Attack:SetConsumeAmmo(1)
  Attack:SetCameraShakeEnable(true, true, 0)
  Attack:SetCameraShakeSetFactor1(50, 25, 5)
  Attack:SetCameraShakeSetFactor2(1, 1, 1000, 1000)
  Attack:SetCameraShakeRandomDir(true)
  AddAttack(ATTACKS, Attack)
  for index = 2, 10 do
    arDirs[index]:Normalize()
    Attack = CreateCAttack()
    Attack:InitAttack1(WEAPONTYPE_GAUSS_RIFLE_MK2, ATTACKATTRIB_GAUSS_RIFLE_MK2_LEFT_ATTACK, 50 + (index - 1) * OneShotTime, Power, AddtionalPower)
    Attack:InitAttack2(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(arDirs[index]:GetX(), arDirs[index]:GetY(), arDirs[index]:GetZ()), RayDistanceLimit), 1, 1, false)
    Attack:SetCollisionRangeAdjust(false, false)
    Attack:SetConsumeAmmo(1)
    Attack:SetCameraShakeEnable(true, true, 0)
    Attack:SetCameraShakeSetFactor1(50, 25, 5)
    Attack:SetCameraShakeSetFactor2(1, 1, 1000, 1000)
    Attack:SetCameraShakeRandomDir(true)
    AddAttack(ATTACKS, Attack)
  end
end
function GaussRifleMK2_MultiShot(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetFrontOffset(7)
  STATE:InitLua(1400, 740, 0, 260)
  local AttackDelayTime = 250
  STATE:InitDirectionSequence(AttackDelayTime, "Resources/Effects/weapon_gaussmk2_sp_rail.seq", "", "Gauss_Rifle_MK2_Head_Dummy")
  STATE:InitInputDelayTime(800)
  STATE:SetSpendSp(24)
  local AttackRange = 1800
  local arDirs = {}
  arDirs[1] = MAKECVECTOR3(-1.2 * Accuracy, 0, -1)
  arDirs[2] = MAKECVECTOR3(-0.6 * Accuracy, 0, -1)
  arDirs[3] = MAKECVECTOR3(0 * Accuracy, 0, -1)
  arDirs[4] = MAKECVECTOR3(0.6 * Accuracy, 0, -1)
  arDirs[5] = MAKECVECTOR3(1.2 * Accuracy, 0, -1)
  arDirs[6] = MAKECVECTOR3(0 * Accuracy, -0.1, -1)
  arDirs[7] = MAKECVECTOR3(0 * Accuracy, 0.1, -1)
  for index = 1, 7 do
    arDirs[index]:Normalize()
    Attack = CreateCAttack()
    Attack:InitAttack1(WEAPONTYPE_GAUSS_RIFLE_MK2, ATTACKATTRIB_GAUSS_RIFLE_MK2_RIGHT_ATTACK, AttackDelayTime + (index - 1) * OneShotTime, Power * 1.5 + AdditionalPower, AddtionalPower)
    Attack:InitAttack2(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(arDirs[index]:GetX(), arDirs[index]:GetY(), arDirs[index]:GetZ()), AttackRange), 1, 1, false)
    Attack:SetCollisionRangeAdjust(false, false)
    Attack:SetConsumeAmmo(1)
    Attack:SetCameraShakeEnable(true, true, 0)
    Attack:SetCameraShakeSetFactor1(200, 40, 40)
    Attack:SetCameraShakeSetFactor2(60, 60, 500, 600)
    Attack:SetCameraShakeRandomDir(true)
    Attack:SetCameraShakeWhenSuccess(true)
    Attack:AddBlowCondition(1200, 1500)
    AddAttack(ATTACKS, Attack)
  end
end
