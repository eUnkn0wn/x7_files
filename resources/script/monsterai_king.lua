require("Resources/Script/MonsterAI_Constants.lua")
function Create(monster)
  monster:SetCanSufferDefenseAura(false)
  CreateAttack1(monster)
  CreatePreFastRun(monster)
  CreateFastRun(monster)
  CreateMoveAttack(monster)
  state = monster:GetMonsterState(MONSTATE_NORMAL)
  if nil ~= state then
    state:SetNextStateID(MONINPUT_PRE_FASTRUN, MONSTATE_PRE_FASTRUN)
    state:SetNextStateID(MONINPUT_FASTRUN, MONSTATE_FASTRUN)
  end
  state = monster:GetMonsterState(MONSTATE_RUN)
  if nil ~= state then
    state:SetNextStateID(MONINPUT_PRE_FASTRUN, MONSTATE_PRE_FASTRUN)
  end
  state = monster:GetMonsterState(MONINPUT_ATTACK_0)
  if nil ~= state then
    state:SetSuperArmor(true)
  end
  state = monster:GetMonsterState(MONINPUT_ATTACK_1)
  if nil ~= state then
    state:SetSuperArmor(true)
  end
  state = monster:GetMonsterState(MONSTATE_MOVE_ATTACK)
  if nil ~= state then
    state:SetSuperArmor(true)
  end
  state = monster:GetMonsterState(MONSTATE_NORMAL)
  if nil ~= state then
    state:SetSuperArmor(true)
  end
  state = monster:GetMonsterState(MONSTATE_RUN)
  if nil ~= state then
    state:SetSuperArmor(true)
  end
  state = monster:GetMonsterState(MONSTATE_DAMAGE)
  if nil ~= state then
    state:SetSuperArmor(true)
  end
  state = monster:GetMonsterState(MONSTATE_BLOW)
  if nil ~= state then
    state:SetSuperArmor(true)
  end
  SetAnimation(monster)
end
function CreateAttack1(monster)
  attackState = CreateAttackState(monster, MONINPUT_ATTACK_0, 3100)
  attackState:AddSequence(700, "pve_monster_king_engine_rotate_Dummy", "Resourcewws/Effects/pve_mon_king_attack01.seq")
  attackState:SetMoveBoxMultiplier(1.5)
  attackState:SetAnimationSpeed(1.1)
  attackState:SetCreateNewCommand(false)
  Attack1 = CreateCAttack()
  Attack1:InitAttack1(WEAPONTYPE_MELEE_, ATTACKATTRIB_PVE_KING_0, 1600, 30, 0)
  Attack1:InitAttack2(MAKECYLINDER(MAKEVECTOR3(0, 200, 0), 340, 1280), 1, 1, false)
  Attack1:SetCameraShakeEnable(true, true, 0)
  Attack1:AddBlowCondition(2600, 4000)
  attackState:AddAttack(Attack1)
  monster:AddState(MONINPUT_ATTACK_0, attackState)
end
function CreatePreFastRun(monster)
  preFastRunState = CreatePreFastRunState(monster, MONINPUT_PRE_FASTRUN, 3000)
  preFastRunState:SetCancelAnim("00007", 1100)
  preFastRunState:SetSuperArmor(true)
  preFastRunState:SetCreateNewCommand(false)
  preFastRunState:AddSequence(0, "pve_monster_king_effect_Dummy", "Resources/Effects/pve_mon_king_berserker.seq")
  preFastRunState:AddSequence(2900, "pve_monster_king_effect_Dummy", "Resources/Effects/pve_mon_king_berserker02.seq")
  monster:AddState(MONINPUT_PRE_FASTRUN, preFastRunState)
end
function CreateFastRun(monster)
  fastRunState = CreateFastRunState(monster, MONINPUT_FASTRUN, 2000)
  fastRunState:SetMoveSpeedMultiplier(10)
  fastRunState:SetSuperArmor(true)
  fastRunState:AddSequence(0, "pve_monster_king_effect_Dummy", "Resources/Effects/pve_mon_king_fastrun.seq")
  monster:AddState(MONINPUT_FASTRUN, fastRunState)
