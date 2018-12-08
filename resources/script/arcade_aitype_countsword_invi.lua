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
function Init()
end
function Update()
  u32RotateCount = UpdateArg:GetLU32("U32_1")
  AIActor = UpdateArg:GetAIActor("AI_ACTOR")
  if u32RotateCount == 0 then
    UpdateArg:SetLU32("U32_1", math.random(1, 8))
    u32RotateCount = UpdateArg:GetLU32("U32_1")
  end
  u32InviCount = UpdateArg:GetLU32("U32_2")
  local myTargetActor = Util:GetActorByMinDist(true, AIActor, 0, 3000, false, true)
  local myAttackRate = math.random(1, 100)
  UpdateArg:SetLU32("WAIT_TIME", 800 + math.random(0, 200))
  if u32InviCount == 0 then
    Command_SkillInvisible(AIActor, true)
    UpdateArg:SetLU32("U32_2", 1)
  end
  if myTargetActor ~= nil then
    if myAttackRate > 75 and Util:GetDist(AIActor, myTargetActor) <= 900 then
      UpdateArg:SetLU32("WAIT_TIME", 3000)
      Command_SkillInvisible(AIActor, false)
      UpdateArg:SetLU32("U32_2", 0)
      Command_MovingAttack_ToActor(AIActor, 2250, myTargetActor, "AATYPE_1", true, gPosX[u32RotateCount] + math.random(-200, 200), gPosY[u32RotateCount] + math.random(-200, 200), 0)
    elseif myAttackRate > 75 and Util:GetDist(AIActor, myTargetActor) > 900 then
      Command_Move_ToActor(AIActor, 2250, myTargetActor, gPosX[u32RotateCount] + math.random(-200, 200), gPosY[u32RotateCount] + math.random(-200, 200))
    elseif myAttackRate <= 75 then
      Command_Move_ToActor(AIActor, 2250, myTargetActor, gPosX[u32RotateCount] + math.random(-200, 200), gPosY[u32RotateCount] + math.random(-200, 200))
    end
  else
    myTargetActor = Util:GetActorByMinDist(true, AIActor, 3000, 30000, false, true)
    if myTargetActor ~= nil then
      Command_Move_ToActor(AIActor, 1750, myTargetActor, 0, 0)
    end
  end
  UpdateArg:SetLU32("U32_1", u32RotateCount)
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
