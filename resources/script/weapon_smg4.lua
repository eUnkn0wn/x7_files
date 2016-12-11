require("Resources/Script/ActorStates_Constants.lua")
function StandardSmg4(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetFrontOffset(275)
  STATE:InitLua(260, 40, -40, 250, 750, 750)
  Attack1 = CreateCAttack()
  Attack1:InitAttack1(WEAPONTYPE_SMG4, ATTACKATTRIB_SMG4, 150, Power * 0.2 + AdditionalPower, AddtionalPower)
  Attack1:InitAttack2(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(0, -0.05 * Accuracy, -1), RayDistanceLimit), 1, 1, true)
  Attack1:AddCollisionRange(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(-0.25 * Accuracy, 0.25 * Accuracy, -1), RayDistanceLimit))
  Attack1:AddCollisionRange(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(0.25 * Accuracy, 0.25 * Accuracy, -1), RayDistanceLimit))
  Attack1:AddCollisionRange(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(-0.5 * Accuracy, 0.1 * Accuracy, -1), RayDistanceLimit))
  Attack1:AddCollisionRange(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(0.5 * Accuracy, 0.1 * Accuracy, -1), RayDistanceLimit))
  Attack1:AddCollisionRange(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(-0.25 * Accuracy, -0.4 * Accuracy, -1), RayDistanceLimit))
  Attack1:AddCollisionRange(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(0.25 * Accuracy, -0.4 * Accuracy, -1), RayDistanceLimit))
  Attack1:SetCollisionRangeAdjust(false, false)
  Attack1:SetConsumeAmmo(1)
  Attack1:SetCameraShakeEnable(true, true, 0)
  Attack1:SetCameraShakeSetFactor1(50, 25, 5)
  Attack1:SetCameraShakeSetFactor2(1, 1, 1000, 1000)
  Attack1:SetCameraShakeRandomDir(true)
  Attack1:AddPushCondition(100, 5000, -7000)
  AddAttack(ATTACKS, Attack1)
  Attack1:SetCheckBodyPartsByThickray(false)
  Attack2 = CreateCAttack()
  Attack2:InitAttack1(WEAPONTYPE_SMG4, ATTACKATTRIB_SMG4, 150, Power * 0.2 + AdditionalPower, AddtionalPower)
  Attack2:InitAttack2(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(0, -0.05 * Accuracy, -1), RayDistanceLimit), 1, 1, true)
  Attack2:AddCollisionRange(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(-0.25 * Accuracy, 0.25 * Accuracy, -1), RayDistanceLimit))
  Attack2:AddCollisionRange(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(0.25 * Accuracy, 0.25 * Accuracy, -1), RayDistanceLimit))
  Attack2:AddCollisionRange(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(-0.5 * Accuracy, 0.1 * Accuracy, -1), RayDistanceLimit))
  Attack2:AddCollisionRange(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(0.5 * Accuracy, 0.1 * Accuracy, -1), RayDistanceLimit))
  Attack2:AddCollisionRange(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(-0.25 * Accuracy, -0.4 * Accuracy, -1), RayDistanceLimit))
  Attack2:AddCollisionRange(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(0.25 * Accuracy, -0.4 * Accuracy, -1), RayDistanceLimit))
  Attack2:SetCollisionRangeAdjust(false, false)
  Attack2:AddPushCondition(150, 1000, -1875)
  AddAttack(ATTACKS, Attack2)
  Attack2:SetCheckBodyPartsByThickray(false)
  Attack3 = CreateCAttack()
  Attack3:InitAttack1(WEAPONTYPE_SMG4, ATTACKATTRIB_SMG4, 150, Power * 0.2 + AdditionalPower, AddtionalPower)
  Attack3:InitAttack2(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(0, -0.05 * Accuracy, -1), RayDistanceLimit), 1, 1, true)
  Attack3:AddCollisionRange(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(-0.25 * Accuracy, 0.25 * Accuracy, -1), RayDistanceLimit))
  Attack3:AddCollisionRange(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(0.25 * Accuracy, 0.25 * Accuracy, -1), RayDistanceLimit))
  Attack3:AddCollisionRange(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(-0.5 * Accuracy, 0.1 * Accuracy, -1), RayDistanceLimit))
  Attack3:AddCollisionRange(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(0.5 * Accuracy, 0.1 * Accuracy, -1), RayDistanceLimit))
  Attack3:AddCollisionRange(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(-0.25 * Accuracy, -0.4 * Accuracy, -1), RayDistanceLimit))
  Attack3:AddCollisionRange(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(0.25 * Accuracy, -0.4 * Accuracy, -1), RayDistanceLimit))
  Attack3:SetCollisionRangeAdjust(false, false)
  Attack3:AddPushCondition(150, 1000, -1875)
  AddAttack(ATTACKS, Attack3)
  Attack3:SetCheckBodyPartsByThickray(false)
  Attack4 = CreateCAttack()
  Attack4:InitAttack1(WEAPONTYPE_SMG4, ATTACKATTRIB_SMG4, 150, Power * 0.2 + AdditionalPower, AddtionalPower)
  Attack4:InitAttack2(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(0, -0.05 * Accuracy, -1), RayDistanceLimit), 1, 1, true)
  Attack4:AddCollisionRange(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(-0.25 * Accuracy, 0.25 * Accuracy, -1), RayDistanceLimit))
  Attack4:AddCollisionRange(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(0.25 * Accuracy, 0.25 * Accuracy, -1), RayDistanceLimit))
  Attack4:AddCollisionRange(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(-0.5 * Accuracy, 0.1 * Accuracy, -1), RayDistanceLimit))
  Attack4:AddCollisionRange(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(0.5 * Accuracy, 0.1 * Accuracy, -1), RayDistanceLimit))
  Attack4:AddCollisionRange(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(-0.25 * Accuracy, -0.4 * Accuracy, -1), RayDistanceLimit))
  Attack4:AddCollisionRange(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(0.25 * Accuracy, -0.4 * Accuracy, -1), RayDistanceLimit))
  Attack4:SetCollisionRangeAdjust(false, false)
  Attack4:AddPushCondition(150, 1000, -1875)
  AddAttack(ATTACKS, Attack4)
  Attack4:SetCheckBodyPartsByThickray(false)
  Attack5 = CreateCAttack()
  Attack5:InitAttack1(WEAPONTYPE_SMG4, ATTACKATTRIB_SMG4, 150, Power * 0.2 + AdditionalPower, AddtionalPower)
  Attack5:InitAttack2(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(0, -0.05 * Accuracy, -1), RayDistanceLimit), 1, 1, true)
  Attack5:AddCollisionRange(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(-0.25 * Accuracy, 0.25 * Accuracy, -1), RayDistanceLimit))
  Attack5:AddCollisionRange(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(0.25 * Accuracy, 0.25 * Accuracy, -1), RayDistanceLimit))
  Attack5:AddCollisionRange(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(-0.5 * Accuracy, 0.1 * Accuracy, -1), RayDistanceLimit))
  Attack5:AddCollisionRange(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(0.5 * Accuracy, 0.1 * Accuracy, -1), RayDistanceLimit))
  Attack5:AddCollisionRange(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(-0.25 * Accuracy, -0.4 * Accuracy, -1), RayDistanceLimit))
  Attack5:AddCollisionRange(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(0.25 * Accuracy, -0.4 * Accuracy, -1), RayDistanceLimit))
  Attack5:SetCollisionRangeAdjust(false, false)
  Attack5:AddPushCondition(150, 1000, -1875)
  AddAttack(ATTACKS, Attack5)
  Attack5:SetCheckBodyPartsByThickray(false)
