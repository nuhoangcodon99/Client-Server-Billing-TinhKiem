--����NPC
--��ͨ����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x009031_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta l� � t� ph�i Thi�u L�m")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
