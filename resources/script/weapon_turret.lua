require("Resources/Script/ActorStates_Constants.lua")
function Standardturret(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:InitLua(800, 750, 1000)
  local AngleInside = 15
  local AngleMiddle = 30
  local AngleOutside = 45
  local ArrayDir = {}
  local vInnerPoint = MAKECVECTOR3(0, 0, -1)
  vInnerPoint:RotateY(AngleInside)
  ArrayDir[1] = vInnerPoint
  local index = 1
  for index = 1, 3 do
    vInnerPoint:RotateZ(90)
    ArrayDir[index + 1] = MAKECVECTOR3(vInnerPoint:GetX(), vInnerPoint:GetY(), vInnerPoint:GetZ())
  end
  local vMiddlePoint = MAKECVECTOR3(0, 0, -1)
  vMiddlePoint:RotateY(AngleMiddle)
  ArrayDir[5] = vMiddlePoint
  for index = 1, 7 do
    vMiddlePoint:RotateZ(45)
    ArrayDir[index + 5] = MAKECVECTOR3(vMiddlePoint:GetX(), vMiddlePoint:GetY(), vMiddlePoint:GetZ())
  end
  local vOutsidePoint = MAKECVECTOR3(0, 0, -1)
  vOutsidePoint:RotateY(AngleOutside)
  ArrayDir[13] = vOutsidePoint
  for index = 1, 7 do
    vOutsidePoint:RotateZ(45)
    ArrayDir[index + 13] = MAKECVECTOR3(vOutsidePoint:GetX(), vOutsidePoint:GetY(), vOutsidePoint:GetZ())
  end
  local arrIndices = {
    2,
    6,
    3,
    14,
    10,
    4,
    20,
    7,
    17,
    5,
    8,
    15,
    9,
    11,
    12,
    1,
    13,
    16,
    18,
    19
  }
  math.randomseed(os.time())
  for index = 1, 20 do
    local vDir = ArrayDir[arrIndices[index]]
    vDir:Multiply(Accuracy, Accuracy, 1)
    vDir:Normalize()
    local value = math.random(1, 1000)
    local fireTime = index * OneShotTime
    if value < 334 then
      Attack = CreateCAttack()
      Attack:InitAttack1(WEAPONTYPE_TURRET, ATTACKATTRIB_TURRET_NORMAL, fireTime, Power * 0.5 + AdditionalPower, AddtionalPower)
      Attack:InitAttack2(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(vDir:GetX(), vDir:GetY(), vDir:GetZ()), RayDistanceLimit), 1, 1, false)
      Attack:SetCollisionRangeAdjust(false, false)
      AddAttack(ATTACKS, Attack)
    elseif value < 667 then
      Attack1 = CreateCAttack()
      Attack1:InitAttack1(WEAPONTYPE_TURRET, ATTACKATTRIB_TURRET_NORMAL, fireTime, Power * 0.5 + AdditionalPower, AddtionalPower)
      Attack1:InitAttack2(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(vDir:GetX(), vDir:GetY(), vDir:GetZ()), RayDistanceLimit), 1, 1, false)
      Attack1:SetCollisionRangeAdjust(false, false)
      AddAttack(ATTACKS, Attack1)
    else
      Attack2 = CreateCAttack()
      Attack2:InitAttack1(WEAPONTYPE_TURRET, ATTACKATTRIB_TURRET_NORMAL, fireTime, Power * 0.5 + AdditionalPower, AddtionalPower)
      Attack2:InitAttack2(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(vDir:GetX(), vDir:GetY(), vDir:GetZ()), RayDistanceLimit), 1, 1, false)
      Attack2:SetCollisionRangeAdjust(false, false)
      AddAttack(ATTACKS, Attack2)
    end
  end