end
function StandardShockWave(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:InitLua(0, 0, 0)
  STATE:SetCameraShake(true, 50, 70, 2, 2, 2, 1000, 1000)
  ACTORSTATE:SetGunSpreadType(2)
  ACTORSTATE:SetInnerAccuracyVary(40, 0, 0, 1)
  ACTORSTATE:SetOuterAccuracyVary(50, 0, 0, 1)
  ACTORSTATE:SetMouseSensitivityRotate(0.4)
  local ArrayDir = {}
  local index = 1
  local AngleX = 1
  local AngleZ = 72
  for index = 1, 110 do
    ArrayDir[index] = MAKECVECTOR3(0, 0, -1)
    local vDirTemp = ArrayDir[index]
    if index <= 20 then
      vDirTemp:RotateX((index - 1) * AngleX)
      vDirTemp:RotateZ((index - 1) * AngleZ * -1)
    else
      vDirTemp:RotateX((index % 5 + 1) * AngleX)
      vDirTemp:RotateZ((index % 5 + 1) * AngleZ)
    end
  end
  local arrIndices = {
    8,
    9,
    8,
    7,
    6,
    5,
    4,
    3,
    2,
    1,
    5,
    9,
    8,
    7,
    6,
    5,
    4,
    3,
    2,
    1,
    8,
    9,
    8,
    7,
    6,
    5,
    4,
    3,
    2,
    1,
    5,
    9,
    8,
    7,
    6,
    5,
    4,
    3,
    2,
    1,
    8,
    9,
    8,
    7,
    6,
    5,
    4,
    3,
    2,
    1,
    5,
    9,
    8,
    7,
    6,
    5,
    4,
    3,
    2,
    1,
    8,
    9,
    8,
    7,
    6,
    5,
    4,
    3,
    2,
    1,
    5,
    9,
    8,
    7,
    6,
    5,
    4,
    3,
    2,
    1,
    8,
    9,
    8,
    7,
    6,
    5,
    4,
    3,
    2,
    1,
    5,
    9,
    8,
    7,
    6,
    5,
    4,
    3,
    2,
    1,
    8,
    9,
    8,
    7,
    6,
    5,
    4,
    3,
    2,
    1,
    5,
    9,
    8,
    7,
    6,
    5,
    4,
    3,
    2,
    1,
    8,
    9,
    8,
    7,
    6,
    5,
    4,
    3,
    2,
    1,
    5,
    9,
    8,
    7,
    6,
    5,
    4,
    3,
    2,
    1,
    8,
    9,
    8,
    7,
    6,
    5,
    4,
    3,
    2,
    1,
    5,
    9,
    8,
    7,
    6,
    5,
    4,
    3,
    2,
    1,
    8,
    9,
    8,
    7,
    6,
    5,
    4,
    3,
    2,
    1,
    5,
    9,
    8,
    7,
    6,
    5,
    4,
    3,
    2,
    1,
    8,
    9,
    8,
    7,
    6,
    5,
    4,
    3,
    2,
    1,
    5,
    9,
    8,
    7,
    6,
    5,
    4,
    3,
    2,
    1,
    8,
    9,
    8,
    7,
    6,
    5,
    4,
    3,
    2,
    1,
    5,
    9,
    8,
    7,
    6,
    5,
    4,
    3,
    2,
    1,
    8,
    9,
    8,
    7,
    6,
    5,
    4,
    3,
    2,
    1,
    5,
    9,
    8,
    7,
    6,
    5,
    4,
    3,
    2,
    1,
    80,
    79,
    78,
    77,
    76,
    81,
    82,
    83,
    84,
    85,
    90,
    89,
    88,
    87,
    86,
    91,
    92,
    93,
    94,
    95,
    100,
    99,
    98,
    97,
    96,
    101,
    102,
    103,
    104,
    105,
    110,
    109,
    108,
    107,
    106
  }
  for index = 1, 110 do
    local vDir = ArrayDir[arrIndices[index]]
    vDir:Multiply(Accuracy, Accuracy, 1)
    vDir:Normalize()
    local fireTime = index * OneShotTime
    Attack = CreateCAttack()
    Attack:InitAttack1(WEAPONTYPE_TURRET, ATTACKATTRIB_CHAIN_LIGHT_GUN, fireTime, Power * 1 + AdditionalPower, AddtionalPower)
    Attack:InitAttack2(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(vDir:GetX(), vDir:GetY(), vDir:GetZ()), RayDistanceLimit), 1, 1, false)
    Attack:SetCollisionRangeAdjust(false, false)
    Attack:SetConsumeAmmo(1)
    AddAttack(ATTACKS, Attack)
  end
end
