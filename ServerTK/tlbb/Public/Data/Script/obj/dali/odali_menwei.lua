--����NPC
--����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x002022_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  B�o v� th�nh ��i L� l� ch�c tr�ch c�a ta!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
