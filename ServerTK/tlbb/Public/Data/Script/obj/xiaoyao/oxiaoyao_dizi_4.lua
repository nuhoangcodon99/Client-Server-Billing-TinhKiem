--��ңNPC
--��ͨ����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x014033_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta l� � t� Ti�u Dao !!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
