require("Resources/Script/ActorStates_Constants.lua")
function StandardChainLightGunMK2(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:InitLua(0, 0, 0)
  STATE:SetCameraShake(true, 50, 70, 2, 2, 2, 1000, 1000)
  ACTORSTATE:SetInnerAccuracyVary(10, 2, 0, 4)
  ACTORSTATE:SetOuterAccuracyVary(40, 3, 0, 6)
  ACTORSTATE:SetMouseSensitivityRotate(0.6)
  SetupVShotGroup(OneShotTime, Power, Accuracy, AdditionalPower)
  SetupRandomShotGroup(OneShotTime, Power, Accuracy, AdditionalPower)
end
function SetupVShotGroup(OneShotTime, Power, Accuracy, AdditionalPower)
  local fRotOffsetX = 0.7
  local fRotOffsetY = 0.1
  local uiCurrentIndex
  local fFireTime = 0
  for uiIndex = 0, 9 do
    fFireTime = (uiIndex + 1) * OneShotTime
    uiCurrentIndex = uiIndex
    if uiCurrentIndex >= 5 then
      uiCurrentIndex = uiCurrentIndex - 1
    end
    local vecDir1 = MAKECVECTOR3(0, 0, -1)
    vecDir1:RotateX(fRotOffsetX * uiCurrentIndex)
    vecDir1:RotateY(fRotOffsetY * uiCurrentIndex)
    local vecDir2 = MAKECVECTOR3(0, 0, -1)
    vecDir2:RotateX(fRotOffsetX * uiCurrentIndex)
    vecDir2:RotateY(-fRotOffsetY * uiCurrentIndex)
    Attack1 = CreateCAttack()
    Attack1:InitAttack1(WEAPONTYPE_CHAIN_LIGHT_GUN_MK2, ATTACKATTRIB_CHAIN_LIGHT_GUN_MK2, fFireTime, Power, AddtionalPower)
    Attack1:InitAttack2(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(vecDir1:GetX(), vecDir1:GetY(), vecDir1:GetZ()), RayDistanceLimit), 1, 1, false)
    Attack1:SetCollisionRangeAdjust(false, false)
    Attack1:SetCritical(2.5, 0)
    Attack1:SetConsumeAmmo(1)
    AddAttack(ATTACKS, Attack1)
    Attack2 = CreateCAttack()
    Attack2:InitAttack1(WEAPONTYPE_CHAIN_LIGHT_GUN_MK2, ATTACKATTRIB_CHAIN_LIGHT_GUN_MK2, fFireTime, Power, AddtionalPower)
    Attack2:InitAttack2(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(vecDir2:GetX(), vecDir2:GetY(), vecDir2:GetZ()), RayDistanceLimit), 1, 1, false)
    Attack2:SetCollisionRangeAdjust(false, false)
    Attack2:SetCritical(2.5, 0)
    Attack2:SetConsumeAmmo(1)
    AddAttack(ATTACKS, Attack2)
  end
end
function SetupRandomShotGroup(OneShotTime, Power, Accuracy, AdditionalPower)
  local fFireTime = 0
  for uiIndex = 10, 49 do
    fFireTime = (uiIndex + 1) * OneShotTime
    Attack1 = CreateCAttack()
    Attack1:InitAttack1(WEAPONTYPE_CHAIN_LIGHT_GUN_MK2, ATTACKATTRIB_CHAIN_LIGHT_GUN_MK2, fFireTime, Power * 1.5, AddtionalPower)
    Attack1:InitAttack2(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(0, 0, -1), RayDistanceLimit), 1, 1, false)
    Attack1:SetCollisionRangeAdjust(false, false)
    Attack1:SetCritical(2.5, 0)
    Attack1:SetConsumeAmmo(1)
    AddAttack(ATTACKS, Attack1)
    Attack2 = CreateCAttack()
    Attack2:InitAttack1(WEAPONTYPE_CHAIN_LIGHT_GUN_MK2, ATTACKATTRIB_CHAIN_LIGHT_GUN_MK2, fFireTime, Power * 1.5, AddtionalPower)
    Attack2:InitAttack2(MAKERAY(MAKEVECTOR3(0, 0, 0), MAKEVECTOR3(0, 0, -1), RayDistanceLimit), 1, 1, false)
    Attack2:SetCollisionRangeAdjust(false, false)
    Attack2:SetCritical(2.5, 0)
    Attack2:SetConsumeAmmo(1)
    AddAttack(ATTACKS, Attack2)
  end
end
function AttackAttribute_ChainLightGunMK2()
  currAttackAttrib = AttackAttribIndexer:GetAttackAttrib(ATTACKATTRIB_CHAIN_LIGHT_GUN_MK2)
  currAttackAttrib:SetDir(DIR_FRONT, PART_UPPER)
  currAttackAttrib:SetPower(POWER_WEAK, DESTROY_BLASTOBJECT_DAMAGE_5)
  currAttackAttrib:SetWeaponType(WEAPONTYPE_CHAIN_LIGHT_GUN_MK2)
  currAttackAttrib:SetCounterAttack(COUNTERATTACK_DISABLE)
  currAttackAttrib:SetGuardData(1000, GUARDCRUSH_ENABLE)
  currAttackAttrib:SetDamageData(0, DAMAGEMOVING_DISABLE, DAMAGEBYPART_ENABLE)
  currAttackAttrib:SetDamageSequence("Resources/Effects/assult_cogwheel_hit.seq", "Resources/Effects/gun_hit.seq", "Resources/Sound/assultrifle_hit.ogg", "Resources/Sound/wall_attack.ogg")
  currAttackAttrib:SetGunBlastSequence("Resources/Effects/gun_blast_umb.seq", "Resources/Effects/gun_blast_umb.seq", "Resources/Sound/assultrifle_shot.ogg", "ChainlightningGun_Fire_Dummy")
  currAttackAttrib:SetGunTracerAttachNode("ChainlightningGun_Fire_Dummy", "")
  currAttackAttrib:SetKillMessageImage("Resources/Image/Weapon/kill_gun_shockwave.tga", 64, 32)
  currAttackAttrib:SetPartialAnim("00016", 30, 100, 0.2)
  currAttackAttrib:SetPartialAnim("00016", 70, 100, 0.2)
end
