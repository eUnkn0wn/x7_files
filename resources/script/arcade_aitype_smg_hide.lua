require("Resources/Script/Arcade_Util.lua")
gAttackCount = 0
function Init()
end
function Update()
  AIActor = UpdateArg:GetAIActor("AI_ACTOR")
  UpdateArg:SetLU32("WAIT_TIME", 1000 + math.random(0, 300))
  TargetActor = Util:GetActorByMinDist(true, AIActor, 0, 10000, false, true)
  if TargetActor ~= nil and 0 < Util:GetDist(AIActor, TargetActor) then
    Command_Move_ToDefenseArea(AIActor, 1750, 0, 0)
  end
  if TargetActor ~= nil and 0 < Util:GetDist(AIActor, TargetActor) and Util:GetDistByDefenseArea(AIActor) < 100 and Util:IsVisible(AIActor, TargetActor) == false and gAttackCount == 0 then
    Command_Move_ToAttackArea(AIActor, 1750, 0, 0)
  elseif TargetActor ~= nil and 0 < Util:GetDist(AIActor, TargetActor) and Util:GetDistByDefenseArea(AIActor) < 100 and Util:IsVisible(AIActor, TargetActor) == false and gAttackCount == 1 then
    Command_Move_ToAttackArea(AIActor, 1750, 0, 0)
  elseif TargetActor ~= nil and 0 < Util:GetDist(AIActor, TargetActor) and Util:GetDistByDefenseArea(AIActor) < 100 and Util:IsVisible(AIActor, TargetActor) == true then
    Command_Attack(AIActor, TargetActor, "AATYPE_1", false, math.min(300, Util:GetDist(AIActor, TargetActor) / 7))
  elseif TargetActor ~= nil and 0 < Util:GetDist(AIActor, TargetActor) and 100 > Util:GetDistByAttackArea(AIActor) and Util:IsVisible(AIActor, TargetActor) == true and gAttackCount == 0 then
    Command_Move_ToDefenseArea(AIActor, 1750, 0, 0)
    gAttackCount = gAttackCount + 1
  elseif TargetActor ~= nil and 0 < Util:GetDist(AIActor, TargetActor) and 100 > Util:GetDistByAttackArea(AIActor) and Util:IsVisible(AIActor, TargetActor) == true and gAttackCount >= 1 then
    Command_Attack(AIActor, TargetActor, "AATYPE_1", true, math.min(300, Util:GetDist(AIActor, TargetActor) / 7))
    gAttackCount = math.random(0, 1)
  end
  Arcade:Print(string.format("\181\240\198\230\189\186\198\247\193\246\188\199\176\197\184\174%f, \190\238\197\195\198\247\193\246\188\199\176\197\184\174 %f, \190\238\197\195\196\171\191\238\198\174 = %d", Util:GetDistByDefenseArea(AIActor), Util:GetDistByAttackArea(AIActor), gAttackCount))
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
