-- ������̨�������͵�

x400917_g_ScriptId = 400917
x400917_g_ChallengeScriptId = 806014

x400917_left=8.0000
x400917_top=32.0000
x400917_right=12.0000
x400917_bottom=36.0000

-- ��ҽ��봫�͵�
function x400917_OnEnterArea( sceneId, selfId )

--hd add
	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId, x400917_g_ScriptId);
		UICommand_AddString(sceneId, "GotoTKLMG");
		UICommand_AddString(sceneId, "X�c nh�n r�i kh�i l�i ��i ? Khi r�i kh�i l�i ��i s� kh�ng th� quay l�i ���c n�a ?");
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 24)
	
--end hd add
	--CallScriptFunction(x400917_g_ChallengeScriptId, "LeaveScene", sceneId, selfId )
end

-- ���ͣ���ڴ��͵�
function x400917_OnTimer( sceneId, selfId )
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5�����δ����
	if StandingTime >= 5000 then
		x400917_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
	--return
end

-- ����뿪���͵�
function x400917_OnLeaveArea( sceneId, selfId )
	return
end

--hd add

function x400917_GotoTKLMG( sceneId, selfId, targetId )	--����������ִ�д˽ű�
	
	
	
	local targetX, targetZ = GetWorldPos(sceneId, selfId)
	
	if 	targetX < x400917_left or
			targetX > x400917_right or
			targetZ < x400917_top  or
			targetZ > x400917_bottom   then
		
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� �� r�i kh�i khu v�c d�ch chuy�n")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
			
	end
	
	CallScriptFunction(x400917_g_ChallengeScriptId, "LeaveScene", sceneId, selfId )
		
end


