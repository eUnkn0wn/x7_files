require("Resources/Script/Arcade_Util.lua")
require("Resources/Script/Arcade_Localize.lua")
function Init()
end
function Update()
  Util:LockAIActorByName(KICHI)
  AIActor = UpdateArg:GetAIActor("AI_ACTOR")
  UpdateArg:SetLU32("WAIT_TIME", 800 + math.random(0, 300))
  TargetActor = Util:GetActorByMinDist(true, AIActor, 0, 3000, false, true)
  if TargetActor ~= nil and Util:GetDist(AIActor, TargetActor) > 500 then
    Command_Move_ToActor(AIActor, 1000, TargetActor, math.random(-500, 500), math.random(-500, 500))
  elseif TargetActor ~= nil and Util:GetDist(AIActor, TargetActor) < 500 then
    UpdateArg:SetLU32("WAIT_TIME", 1800)
    Command_MovingAttack_ToActor(AIActor, 1000, TargetActor, "AATYPE_1", true, math.random(-500, 500), math.random(-500, 500), 0)
  else
    TargetActor = Util:GetActorByMinDist(true, AIActor, 3000, 30000, false, true)
    if TargetActor ~= nil then
      Command_Move_ToActor(AIActor, 1000, TargetActor, math.random(-500, 500), math.random(-500, 500))
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
