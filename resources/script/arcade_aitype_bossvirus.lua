require("Resources/Script/Arcade_Util.lua")
gMoveCount = 0
g_TeleportPosition = {}
g_TeleportPosition[1] = "arcade_teleport_stage09_03"
g_TeleportPosition[2] = "arcade_teleport_stage09_03"
g_TeleportPosition[3] = "arcade_teleport_stage09_04"
g_TeleportPosition[4] = "arcade_teleport_stage09_04"
g_TeleportPosition[5] = "arcade_teleport_stage09_06"
g_TeleportPosition[6] = "arcade_teleport_stage09_06"
function Init()
end
function Update()
  AIActor = UpdateArg:GetAIActor("AI_ACTOR")
  u32AttackCount = UpdateArg:GetLU32("U32_1")
  u32DarkGasCount = UpdateArg:GetLU32("U32_2")
  g_u32SpawnCountVirus = UpdateArg:GetLU32("U32_3")
  g_u32SpawnCountHealer = UpdateArg:GetLU32("U32_4")
  g_u32TeleportCount = UpdateArg:GetLU32("U32_5")
  u32VirusHealer = HostArg:GetLU32("INFECTED_HEALER")
  g_u32Virus = HostArg:GetLU32("VIRUS")
  local myChangePattern = 0.4
  TargetActor = Util:GetActorByMinDist(true, AIActor, 0, 5000, false, true)
  if myChangePattern < Util:GetHPRate(AIActor) then
    local myTeleportChance = 15
    if TargetActor ~= nil then
      if myTeleportChance <= g_u32TeleportCount then
        TeleportCount(-1)
        UpdateArg:SetLU32("WAIT_TIME", 500)
        Command_Teleport_ToNode(AIActor, g_TeleportPosition[math.random(1, 6)])
        Arcade:Print(string.format("\188\248\176\163\192\204\181\191"))
      elseif myTeleportChance > g_u32TeleportCount then
        if u32AttackCount <= 10 then
          if Util:GetDist(AIActor, TargetActor) > 1000 then
            AttackCountUP(1)
            TeleportCount(1)
            UpdateArg:SetLU32("WAIT_TIME", 500)
            Command_Move_ToActor(AIActor, 750, TargetActor, math.random(-500, 500), math.random(-500, 500))
            Arcade:Print(string.format("\192\207\185\221\192\204\181\191"))
          elseif Util:GetDist(AIActor, TargetActor) < 1000 then
            if Util:IsVisible(AIActor, TargetActor) == false then
              UpdateArg:SetLU32("WAIT_TIME", 1000 + math.random(1, 500))
              Command_Move_ToActor(AIActor, 750, TargetActor, math.random(-1000, 1000), math.random(-1000, 1000))
            elseif Util:IsVisible(AIActor, TargetActor) == true then
              AttackCountUP(4)
              TeleportCount(-1)
              UpdateArg:SetLU32("WAIT_TIME", 1550)
              Command_Attack(AIActor, TargetActor, "AATYPE_1", true, 0)
              Arcade:Print(string.format("\192\207\185\221\176\248\176\221"))
            end
          end
        elseif u32AttackCount > 10 then
          local myAttackRate = math.random(1, 100)
          Arcade:Print(string.format("\190\238\197\195\200\174\183\252=%d", myAttackRate))
          if myAttackRate <= 30 and g_u32SpawnCountVirus - g_u32Virus == 0 then
            AttackCountUP(-1)
            SpawnCountUP(1, 6)
            UpdateArg:SetLU32("WAIT_TIME", 2050)
            Command_Attack(AIActor, TargetActor, "AATYPE_7", false, 0)
            Arcade:Print(string.format("\188\210\200\175"))
          elseif myAttackRate > 30 and myAttackRate <= 80 then
            AttackCountUP(-1)
            UpdateArg:SetLU32("WAIT_TIME", 5050)
            Command_Attack(AIActor, TargetActor, "AATYPE_3", false, 0)
            Arcade:Print(string.format("\191\172\177\226"))
          elseif myAttackRate > 80 then
            if Util:GetDist(AIActor, TargetActor) > 1000 then
              AttackCountUP(-1)
              UpdateArg:SetLU32("WAIT_TIME", 500)
              Command_Move_ToActor(AIActor, 750, TargetActor, math.random(-500, 500), math.random(-500, 500))
              Arcade:Print(string.format("\191\238\193\193\176\212 \194\209\177\226"))
            elseif Util:GetDist(AIActor, TargetActor) < 1000 then
              AttackCountUP(-1)
              TeleportCount(-1)
              UpdateArg:SetLU32("WAIT_TIME", 1550)
              Command_Attack(AIActor, TargetActor, "AATYPE_1", true, 0)
              Arcade:Print(string.format("\191\238\193\193\176\212 \176\248\176\221"))
            end
          end
        end
      end
    else
      TargetActor = Util:GetActorByMinDist(true, AIActor, 0, 10000, false, true)
      if TargetActor ~= nil then
        AttackCountUP(1)
        UpdateArg:SetLU32("WAIT_TIME", 500)
        Command_Move_ToActor(AIActor, 750, TargetActor, math.random(-500, 500), math.random(-500, 500))
        Arcade:Print(string.format("\191\248\176\197\184\174 \192\204\181\191"))
      end
    end
  elseif myChangePattern >= Util:GetHPRate(AIActor) then
    local myTeleportChance = 15
    if TargetActor ~= nil then
      if myTeleportChance <= g_u32TeleportCount then
        TeleportCount(-1)
        UpdateArg:SetLU32("WAIT_TIME", 500)
        Command_Teleport_ToNode(AIActor, g_TeleportPosition[math.random(1, 6)])
        Arcade:Print(string.format("\188\248\176\163\192\204\181\191"))
      elseif myTeleportChance > g_u32TeleportCount then
        if u32DarkGasCount == 0 then
          if u32AttackCount <= 10 then
            if Util:GetDist(AIActor, TargetActor) > 1000 then
              AttackCountUP(1)
              TeleportCount(1)
              UpdateArg:SetLU32("WAIT_TIME", 500)
              Command_Move_ToActor(AIActor, 750, TargetActor, math.random(-500, 500), math.random(-500, 500))
              Arcade:Print(string.format("\192\207\185\221\192\204\181\191"))
            elseif Util:GetDist(AIActor, TargetActor) < 1000 then
              if Util:IsVisible(AIActor, TargetActor) == false then
                UpdateArg:SetLU32("WAIT_TIME", 1000 + math.random(1, 500))
                Command_Move_ToActor(AIActor, 750, TargetActor, math.random(-1000, 1000), math.random(-1000, 1000))
              elseif Util:IsVisible(AIActor, TargetActor) == true then
                AttackCountUP(4)
                TeleportCount(-1)
                UpdateArg:SetLU32("WAIT_TIME", 1550)
                Command_Attack(AIActor, TargetActor, "AATYPE_1", true, 0)
                Arcade:Print(string.format("\192\207\185\221\176\248\176\221"))
              end
            end
          elseif u32AttackCount > 10 then
            local myAttackRate = math.random(0, 100)
            Arcade:Print(string.format("\190\238\197\195\200\174\183\252=%d", myAttackRate))
            if myAttackRate <= 40 and g_u32SpawnCountHealer - u32VirusHealer == 0 then
              AttackCountUP(-1)
              SpawnCountUP(2, 3)
              UpdateArg:SetLU32("WAIT_TIME", 2050)
              Command_Attack(AIActor, TargetActor, "AATYPE_6", false, 0)
              Arcade:Print(string.format("\188\210\200\175"))
            elseif myAttackRate > 40 and myAttackRate <= 80 then
              AttackCountUP(-1)
              DarkGasCountUP(1)
              UpdateArg:SetLU32("WAIT_TIME", 5050)
              Command_Attack(AIActor, TargetActor, "AATYPE_3", false, 0)
              Arcade:Print(string.format("\191\172\177\226"))
            elseif myAttackRate > 80 then
              if Util:GetDist(AIActor, TargetActor) > 1000 then
                AttackCountUP(-1)
                UpdateArg:SetLU32("WAIT_TIME", 500)
                Command_Move_ToActor(AIActor, 750, TargetActor, math.random(-500, 500), math.random(-500, 500))
                Arcade:Print(string.format("\191\238\193\193\176\212 \194\209\177\226"))
              elseif Util:GetDist(AIActor, TargetActor) < 1000 then
                AttackCountUP(-1)
                TeleportCount(-1)
                UpdateArg:SetLU32("WAIT_TIME", 1550)
                Command_Attack(AIActor, TargetActor, "AATYPE_2", true, 0)
                Arcade:Print(string.format("\191\238\193\193\176\212 \176\248\176\221"))
              end
            end
          end
        elseif u32DarkGasCount >= 1 then
          if Util:IsVisible(AIActor, TargetActor) == false then
            TeleportCount(2)
            UpdateArg:SetLU32("WAIT_TIME", 1000 + math.random(1, 500))
            Command_Move_ToActor(AIActor, 750, TargetActor, math.random(-1000, 1000), math.random(-1000, 1000))
          elseif Util:IsVisible(AIActor, TargetActor) == true then
            AttackCountUP(-1)
            DarkGasCountUP(-1)
            UpdateArg:SetLU32("WAIT_TIME", 4550)
            Command_Attack(AIActor, TargetActor, "AATYPE_4", false, 0)
            Arcade:Print(string.format("\178\248\190\238\180\243\177\228 \200\196 \198\248\198\196"))
          end
        end
      end
    else
      TargetActor = Util:GetActorByMinDist(true, AIActor, 0, 10000, false, true)
      if TargetActor ~= nil then
        AttackCountUP(1)
        UpdateArg:SetLU32("WAIT_TIME", 500)
        Command_Move_ToActor(AIActor, 750, TargetActor, math.random(-500, 500), math.random(-500, 500))
        Arcade:Print(string.format("\191\248\176\197\184\174 \192\204\181\191"))
      end
    end
  end
  Arcade:Print(string.format("u32AttackCount=%d \185\217\192\204\183\175\189\186\188\210\200\175\196\171\191\238\198\174=%d,\200\250\183\175\188\210\200\175\196\171\191\238\198\174=%d, \197\218\183\185\198\247\198\174 \196\171\191\238\198\174=%d", u32AttackCount, g_u32SpawnCountVirus - g_u32Virus, g_u32SpawnCountHealer - u32VirusHealer, g_u32TeleportCount))
