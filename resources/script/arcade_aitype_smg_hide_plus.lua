require("Resources/Script/Arcade_Util.lua")
function Init()
end
function Update()
  u32DiffID = Host:GetDifficulty()
  AIActor = UpdateArg:GetAIActor("AI_ACTOR")
  UpdateArg:SetLU32("WAIT_TIME", 700 + math.random(0, 300))
  g_TargetActor = Util:GetActorByMinDist(true, AIActor, 0, 30000, false, true)
  g_u32DefenceCount = UpdateArg:GetLU32("U32_1")
  if g_TargetActor ~= nil then
    if u32DiffID == 1 then
      AimRate = math.min(300, Util:GetDist(AIActor, g_TargetActor) / 6)
      AimRateA = math.min(300, Util:GetDist(AIActor, g_TargetActor) / 10)
    elseif u32DiffID == 2 then
      AimRate = math.min(100, Util:GetDist(AIActor, g_TargetActor) / 6)
      AimRateA = math.min(100, Util:GetDist(AIActor, g_TargetActor) / 10)
    elseif u32DiffID == 3 then
      AimRate = 50
      AimRateA = 0
    end
    if Util:GetDist(AIActor, g_TargetActor) > 5000 then
      Arcade:Print(string.format("\184\214\184\174\192\214\180\194 \180\235\187\243 \194\209\177\226"))
      UpdateArg:SetLU32("WAIT_TIME", 700 + math.random(0, 300))
      Command_MovingAttack_ToActor(AIActor, 1750, g_TargetActor, "AATYPE_1", true, math.random(-500, 500), math.random(-500, 500), AimRate)
    elseif Util:GetDist(AIActor, g_TargetActor) > 2000 and Util:GetDist(AIActor, g_TargetActor) <= 5000 then
      if Util:IsVisible(AIActor, g_TargetActor) == true then
        Arcade:Print(string.format("\180\235\187\243\192\204 \186\184\192\204\177\226 \182\167\185\174\191\161 \189\240\180\217"))
        UpdateArg:SetLU32("WAIT_TIME", 700 + math.random(0, 300))
        Command_Attack(AIActor, g_TargetActor, "AATYPE_1", true, AimRateA)
      elseif Util:IsVisible(AIActor, g_TargetActor) == false then
        Arcade:Print(string.format("\180\235\187\243\192\204 \186\184\192\204\193\246 \190\202\190\198\188\173 \192\204\181\191\199\207\184\233\188\173 \189\240\180\217"))
        UpdateArg:SetLU32("WAIT_TIME", 700 + math.random(0, 300))
        Command_MovingAttack_ToActor(AIActor, 1750, g_TargetActor, "AATYPE_1", true, math.random(-500, 500), math.random(-500, 500), AimRate)
      end
    elseif Util:GetDist(AIActor, g_TargetActor) > 1000 and Util:GetDist(AIActor, g_TargetActor) <= 2000 then
      if 100 < Util:GetDistByDefenseArea(AIActor) and g_u32DefenceCount == 0 then
        Arcade:Print(string.format("\180\235\187\243\176\250\192\199 \176\197\184\174\176\161 \176\161\177\238\191\246 \193\174\188\173 \181\240\198\230\189\186 \198\247\193\246\188\199\192\184\183\206 \192\204\181\191"))
        UpdateArg:SetLU32("WAIT_TIME", 700 + math.random(0, 300))
        Command_Move_ToDefenseArea(AIActor, 1750, 0, 0)
      elseif 100 > Util:GetDistByDefenseArea(AIActor) then
        if Util:IsVisible(AIActor, g_TargetActor) == true then
          Arcade:Print(string.format("\181\240\198\230\189\186\198\247\193\246\188\199\176\250 \176\161\177\245\193\246\184\184 \180\235\187\243\192\204 \186\184\192\204\177\226 \182\167\185\174\191\161 \189\240\180\217"))
          UpdateArg:SetLU32("WAIT_TIME", 700 + math.random(0, 300))
          Command_Attack(AIActor, g_TargetActor, "AATYPE_1", true, AimRateA)
        elseif Util:IsVisible(AIActor, g_TargetActor) == false then
          Arcade:Print(string.format("\188\251\190\250\193\246\184\184 \180\235\187\243\192\204 \186\184\192\204\193\246 \190\202\190\198\188\173 \190\238\197\195\198\247\193\246\188\199\192\184\183\206 \192\204\181\191"))
          UpdateArg:SetLU32("U32_1", g_u32DefenceCount + 1)
          UpdateArg:SetLU32("WAIT_TIME", 700 + math.random(0, 300))
          Command_Move_ToAttackArea(AIActor, 1750, 0, 0)
        end
      elseif g_u32DefenceCount >= 1 then
        if 100 > Util:GetDistByAttackArea(AIActor) then
          Arcade:Print(string.format("\190\238\197\195\192\167\196\161\192\204\177\226 \182\167\185\174\191\161 \189\240\180\217"))
          UpdateArg:SetLU32("U32_1", 0)
          UpdateArg:SetLU32("WAIT_TIME", 700 + math.random(0, 300))
          Command_Attack(AIActor, g_TargetActor, "AATYPE_1", true, AimRateA)
        elseif 100 < Util:GetDistByAttackArea(AIActor) then
          Arcade:Print(string.format("\190\238\197\195\192\167\196\161\176\161 \190\198\180\207\182\243 \176\232\188\211 \192\204\181\191"))
          UpdateArg:SetLU32("WAIT_TIME", 700 + math.random(0, 300))
          Command_Move_ToAttackArea(AIActor, 1750, 0, 0)
        end
      end
    elseif Util:GetDist(AIActor, g_TargetActor) <= 1000 then
      Arcade:Print(string.format("\180\235\187\243\176\250\192\199 \176\197\184\174\176\161 \193\246\179\170\196\161\176\212 \176\161\177\238\191\246\188\173 \180\235\187\243\176\250 \184\214\190\238\193\246\184\233\188\173 \176\248\176\221"))
      UpdateArg:SetLU32("WAIT_TIME", 700 + math.random(0, 300))
      Command_BackMovingAttack_ToActor(AIActor, 1750, g_TargetActor, "AATYPE_1", true, 1000, math.random(-500, 500), math.random(-500, 500), AimRate)
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
