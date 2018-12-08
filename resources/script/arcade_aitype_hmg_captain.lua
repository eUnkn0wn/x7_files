require("Resources/Script/Arcade_Util.lua")
function Init()
end
function Update()
  AIActor = UpdateArg:GetAIActor("AI_ACTOR")
  UpdateArg:SetLU32("WAIT_TIME", 700 + math.random(0, 300))
  TargetActor = Util:GetActorByMinHP(true, AIActor, 0, 3000 - math.random(1, 2000), true, true)
  AttackRate = math.random(1, 100)
  if TargetActor ~= nil and Util:GetDist(AIActor, TargetActor) <= 1500 then
    Command_BackMovingAttack_ToActor(AIActor, 1750, TargetActor, "AATYPE_1", true, 1000, math.random(-500, 500), math.random(-500, 500), math.min(300, Util:GetDist(AIActor, TargetActor) / 17))
  elseif TargetActor ~= nil and Util:GetDist(AIActor, TargetActor) > 1500 then
    Command_Attack(AIActor, TargetActor, "AATYPE_1", true, math.min(50, Util:GetDist(AIActor, TargetActor) / 6))
  else
    TargetActor = Util:GetActorByMinDist(true, AIActor, 3000, 10000, false, true)
    if TargetActor ~= nil then
      Command_Move_ToActor(AIActor, 1750, TargetActor, 0, 0)
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
