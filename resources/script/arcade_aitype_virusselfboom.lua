require("Resources/Script/Arcade_Util.lua")
require("Resources/Script/Arcade_Localize.lua")
function Init()
end
function Update()
  AIActor = UpdateArg:GetAIActor("AI_ACTOR")
  UpdateArg:SetLU32("WAIT_TIME", 700 + math.random(0, 300))
  myKichi = Util:GetAIActorByName(KICHI)
  myTargetPlayer = Util:GetActorByMinDist(true, AIActor, 0, 30000, false, true)
  if myKichi == nil then
    myKichi = myTargetPlayer
  end
  g_u32BoomCount = UpdateArg:GetLU32("U32_1")
  local myDistValue = Util:GetDist(AIActor, myKichi)
  local myTargetPlayerDistValue = Util:GetDist(AIActor, myTargetPlayer)
  if g_u32BoomCount ~= 1 then
    if Util:GetHPRate(AIActor) > 0.1 then
      if myTargetPlayerDistValue < 500 then
        UpdateArg:SetLU32("WAIT_TIME", 1100)
        Command_Attack(AIActor, myTargetPlayer, "AATYPE_1", false, 0)
      elseif myKichi ~= nil then
        if myDistValue > 700 then
          UpdateArg:SetLU32("WAIT_TIME", 700)
          Command_Move_ToActor(AIActor, 1000, myKichi, math.random(0, 500), math.random(0, 500))
        elseif myDistValue <= 700 then
          UpdateArg:SetLU32("WAIT_TIME", 1100)
          UpdateArg:SetLU32("U32_1", 1)
          Command_Attack(AIActor, myKichi, "AATYPE_3", false, 0)
        end
      else
        myKichi = Util:GetActorByMinDist(true, AIActor, 0, 30000, false, true)
        UpdateArg:SetLU32("WAIT_TIME", 700)
        Command_Move_ToActor(AIActor, 1000, myKichi, math.random(0, 500), math.random(0, 500))
      end
    elseif Util:GetHPRate(AIActor) < 0.1 then
      UpdateArg:SetLU32("WAIT_TIME", 1100)
      UpdateArg:SetLU32("U32_1", 1)
      Command_Attack(AIActor, myKichi, "AATYPE_3", false, 0)
    end
  elseif g_u32BoomCount == 1 then
    Command_Death(AIActor)
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
