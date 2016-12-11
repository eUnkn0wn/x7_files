require("Resources/Script/Arcade_Util.lua")
require("Resources/Script/Arcade_Localize.lua")
function Init()
end
function Update()
  AIActor = UpdateArg:GetAIActor("AI_ACTOR")
  g_u32dodgeCount = UpdateArg:GetLU32("U32_1")
  g_SpecialTargetActor = Util:GetAIActorByName(KICHI)
  g_KichiAttackCount = UpdateArg:GetLU32("U32_2")
  if g_KichiAttackCount >= 1 then
    g_myTargetActor = g_SpecialTargetActor
  elseif g_KichiAttackCount == 0 and g_SpecialTargetActor ~= nil then
    if Util:GetDist(AIActor, g_SpecialTargetActor) > 3000 then
      g_myTargetActor = g_SpecialTargetActor
      UpdateArg:SetLU32("U32_2", 1)
    elseif Util:GetDist(AIActor, g_SpecialTargetActor) <= 3000 then
      Util:LockAIActorByName(KICHI)
      g_myTargetActor = Util:GetActorByMinDist(true, AIActor, 0, 3000, false, true)
    end
  end
  UpdateArg:SetLU32("WAIT_TIME", 700)
  AttackRate = math.random(1, 100)
  if g_myTargetActor ~= nil then
    if Util:GetDist(AIActor, g_myTargetActor) <= 700 then
      UpdateArg:SetLU32("WAIT_TIME", 700)
      UpdateArg:SetLU32("U32_2", 0)
      Command_MovingAttack_ToActor(AIActor, 1750, g_myTargetActor, "AATYPE_1", true, 0, 0, 0)
    elseif Util:GetDist(AIActor, g_myTargetActor) > 700 then
      UpdateArg:SetLU32("WAIT_TIME", 700)
      Command_Move_ToActor(AIActor, 1200, g_myTargetActor, math.random(-700, 700), math.random(-700, 700))
    end
  else
    g_myTargetActor = Util:GetActorByMinDist(true, AIActor, 3000, 30000, false, true)
    if g_myTargetActor ~= nil then
      UpdateArg:SetLU32("WAIT_TIME", 700)
      Command_Move_ToActor(AIActor, 1200, g_myTargetActor, math.random(-700, 700), math.random(-700, 700))
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
  g_u32dodgeCount = UpdateArg:GetLU32("U32_1")
  if g_u32dodgeCount >= 3 then
    local myDodgeDirection = math.random(1, 3)
    if myDodgeDirection == 1 then
      Arcade:Print(string.format("\191\222\194\202\192\184\183\206 \200\184\199\199"))
      UpdateArg:SetLU32("U32_1", 0)
      Command_Dodge_ToActor(AIActor, g_myTargetActor, true)
    elseif myDodgeDirection == 2 then
      Arcade:Print(string.format("\191\192\184\165\194\202\192\184\183\206 \200\184\199\199"))
      UpdateArg:SetLU32("U32_1", 0)
      Command_Dodge_ToActor(AIActor, g_myTargetActor, false)
    end
  else
    g_u32dodgeCount = UpdateArg:GetLU32("U32_1")
    UpdateArg:SetLU32("U32_1", g_u32dodgeCount + 1)
  end
end
function ChangeHp()
end
function TriggerNotifyID()
end
