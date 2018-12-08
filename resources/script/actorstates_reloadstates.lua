require("Resources/Script/ActorStates_Constants.lua")
function ReloadState_MindEnergy(state)
  if state ~= nil then
    local index = 0
    local ANIMPARAMLIST_NORMAL = index
    index = index + 1
    state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("H0012", 0, 1000, 500, LOOP_TRUE, 1, RESET_TRUE)
    lowerPartStateSet = state:GetLowerPartStateSet(0)
    lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("H0012", 0, 500, 0, LOOP_TRUE, 1, RESET_TRUE)
  end
end
function ReloadState_SubMachineGun(state)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("D0003", 2000, 1000, 0, LOOP_TRUE, 1, RESET_TRUE)
  lowerPartStateSet = state:GetLowerPartStateSet(0)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_FRONT):SetAnim("D0027", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_LEFT_FRONT):SetAnim("D0028", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_LEFT):SetAnim("D0029", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_RIGHT_FRONT):SetAnim("D0030", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_RIGHT):SetAnim("D0031", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_BACK):SetAnim("D0032", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_LEFT_BACK):SetAnim("D0033", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_RIGHT_BACK):SetAnim("D0034", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("D0003", 0, 500, 500, LOOP_TRUE, 1, RESET_TRUE)
end
function ReloadState_MachineGun(state)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("F0006", 0, 1000, 0, LOOP_TRUE, 1, RESET_TRUE)
  lowerPartStateSet = state:GetLowerPartStateSet(0)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("F0006", 0, 500, 0, LOOP_TRUE, 1, RESET_TRUE)
end
function ReloadState_Rifle(state)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("E0007", 0, 1000, 0, LOOP_TRUE, 1, RESET_TRUE)
  lowerPartStateSet = state:GetLowerPartStateSet(0)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_FRONT):SetAnim("E0019", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_LEFT_FRONT):SetAnim("E0020", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_LEFT):SetAnim("E0021", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_RIGHT_FRONT):SetAnim("E0022", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_RIGHT):SetAnim("E0023", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_BACK):SetAnim("E0024", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_LEFT_BACK):SetAnim("E0025", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_RIGHT_BACK):SetAnim("E0026", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("E0007", 0, 500, 0, LOOP_TRUE, 1, RESET_TRUE)
end
function ReloadState_MineLauncher(state)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("G0002", 0, 1000, 0, LOOP_TRUE, 1, RESET_TRUE)
  lowerPartStateSet = state:GetLowerPartStateSet(0)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("G0002", 0, 500, 0, LOOP_TRUE, 1, RESET_TRUE)
end
function ReloadState_Grenade_Unique(state)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("G0002_2", 0, 1000, 0, LOOP_TRUE, 1, RESET_TRUE)
  lowerPartStateSet = state:GetLowerPartStateSet(0)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("G0002_2", 0, 500, 0, LOOP_TRUE, 1, RESET_TRUE)
end
function ReloadState_Revolver(state)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("Q0004", 3000, 500, 500, LOOP_FALSE, 1, RESET_TRUE)
  lowerPartStateSet = state:GetLowerPartStateSet(0)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("Q0004", 3000, 500, 500, LOOP_FALSE, 1, RESET_TRUE)
end
function ReloadState_SMG2(state)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("W0004", 2000, 500, 500, LOOP_FALSE, 1, RESET_TRUE)
  lowerPartStateSet = state:GetLowerPartStateSet(0)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("W0004", 2000, 500, 500, LOOP_FALSE, 1, RESET_TRUE)
end
function ReloadState_Cannonade(state)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("E0007", 0, 1000, 0, LOOP_TRUE, 1, RESET_TRUE)
  lowerPartStateSet = state:GetLowerPartStateSet(0)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("E0007", 0, 500, 0, LOOP_TRUE, 1, RESET_TRUE)
end
function ReloadState_MinStorm(state)
  if state ~= nil then
    local index = 0
    local ANIMPARAMLIST_NORMAL = index
    index = index + 1
    state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("H0012", 0, 1000, 0, LOOP_TRUE, 1, RESET_TRUE)
    lowerPartStateSet = state:GetLowerPartStateSet(0)
    lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("H0012", 0, 500, 0, LOOP_TRUE, 1, RESET_TRUE)
  end
end
function ReloadState_Card(state)
  state:AddSequenceBySex(1, "Resources/Effects/y0011.seq", "Resources/Effects/y0011_g.seq", "", 1, 0)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("Y0011", 0, 1000, 0, LOOP_FALSE, 1, RESET_TRUE)
  lowerPartStateSet = state:GetLowerPartStateSet(0)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_FRONT):SetAnim("Y0012", 800, 200, 0, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_LEFT_FRONT):SetAnim("Y0013", 800, 200, 0, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_LEFT):SetAnim("Y0014", 800, 200, 0, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_RIGHT_FRONT):SetAnim("Y0015", 800, 200, 0, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_RIGHT):SetAnim("Y0016", 800, 200, 0, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_BACK):SetAnim("Y0017", 800, 200, 0, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_LEFT_BACK):SetAnim("Y0018", 800, 200, 0, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_RIGHT_BACK):SetAnim("Y0019", 800, 200, 0, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("Y0011", 0, 500, 0, LOOP_FALSE, 1, RESET_TRUE)
end
function ReloadState_MG2(state)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("Z0004", 2000, 1000, 0, LOOP_TRUE, 1, RESET_TRUE)
  lowerPartStateSet = state:GetLowerPartStateSet(0)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("Z0004", 2000, 500, 0, LOOP_TRUE, 1, RESET_TRUE)
end
function ReloadState_SMG3(state)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("DD004", 2000, 100, 500, LOOP_TRUE, 1, RESET_TRUE)
  lowerPartStateSet = state:GetLowerPartStateSet(0)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("DD004", 2000, 500, 500, LOOP_TRUE, 1, RESET_TRUE)
end
function ReloadState_Revolver2(state)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("Q0004", 3000, 500, 500, LOOP_FALSE, 1, RESET_TRUE)
  lowerPartStateSet = state:GetLowerPartStateSet(0)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("Q0004", 3000, 500, 500, LOOP_FALSE, 1, RESET_TRUE)
end
function ReloadState_SMG4(state)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("SS004", 2500, 500, 500, LOOP_FALSE, 1, RESET_TRUE)
  lowerPartStateSet = state:GetLowerPartStateSet(0)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("SS004", 2500, 500, 500, LOOP_FALSE, 1, RESET_TRUE)
end
function ReloadState_MindOrora(state)
  if state ~= nil then
    local index = 0
    local ANIMPARAMLIST_NORMAL = index
    index = index + 1
    state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("HH012", 0, 1000, 500, LOOP_TRUE, 1, RESET_TRUE)
    lowerPartStateSet = state:GetLowerPartStateSet(0)
    lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("HH012", 0, 500, 0, LOOP_TRUE, 1, RESET_TRUE)
  end
end
function ReloadState_AIRGUN(state)
  state:AddSequenceBySex(1, "Resources/Sound/airgun_reload.ogg", "Resources/Sound/airgun_reload.ogg", "", 1, 0)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("AW007", 0, 1000, 0, LOOP_TRUE, 1, RESET_TRUE)
  lowerPartStateSet = state:GetLowerPartStateSet(0)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("AW007", 0, 500, 0, LOOP_TRUE, 1, RESET_TRUE)
end
function ReloadState_HOMING_RIFLE(state)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("W0004", 2000, 500, 500, LOOP_FALSE, 1, RESET_TRUE)
  lowerPartStateSet = state:GetLowerPartStateSet(0)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("W0004", 2000, 500, 500, LOOP_FALSE, 1, RESET_TRUE)
end
function ReloadState_EARTH_BOMBER(state)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("GB002", 0, 1000, 0, LOOP_TRUE, 1, RESET_TRUE)
  lowerPartStateSet = state:GetLowerPartStateSet(0)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("GB002", 0, 1000, 0, LOOP_TRUE, 1, RESET_TRUE)
end
function ReloadState_SPARK_RIFLE(state)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("SP004", 2000, 500, 500, LOOP_FALSE, 1, RESET_TRUE)
  lowerPartStateSet = state:GetLowerPartStateSet(0)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("SP004", 2000, 500, 500, LOOP_FALSE, 1, RESET_TRUE)
end
function ReloadState_SHOCK_WAVE_GUN(state)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("CH004", 2500, 500, 500, LOOP_FALSE, 1, RESET_TRUE)
  lowerPartStateSet = state:GetLowerPartStateSet(0)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("CH004", 2500, 500, 500, LOOP_FALSE, 1, RESET_TRUE)
end
function ReloadState_TURRET(state)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("TR006", 0, 1000, 0, LOOP_TRUE, 1, RESET_TRUE)
  lowerPartStateSet = state:GetLowerPartStateSet(0)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("TR006", 0, 500, 0, LOOP_TRUE, 1, RESET_TRUE)
end
function ReloadState_TURRETINSTALL(state)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("TR032", 0, 1000, 0, LOOP_TRUE, 1, RESET_TRUE)
  lowerPartStateSet = state:GetLowerPartStateSet(0)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("TR032", 0, 500, 0, LOOP_TRUE, 1, RESET_TRUE)
end
function Reload2State_TURRETINSTALL(state)
  local index = 0
  local ANIMPARAMLIST_INSTALL = index
  index = index + 1
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("TR034", 0, 1000, 0, LOOP_TRUE, 1, RESET_TRUE)
  lowerPartStateSet = state:GetLowerPartStateSet(0)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("TR034", 0, 500, 0, LOOP_TRUE, 1, RESET_TRUE)
end
function Reload2State_TURRET(state)
  local index = 0
  local ANIMPARAMLIST_INSTALL = index
  index = index + 1
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_INSTALL):SetAnim("TR033", 0, 1000, 0, LOOP_TRUE, 1, RESET_TRUE)
  lowerPartStateSet = state:GetLowerPartStateSet(0)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("TR033", 0, 500, 0, LOOP_TRUE, 1, RESET_TRUE)