end
function CreateMoveAttack(monster)
  moveAttackState = CreateMoveAttackState(monster, MONSTATE_MOVE_ATTACK, 1500)
  moveAttackState:SetMoveSpeedMultiplier(2)
  moveAttackState:SetSuperArmor(false)
  moveAttackState:SetOnlyToGoal(true)
  moveAttackState:AddSequence(0, "pve_monster_king_effect_Dummy", "Resources/Effects/pve_mon_king_fastrun.seq")
  Attack1 = CreateCAttack()
  Attack1:InitAttack1(WEAPONTYPE_MELEE_, ATTACKATTRIB_PVE_KNIGHT_1, 200, 15, 0)
  Attack1:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 600, 100), MAKEVECTOR3(0, 0, -1), 800, 800, 1200), 1, 1, false)
  Attack1:AddPushCondition(300, 5000, -5000)
  moveAttackState:AddAttack(Attack1)
  Attack2 = CreateCAttack()
  Attack2:InitAttack1(WEAPONTYPE_MELEE_, ATTACKATTRIB_PVE_KNIGHT_1, 600, 15, 0)
  Attack2:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 600, 100), MAKEVECTOR3(0, 0, -1), 800, 800, 1200), 1, 1, false)
  Attack2:AddPushCondition(300, 5000, -5000)
  moveAttackState:AddAttack(Attack2)
  Attack3 = CreateCAttack()
  Attack3:InitAttack1(WEAPONTYPE_MELEE_, ATTACKATTRIB_PVE_KNIGHT_1, 1000, 15, 0)
  Attack3:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 600, 100), MAKEVECTOR3(0, 0, -1), 800, 800, 1200), 1, 1, false)
  Attack3:AddPushCondition(300, 5000, -5000)
  moveAttackState:AddAttack(Attack3)
  Attack4 = CreateCAttack()
  Attack4:InitAttack1(WEAPONTYPE_MELEE_, ATTACKATTRIB_PVE_KNIGHT_1, 1400, 15, 0)
  Attack4:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 600, 100), MAKEVECTOR3(0, 0, -1), 800, 800, 1200), 1, 1, false)
  Attack4:AddPushCondition(300, 5000, -5000)
  moveAttackState:AddAttack(Attack4)
  Attack5 = CreateCAttack()
  Attack5:InitAttack1(WEAPONTYPE_MELEE_, ATTACKATTRIB_PVE_KNIGHT_1, 1800, 15, 0)
  Attack5:InitAttack2(MAKEBOX(MAKEVECTOR3(0, 600, 100), MAKEVECTOR3(0, 0, -1), 800, 800, 1200), 1, 1, false)
  Attack5:AddPushCondition(300, 5000, -5000)
  moveAttackState:AddAttack(Attack5)
  monster:AddState(MONSTATE_MOVE_ATTACK, moveAttackState)
end
function SetAnimation(monster)
  state = monster:GetMonsterState(MONSTATE_NORMAL)
  if nil ~= state then
    state:SetAnimtionBlend("BASE", true, 100, 100, true, true)
  end
  state = monster:GetMonsterState(MONSTATE_RUN)
  if nil ~= state then
    state:SetAnimtionBlend("BASE", true, 100, 100, true, true)
    state:AddSound(200, "Resources/Sound/challenge_arcade/king_move.ogg", true)
  end
  state = monster:GetMonsterState(MONSTATE_DAMAGE)
  if nil ~= state then
    state:SetAnimtionBlend("00002", false, 100, 100, false, true)
  end
  state = monster:GetMonsterState(MONSTATE_BLOW)
  if nil ~= state then
    state:SetAnimtionBlend("00004", true, 100, 100, true, true)
  end
  state = monster:GetMonsterState(MONSTATE_DEATH)
  if nil ~= state then
    state:SetAnimtionBlend("00001", false, 100, 100, false, true)
    state:SetDurationTime(5000)
    state:SetDestSaturationColor(2500, 0.2, 0.2, 0.2)
    state:AddSequence(0, "crown_Dummy", "Resources/Effects/pve_monster_king_crown.seq")
    state:AddSound(200, "Resources/Sound/challenge_arcade/king_destroy.ogg")
  end
  state = monster:GetMonsterState(MONSTATE_ATTACK_0)
  if nil ~= state then
    state:SetAnimtionBlend("00003", false, 100, 100, false, true)
    state:AddSound(200, "Resources/Sound/challenge_arcade/king_jump_attack.ogg")
  end
  state = monster:GetMonsterState(MONSTATE_ATTACK_1)
  if nil ~= state then
    state:SetAnimtionBlend("00003", false, 100, 100, false, true)
    state:AddSound(200, "Resources/Sound/challenge_arcade/king_jump_attack.ogg")
  end
  state = monster:GetMonsterState(MONSTATE_ATTACK_2)
  if nil ~= state then
    state:SetAnimtionBlend("00003", false, 100, 100, false, true)
    state:AddSound(200, "Resources/Sound/challenge_arcade/king_jump_attack.ogg")
  end
  state = monster:GetMonsterState(MONSTATE_PRE_FASTRUN)
  if nil ~= state then
    state:SetAnimtionBlend("00005", true, 100, 100, true, true)
    state:SetCancel(CreateAccumDamageCancel(1000, 100))
    state:AddSound(200, "Resources/Sound/challenge_arcade/king_skill_start.ogg", true)
  end
  state = monster:GetMonsterState(MONSTATE_FASTRUN)
  if nil ~= state then
    state:SetAnimtionBlend("00006", true, 100, 100, true, true)
    state:AddSound(200, "Resources/Sound/challenge_arcade/king_rush_attack.ogg", true)
  end
  state = monster:GetMonsterState(MONSTATE_MOVE_ATTACK)
  if nil ~= state then
    state:SetAnimtionBlend("00006", true, 100, 100, true, true)
    state:AddSound(200, "Resources/Sound/challenge_arcade/king_rush_attack.ogg", true)
  end
