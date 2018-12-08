require("Resources/Script/Arcade_Util.lua")
gMoveCount = 0
function Init()
end
function Update()
  AIActor = UpdateArg:GetAIActor("AI_ACTOR")
  PhaseCheck = HostArg:GetLU32("PHASE_ID")
  g_StageCheck = HostArg:GetLU32("NOW_STAGE_ID")
  UpdateArg:SetLU32("WAIT_TIME", 750)
  if g_StageCheck == 6 then
  elseif g_StageCheck == 7 then
    if PhaseCheck == 1 then
      Command_Move_ToNode(AIActor, 1000, "arcade_spawn_m01", 0, 0)
    elseif PhaseCheck == 2 then
      Command_Move_ToNode(AIActor, 1000, "arcade_spawn_m02", 0, 0)
    elseif PhaseCheck >= 3 and PhaseCheck <= 8 then
      Command_Move_ToNode(AIActor, 1000, "arcade_spawn_m03", 0, 0)
    elseif PhaseCheck == 9 then
      Command_Move_ToNode(AIActor, 1000, "arcade_spawn_m04", 0, 0)
    elseif PhaseCheck >= 10 and PhaseCheck <= 15 then
      Command_Move_ToNode(AIActor, 1000, "arcade_spawn_m05", 0, 0)
    elseif PhaseCheck == 16 then
      Command_Move_ToNode(AIActor, 1000, "arcade_spawn_m06", 0, 0)
    elseif PhaseCheck == 17 then
      Command_Move_ToNode(AIActor, 1000, "arcade_spawn_m07", 0, 0)
    elseif PhaseCheck >= 18 and PhaseCheck <= 23 then
      Command_Move_ToNode(AIActor, 1000, "arcade_spawn_m08", 0, 0)
    elseif PhaseCheck == 24 then
      Command_Move_ToNode(AIActor, 1000, "arcade_spawn_m09", 0, 0)
    elseif PhaseCheck == 25 then
      Command_Move_ToNode(AIActor, 1000, "arcade_spawn_m10", 0, 0)
    elseif PhaseCheck >= 26 and PhaseCheck <= 30 then
      Command_Move_ToNode(AIActor, 1000, "arcade_spawn_m11", 0, 0)
    elseif PhaseCheck == 31 then
      Command_Move_ToNode(AIActor, 1000, "arcade_spawn_m12", 0, 0)
    elseif PhaseCheck == 32 then
      Command_Move_ToNode(AIActor, 1000, "arcade_spawn_m13", 0, 0)
    elseif PhaseCheck >= 33 and PhaseCheck <= 37 then
      Command_Move_ToNode(AIActor, 1000, "arcade_spawn_m14", 0, 0)
    elseif PhaseCheck == 38 then
      Command_Move_ToNode(AIActor, 1000, "arcade_spawn_m15", 0, 0)
    elseif PhaseCheck >= 39 and PhaseCheck <= 99 then
      Command_Move_ToNode(AIActor, 1000, "arcade_spawn_m15", 0, 0)
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