end
function AttackCountUP(CountPoint)
  if CountPoint == -1 then
    UpdateArg:SetLU32("U32_1", 0)
  else
    local myCurrentCount = 0
    myCurrentCount = UpdateArg:GetLU32("U32_1")
    UpdateArg:SetLU32("U32_1", myCurrentCount + CountPoint)
  end
end
function DarkGasCountUP(GasPoint)
  if GasPoint == -1 then
    UpdateArg:SetLU32("U32_2", 0)
  else
    local myCurrentGasCount = 0
    myCurrentGasCount = UpdateArg:GetLU32("U32_2")
    UpdateArg:SetLU32("U32_2", myCurrentGasCount + GasPoint)
  end
end
function SpawnCountUP(SpawnKind, SpawnPoint)
  if SpawnKind == 1 then
    if SpawnPoint == -1 then
      UpdateArg:SetLU32("U32_3", 0)
    else
      local myCurrentSpawnPoint = 0
      myCurrentSpawnPoint = UpdateArg:GetLU32("U32_3")
      UpdateArg:SetLU32("U32_3", myCurrentSpawnPoint + SpawnPoint)
    end
  elseif SpawnKind == 2 then
    if SpawnPoint == -1 then
      UpdateArg:SetLU32("U32_4", 0)
    else
      local myCurrentSpawnPoint = 0
      myCurrentSpawnPoint = UpdateArg:GetLU32("U32_4")
      UpdateArg:SetLU32("U32_4", myCurrentSpawnPoint + SpawnPoint)
    end
  end
end
function TeleportCount(TeleportCount)
  if TeleportCount == -1 then
    UpdateArg:SetLU32("U32_5", 0)
  else
    local myTeleportCount = 0
    myTeleportCount = UpdateArg:GetLU32("U32_5")
    UpdateArg:SetLU32("U32_5", myTeleportCount + TeleportCount)
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
