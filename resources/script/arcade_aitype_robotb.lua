require("Resources/Script/Arcade_Util.lua")
gRandomPos = {}
gRandomPos[1] = -700
gRandomPos[2] = 700
function Init()
end
function Update()
  RotateCount = UpdateArg:GetLU32("U32_1")
  AIActor = UpdateArg:GetAIActor("AI_ACTOR")
  if RotateCount == 0 then
    UpdateArg:SetLU32("U32_1", math.random(1, 8))
    RotateCount = UpdateArg:GetLU32("U32_1")
  end
  UpdateArg:SetLU32("WAIT_TIME", 700)
  TargetActor = Util:GetActorByMinDist(AIActor, 0, 10000, true, true)
  AttackRate = math.random(1, 100)
  if TargetActor ~= nil and RotateCount == 1 then
    if AttackRate > 80 then
      Command_MovingAttack_ToActor(AIActor, 1700, TargetActor, "AATYPE_1", true, 0, 900, 0)
    elseif AttackRate <= 80 then
      Command_Move_ToActor(AIActor, 1700, TargetActor, 0, 900)
      RotateCount = 2
    end
  elseif TargetActor ~= nil and RotateCount == 2 then
    if AttackRate > 80 then
      Command_MovingAttack_ToActor(AIActor, 1700, TargetActor, "AATYPE_1", true, 600, 600, 0)
    elseif AttackRate <= 80 then
      Command_Move_ToActor(AIActor, 1700, TargetActor, 600, 600)
      RotateCount = 3
    end
  elseif TargetActor ~= nil and RotateCount == 3 then
    if AttackRate > 80 then
      Command_MovingAttack_ToActor(AIActor, 1700, TargetActor, "AATYPE_1", true, 900, 0, 0)
    elseif AttackRate <= 80 then
      Command_Move_ToActor(AIActor, 1700, TargetActor, 900, 0)
      RotateCount = 4
    end
  elseif TargetActor ~= nil and RotateCount == 4 then
    if AttackRate > 80 then
      Command_MovingAttack_ToActor(AIActor, 1700, TargetActor, "AATYPE_1", true, 600, -600, 0)
    elseif AttackRate <= 80 then
      Command_Move_ToActor(AIActor, 1700, TargetActor, 600, -600)
      RotateCount = 5
    end
  elseif TargetActor ~= nil and RotateCount == 5 then
    if AttackRate > 80 then
      Command_MovingAttack_ToActor(AIActor, 1700, TargetActor, "AATYPE_1", true, 0, -900, 0)
    elseif AttackRate <= 80 then
      Command_Move_ToActor(AIActor, 1700, TargetActor, 0, -900)
      RotateCount = 6
    end
  elseif TargetActor ~= nil and RotateCount == 6 then
    if AttackRate > 80 then
      Command_MovingAttack_ToActor(AIActor, 1700, TargetActor, "AATYPE_1", true, -600, -600, 0)
    elseif AttackRate <= 80 then
      Command_Move_ToActor(AIActor, 1700, TargetActor, -600, -600)
      RotateCount = 7
    end
  elseif TargetActor ~= nil and RotateCount == 7 then
    if AttackRate > 80 then
      Command_MovingAttack_ToActor(AIActor, 1700, TargetActor, "AATYPE_1", true, -900, 0, 0)
    elseif AttackRate <= 80 then
      Command_Move_ToActor(AIActor, 1700, TargetActor, -900, 0)
      RotateCount = 8
    end
  elseif TargetActor ~= nil and RotateCount == 8 then
    if AttackRate > 80 then
      Command_MovingAttack_ToActor(AIActor, 1700, TargetActor, "AATYPE_1", true, -600, 600, 0)
    elseif AttackRate <= 80 then
      Command_Move_ToActor(AIActor, 1700, TargetActor, -600, 600)
      RotateCount = 1
    end
  else
    TargetActor = Util:GetActorByMinDist(AIActor, 0, 10000, true, true)
    if TargetActor ~= nil then
      Command_Move_ToActor(AIActor, 1400, TargetActor, 500, 500)
    end
  end
  UpdateArg:SetLU32("U32_1", RotateCount)
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
