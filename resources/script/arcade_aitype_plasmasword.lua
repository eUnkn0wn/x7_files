require("Resources/Script/Arcade_Util.lua")
function Init()
end
function Update()
  AIActor = UpdateArg:GetAIActor("AI_ACTOR")
  UpdateArg:SetLU32("WAIT_TIME", 700 + math.random(0, 300))
  TargetActor = Util:GetActorByMinDist(true, AIActor, 0, 500, true, true)
  if TargetActor ~= nil and math.random(1, 100) > 85 then
    Command_MovingAttack_ToActor(AIActor, 1750, TargetActor, "AATYPE_1", true, math.random(-500, 500), math.random(-500, 500), 0)
  else
    TargetActor = Util:GetActorByMinDist(true, AIActor, 0, 1000, true, true)
    if TargetActor ~= nil then
      Command_Move_ToActor(AIActor, 1200, TargetActor, math.random(-500, 500), math.random(-500, 500))
    else
      TargetActor = Util:GetActorByMinDist(true, AIActor, 1000, 20000, false, true)
      if TargetActor ~= nil then
        Command_Move_ToActor(AIActor, 1750, TargetActor, math.random(-500, 500), math.random(-500, 500))
      end
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
