--ؤ��NPC
--��ͨ����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x010033_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta l� � t� C�i Bang")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
