require("Resources/Script/Arcade_Util.lua")
gPosX = {}
gPosX[1] = 0
gPosX[2] = 500
gPosX[3] = 750
gPosX[4] = 500
gPosX[5] = 0
gPosX[6] = -500
gPosX[7] = -750
gPosX[8] = -500
gPosY = {}
gPosY[1] = 750
gPosY[2] = 500
gPosY[3] = 0
gPosY[4] = -500
gPosY[5] = -750
gPosY[6] = -500
gPosY[7] = 0
gPosY[8] = 500
gCount = 0
function Init()
end
function Update()
  RotateCount = UpdateArg:GetLU32("U32_1")
  AIActor = UpdateArg:GetAIActor("AI_ACTOR")
  if RotateCount == 0 then
    UpdateArg:SetLU32("U32_1", math.random(1, 8))
    RotateCount = UpdateArg:GetLU32("U32_1")
  end
  UpdateArg:SetLU32("WAIT_TIME", 800 + math.random(0, 200))
  TargetActor = Util:GetActorByMinDist(true, AIActor, 0, 30000, false, true)
  if TargetActor ~= nil and gCount == 10 then
    Command_MovingAttack_ToActor(AIActor, 2250, TargetActor, "AATYPE_1", true, gPosX[RotateCount] + math.random(-200, 200), gPosY[RotateCount] + math.random(-200, 200), 0)
  end
  if TargetActor ~= nil and gCount < 10 then
    Command_Move_ToActor(AIActor, 2250, TargetActor, gPosX[RotateCount] + math.random(-200, 200), gPosY[RotateCount] + math.random(-200, 200))
  else
    TargetActor = Util:GetActorByMinDist(AIActor, 3000, 30000, false, true)
    if TargetActor ~= nil then
      Command_Move_ToActor(AIActor, 2250, TargetActor, gPosX[RotateCount] + math.random(-200, 200), gPosY[RotateCount] + math.random(-200, 200))
    end
  end
  if TargetActor ~= nil and 3000 >= Util:GetDist(AIActor, TargetActor) and gCount < 10 then
    gCount = gCount + 1
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
