--����NPC
--��ͨ����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x013032_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta l� � t� ph�i Thi�n Long")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