end
function Standardturret_MK2(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:InitLua(1200, 750, 1000)
  local AngleInside = 15
  local AngleMiddle = 30
  local AngleOutside = 45
  local ArrayDir = {}
  local vInnerPoint = MAKECVECTOR3(0, 0, -1)
  vInnerPoint:RotateY(AngleInside)
  ArrayDir[1] = vInnerPoint
  local index = 1
  for index = 1, 3 do
    vInnerPoint:RotateZ(90)
    ArrayDir[index + 1] = MAKECVECTOR3(vInnerPoint:GetX(), vInnerPoint:GetY(), vInnerPoint:GetZ())
  end
  local vMiddlePoint = MAKECVECTOR3(0, 0, -1)
  vMiddlePoint:RotateY(AngleMiddle)
  ArrayDir[5] = vMiddlePoint
  for index = 1, 7 do
    vMiddlePoint:RotateZ(45)
    ArrayDir[index + 5] = MAKECVECTOR3(vMiddlePoint:GetX(), vMiddlePoint:GetY(), vMiddlePoint:GetZ())
  end
  local vOutsidePoint = MAKECVECTOR3(0, 0, -1)
  vOutsidePoint:RotateY(AngleOutside)
  ArrayDir[13] = vOutsidePoint
  for index = 1, 7 do
    vOutsidePoint:RotateZ(45)
    ArrayDir[index + 13] = MAKECVECTOR3(vOutsidePoint:GetX(), vOutsidePoint:GetY(), vOutsidePoint:GetZ())
  end
  local arrIndices = {
    2,
    6,
    3,
    14,
    10,
    4,
    20,
    7,
    17,
    5,
    8,
    15,
    9,
    11,
    12,
    1,
    13,
    16,
    18,
    19
  }
  math.randomseed(os.time())
  for index = 1, 20 do
    local vDir = ArrayDir[arrIndices[index]]
    vDir:Multiply(Accuracy, Accuracy, 1)
    vDir:Normalize()
    local value = math.random(1, 1000)
    local fireTime = index * OneShotTime
    if value < 334 then
      Attack = CreateCAttack()
      Attack:InitAttack1(WEAPONTYPE_TURRET, ATTACKATTRIB_TURRET_NORMAL, fireTime, Power * 0.5 + AdditionalPower, AddtionalPower)
      Attack:InitAttack2(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(vDir:GetX(), vDir:GetY(), vDir:GetZ()), RayDistanceLimit), 1, 1, false)
      Attack:SetCollisionRangeAdjust(false, false)
      AddAttack(ATTACKS, Attack)
    elseif value < 667 then
      Attack1 = CreateCAttack()
      Attack1:InitAttack1(WEAPONTYPE_TURRET, ATTACKATTRIB_TURRET_NORMAL, fireTime, Power * 0.5 + AdditionalPower, AddtionalPower)
      Attack1:InitAttack2(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(vDir:GetX(), vDir:GetY(), vDir:GetZ()), RayDistanceLimit), 1, 1, false)
      Attack1:SetCollisionRangeAdjust(false, false)
      AddAttack(ATTACKS, Attack1)
    else
      Attack2 = CreateCAttack()
      Attack2:InitAttack1(WEAPONTYPE_TURRET, ATTACKATTRIB_TURRET_NORMAL, fireTime, Power * 0.5 + AdditionalPower, AddtionalPower)
      Attack2:InitAttack2(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(vDir:GetX(), vDir:GetY(), vDir:GetZ()), RayDistanceLimit), 1, 1, false)
      Attack2:SetCollisionRangeAdjust(false, false)
      AddAttack(ATTACKS, Attack2)
    end
  end
