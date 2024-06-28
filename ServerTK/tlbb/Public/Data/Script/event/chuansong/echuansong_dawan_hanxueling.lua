
x400944_g_ScriptId = 400944


x400944_left 	=16.0000
x400944_right	=21.0000

x400944_top  	=207.0000
x400944_bottom=211.0000

--��ҽ���һ�� area ʱ����
function x400944_OnEnterArea( sceneId, selfId )

	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId, x400944_g_ScriptId);
		UICommand_AddString(sceneId, "GotoHanXueLing");
		UICommand_AddString(sceneId, "H�n Huy�t L�nh l� n�i nguy hi�m tr�ng tr�ng, xin h�y ch� � �n an to�n, c�c h� mu�n v�o ?");
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 24)

	-- CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 432,90,86)
end

--�����һ�� area ����һ��ʱ��û����ʱ����
function x400944_OnTimer( sceneId, selfId )
	-- ���룬������� area ͣ�������
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5�����δ����
	if StandingTime >= 5000 then
		x400944_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
end

--����뿪һ�� area ʱ����
function x400944_OnLeaveArea( sceneId, selfId )
end

--**********************************
--������ں���
--**********************************
function x400944_GotoHanXueLing( sceneId, selfId, targetId )	--����������ִ�д˽ű�
	
	-- �������ǲ��ǻ��������Χ��
	if sceneId ~= 431   then
		--���Ѿ����ڿɴ�������
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� �� r�i kh�i khu v�c d�ch chuy�n")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	local targetX, targetZ = GetWorldPos(sceneId, selfId)
	
	if 	targetX < x400944_left or
			targetX > x400944_right or
			targetZ < x400944_top  or
			targetZ > x400944_bottom   then
		
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� �� r�i kh�i khu v�c d�ch chuy�n")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
			
	end
	
	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 432,90,86)
		
end
