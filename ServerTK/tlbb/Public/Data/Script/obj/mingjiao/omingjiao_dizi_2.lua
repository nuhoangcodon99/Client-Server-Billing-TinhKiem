--����NPC
--��ͨ����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x011031_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta l� � t� Minh Gi�o")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