end
function StandardturretInstall(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:InitLua(200, 300, 200)
  STATE:SetCameraShake(true, 50, 100, 7, 2.5, 3.5, 500, 1000)
  ACTORSTATE:SetGunSpreadType(2)
  ACTORSTATE:SetInnerAccuracyVary(20, 1.5, 0, 1)
  ACTORSTATE:SetOuterAccuracyVary(35, 5, 0, 2)
  ACTORSTATE:SetMouseSensitivityRotate(0.3)
  local AngleInside = 15
  local AngleMiddle = 30
  local AngleOutside = 45
  local ArrayDir = {}
  local vInnerPoint = MAKECVECTOR3(0, 0, -1)
  vInnerPoint:RotateY(AngleInside)
  ArrayDir[1] = vInnerPoint
  local index = 1
  for index = 1, 3 do
    vInnerPoint:RotateZ(90)
    ArrayDir[index + 1] = MAKECVECTOR3(vInnerPoint:GetX(), vInnerPoint:GetY(), vInnerPoint:GetZ())
  end
  local vMiddlePoint = MAKECVECTOR3(0, 0, -1)
  vMiddlePoint:RotateY(AngleMiddle)
  ArrayDir[5] = vMiddlePoint
  for index = 1, 7 do
    vMiddlePoint:RotateZ(45)
    ArrayDir[index + 5] = MAKECVECTOR3(vMiddlePoint:GetX(), vMiddlePoint:GetY(), vMiddlePoint:GetZ())
  end
  local vOutsidePoint = MAKECVECTOR3(0, 0, -1)
  vOutsidePoint:RotateY(AngleOutside)
  ArrayDir[13] = vOutsidePoint
  for index = 1, 7 do
    vOutsidePoint:RotateZ(45)
    ArrayDir[index + 13] = MAKECVECTOR3(vOutsidePoint:GetX(), vOutsidePoint:GetY(), vOutsidePoint:GetZ())
  end
  local arrIndices = {
    2,
    6,
    3,
    14,
    10,
    4,
    20,
    7,
    17,
    5,
    8,
    15,
    9,
    11,
    12,
    1,
    13,
    16,
    18,
    19
  }
  math.randomseed(os.time())
  for index = 1, 20 do
    local vDir = ArrayDir[arrIndices[index]]
    vDir:Multiply(Accuracy, Accuracy, 1)
    vDir:Normalize()
    local value = math.random(1, 1000)
    local fireTime = index * OneShotTime
    if value < 334 then
      Attack = CreateCAttack()
      Attack:InitAttack1(WEAPONTYPE_TURRET, ATTACKATTRIB_TURRET_INSTALL, fireTime, Power + AdditionalPower, AddtionalPower)
      Attack:InitAttack2(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(vDir:GetX(), vDir:GetY(), vDir:GetZ()), RayDistanceLimit), 1, 1, false)
      Attack:SetCollisionRangeAdjust(false, false)
      AddAttack(ATTACKS, Attack)
    elseif value < 667 then
      Attack1 = CreateCAttack()
      Attack1:InitAttack1(WEAPONTYPE_TURRET, ATTACKATTRIB_TURRET_INSTALL, fireTime, Power + AdditionalPower, AddtionalPower)
      Attack1:InitAttack2(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(vDir:GetX(), vDir:GetY(), vDir:GetZ()), RayDistanceLimit), 1, 1, false)
      Attack1:SetCollisionRangeAdjust(false, false)
      AddAttack(ATTACKS, Attack1)
    else
      Attack2 = CreateCAttack()
      Attack2:InitAttack1(WEAPONTYPE_TURRET, ATTACKATTRIB_TURRET_INSTALL, fireTime, Power + AdditionalPower, AddtionalPower)
      Attack2:InitAttack2(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(vDir:GetX(), vDir:GetY(), vDir:GetZ()), RayDistanceLimit), 1, 1, false)
      Attack2:SetCollisionRangeAdjust(false, false)
      AddAttack(ATTACKS, Attack2)
    end
  end
