-- 大理擂台副本传送点

x400917_g_ScriptId = 400917
x400917_g_ChallengeScriptId = 806014

x400917_left=8.0000
x400917_top=32.0000
x400917_right=12.0000
x400917_bottom=36.0000

-- 玩家进入传送点
function x400917_OnEnterArea( sceneId, selfId )

--hd add
	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId, x400917_g_ScriptId);
		UICommand_AddString(sceneId, "GotoTKLMG");
		UICommand_AddString(sceneId, "X醕 nh r秈 kh鰅 l鬷 疣i ? Khi r秈 kh鰅 l鬷 疣i s� kh鬾g th� quay l読 疬㧟 n鎍 ?");
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 24)
	
--end hd add
	--CallScriptFunction(x400917_g_ChallengeScriptId, "LeaveScene", sceneId, selfId )
end

-- 玩家停留在传送点
function x400917_OnTimer( sceneId, selfId )
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5秒后仍未传送
	if StandingTime >= 5000 then
		x400917_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
	--return
end

-- 玩家离开传送点
function x400917_OnLeaveArea( sceneId, selfId )
	return
end

--hd add

function x400917_GotoTKLMG( sceneId, selfId, targetId )	--点击该任务后执行此脚本
	
	
	
	local targetX, targetZ = GetWorldPos(sceneId, selfId)
	
	if 	targetX < x400917_left or
			targetX > x400917_right or
			targetZ < x400917_top  or
			targetZ > x400917_bottom   then
		
		BeginEvent(sceneId)
			AddText(sceneId,"C醕 h� 疸 r秈 kh鰅 khu v馽 d竎h chuy琻")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
			
	end
	
	CallScriptFunction(x400917_g_ChallengeScriptId, "LeaveScene", sceneId, selfId )
		
end


