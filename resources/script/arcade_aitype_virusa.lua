require("Resources/Script/Arcade_Util.lua")
function Init()
end
function Update()
  AIActor = UpdateArg:GetAIActor("AI_ACTOR")
  UpdateArg:SetLU32("WAIT_TIME", 700 + math.random(0, 300))
  TargetActor = Util:GetActorByMinDist(true, AIActor, 0, 3000, false, true)
  if TargetActor ~= nil and Util:GetDist(AIActor, TargetActor) > 500 then
    Command_Move_ToActor(AIActor, 1000, TargetActor, 0, 0)
  elseif TargetActor ~= nil and Util:GetDist(AIActor, TargetActor) < 500 then
    Command_MovingAttack_ToActor(AIActor, 1000, TargetActor, "AATYPE_1", true, math.random(-300, 300), math.random(-300, 300), 0)
  end
  if TargetActor ~= nil and Util:GetDist(AIActor, TargetActor) > 1000 then
    local myTargetActor = Util:GetAIActorByName("\176\237\192\229\179\173\198\202107")
    if myTargetActor ~= nil and Util:GetDist(AIActor, myTargetActor) <= 500 then
      Command_Attack(AIActor, myTargetActor, "AATYPE_1", false, math.min(300, Util:GetDist(AIActor, myTargetActor) / 6))
    elseif myTargetActor ~= nil and Util:GetDist(AIActor, myTargetActor) >= 500 then
      Command_Move_ToActor(AIActor, 5000, myTargetActor, math.random(-300, 300), math.random(-300, 300))
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
