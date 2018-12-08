require("Resources/Script/ActorStates_Constants.lua")
function NormalState_EnergySupplyBuilder(state)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("00029_2", 0, 1000, 0, LOOP_TRUE, 1, RESET_FALSE)
end
function RunState_EnergySupplyBuilder(state)
  local index = 0
  local ANIMPARAMLIST_UPPER_FRONT = index
  index = index + 1
  local ANIMPARAMLIST_UPPER_LEFT_FRONT = index
  index = index + 1
  local ANIMPARAMLIST_UPPER_LEFT = index
  index = index + 1
  local ANIMPARAMLIST_UPPER_LEFT_BACK = index
  index = index + 1
  local ANIMPARAMLIST_UPPER_RIGHT_FRONT = index
  index = index + 1
  local ANIMPARAMLIST_UPPER_RIGHT = index
  index = index + 1
  local ANIMPARAMLIST_UPPER_RIGHT_BACK = index
  index = index + 1
  local ANIMPARAMLIST_UPPER_BACK = index
  index = index + 1
  local ANIMPARAMLIST_LOWER_FRONT = index
  index = index + 1
  local ANIMPARAMLIST_LOWER_LEFT_FRONT = index
  index = index + 1
  local ANIMPARAMLIST_LOWER_LEFT = index
  index = index + 1
  local ANIMPARAMLIST_LOWER_LEFT_BACK = index
  index = index + 1
  local ANIMPARAMLIST_LOWER_RIGHT_FRONT = index
  index = index + 1
  local ANIMPARAMLIST_LOWER_RIGHT = index
  index = index + 1
  local ANIMPARAMLIST_LOWER_RIGHT_BACK = index
  index = index + 1
  local ANIMPARAMLIST_LOWER_BACK = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_UPPER_FRONT):SetAnim("00008", 0, 2000, 0, LOOP_TRUE, 1, RESET_FALSE)
  state:GetAnimParam(ANIMPARAMLIST_UPPER_LEFT_FRONT):SetAnim("00009", 0, 2000, 0, LOOP_TRUE, 1, RESET_FALSE)
  state:GetAnimParam(ANIMPARAMLIST_UPPER_LEFT):SetAnim("00010", 0, 2000, 0, LOOP_TRUE, 1, RESET_FALSE)
  state:GetAnimParam(ANIMPARAMLIST_UPPER_RIGHT_FRONT):SetAnim("00011", 0, 2000, 0, LOOP_TRUE, 1, RESET_FALSE)
  state:GetAnimParam(ANIMPARAMLIST_UPPER_RIGHT):SetAnim("00012", 0, 2000, 0, LOOP_TRUE, 1, RESET_FALSE)
  state:GetAnimParam(ANIMPARAMLIST_UPPER_BACK):SetAnim("00013", 0, 2000, 0, LOOP_TRUE, 1, RESET_FALSE)
  state:GetAnimParam(ANIMPARAMLIST_UPPER_LEFT_BACK):SetAnim("00014", 0, 2000, 0, LOOP_TRUE, 1, RESET_FALSE)
  state:GetAnimParam(ANIMPARAMLIST_UPPER_RIGHT_BACK):SetAnim("00015", 0, 2000, 0, LOOP_TRUE, 1, RESET_FALSE)
  state:GetAnimParam(ANIMPARAMLIST_LOWER_FRONT):SetAnim("00008", 0, 1000, 0, LOOP_TRUE, 1, RESET_FALSE)
  state:GetAnimParam(ANIMPARAMLIST_LOWER_LEFT_FRONT):SetAnim("00009", 0, 1000, 0, LOOP_TRUE, 1, RESET_FALSE)
  state:GetAnimParam(ANIMPARAMLIST_LOWER_LEFT):SetAnim("00010", 0, 1000, 0, LOOP_TRUE, 1, RESET_FALSE)
  state:GetAnimParam(ANIMPARAMLIST_LOWER_RIGHT_FRONT):SetAnim("00011", 0, 1000, 0, LOOP_TRUE, 1, RESET_FALSE)
  state:GetAnimParam(ANIMPARAMLIST_LOWER_RIGHT):SetAnim("00012", 0, 1000, 0, LOOP_TRUE, 1, RESET_FALSE)
  state:GetAnimParam(ANIMPARAMLIST_LOWER_BACK):SetAnim("00013", 0, 1000, 0, LOOP_TRUE, 1, RESET_FALSE)
  state:GetAnimParam(ANIMPARAMLIST_LOWER_LEFT_BACK):SetAnim("00014", 0, 1000, 0, LOOP_TRUE, 1, RESET_FALSE)
  state:GetAnimParam(ANIMPARAMLIST_LOWER_RIGHT_BACK):SetAnim("00015", 0, 1000, 0, LOOP_TRUE, 1, RESET_FALSE)
end
function DamageState_EnergySupplyBuilder(state)
  local index = 0
  local ANIMPARAMLIST_FRONT = index
  index = index + 1
  local ANIMPARAMLIST_BACK = index
  index = index + 1
  local ANIMPARAMLIST_LEFT = index
  index = index + 1
  local ANIMPARAMLIST_RIGHT = index
  index = index + 1
  local ANIMPARAMLIST_FRONT_WEAK = index
  index = index + 1
  local ANIMPARAMLIST_BACK_WEAK = index
  index = index + 1
  local ANIMPARAMLIST_LEFT_WEAK = index
  index = index + 1
  local ANIMPARAMLIST_RIGHT_WEAK = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_FRONT):SetAnim("00016", 0, 0, 0, LOOP_FALSE, 1, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_BACK):SetAnim("00017", 0, 0, 0, LOOP_FALSE, 1, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_LEFT):SetAnim("00018", 0, 0, 0, LOOP_FALSE, 1, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_RIGHT):SetAnim("00019", 0, 0, 0, LOOP_FALSE, 1, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_FRONT_WEAK):SetAnim("00016", 0, 0, 0, LOOP_FALSE, 0.05, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_BACK_WEAK):SetAnim("00017", 0, 0, 0, LOOP_FALSE, 0.05, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_LEFT_WEAK):SetAnim("00018", 0, 0, 0, LOOP_FALSE, 0.05, RESET_TRUE)
  state:GetAnimParam(ANIMPARAMLIST_RIGHT_WEAK):SetAnim("00019", 0, 0, 0, LOOP_FALSE, 0.05, RESET_TRUE)
  lowerPartStateSet = state:GetLowerPartStateSet(0)
  lowerPartStateSet:GetWalkAnimParam(LOWER_ANIM_NORMAL):SetAnim("00016", 0, 0, 0, LOOP_TRUE, 1, RESET_TRUE)
end
function ANI_LeftAttack_EnergySupplyBuilder(state)
  local index = 0
  local ANIMPARAMLIST_NORMAL = index
  index = index + 1
  state:GetAnimParam(ANIMPARAMLIST_NORMAL):SetAnim("K0000", 1000, 1000, 1000, LOOP_FALSE, 1, RESET_TRUE)
end
