--��ɽNPC
--��ͨ����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x017031_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta l� � t� c�a ph�i Thi�n S�n")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
