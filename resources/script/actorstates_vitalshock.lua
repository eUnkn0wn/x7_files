require("Resources/Script/ActorStates_Constants.lua")
function UseWeapon1WeakState_VitalShock(state)
  state:AddSequence(0, "Resources/Effects/vital_claw_01.seq", "", 0, 5000)
  local index = 0
  local ANIMPARAMLIST_FIRST = index
  index = index + 1
  local ANIMPARAMLIST_SECOND = index
  index = index + 1
  local ANIMPARAMLIST_THIRD = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_FIRST):SetAnim("C0001", 600, 200, 0, LOOP_FALSE, 1, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_SECOND):SetAnim("C0001", 600, 200, 0, LOOP_FALSE, 1, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_THIRD):SetAnim("C0001", 600, 200, 0, LOOP_FALSE, 1, RESET_TRUE)
  local lowerPartStateSet = state:GetLowerPartStateSet(0)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_FRONT):SetAnim("DD005", 0, 500, 0, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_LEFT_FRONT):SetAnim("DD006", 0, 500, 0, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_LEFT):SetAnim("DD007", 0, 500, 0, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_RIGHT_FRONT):SetAnim("DD008", 0, 500, 0, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_RIGHT):SetAnim("DD009", 0, 500, 0, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_BACK):SetAnim("DD010", 0, 500, 0, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_LEFT_BACK):SetAnim("DD011", 0, 500, 0, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_RIGHT_BACK):SetAnim("DD012", 0, 500, 0, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("C0001", 0, 500, 300, LOOP_TRUE, 1, RESET_TRUE)
end
function UseWeapon1StrongState_VitalShock(state)
  state:AddSequence(0, "Resources/Effects/weapon_vitalshock_strong_02.seq", "Resources/Sound/shockwave_hit.ogg", 300, 0)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  local ANIMPARAMLIST_DELAY = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("C0000", 0, 500, 400, LOOP_FALSE, 1, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_DELAY):SetAnim("C0021_1", 0, 1000, 1000, LOOP_FALSE, 1, RESET_TRUE)
end
function UseWeapon1JumpState_VitalShock(state)
  state:AddSequence(0, "Resources/Effects/vital_claw_02.seq", "", 0, 5000)
  local index = 0
  local ANIMPARAMLIST_FIRST = index
  index = index + 1
  local ANIMPARAMLIST_SECOND = index
  index = index + 1
  local ANIMPARAMLIST_THIRD = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_FIRST):SetAnim("DC001", 0, 500, 0, LOOP_FALSE, 1, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_SECOND):SetAnim("DC001", 0, 500, 0, LOOP_FALSE, 1, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_THIRD):SetAnim("DC001", 0, 500, 0, LOOP_FALSE, 1, RESET_TRUE)
  local lowerPartStateSet = state:GetLowerPartStateSet(0)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_FRONT):SetAnim("DD005", 0, 500, 0, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_LEFT_FRONT):SetAnim("DD006", 0, 500, 0, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_LEFT):SetAnim("DD007", 0, 500, 0, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_RIGHT_FRONT):SetAnim("DD008", 0, 500, 0, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_RIGHT):SetAnim("DD009", 0, 500, 0, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_BACK):SetAnim("DD010", 0, 500, 0, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_LEFT_BACK):SetAnim("DD011", 0, 500, 0, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_RIGHT_BACK):SetAnim("DD012", 0, 500, 0, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("C0001", 0, 500, 300, LOOP_TRUE, 1, RESET_TRUE)
end
function UseWeapon1Strong1State_VitalShock(state)
  state:AddSequence(0, "Resources/Effects/weapon_vitalshock_strong_01.seq", "", 700, 0)
  state:AddSequence(0, "", "Resources/Sound/shockwave_hit.ogg", 1200, 0)
  state:AddSequence(0, "Resources/Effects/weapon_vitalshock_strong_03.seq", "", 0, 700)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  local ANIMPARAMLIST_DELAY = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("C0000", 0, 500, 400, LOOP_FALSE, 1, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_DELAY):SetAnim("C0021", 0, 0, 1000, LOOP_FALSE, 1, RESET_TRUE)
end
function UseWeapon2State_VitalShock(state)
  state:AddSoundBySex("Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 500)
  state:AddSequence(0, "Resources/Effects/vt_dashatk_01.seq", "Resources/Sound/shockwave_blast.ogg", 0, 5000)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  local ANIMPARAMLIST_DELAY = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("R0001", 0, 200, 0, LOOP_FALSE, 1, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_DELAY):SetAnim("R0026", 800, 0, 1000, LOOP_FALSE, 1, RESET_TRUE)
end
