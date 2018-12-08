require("Resources/Script/Arcade_Util.lua")
require("Resources/Script/Arcade_Localize.lua")
function Init()
end
function Update()
  Util:LockAIActorByName(KICHI)
  AIActor = UpdateArg:GetAIActor("AI_ACTOR")
  u32DiffID = Host:GetDifficulty()
  TargetActor = Util:GetActorByMinDist(true, AIActor, 0, 3000, false, true)
  local Random_delay = math.random(0, 200)
  local Random_MoveDistance = math.random(-500, 500)
  local Random_AttackRate = math.random(0, 100)
  if u32DiffID == 1 then
    AttackRate = 30
  elseif u32DiffID == 2 then
    AttackRate = 40
  elseif u32DiffID == 3 then
    AttackRate = 50
  end
  if TargetActor ~= nil then
    if 500 < Util:GetDist(AIActor, TargetActor) then
      UpdateArg:SetLU32("WAIT_TIME", 800 + Random_delay)
      Command_Move_ToActor(AIActor, 1000, TargetActor, Random_MoveDistance, Random_MoveDistance)
    elseif 500 > Util:GetDist(AIActor, TargetActor) then
      if Random_AttackRate < AttackRate then
        UpdateArg:SetLU32("WAIT_TIME", 800 + Random_delay)
        Command_Move_ToActor(AIActor, 1000, TargetActor, Random_MoveDistance, Random_MoveDistance)
      elseif Random_AttackRate > AttackRate then
        UpdateArg:SetLU32("WAIT_TIME", 1800)
        Command_MovingAttack_ToActor(AIActor, 1000, TargetActor, "AATYPE_1", true, Random_MoveDistance, Random_MoveDistance, 0)
      end
    end
  else
    TargetActor = Util:GetActorByMinDist(true, AIActor, 3000, 30000, false, true)
    if TargetActor ~= nil then
      UpdateArg:SetLU32("WAIT_TIME", 800 + Random_delay)
      Command_Move_ToActor(AIActor, 1000, TargetActor, Random_MoveDistance, Random_MoveDistance)
    end
  end
end
function StateChange()
end
function AttackEnd()
end
function KillTarget()
end
function LostTarget()
end
function HitTarget()
end
function HitMe()
end
function ChangeHp()
end
function TriggerNotifyID()
end
