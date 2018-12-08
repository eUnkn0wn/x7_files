require("Resources/Script/Arcade_Util.lua")
gPosX = {}
gPosX[1] = 0
gPosX[2] = 600
gPosX[3] = 900
gPosX[4] = 600
gPosX[5] = 0
gPosX[6] = -600
gPosX[7] = -900
gPosX[8] = -600
gPosY = {}
gPosY[1] = -900
gPosY[2] = -600
gPosY[3] = 0
gPosY[4] = 600
gPosY[5] = 900
gPosY[6] = 600
gPosY[7] = 0
gPosY[8] = -600
function Init()
end
function Update()
  RotateCount = UpdateArg:GetLU32("U32_1")
  PostionCount = UpdateArg:GetLU32("U32_2")
  AIActor = UpdateArg:GetAIActor("AI_ACTOR")
  if RotateCount == 0 then
    UpdateArg:SetLU32("U32_1", math.random(1, 8))
    RotateCount = UpdateArg:GetLU32("U32_1")
  elseif RotateCount > 8 then
    RotateCount = 1
  end
  local AttackLimitCount = math.random(2, 5)
  UpdateArg:SetLU32("WAIT_TIME", 1000)
  TargetActor = Util:GetActorByMinDist(true, AIActor, 0, 3000, false, true)
  if TargetActor ~= nil and AttackLimitCount > PostionCount and RotateCount ~= 0 and Util:GetDist(AIActor, TargetActor) > 900 then
    Command_Move_ToActor(AIActor, 2700, TargetActor, gPosX[RotateCount], gPosY[RotateCount])
    UpdateArg:SetLU32("U32_1", RotateCount + 1)
    UpdateArg:SetLU32("U32_2", PostionCount + 1)
    Arcade:Print(string.format("\189\199\199\2241"))
    Arcade:Print(string.format("%d", PostionCount))
  elseif TargetActor ~= nil and AttackLimitCount > PostionCount and RotateCount ~= 0 and Util:GetDist(AIActor, TargetActor) <= 900 then
    Command_Move_ToActor(AIActor, 2700, TargetActor, gPosX[RotateCount], gPosY[RotateCount])
    UpdateArg:SetLU32("U32_1", RotateCount + 1)
    UpdateArg:SetLU32("U32_2", PostionCount + 1)
    Arcade:Print(string.format("\189\199\199\2242"))
    Arcade:Print(string.format("%d", PostionCount))
  elseif TargetActor ~= nil and AttackLimitCount <= PostionCount and RotateCount ~= 0 and Util:GetDist(AIActor, TargetActor) > 900 then
    Command_Move_ToActor(AIActor, 2700, TargetActor, gPosX[RotateCount], gPosY[RotateCount])
    UpdateArg:SetLU32("U32_1", RotateCount + 1)
    Arcade:Print(string.format("\189\199\199\2243"))
    Arcade:Print(string.format("%d", PostionCount))
  elseif TargetActor ~= nil and AttackLimitCount <= PostionCount and RotateCount ~= 0 and Util:GetDist(AIActor, TargetActor) <= 900 then
    Command_MovingAttack_ToActor(AIActor, 1700, TargetActor, "AATYPE_1", true, gPosX[RotateCount], gPosY[RotateCount], 0)
    UpdateArg:SetLU32("U32_1", RotateCount + 1)
    UpdateArg:SetLU32("U32_2", 0)
    Arcade:Print(string.format("\189\199\199\2244"))
    Arcade:Print(string.format("%d", PostionCount))
  end
  TargetActor = Util:GetActorByMinDist(true, AIActor, 3000, 30000, false, true)
  if TargetActor ~= nil then
    Command_Move_ToActor(AIActor, 1700, TargetActor, 0, 0)
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
