--ؤ��NPC
--��ͨ����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x010032_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta l� � t� C�i Bang")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
