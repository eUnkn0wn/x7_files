require("Resources/Script/Arcade_Util.lua")
function Init()
end
function Update()
  u32DiffID = Host:GetDifficulty()
  AIActor = UpdateArg:GetAIActor("AI_ACTOR")
  UpdateArg:SetLU32("WAIT_TIME", 700 + math.random(0, 300))
  local myTargetActor = Util:GetActorByMinDist(true, AIActor, 0, 2500, false, true)
  if myTargetActor ~= nil then
    if u32DiffID == 1 then
      AttackRate = 30
      AimRate = math.min(300, Util:GetDist(AIActor, myTargetActor) / 6)
      AimRateA = math.min(300, Util:GetDist(AIActor, myTargetActor) / 10)
    elseif u32DiffID == 2 then
      AttackRate = 60
      AimRate = math.min(100, Util:GetDist(AIActor, myTargetActor) / 6)
      AimRateA = math.min(100, Util:GetDist(AIActor, myTargetActor) / 10)
    elseif u32DiffID == 3 then
      AttackRate = 90
      AimRate = 50
      AimRateA = 0
    end
    local myRandomAttackRate = math.random(1, 100)
    if Util:GetDist(AIActor, myTargetActor) <= 1500 then
      if myRandomAttackRate < AttackRate then
        UpdateArg:SetLU32("WAIT_TIME", 1000 + math.random(0, 300))
        Command_BackMovingAttack_ToActor(AIActor, 1750, myTargetActor, "AATYPE_1", false, 1000, math.random(-500, 500), math.random(-500, 500), AimRate)
      elseif myRandomAttackRate >= AttackRate then
        UpdateArg:SetLU32("WAIT_TIME", 700 + math.random(0, 300))
        Command_BackMove_ToActor(AIActor, 1750, myTargetActor, 1000, math.random(-300, 300), math.random(-300, 300))
      end
    elseif Util:GetDist(AIActor, myTargetActor) > 1500 and 2500 > Util:GetDist(AIActor, myTargetActor) then
      if Util:IsVisible(AIActor, myTargetActor) == false then
        Command_MovingAttack_ToActor(AIActor, 1750, myTargetActor, "AATYPE_1", false, math.random(-500, 500), math.random(-500, 500), AimRate)
      else
        UpdateArg:SetLU32("WAIT_TIME", 1000 + math.random(0, 300))
        Command_Attack(AIActor, myTargetActor, "AATYPE_1", false, AimRateA)
      end
    elseif 2500 < Util:GetDist(AIActor, myTargetActor) then
      if myRandomAttackRate < AttackRate then
        UpdateArg:SetLU32("WAIT_TIME", 700 + math.random(0, 300))
        Command_MovingAttack_ToActor(AIActor, 1750, myTargetActor, "AATYPE_1", false, math.random(-500, 500), math.random(-500, 500), AimRate)
      elseif myRandomAttackRate >= AttackRate then
        UpdateArg:SetLU32("WAIT_TIME", 700 + math.random(0, 300))
        Command_Move_ToActor(AIActor, 1750, myTargetActor, math.random(-500, 500), math.random(-300, 300))
      end
    end
  else
    local myTargetActor = Util:GetActorByMinDist(true, AIActor, 0, 30000, false, true)
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
