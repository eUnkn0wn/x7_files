require("Resources/Script/Arcade_Util.lua")
require("Resources/Script/Arcade_Localize.lua")
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
gPosY[1] = 900
gPosY[2] = 600
gPosY[3] = 0
gPosY[4] = -600
gPosY[5] = -900
gPosY[6] = -600
gPosY[7] = 0
gPosY[8] = 600
function Init()
end
function Update()
  u32DiffID = Host:GetDifficulty()
  RotateCount = UpdateArg:GetLU32("U32_1")
  AIActor = UpdateArg:GetAIActor("AI_ACTOR")
  if RotateCount == 0 then
    UpdateArg:SetLU32("U32_1", math.random(1, 8))
    RotateCount = UpdateArg:GetLU32("U32_1")
  elseif RotateCount > 8 then
    RotateCount = 1
  end
  UpdateArg:SetLU32("WAIT_TIME", 700)
  local myEnemyTarget = Util:GetActorByMinDist(true, AIActor, 0, 30000, false, true)
  TargetActor = Util:GetAIActorByName(MOTHER_VIRUS)
  if u32DiffID == 1 then
    AttackRate = 20
  elseif u32DiffID == 2 then
    AttackRate = 30
  elseif u32DiffID == 3 then
    AttackRate = 40
  end
  RandomAttackRate = math.random(1, 100)
  if myEnemyTarget ~= nil then
    if TargetActor ~= nil and RotateCount ~= 0 then
      if Util:GetDist(AIActor, TargetActor) < 900 then
        if AttackRate > RandomAttackRate then
          UpdateArg:SetLU32("WAIT_TIME", 1500)
          Command_Attack(AIActor, TargetActor, "AATYPE_1", false, 0)
        elseif AttackRate <= RandomAttackRate then
          UpdateArg:SetLU32("WAIT_TIME", 700)
          Command_Move_ToActor(AIActor, 1700, TargetActor, gPosX[RotateCount], gPosY[RotateCount])
          UpdateArg:SetLU32("U32_1", RotateCount + 1)
        end
      elseif Util:GetDist(AIActor, TargetActor) > 900 then
        UpdateArg:SetLU32("WAIT_TIME", 700)
        Command_Move_ToActor(AIActor, 1700, TargetActor, gPosX[RotateCount], gPosY[RotateCount])
        UpdateArg:SetLU32("U32_1", RotateCount + 1)
      end
    else
      TargetActor = Util:GetActorByMinDist(true, AIActor, 4000, 30000, false, true)
      if TargetActor ~= nil then
        UpdateArg:SetLU32("WAIT_TIME", 700)
        Command_Move_ToActor(AIActor, 1400, TargetActor, 0, 0)
      end
    end
  elseif TargetActor ~= nil and RotateCount ~= 0 then
    if Util:GetDist(AIActor, TargetActor) < 900 then
      if AttackRate > RandomAttackRate then
        UpdateArg:SetLU32("WAIT_TIME", 1500)
        Command_Move_ToActor(AIActor, 1700, TargetActor, gPosX[RotateCount], gPosY[RotateCount])
      elseif AttackRate <= RandomAttackRate then
        UpdateArg:SetLU32("WAIT_TIME", 700)
        Command_Move_ToActor(AIActor, 1700, TargetActor, gPosX[RotateCount], gPosY[RotateCount])
        UpdateArg:SetLU32("U32_1", RotateCount + 1)
      end
    elseif Util:GetDist(AIActor, TargetActor) > 900 then
      UpdateArg:SetLU32("WAIT_TIME", 700)
      Command_Move_ToActor(AIActor, 1700, TargetActor, gPosX[RotateCount], gPosY[RotateCount])
      UpdateArg:SetLU32("U32_1", RotateCount + 1)
    end
  else
    TargetActor = Util:GetActorByMinDist(true, AIActor, 4000, 30000, false, true)
    if TargetActor ~= nil then
      UpdateArg:SetLU32("WAIT_TIME", 700)
      Command_Move_ToActor(AIActor, 1400, TargetActor, 0, 0)
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
