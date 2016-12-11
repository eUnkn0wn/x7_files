require("Resources/Script/Arcade_Util.lua")
require("Resources/Script/Arcade_Localize.lua")
gPunch = {}
gPunch[1] = "AATYPE_1"
gPunch[2] = "AATYPE_2"
function Init()
end
function Update()
  u32DiffID = Host:GetDifficulty()
  AIActor = UpdateArg:GetAIActor("AI_ACTOR")
  UpdateArg:SetLU32("WAIT_TIME", 700)
  Util:LockAIActorByName(KICHI)
  local myLimitPathCount = 10
  u32CurrentAttackType = UpdateArg:GetLU32("U32_1")
  u32CurrentTypePoint = UpdateArg:GetLU32("U32_2")
  u32CurrentPathCount = UpdateArg:GetLU32("U32_3")
  local myMinDistTargetActor = Util:GetActorByMinDist(true, AIActor, 0, 30000, false, true)
  local myMaxHPTargetActor = Util:GetActorByMaxHP(true, AIActor, 0, 30000, false, true)
  Arcade:Print(string.format("\199\246\192\231\190\238\197\195\197\184\192\212=%d", u32CurrentAttackType))
  if u32DiffID == 1 then
    AttackRate = 50
  elseif u32DiffID == 2 then
    AttackRate = 80
  elseif u32DiffID == 3 then
    AttackRate = 100
  end
  if u32CurrentAttackType == 0 then
    if myMinDistTargetActor ~= nil then
      if Util:GetDist(AIActor, myMinDistTargetActor) < 1000 then
        AttackTypePointUP(3)
        UpdateArg:SetLU32("WAIT_TIME", 1600)
        Command_Attack(AIActor, myMinDistTargetActor, gPunch[math.random(1, 2)], true, 0)
        Arcade:Print(string.format("\177\217\193\162\176\248\176\221"))
      elseif Util:GetDist(AIActor, myMinDistTargetActor) > 1000 then
        if myLimitPathCount < u32CurrentPathCount then
          AttackTypePointUP(3)
          PathCountUP(-1)
          UpdateArg:SetLU32("WAIT_TIME", 1600)
          Command_Attack(AIActor, myMinDistTargetActor, gPunch[math.random(1, 2)], true, 0)
          Arcade:Print(string.format("\177\217\193\162\176\248\176\221"))
        elseif myLimitPathCount >= u32CurrentPathCount then
          UpdateArg:SetLU32("WAIT_TIME", 650)
          PathCountUP(1)
          Command_Move_ToActor(AIActor, 750, myMinDistTargetActor, math.random(-500, 500), math.random(-500, 500))
          Arcade:Print(string.format("\177\217\193\162\176\248\176\221\192\187\192\167\199\209\192\204\181\191"))
        end
      end
    else
      myMinDistTargetActor = Util:GetActorByMinDist(true, AIActor, 0, 10000, false, true)
      if myMinDistTargetActor ~= nil then
        UpdateArg:SetLU32("WAIT_TIME", 650)
        Command_Move_ToActor(AIActor, 750, myMinDistTargetActor, math.random(-500, 500), math.random(-500, 500))
        Arcade:Print(string.format("\177\217\193\162\176\248\176\221\192\187\192\167\199\209 \192\229\176\197\184\174 \192\204\181\191"))
      end
    end
  elseif u32CurrentAttackType == 1 then
    if myMinDistTargetActor ~= nil then
      if Util:GetDist(AIActor, myMinDistTargetActor) < 3000 then
        AttackTypePointUP(3)
        UpdateArg:SetLU32("WAIT_TIME", 4000)
        Command_Attack(AIActor, myMinDistTargetActor, "AATYPE_3", false, 0)
        Arcade:Print(string.format("\181\185\193\248\176\248\176\221"))
      elseif Util:GetDist(AIActor, myMinDistTargetActor) > 3000 then
        if myLimitPathCount < u32CurrentPathCount then
          AttackTypePointUP(3)
          PathCountUP(-1)
          UpdateArg:SetLU32("WAIT_TIME", 1600)
          Command_Attack(AIActor, myMinDistTargetActor, gPunch[math.random(1, 2)], true, 0)
          Arcade:Print(string.format("\177\217\193\162\176\248\176\221"))
        elseif myLimitPathCount >= u32CurrentPathCount then
          UpdateArg:SetLU32("WAIT_TIME", 650)
          PathCountUP(1)
          Command_Move_ToActor(AIActor, 750, myMinDistTargetActor, math.random(-500, 500), math.random(-500, 500))
          Arcade:Print(string.format("\177\217\193\162\176\248\176\221\192\187\192\167\199\209\192\204\181\191"))
        end
      end
    else
      myMinDistTargetActor = Util:GetActorByMinDist(true, AIActor, 0, 10000, false, true)
      if myMinDistTargetActor ~= nil then
        UpdateArg:SetLU32("WAIT_TIME", 650)
        Command_Move_ToActor(AIActor, 750, myMinDistTargetActor, math.random(-500, 500), math.random(-500, 500))
        Arcade:Print(string.format("\177\217\193\162\176\248\176\221\192\187\192\167\199\209 \192\229\176\197\184\174 \192\204\181\191"))
      end
    end
  elseif u32CurrentAttackType == 2 and myMaxHPTargetActor ~= nil then
    AttackTypePointUP(-1)
    UpdateArg:SetLU32("WAIT_TIME", 5050)
    Command_Attack(AIActor, myMaxHPTargetActor, "AATYPE_4", true, 0)
    Arcade:Print(string.format("\183\185\192\204\192\250\176\248\176\221"))
  end
  Arcade:Print(string.format("\198\247\192\206\198\174=%d", u32CurrentTypePoint))
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
  if u32CurrentTypePoint <= 10 then
    UpdateArg:SetLU32("U32_1", math.random(0, 1))
  elseif u32CurrentTypePoint > 10 then
    UpdateArg:SetLU32("U32_1", 2)
  end
end
function PathCountUP(PathPoint)
  if PathPoint == -1 then
    UpdateArg:SetLU32("U32_3", 0)
    u32CurrentPathCount = UpdateArg:GetLU32("U32_3")
  else
    local myCurrentPathCount
    myCurrentPathCount = UpdateArg:GetLU32("U32_3")
    UpdateArg:SetLU32("U32_3", myCurrentPathCount + PathPoint)
    myCurrentPathCount = UpdateArg:GetLU32("U32_3")
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
