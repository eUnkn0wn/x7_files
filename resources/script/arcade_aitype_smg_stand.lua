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
  AIActor = UpdateArg:GetAIActor("AI_ACTOR")
  TargetActor = Util:GetActorByMinDist(true, AIActor, 0, 10000, false, true)
  u32DiffID = Host:GetDifficulty()
  local AimRate, AttackAfterWaitTime
  if u32DiffID == 1 then
    AimRate = 120
    AttackAfterWaitTime = 2750
  elseif u32DiffID == 2 then
    AimRate = 75
    AttackAfterWaitTime = 2000
  elseif u32DiffID == 3 then
    AimRate = 50
    AttackAfterWaitTime = 1500
  end
  if TargetActor ~= nil and 50 <= Util:GetDistByDefenseArea(AIActor) then
    UpdateArg:SetLU32("WAIT_TIME", 700 + math.random(0, 300))
    Command_Move_ToDefenseArea(AIActor, 3500, 0, 0)
  elseif TargetActor ~= nil and 50 > Util:GetDistByDefenseArea(AIActor) then
    UpdateArg:SetLU32("WAIT_TIME", AttackAfterWaitTime + math.random(0, 300))
    Command_Attack(AIActor, TargetActor, "AATYPE_1", true, AimRate)
  else
    TargetActor = Util:GetActorByMinDist(true, AIActor, 10000, 30000, false, true)
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