end
function ReloadState_ASSULT_RIFLE(state)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("AS004", 2000, 500, 500, LOOP_FALSE, 1, RESET_TRUE)
  lowerPartStateSet = state:GetLowerPartStateSet(0)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("AS004", 2000, 500, 500, LOOP_FALSE, 1, RESET_TRUE)
end
function ReloadState_RESCUE_GUN(state)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("RC004", 1000, 500, 0, LOOP_FALSE, 1, RESET_TRUE)
  lowerPartStateSet = state:GetLowerPartStateSet(0)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("RC004", 1000, 500, 0, LOOP_FALSE, 1, RESET_TRUE)
end
function ReloadState_RESCUE_GUN_02(state)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("RC013", 1000, 500, 0, LOOP_FALSE, 1, RESET_TRUE)
  lowerPartStateSet = state:GetLowerPartStateSet(0)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("RC013", 1000, 500, 0, LOOP_FALSE, 1, RESET_TRUE)
end
function ReloadState_StandardRailGun(state)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("NS004", 0, 1000, 0, LOOP_FALSE, 1, RESET_TRUE)
  lowerPartStateSet = state:GetLowerPartStateSet(0)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_FRONT):SetAnim("E0019", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_LEFT_FRONT):SetAnim("E0020", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_LEFT):SetAnim("E0021", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_RIGHT_FRONT):SetAnim("E0022", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_RIGHT):SetAnim("E0023", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_BACK):SetAnim("E0024", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_LEFT_BACK):SetAnim("E0025", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_RIGHT_BACK):SetAnim("E0026", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("NS004", 0, 1000, 0, LOOP_FALSE, 1, RESET_TRUE)
end
function ReloadState_DualGun(state)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("DU010", 2000, 500, 500, LOOP_FALSE, 1, RESET_TRUE)
  lowerPartStateSet = state:GetLowerPartStateSet(0)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_FRONT):SetAnim("D0027", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_LEFT_FRONT):SetAnim("D0028", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_LEFT):SetAnim("D0029", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_RIGHT_FRONT):SetAnim("D0030", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_RIGHT):SetAnim("D0031", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_BACK):SetAnim("D0032", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_LEFT_BACK):SetAnim("D0033", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_RIGHT_BACK):SetAnim("D0034", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("DU010", 0, 500, 500, LOOP_TRUE, 1, RESET_TRUE)
end
function ReloadState_RocketLauncher(state)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("RL002", 0, 1000, 0, LOOP_TRUE, 1, RESET_TRUE)
  lowerPartStateSet = state:GetLowerPartStateSet(0)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("RL002", 0, 500, 0, LOOP_TRUE, 1, RESET_TRUE)
end
function ReloadState_ASSULT_RIFLE_UNIQUE(state)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("AS004_1", 0, 200, 0, LOOP_FALSE, 1, RESET_TRUE)
  lowerPartStateSet = state:GetLowerPartStateSet(0)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("AS004_1", 0, 200, 0, LOOP_FALSE, 1, RESET_TRUE)
end
function ReloadState_Unipue_MARTINSTICK(state)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("E0007", 0, 1000, 0, LOOP_TRUE, 1, RESET_TRUE)
  lowerPartStateSet = state:GetLowerPartStateSet(0)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_FRONT):SetAnim("E0019", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_LEFT_FRONT):SetAnim("E0020", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_LEFT):SetAnim("E0021", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_RIGHT_FRONT):SetAnim("E0022", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_RIGHT):SetAnim("E0023", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_BACK):SetAnim("E0024", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_LEFT_BACK):SetAnim("E0025", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_RIGHT_BACK):SetAnim("E0026", 800, 500, 500, LOOP_TRUE, 1, RESET_FALSE)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("E0007", 0, 500, 0, LOOP_TRUE, 1, RESET_TRUE)
end
function ReloadState_MinStorm_Unique(state)
  if state ~= nil then
    local index = 0
    local ANIMPARAMLIST_NORMAL = index
    index = index + 1
    state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("HH012", 0, 1000, 500, LOOP_TRUE, 1, RESET_TRUE)
    lowerPartStateSet = state:GetLowerPartStateSet(0)
    lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("HH012", 0, 500, 0, LOOP_TRUE, 1, RESET_TRUE)
  end
end
