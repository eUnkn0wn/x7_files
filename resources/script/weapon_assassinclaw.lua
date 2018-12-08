require("Resources/Script/ActorStates_Constants.lua")
function StandardAssassinclaw(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:SetMoveSpeedRate(1)
  STATE:SetStealthCancel(true)
  STATE:InitLua(40, 0, false, true)
  local range = WEAPON:GetRange()
  Attack = CreateCAttack()
  Attack:InitAttack1(WEAPONTYPE_ASSASSIN_CLAW, ATTACKATTRIB_ASSASSIN_CLAW, 400, Power * 4 + AdditionalPower, AddtionalPower)
  Attack:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 250, -100), MAKEVECTOR3(0, 0, -1), 100, 100, range), 1, 1, false)
  Attack:SetCameraShakeEnable(true, true, 0)
  Attack:SetCameraShakeSetFactor1(50, 25, 5)
  Attack:SetCameraShakeSetFactor2(1, 1, 1000, 1000)
  Attack:SetCameraShakeRandomDir(true)
  AddAttack(ATTACKS, Attack)
  local index = 1
  for index = 1, 8 do
    Attack = CreateCAttack()
    Attack:InitAttack1(WEAPONTYPE_ASSASSIN_CLAW, ATTACKATTRIB_ASSASSIN_CLAW, 500 + (index - 1) * 125, Power + AdditionalPower, AddtionalPower)
    Attack:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 250, -100), MAKEVECTOR3(0, 0, -1), 100, 100, range), 1, 1, false)
    Attack:SetCameraShakeEnable(true, true, 0)
    Attack:SetCameraShakeSetFactor1(50, 25, 5)
    Attack:SetCameraShakeSetFactor2(1, 1, 1000, 1000)
    Attack:SetCameraShakeRandomDir(true)
    AddAttack(ATTACKS, Attack)
  end
end
