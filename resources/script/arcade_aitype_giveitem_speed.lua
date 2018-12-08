require("Resources/Script/Arcade_Util.lua")
function Init()
end
function Update()
  AIActor = UpdateArg:GetAIActor("AI_ACTOR")
  u32DiffID = Host:GetDifficulty()
  local AttackAfterWaitTime
  if u32DiffID == 1 then
    AttackAfterWaitTime = 1500
  elseif u32DiffID == 2 then
    AttackAfterWaitTime = 1100
  elseif u32DiffID == 3 then
    AttackAfterWaitTime = 700
  end
  TargetActor = Util:GetActorByMinDist(true, AIActor, 0, 3000, false, true)
  if TargetActor ~= nil and Util:GetDist(AIActor, TargetActor) > 500 then
    UpdateArg:SetLU32("WAIT_TIME", 700 + math.random(0, 300))
    Command_Move_ToActor(AIActor, 1000, TargetActor, 0, 0)
  elseif TargetActor ~= nil and Util:GetDist(AIActor, TargetActor) < 500 then
    UpdateArg:SetLU32("WAIT_TIME", AttackAfterWaitTime + math.random(0, 300))
    Command_MovingAttack_ToActor(AIActor, 1000, TargetActor, "AATYPE_1", true, math.random(-300, 300), math.random(-300, 300), 0)
  else
    TargetActor = Util:GetActorByMinDist(true, AIActor, 3000, 30000, false, true)
    if TargetActor ~= nil then
      UpdateArg:SetLU32("WAIT_TIME", 700 + math.random(0, 300))
      Command_Move_ToActor(AIActor, 1000, TargetActor, 0, 0)
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
