require("Resources/Script/Arcade_Util.lua")
gPunch = {}
gPunch[1] = "AATYPE_1"
gPunch[2] = "AATYPE_2"
function Init()
end
function Update()
  AIActor = UpdateArg:GetAIActor("AI_ACTOR")
  UpdateArg:SetLU32("WAIT_TIME", 500)
  u32CurrentAttackType = UpdateArg:GetLU32("U32_1")
  u32CurrentTypePoint = UpdateArg:GetLU32("U32_2")
  HPCount = UpdateArg:GetLU32("U32_3")
  local myMinDistTargetActor = Util:GetActorByMinDist(true, AIActor, 0, 3000, false, true)
  local myMaxHPTargetActor = Util:GetActorByMaxHP(true, AIActor, 0, 3000, false, true)
  Arcade:Print(string.format("\199\246\192\231\190\238\197\195\197\184\192\212=%d", u32CurrentAttackType))
  if HPCount == 0 then
    Command_ChangeHP(AIActor, 0.6)
    UpdateArg:SetLU32("U32_3", 1)
  end
  if myMinDistTargetActor ~= nil and 500 > Util:GetDist(AIActor, myMinDistTargetActor) then
    UpdateArg:SetLU32("WAIT_TIME", 3000 + math.random(0, 2000))
    Command_Attack(AIActor, myMinDistTargetActor, gPunch[math.random(1, 2)], true, 0)
    Arcade:Print(string.format("\177\217\193\162\176\248\176\221"))
  end
  Arcade:Print(string.format("\198\247\192\206\198\174=%d", u32CurrentTypePoint))
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
