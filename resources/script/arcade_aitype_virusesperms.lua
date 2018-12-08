require("Resources/Script/Arcade_Util.lua")
require("Resources/Script/Arcade_Localize.lua")
function Init()
end
function Update()
  u32DiffID = Host:GetDifficulty()
  AIActor = UpdateArg:GetAIActor("AI_ACTOR")
  UpdateArg:SetLU32("WAIT_TIME", 700)
  u32CurrentAttackType = UpdateArg:GetLU32("U32_1")
  u32CurrentTypePoint = UpdateArg:GetLU32("U32_2")
  TargetActor = Util:GetActorByMinDist(true, AIActor, 0, 10000, false, true)
  Arcade:Print(string.format("\199\246\192\231\190\238\197\195\197\184\192\212=%d", u32CurrentAttackType))
  if u32DiffID == 1 then
    AttackRate = 50
  elseif u32DiffID == 2 then
    AttackRate = 65
  elseif u32DiffID == 3 then
    AttackRate = 80
  end
  RandomAttackRate = math.random(1, 100)
  if u32CurrentAttackType == 0 then
    if TargetActor ~= nil and Util:GetDist(AIActor, TargetActor) <= 1000 and AttackRate > RandomAttackRate then
      AttackTypePointUP(2)
      Command_BackMovingAttack_ToActor(AIActor, 1750, TargetActor, "AATYPE_1", false, 1000, math.random(-300, 300), math.random(-300, 300), 0)
    elseif TargetActor ~= nil and Util:GetDist(AIActor, TargetActor) <= 1000 and AttackRate <= RandomAttackRate then
      Command_Attack(AIActor, TargetActor, "AATYPE_1", false, 0)
    elseif TargetActor ~= nil and Util:GetDist(AIActor, TargetActor) > 1000 then
      local myTargetActor = Util:GetAIActorByName(BROKEN_FAM107)
      if myTargetActor ~= nil and Util:GetDist(AIActor, myTargetActor) > 1300 then
        Command_Move_ToActor(AIActor, 1750, myTargetActor, math.random(-300, 300), math.random(-300, 300))
        Arcade:Print(string.format("\189\199\199\224"))
      elseif myTargetActor ~= nil and Util:GetDist(AIActor, myTargetActor) <= 1300 then
        UpdateArg:SetLU32("WAIT_TIME", 500)
        Command_Attack(AIActor, myTargetActor, "AATYPE_1", false, 0)
      end
    end
  elseif u32CurrentAttackType == 1 then
    if TargetActor ~= nil and Util:GetDist(AIActor, TargetActor) <= 1000 then
      AttackTypePointUP(-1)
      Command_BackMove_ToActor(AIActor, 1750, TargetActor, 2000, math.random(-300, 300), math.random(-300, 300))
    elseif TargetActor ~= nil and Util:GetDist(AIActor, TargetActor) > 1000 then
      local myTargetActor = Util:GetAIActorByName(BROKEN_FAM107)
      if myTargetActor ~= nil and Util:GetDist(AIActor, myTargetActor) > 1300 then
        Command_Move_ToActor(AIActor, 1750, myTargetActor, math.random(-300, 300), math.random(-300, 300))
      elseif myTargetActor ~= nil and Util:GetDist(AIActor, myTargetActor) <= 1300 then
        UpdateArg:SetLU32("WAIT_TIME", 500)
        Command_Attack(AIActor, myTargetActor, "AATYPE_1", false, 0)
      end
    end
  end
end
function AttackTypePointUP(TypePoint)
  if TypePoint == -1 then
    UpdateArg:SetLU32("U32_2", 0)
    u32CurrentTypePoint = UpdateArg:GetLU32("U32_2")
  else
    local myCurrentTypePoint = 0
    myCurrentTypePoint = UpdateArg:GetLU32("U32_2")
    UpdateArg:SetLU32("U32_2", myCurrentTypePoint + TypePoint)
    u32CurrentTypePoint = UpdateArg:GetLU32("U32_2")
  end
  if u32CurrentTypePoint <= 5 then
    UpdateArg:SetLU32("U32_1", 0)
  elseif u32CurrentTypePoint > 5 then
    UpdateArg:SetLU32("U32_1", 1)
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
