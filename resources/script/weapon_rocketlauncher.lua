require("Resources/Script/ActorStates_Constants.lua")
function RocketLauncher_Explosion(damage, range)
  fDamageRate = 0.5
  damage = damage * fDamageRate
  EXPLOSIONATTACK:InitAttack1(WEAPONTYPE_ROCKET_LAUNCHER, ATTACKATTRIB_ROCKET_LAUNCHER_LEFT_ATTACK, 0, damage, 0)
  EXPLOSIONATTACK:InitAttack2(MAKESPHERE(MAKEVECTOR3(POSITION:GetX(), POSITION:GetY(), POSITION:GetZ()), range), 1, 1)
  EXPLOSIONATTACK:AddPushCondition(300, 2000, -5000)
  EXPLOSIONATTACK:SetDamageApplyType(1)
  EXPLOSIONATTACK:SetDamageRates(0.75, 0.5, 0.5)
  EXPLOSIONATTACK:SetExplosionRanges(0.25, 0.5, 0.5)
  EXPLOSIONATTACK:SetGaussRandomDamage(15, 20, 50, 100)
end
function RocketLauncher_MultiShotExplosion(damage, range)
  fDamageRate = 1
  damage = damage * fDamageRate
  EXPLOSIONATTACK:InitAttack1(WEAPONTYPE_ROCKET_LAUNCHER, ATTACKATTRIB_ROCKET_LAUNCHER_RIGHT_ATTACK, 0, damage, 0)
  EXPLOSIONATTACK:InitAttack2(MAKESPHERE(MAKEVECTOR3(POSITION:GetX(), POSITION:GetY(), POSITION:GetZ()), range), 1, 1)
  EXPLOSIONATTACK:AddPushCondition(300, 2000, -5000)
  EXPLOSIONATTACK:SetDamageApplyType(1)
  EXPLOSIONATTACK:SetDamageRates(0.75, 0.5, 0.5)
  EXPLOSIONATTACK:SetExplosionRanges(0.25, 0.5, 0.75)
  EXPLOSIONATTACK:SetGaussRandomDamage(0, 20, 30, 1)
end
function RocketLauncher_RocketInit()
  GRENADE:InitLua(0, 16, 5000, 100, 1)
  GRENADE:SetDamping(0, 3, 0.9)
  GRENADE:SetDamageType(2)
  GRENADE:SetCollisionChar(1, true)
  GRENADE:SetType(1)
  GRENADE:SetSpeedCheck(false, 0)
  GRENADE:SetSequence("Resources/Effects/weapon_rl_ex.seq", "Resources/Effects/weapon_rocket_l_u_head_01.seq", "Resources/Effects/weapon_rocket_l_u_head_01.seq", "", "")
  GRENADE:SetExplosionSound("Resources/Sound/rocket_bomb.ogg")
  GRENADE:SetExplosionLuaName("RocketLauncher_Explosion")
