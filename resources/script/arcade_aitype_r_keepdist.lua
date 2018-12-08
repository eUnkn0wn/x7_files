require("Resources/Script/Arcade_Util.lua")
function Init()
end
function Update()
  u32DiffID = Host:GetDifficulty()
  AIActor = UpdateArg:GetAIActor("AI_ACTOR")
  UpdateArg:SetLU32("WAIT_TIME", 700 + math.random(0, 300))
  local myTargetActor = Util:GetActorByMinDist(true, AIActor, 0, 2500, true, true)
  if u32DiffID == 1 then
    AttackRate = 50
    AimRate = math.min(300, Util:GetDist(AIActor, myTargetActor) / 6)
  elseif u32DiffID == 2 then
    AttackRate = 70
    AimRate = math.min(100, Util:GetDist(AIActor, myTargetActor) / 6)
  elseif u32DiffID == 3 then
    AttackRate = 90
    AimRate = 50
  end
  local myRandomAttackRate = math.random(1, 100)
  if myTargetActor ~= nil then
    if Util:GetDist(AIActor, myTargetActor) <= 1500 then
      if myRandomAttackRate < AttackRate then
        UpdateArg:SetLU32("WAIT_TIME", 1000 + math.random(0, 300))
        Command_BackMovingAttack_ToActor(AIActor, 1750, myTargetActor, "AATYPE_1", false, 1000, math.random(-500, 500), math.random(-500, 500), AimRate)
      elseif myRandomAttackRate >= AttackRate then
        UpdateArg:SetLU32("WAIT_TIME", 700 + math.random(0, 300))
        Command_BackMove_ToActor(AIActor, 1750, myTargetActor, 1000, math.random(-300, 300), math.random(-300, 300))
      end
    elseif Util:GetDist(AIActor, myTargetActor) > 1500 and 2500 > Util:GetDist(AIActor, myTargetActor) then
      UpdateArg:SetLU32("WAIT_TIME", 1000 + math.random(0, 300))
      Command_Attack(AIActor, myTargetActor, "AATYPE_1", false, AimRate)
    elseif 2500 < Util:GetDist(AIActor, myTargetActor) then
      UpdateArg:SetLU32("WAIT_TIME", 700 + math.random(0, 300))
      Command_Move_ToActor(AIActor, 1750, myTargetActor, math.random(-500, 500), math.random(-300, 300))
    end
  else
    local myTargetActor = Util:GetActorByMinDist(true, AIActor, 0, 30000, true, true)
    if myTargetActor ~= nil then
      UpdateArg:SetLU32("WAIT_TIME", 700)
      Command_Move_ToActor(AIActor, 1750, myTargetActor, math.random(-500, 500), math.random(-300, 300))
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
