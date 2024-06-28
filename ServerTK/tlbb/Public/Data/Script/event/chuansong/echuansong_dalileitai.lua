-- ´óÀíÀÞÌ¨¸±±¾´«ËÍµã

x400917_g_ScriptId = 400917
x400917_g_ChallengeScriptId = 806014

x400917_left=8.0000
x400917_top=32.0000
x400917_right=12.0000
x400917_bottom=36.0000

-- Íæ¼Ò½øÈë´«ËÍµã
function x400917_OnEnterArea( sceneId, selfId )

--hd add
	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId, x400917_g_ScriptId);
		UICommand_AddString(sceneId, "GotoTKLMG");
		UICommand_AddString(sceneId, "Xác nh§n r¶i khöi lôi ðài ? Khi r¶i khöi lôi ðài s¨ không th¬ quay lÕi ðßþc næa ?");
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 24)
	
--end hd add
	--CallScriptFunction(x400917_g_ChallengeScriptId, "LeaveScene", sceneId, selfId )
end

-- Íæ¼ÒÍ£ÁôÔÚ´«ËÍµã
function x400917_OnTimer( sceneId, selfId )
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5ÃëºóÈÔÎ´´«ËÍ
	if StandingTime >= 5000 then
		x400917_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
	--return
end

-- Íæ¼ÒÀë¿ª´«ËÍµã
function x400917_OnLeaveArea( sceneId, selfId )
	return
end

--hd add

function x400917_GotoTKLMG( sceneId, selfId, targetId )	--µã»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	
	
	
	local targetX, targetZ = GetWorldPos(sceneId, selfId)
	
	if 	targetX < x400917_left or
			targetX > x400917_right or
			targetZ < x400917_top  or
			targetZ > x400917_bottom   then
		
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ ðã r¶i khöi khu vñc d¸ch chuy¬n")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
			
	end
	
	CallScriptFunction(x400917_g_ChallengeScriptId, "LeaveScene", sceneId, selfId )
		
end