end
function StandardRocketLauncher(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:InitStandardRocket("RocketLauncher_RocketInit", 7500)
  STATE:SetLaunchSound("Resources/Sound/rocket_launch.ogg")
  STATE:SetTargetPoint(100, 100)
  STATE:SetFrontOffset(275)
  STATE:InitLua(0, 1000, 1500, MAKEVECTOR3(50, 280, 0), 250, false, 1000)
end
function RocketLauncher_MultiRocketInit()
  GRENADE_T = {}
  GRENADE_T[1] = GRENADE1
  GRENADE_T[2] = GRENADE2
  GRENADE_T[3] = GRENADE3
  for i = 1, 3 do
    GRENADE_T[i]:InitLua(0, 16, 10000, 100, 1)
    GRENADE_T[i]:SetDamping(0, 3, 0.9)
    GRENADE_T[i]:SetDamageType(2)
    GRENADE_T[i]:SetCollisionChar(1, true)
    GRENADE_T[i]:SetType(1)
    GRENADE_T[i]:SetSpeedCheck(false, 0)
    GRENADE_T[i]:SetSequence("Resources/Effects/weapon_rl_ex.seq", "Resources/Effects/weapon_rocket_l_u_head_01.seq", "Resources/Effects/weapon_rocket_l_u_head_01.seq", "", "")
    GRENADE_T[i]:SetExplosionSound("Resources/Sound/rocket_bomb.ogg")
    GRENADE_T[i]:SetExplosionLuaName("RocketLauncher_MultiShotExplosion")
  end
end
function MultiShotRocketLauncher(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:InitMultishotRocket("RocketLauncher_MultiRocketInit", 4500, 3, 4, 300, "Resources/Sound/rocket_reload.ogg", 500)
  STATE:SetLaunchSound("Resources/Sound/rocket_launch.ogg")
  STATE:SetTargetPoint(100, 100)
  STATE:SetFrontOffset(275)
  STATE:InitLua(3000, 1000, 1500, MAKEVECTOR3(50, 280, 0), 250, false, 2000)
  STATE:SetMaxChargeDelayTime(2000)
end
function RocketLauncher_RocketInit_Normal()
  GRENADE:InitLua(0, 16, 5000, 100, 1)
  GRENADE:SetDamping(0, 3, 0.9)
  GRENADE:SetDamageType(2)
  GRENADE:SetCollisionChar(1, true)
  GRENADE:SetType(1)
  GRENADE:SetSpeedCheck(false, 0)
  GRENADE:SetSequence("Resources/Effects/weapon_rl_ex.seq", "Resources/Effects/weapon_rocket_l_u_head_01.seq", "Resources/Effects/weapon_rocket_l_u_head_01.seq", "", "")
  GRENADE:SetExplosionSound("Resources/Sound/rocket_bomb.ogg")
  GRENADE:SetExplosionLuaName("RocketLauncher_Explosion")
end
function StandardRocketLauncherNormal(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:InitStandardRocket("RocketLauncher_RocketInit_Normal", 7500)
  STATE:SetLaunchSound("Resources/Sound/rocket_launch.ogg")
  STATE:SetFrontOffset(275)
  STATE:InitLua(0, 1000, 2000, MAKEVECTOR3(50, 280, 0), 250, false, 1000)
end
function RocketLauncher_MultiRocketInit_Normal()
  GRENADE_T = {}
  GRENADE_T[1] = GRENADE1
  GRENADE_T[2] = GRENADE2
  GRENADE_T[3] = GRENADE3
  for i = 1, 3 do
    GRENADE_T[i]:InitLua(0, 16, 5000, 100, 1)
    GRENADE_T[i]:SetDamping(0, 3, 0.9)
    GRENADE_T[i]:SetDamageType(2)
    GRENADE_T[i]:SetCollisionChar(1, true)
    GRENADE_T[i]:SetType(1)
    GRENADE_T[i]:SetSpeedCheck(false, 0)
    GRENADE_T[i]:SetSequence("Resources/Effects/weapon_rl_ex.seq", "Resources/Effects/weapon_rocket_l_u_head_01.seq", "Resources/Effects/weapon_rocket_l_u_head_01.seq", "", "")
    GRENADE_T[i]:SetExplosionSound("Resources/Sound/rocket_bomb.ogg")
    GRENADE_T[i]:SetExplosionLuaName("RocketLauncher_MultiShotExplosion")
  end
end
function MultiShotRocketLauncherNormal(OneShotTime, Power, Accuracy, AdditionalPower)
  STATE:InitMultishotRocket("RocketLauncher_MultiRocketInit_Normal", 4500, 3, 4, 300, "Resources/Sound/rocket_reload_normal.ogg", 500)
  STATE:SetLaunchSound("Resources/Sound/rocket_launch.ogg")
  STATE:SetFrontOffset(275)
  STATE:InitLua(2500, 1000, 3000, MAKEVECTOR3(50, 280, 0), 250, false, 1000)
  STATE:SetMaxChargeDelayTime(2000)
end
function RocketLauncher_MultiRocketInit_Ghost()
  GRENADE:InitLua(0, 16, 5000, 100, 1)
  GRENADE:SetDamping(0, 3, 0.9)
  GRENADE:SetDamageType(2)
  GRENADE:SetCollisionChar(1, true)
  GRENADE:SetType(1)
  GRENADE:SetSpeedCheck(false, 0)
  GRENADE:SetSequence("Resources/Effects/weapon_rl_ex.seq", "Resources/Effects/weapon_rocket_l_u_head_01.seq", "Resources/Effects/weapon_rocket_l_u_head_01.seq", "", "")
  GRENADE:SetExplosionSound("Resources/Sound/rocket_bomb.ogg")
  GRENADE:SetExplosionLuaName("RocketLauncher_MultiShotExplosion")
end
function RocketLauncher_MultiRocketInit_Normal_Ghost()
  GRENADE:InitLua(0, 16, 5000, 100, 1)
  GRENADE:SetDamping(0, 3, 0.9)
  GRENADE:SetDamageType(2)
  GRENADE:SetCollisionChar(1, true)
  GRENADE:SetType(1)
  GRENADE:SetSpeedCheck(false, 0)
  GRENADE:SetSequence("Resources/Effects/weapon_rl_ex.seq", "Resources/Effects/weapon_rocket_l_u_head_01.seq", "Resources/Effects/weapon_rocket_l_u_head_01.seq", "", "")
  GRENADE:SetExplosionSound("Resources/Sound/rocket_bomb.ogg")
  GRENADE:SetExplosionLuaName("RocketLauncher_MultiShotExplosion")
end
