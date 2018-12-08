function EsperSkill_EsperBeam(state)
  state:AddSequence(0, "Resources/Effects/esper5_bim.seq", "Resources/Sound/rail_blast.ogg", 200, 2000)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  local ANIMPARAMLIST_DELAY = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("ES004", 0, 500, 100, LOOP_FALSE, 1, RESET_TRUE)
end
function EsperSkill_EsperCoat(state)
  state:AddSoundBySex("Resources/Sound/voice_man_attack_3.ogg", "Resources/Sound/voice_girl_attack_4.ogg", "Bip01", 0, 2500)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  local ANIMPARAMLIST_DELAY = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("DC007", 0, 200, 0, LOOP_FALSE, 1, RESET_TRUE)
end
function EsperSkill_EsperBomb(state)
  state:AddSoundBySex("Resources/Sound/voice_man_charge.ogg", "Resources/Sound/voice_girl_charge.ogg", "Bip01", 0, 2500)
  state:AddSequence(0, "Resources/Effects/esperbomb_eff_01.seq", "Resources/Sound/airgun_blast.ogg", 450, 2000)
  local index = 0
  local ANIMPARAMLIST_BEGIN = index
  index = index + 1
  local ANIMPARAMLIST_DELAY = index
  index = index + 1
  local ANIMPARAMLIST_MIDAIRSTATE = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_BEGIN):SetAnim("ES003", 0, 500, 100, LOOP_FALSE, 1, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_MIDAIRSTATE):SetAnim("ES013", 0, 500, 100, LOOP_FALSE, 1, RESET_TRUE)
end
function EsperSkill_EsperKneeSlide(state)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  local ANIMPARAMLIST_DELAY = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("ES001", 0, 500, 300, LOOP_FALSE, 1, RESET_TRUE)
end
