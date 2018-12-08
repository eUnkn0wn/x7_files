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
  u32DiffID = Host:GetDifficulty()
  g_StageChecker = HostArg:GetLU32("NOW_STAGE_ID")
  if g_StageChecker == 1 then
    AIActor = UpdateArg:GetAIActor("AI_ACTOR")
    local myTargetActor = Util:GetActorByMinDist(true, AIActor, 0, 3000, false, true)
    local myDiffDelay = math.random(0, 300)
    UpdateArg:SetLU32("WAIT_TIME", 500 + myDiffDelay)
    if Util:GetHPRate(AIActor) <= 0.3 then
      if myTargetActor ~= nil and Util:GetDist(AIActor, myTargetActor) > 700 then
        UpdateArg:SetLU32("WAIT_TIME", 500 + myDiffDelay)
        Command_Move_ToActor(AIActor, 1000, myTargetActor, 0, 0)
      elseif myTargetActor ~= nil and Util:GetDist(AIActor, myTargetActor) < 700 then
        UpdateArg:SetLU32("WAIT_TIME", 2200 + myDiffDelay)
        Command_MovingAttack_ToActor(AIActor, 1000, myTargetActor, "AATYPE_2", true, math.random(-300, 300), math.random(-300, 300), 0)
      else
        myTargetActor = Util:GetActorByMinDist(true, AIActor, 3000, 30000, false, true)
        if myTargetActor ~= nil then
          UpdateArg:SetLU32("WAIT_TIME", 500 + myDiffDelay)
          Command_Move_ToActor(AIActor, 1000, myTargetActor, 0, 0)
        end
      end
    elseif Util:GetHPRate(AIActor) > 0.3 then
      if myTargetActor ~= nil then
        if u32DiffID == 1 then
          AttackRate = 30
          AimRate = math.min(300, Util:GetDist(AIActor, myTargetActor) / 6)
        elseif u32DiffID == 2 then
          AttackRate = 60
          AimRate = math.min(100, Util:GetDist(AIActor, myTargetActor) / 6)
        elseif u32DiffID == 3 then
          AttackRate = 90
          AimRate = 0
        end
        if Util:GetDist(AIActor, myTargetActor) <= 1500 then
          local myRandomAttackRate = math.random(1, 100)
          if myRandomAttackRate < AttackRate then
            UpdateArg:SetLU32("WAIT_TIME", 700 + myDiffDelay)
            Command_BackMovingAttack_ToActor(AIActor, 1750, myTargetActor, "AATYPE_1", false, 1000, math.random(-500, 500), math.random(-500, 500), AimRate)
          elseif myRandomAttackRate >= AttackRate then
            UpdateArg:SetLU32("WAIT_TIME", 700 + myDiffDelay)
            Command_BackMove_ToActor(AIActor, 1750, myTargetActor, 1000, math.random(-300, 300), math.random(-300, 300))
          end
        elseif Util:GetDist(AIActor, myTargetActor) > 1500 and Util:GetDist(AIActor, myTargetActor) < 2500 then
          UpdateArg:SetLU32("WAIT_TIME", 700 + myDiffDelay)
          Command_Attack(AIActor, myTargetActor, "AATYPE_1", false, AimRate)
        elseif Util:GetDist(AIActor, myTargetActor) > 2500 then
          UpdateArg:SetLU32("WAIT_TIME", 700 + myDiffDelay)
          Command_Move_ToActor(AIActor, 1750, myTargetActor, math.random(-500, 500), math.random(-300, 300))
        end
      else
        local myTargetActor = Util:GetActorByMinDist(true, AIActor, 0, 30000, false, true)
        if myTargetActor ~= nil then
          UpdateArg:SetLU32("WAIT_TIME", 700)
          Command_Move_ToActor(AIActor, 1750, myTargetActor, math.random(-500, 500), math.random(-300, 300))
        end
      end
    end
  elseif g_StageChecker == 7 then
    AIActor = UpdateArg:GetAIActor("AI_ACTOR")
    g_SpecialTargetActor = Util:GetAIActorByName(KICHI)
    g_KichiAttackCount = UpdateArg:GetLU32("U32_1")
    if 1 <= g_KichiAttackCount and g_SpecialTargetActor ~= nil then
      myTargetActor = g_SpecialTargetActor
    elseif g_KichiAttackCount == 0 and g_SpecialTargetActor ~= nil then
      if 3000 < Util:GetDist(AIActor, g_SpecialTargetActor) then
        myTargetActor = g_SpecialTargetActor
        UpdateArg:SetLU32("U32_1", 1)
      elseif 3000 >= Util:GetDist(AIActor, g_SpecialTargetActor) then
        Util:LockAIActorByName(KICHI)
        myTargetActor = Util:GetActorByMinDist(true, AIActor, 0, 3000, false, true)
      end
    end
    local myDiffDelay = math.random(0, 300)
    UpdateArg:SetLU32("WAIT_TIME", 500 + myDiffDelay)
    if Util:GetHPRate(AIActor) <= 0.3 then
      if myTargetActor ~= nil and 700 < Util:GetDist(AIActor, myTargetActor) then
        UpdateArg:SetLU32("WAIT_TIME", 500 + myDiffDelay)
        Command_Move_ToActor(AIActor, 1000, myTargetActor, 0, 0)
      elseif myTargetActor ~= nil and 700 > Util:GetDist(AIActor, myTargetActor) then
        UpdateArg:SetLU32("U32_1", 0)
        UpdateArg:SetLU32("WAIT_TIME", 2200 + myDiffDelay)
        Command_MovingAttack_ToActor(AIActor, 1000, myTargetActor, "AATYPE_2", true, math.random(-300, 300), math.random(-300, 300), 0)
      else
        myTargetActor = Util:GetActorByMinDist(true, AIActor, 3000, 30000, false, true)
        if myTargetActor ~= nil then
          UpdateArg:SetLU32("WAIT_TIME", 500 + myDiffDelay)
          Command_Move_ToActor(AIActor, 1000, myTargetActor, 0, 0)
        end
      end
    elseif Util:GetHPRate(AIActor) > 0.3 then
      if myTargetActor ~= nil then
        if u32DiffID == 1 then
          AttackRate = 30
          AimRate = math.min(300, Util:GetDist(AIActor, myTargetActor) / 6)
        elseif u32DiffID == 2 then
          AttackRate = 60
          AimRate = math.min(100, Util:GetDist(AIActor, myTargetActor) / 6)
        elseif u32DiffID == 3 then
          AttackRate = 90
          AimRate = 0
        end
        if 1500 >= Util:GetDist(AIActor, myTargetActor) then
          local myRandomAttackRate = math.random(1, 100)
          if myRandomAttackRate < AttackRate then
            UpdateArg:SetLU32("U32_1", 0)
            UpdateArg:SetLU32("WAIT_TIME", 700 + myDiffDelay)
            Command_BackMovingAttack_ToActor(AIActor, 1750, myTargetActor, "AATYPE_1", false, 1000, math.random(-500, 500), math.random(-500, 500), AimRate)
          elseif myRandomAttackRate >= AttackRate then
            UpdateArg:SetLU32("WAIT_TIME", 700 + myDiffDelay)
            Command_BackMove_ToActor(AIActor, 1750, myTargetActor, 1000, math.random(-300, 300), math.random(-300, 300))
          end
        elseif 1500 < Util:GetDist(AIActor, myTargetActor) and 2500 > Util:GetDist(AIActor, myTargetActor) then
          UpdateArg:SetLU32("U32_1", 0)
          UpdateArg:SetLU32("WAIT_TIME", 700 + myDiffDelay)
          Command_Attack(AIActor, myTargetActor, "AATYPE_1", false, AimRate)
        elseif 2500 < Util:GetDist(AIActor, myTargetActor) then
          UpdateArg:SetLU32("WAIT_TIME", 700 + myDiffDelay)
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