end
function FirstUpdate(monster)
end
function MoveToWayPoint(monster, distBySafeArea, vEndPos, vNewPos, moveSpeedMultiplier)
  monster:SetMoveType(MONMOVE_WAYPOINT)
  if monster:FindPath(vNewPos, vEndPos) then
    monster:SetWaitTime(INTERVAL_UPDATE_TIME)
    AI_CONTROLLER:RegisterReservedCommand(CreateMoveToCommand(GAMETIME + ADDTIME, monster:GetID(), monster:GetPosition(), monster:GetGoalPosition(), moveSpeedMultiplier))
  else
    monster:SetWaitTime(2000)
  end
end
function Update(timeDelta, monster)
  if false == monster:IsCreateNewCommand() then
    return
  end
  accumTime = monster:GetAccumTime()
  if accumTime > 10000 then
    monster:ResetAccumTime()
    monster:SetWaitTime(300)
    AI_CONTROLLER:RegisterReservedCommand(CreatePreFastRunCommand(GAMETIME + ADDTIME, monster:GetID()))
  end
  baseFindDistance = 2000
  userFindDistance = 1800
  attackMaxDistance = 1200
  distBySafeArea = UTIL:GetDistBySafeArea(monster, "beta_safezone_00")
  vEndPos = UTIL:GetSafeAreaPos("beta_safezone_00")
  vNewPos = MAKEVECTOR3(0, 0, 0)
  if baseFindDistance > distBySafeArea then
    MoveToWayPoint(monster, distBySafeArea, vEndPos, vNewPos, 1)
  else
    if true == monster:IsOnlyToGoal() then
      MoveToWayPoint(monster, distBySafeArea, vEndPos, vNewPos, 1)
      return
    end
    nearActor = UTIL:GetActorByMinDist(true, monster, 0, userFindDistance, true, false)
    if nearActor then
      monster:SetMoveType(MONMOVE_ACTOR)
      monster:SetTargetActorID(nearActor:GetID())
      distanceMonsterToActor = UTIL:GetDist(monster, nearActor)
      lastAttackType = monster:GetLastAttackStateID()
      if false == monster:IsRateOfFire(lastAttackType) then
        if true == monster:IsProbOn(30) then
          monster:SetLastAttackStateID(MONINPUT_ATTACK_0)
          monster:ResetRateOfFire(MONINPUT_ATTACK_0)
          lastAttackType = MONINPUT_ATTACK_0
        else
          monster:SetLastAttackStateID(MONINPUT_ATTACK_1)
          monster:ResetRateOfFire(MONINPUT_ATTACK_1)
          lastAttackType = MONINPUT_ATTACK_1
        end
      end
      if MONINPUT_ATTACK_0 == lastAttackType then
        if attackMaxDistance > distanceMonsterToActor then
          monster:SetWaitTime(3100)
          AI_CONTROLLER:RegisterReservedCommand(CreateAttackCommand(GAMETIME + ADDTIME, monster:GetID(), MONINPUT_ATTACK_0, monster:GetPosition(), UTIL:GetDirection2To1(nearActor, monster)))
        else
          monster:SetWaitTime(300)
          AI_CONTROLLER:RegisterReservedCommand(CreateMoveToCommand(GAMETIME + ADDTIME, monster:GetID(), monster:GetPosition(), monster:GetGoalPosition(), monster:GetRakeMoveSpeedRate()))
        end
      else
        MoveToWayPoint(monster, distBySafeArea, vEndPos, vNewPos, 1)
      end
    else
      MoveToWayPoint(monster, distBySafeArea, vEndPos, vNewPos, 1)
    end
  end
end
