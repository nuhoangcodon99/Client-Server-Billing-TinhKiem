--����NPC
--ҵ��
--��ͨ

--**********************************
--�¼��������
--**********************************
function x000095_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Th� ch�, cu�i c�ng c�c h� �� t�i. S� ph� �ang ��i c�c h�")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
