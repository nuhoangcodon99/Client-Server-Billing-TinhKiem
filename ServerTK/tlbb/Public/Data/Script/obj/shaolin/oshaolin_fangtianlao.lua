--������

--�����
x009016_g_MissionId = 1060

x009016_g_scriptId=009016

function x009016_OnDefaultEvent( sceneId, selfId, targetId )	--����������ִ�д˽ű�
	misIndex = GetMissionIndexByID(sceneId,selfId,x009016_g_MissionId)
	BeginEvent(sceneId)
		AddText(sceneId,"  G�n ��y to�n c�m th�y x߽ng c�t l�ng l�o")
		if	IsHaveMission(sceneId,selfId,x009016_g_MissionId) > 0	 then
			if	GetMissionParam( sceneId, selfId, misIndex,0) < 1  and  GetMissionParam( sceneId, selfId, misIndex,3) == 2 then
				AddNumText(sceneId,x009016_g_scriptId,"Cho ng߽i Tr�ng C�t x� l�",8,0)
			end
		end
	EndEvent( )
	DispatchEventList(sceneId,selfId,targetId)
end

function x009016_OnEventRequest( sceneId, selfId, targetId, eventId )
	misIndex = GetMissionIndexByID(sceneId,selfId,x009016_g_MissionId)
	if	GetNumText()==0	then
		if	HaveItemInBag (  sceneId, selfId, 30202022)	 > 0  then
			DelItem (  sceneId, selfId, 30202022, 1)	
			SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
			BeginEvent(sceneId)
				AddText(sceneId,"C�m t� Tr�ng C�t x� l� c�a c�c h�")
			EndEvent( )
			DispatchEventList(sceneId,selfId,targetId)
			BeginEvent(sceneId)
				AddText(sceneId,"Ho�n t�t nhi�m v�!")
			EndEvent( )
			DispatchMissionTips(sceneId,selfId)
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Tr�ng C�t x� l�? � ��u?")
			EndEvent( )
			DispatchEventList(sceneId,selfId,targetId)
		end
	end
end
