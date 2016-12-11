require("Resources/Script/ActorStates_Constants.lua")
function FirstBasicAttack_DEATHSCYTHE(state)
  state:AddSoundBySex("Resources/Sound/voice_man_attack_5.ogg", "Resources/Sound/voice_girl_attack_5.ogg", "Bip01", 0, 2500)
  state:AddGhostTrail("", 50, 600)
  state:AddSequenceBySex(0, "Resources/Effects/deathscythe_1_att.seq", "Resources/Effects/deathscythe_1_att.seq", "", 0, 5000)
  state:AddSequence(0, "", "Resources/Sound/deathside_cut01.ogg", 200, 700)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  local ANIMPARAMLIST_DELAY = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("GR001", 0, 200, 0, LOOP_FALSE, 1, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_DELAY):SetAnim("GR003", 0, 800, 1000, LOOP_FALSE, 1, RESET_TRUE)
end
function SecondBasicAttack_DEATHSCYTHE(state)
  state:AddSoundBySex("Resources/Sound/voice_man_attack_2.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0, 2500)
  state:AddGhostTrail("", 50, 600)
  state:AddSequenceBySex(0, "Resources/Effects/deathscythe_2_att.seq", "Resources/Effects/deathscythe_2_att.seq", "", 0, 5000)
  state:AddSequence(0, "", "Resources/Sound/deathside_cut02.ogg", 0, 1000)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  local ANIMPARAMLIST_DELAY = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("GR002", 0, 200, 0, LOOP_FALSE, 1, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_DELAY):SetAnim("GR004", 0, 1000, 1000, LOOP_FALSE, 1, RESET_TRUE)
end
function ThirdBasicAttack_DEATHSCYTHE(state)
  state:AddSoundBySex("Resources/Sound/voice_man_attack_4.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500)
  state:AddGhostTrail("GhostTrail_Death_Scythe_01", 50, 600)
  state:AddSequenceBySex(0, "Resources/Effects/deathscythe_3_att.seq", "Resources/Effects/deathscythe_3_att.seq", "", 0, 5000)
  state:AddSequence(0, "", "Resources/Sound/deathside_smash.ogg", 0, 1000)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  local ANIMPARAMLIST_DELAY = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("GR021", 0, 200, 0, LOOP_FALSE, 1, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_DELAY):SetAnim("GR022", 0, 700, 300, LOOP_FALSE, 1, RESET_TRUE)
end
function StrongUpperCutAttack_DEATHSCYTHE(state)
  state:AddSoundBySex("Resources/Sound/voice_man_attack_4.ogg", "Resources/Sound/voice_girl_attack_3.ogg", "Bip01", 0, 2500)
  state:AddGhostTrail("GhostTrail_Death_Scythe_01", 50, 600)
  state:AddSequenceBySex(0, "Resources/Effects/weapon_deathscythe_strong_att.seq", "Resources/Effects/weapon_deathscythe_strong_att.seq", "", 0, 5000)
  state:AddSequence(0, "", "Resources/Sound/deathside_jump.ogg", 0, 1000)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  local ANIMPARAMLIST_DELAY = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("GR004_1", 0, 200, 0, LOOP_FALSE, 1, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_DELAY):SetAnim("GR006", 0, 1000, 1000, LOOP_FALSE, 1, RESET_TRUE)
end
function JumpAttack_DEATHSCYTHE(state)
  state:AddSoundBySex("Resources/Sound/voice_man_attack_2.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0, 5000)
  state:AddGhostTrail("", 50, 300)
  state:AddSequence(0, "", "Resources/Sound/deathside_smash.ogg", 300, 1000)
  state:AddSequenceBySex(0, "Resources/Effects/deathscythe_4_att.seq", "Resources/Effects/deathscythe_4_att.seq", "", 0, 5000)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  local ANIMPARAMLIST_DELAY = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("GR011", 0, 50, 0, LOOP_FALSE, 1, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_DELAY):SetAnim("GR012", 0, 50, 0, LOOP_FALSE, 1, RESET_TRUE)
end
function SpecialAttack_DEATHSCYTHE(state)
  state:AddSoundBySex("Resources/Sound/voice_man_attack_2.ogg", "Resources/Sound/voice_girl_attack_2.ogg", "Bip01", 0, 5000)
  state:AddGhostTrail("", 50, 300)
  state:AddSequence(0, "", "Resources/Sound/deathside_jump.ogg", 0, 5000)
  state:AddSequenceBySex(0, "Resources/Effects/deathscythe_ex_att_eff.seq", "Resources/Effects/deathscythe_ex_att_eff.seq", "", 0, 5000)
  state:AddSequence(0, "", "Resources/Sound/deathside_Special_laughing.ogg", 1000, 2000)
  state:AddSequenceBySex(0, "Resources/Effects/deathscythe_ex2_att_eff.seq", "Resources/Effects/deathscythe_ex2_att_eff.seq", "", 500, 5000)
  local index = 0
  local ANIMPARAMLIST_FIRST_ATTACK = index
  index = index + 1
  local ANIMPARAMLIST_FINISH_ATTACK = index
  index = index + 1
  local ANIMPARAMLIST_FIRST_ATTACK_DELAY = index
  index = index + 1
  local ANIMPARAMLIST_FINISH_ATTACK_DELAY = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_FIRST_ATTACK):SetAnim("GR007", 0, 50, 0, LOOP_FALSE, 1, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_FINISH_ATTACK):SetAnim("GR009", 0, 50, 0, LOOP_FALSE, 1, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_FIRST_ATTACK_DELAY):SetAnim("GR008", 0, 50, 0, LOOP_FALSE, 1, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_FINISH_ATTACK_DELAY):SetAnim("GR010", 0, 50, 0, LOOP_FALSE, 1, RESET_TRUE)
end