end
function StandardturretInstall_MK2(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:InitLua(200, 300, 200)
  STATE:SetCameraShake(true, 50, 100, 7, 2.5, 3.5, 500, 1000)
  ACTORSTATE:SetGunSpreadType(2)
  ACTORSTATE:SetInnerAccuracyVary(20, 1.5, 0, 1)
  ACTORSTATE:SetOuterAccuracyVary(35, 5, 0, 2)
  ACTORSTATE:SetMouseSensitivityRotate(0.3)
  local AngleInside = 15
  local AngleMiddle = 30
  local AngleOutside = 45
  local ArrayDir = {}
  local vInnerPoint = MAKECVECTOR3(0, 0, -1)
  vInnerPoint:RotateY(AngleInside)
  ArrayDir[1] = vInnerPoint
  local index = 1
  for index = 1, 3 do
    vInnerPoint:RotateZ(90)
    ArrayDir[index + 1] = MAKECVECTOR3(vInnerPoint:GetX(), vInnerPoint:GetY(), vInnerPoint:GetZ())
  end
  local vMiddlePoint = MAKECVECTOR3(0, 0, -1)
  vMiddlePoint:RotateY(AngleMiddle)
  ArrayDir[5] = vMiddlePoint
  for index = 1, 7 do
    vMiddlePoint:RotateZ(45)
    ArrayDir[index + 5] = MAKECVECTOR3(vMiddlePoint:GetX(), vMiddlePoint:GetY(), vMiddlePoint:GetZ())
  end
  local vOutsidePoint = MAKECVECTOR3(0, 0, -1)
  vOutsidePoint:RotateY(AngleOutside)
  ArrayDir[13] = vOutsidePoint
  for index = 1, 7 do
    vOutsidePoint:RotateZ(45)
    ArrayDir[index + 13] = MAKECVECTOR3(vOutsidePoint:GetX(), vOutsidePoint:GetY(), vOutsidePoint:GetZ())
  end
  local arrIndices = {
    2,
    6,
    3,
    14,
    10,
    4,
    20,
    7,
    17,
    5,
    8,
    15,
    9,
    11,
    12,
    1,
    13,
    16,
    18,
    19
  }
  math.randomseed(os.time())
  for index = 1, 20 do
    local vDir = ArrayDir[arrIndices[index]]
    vDir:Multiply(Accuracy, Accuracy, 1)
    vDir:Normalize()
    local value = math.random(1, 1000)
    local fireTime = index * OneShotTime
    if value < 334 then
      Attack = CreateCAttack()
      Attack:InitAttack1(WEAPONTYPE_TURRET, ATTACKATTRIB_TURRET_INSTALL, fireTime, Power + AdditionalPower, AddtionalPower)
      Attack:InitAttack2(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(vDir:GetX(), vDir:GetY(), vDir:GetZ()), RayDistanceLimit), 1, 1, false)
      Attack:SetCollisionRangeAdjust(false, false)
      AddAttack(ATTACKS, Attack)
    elseif value < 667 then
      Attack1 = CreateCAttack()
      Attack1:InitAttack1(WEAPONTYPE_TURRET, ATTACKATTRIB_TURRET_INSTALL, fireTime, Power + AdditionalPower, AddtionalPower)
      Attack1:InitAttack2(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(vDir:GetX(), vDir:GetY(), vDir:GetZ()), RayDistanceLimit), 1, 1, false)
      Attack1:SetCollisionRangeAdjust(false, false)
      AddAttack(ATTACKS, Attack1)
    else
      Attack2 = CreateCAttack()
      Attack2:InitAttack1(WEAPONTYPE_TURRET, ATTACKATTRIB_TURRET_INSTALL, fireTime, Power + AdditionalPower, AddtionalPower)
      Attack2:InitAttack2(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(vDir:GetX(), vDir:GetY(), vDir:GetZ()), RayDistanceLimit), 1, 1, false)
      Attack2:SetCollisionRangeAdjust(false, false)
      AddAttack(ATTACKS, Attack2)
    end
  end
end
function StandardTurretToInstall(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:InitLua(2000)
  STATE:SetCamLimit(true, 55, 70)
  STATE:SetDistZoom(true, -330)
  STATE:SetCamFixType(1, -80)
  STATE:SetPlusDefensePowerRate(0, 0.2)
  STATE:SetPlusDefensePowerRate(1, 0.2)
end
function StandardTurretToNormal(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:InitLua(2000)
  STATE:SetCamLimit(false, 0, 0)
  STATE:SetDistZoom(false, 0)
  STATE:SetCamFixType(-1, 0)
  STATE:SetPlusDefensePowerRate(0, 0)
  STATE:SetPlusDefensePowerRate(1, 0)
end
function StandardTurretToInstall_MK2(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:InitLua(1600)
  STATE:SetCamLimit(true, 40.5, 70)
  STATE:SetDistZoom(true, -330)
  STATE:SetCamFixType(1, -80)
  STATE:SetPlusDefensePowerRate(0, 0.4)
  STATE:SetPlusDefensePowerRate(1, 0.6)
  STATE:SetKnockBack_BlowDefensePowerRate(0.5)
end
function StandardTurretToNormal_MK2(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:InitLua(1600)
  STATE:SetCamLimit(false, 0, 0)
  STATE:SetDistZoom(false, 0)
  STATE:SetCamFixType(-1, 0)
  STATE:SetPlusDefensePowerRate(0, 0)
  STATE:SetPlusDefensePowerRate(1, 0)
end
