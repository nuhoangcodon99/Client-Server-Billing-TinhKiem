--����NPC
--��ͨ����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x015031_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta l� � t� ph�i Nga My")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
