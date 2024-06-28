--������

--�����
x009015_g_MissionId = 1060

x009015_g_scriptId=009015

function x009015_OnDefaultEvent( sceneId, selfId, targetId )	--����������ִ�д˽ű�
	misIndex = GetMissionIndexByID(sceneId,selfId,x009015_g_MissionId)
	BeginEvent(sceneId)
		AddText(sceneId,"  G�n ��y lu�n c�m th�y kh� l�c kh�ng ��")
		if	IsHaveMission(sceneId,selfId,x009015_g_MissionId) > 0	 then
			if	GetMissionParam( sceneId, selfId, misIndex,0) < 1  and  GetMissionParam( sceneId, selfId, misIndex,3) == 1 then
				AddNumText(sceneId,x009015_g_scriptId,"Cho ng߽i ��i L�c x� l�",8,0)
			end
		end
	EndEvent( )
	DispatchEventList(sceneId,selfId,targetId)
end

function x009015_OnEventRequest( sceneId, selfId, targetId, eventId )
	misIndex = GetMissionIndexByID(sceneId,selfId,x009015_g_MissionId)
	if	GetNumText()==0	then
		if	HaveItemInBag (  sceneId, selfId, 30202001)	 > 0  then
			DelItem (  sceneId, selfId, 30202001, 1)	
			SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
			BeginEvent(sceneId)
				AddText(sceneId,"C�m t� ��i L�c x� l� c�a c�c h�")
			EndEvent( )
			DispatchEventList(sceneId,selfId,targetId)
			BeginEvent(sceneId)
				AddText(sceneId,"Ho�n t�t nhi�m v�!")
			EndEvent( )
			DispatchMissionTips(sceneId,selfId)
		else
			BeginEvent(sceneId)
				AddText(sceneId,"��i L�c x� l�? � ��u?")
			EndEvent( )
			DispatchEventList(sceneId,selfId,targetId)
		end
	end
end
