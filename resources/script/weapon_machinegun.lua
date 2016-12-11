require("Resources/Script/ActorStates_Constants.lua")
function StandardMachinegun(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:InitLua(750, 750, 1000)
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
      Attack:InitAttack1(WEAPONTYPE_MACHINE_GUN, ATTACKATTRIB_MACHINE_GUN_LOWER, fireTime, Power + AdditionalPower, AddtionalPower)
      Attack:InitAttack2(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(vDir:GetX(), vDir:GetY(), vDir:GetZ()), RayDistanceLimit), 1, 1, false)
      Attack:SetCollisionRangeAdjust(false, false)
      AddAttack(ATTACKS, Attack)
    elseif value < 667 then
      Attack1 = CreateCAttack()
      Attack1:InitAttack1(WEAPONTYPE_MACHINE_GUN, ATTACKATTRIB_MACHINE_GUN_MIDDLE, fireTime, Power + AdditionalPower, AddtionalPower)
      Attack1:InitAttack2(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(vDir:GetX(), vDir:GetY(), vDir:GetZ()), RayDistanceLimit), 1, 1, false)
      Attack1:SetCollisionRangeAdjust(false, false)
      AddAttack(ATTACKS, Attack1)
    else
      Attack2 = CreateCAttack()
      Attack2:InitAttack1(WEAPONTYPE_MACHINE_GUN, ATTACKATTRIB_MACHINE_GUN_UPPER, fireTime, Power + AdditionalPower, AddtionalPower)
      Attack2:InitAttack2(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(vDir:GetX(), vDir:GetY(), vDir:GetZ()), RayDistanceLimit), 1, 1, false)
      Attack2:SetCollisionRangeAdjust(false, false)
      AddAttack(ATTACKS, Attack2)
    end
  end
end
