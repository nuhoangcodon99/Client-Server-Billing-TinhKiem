--ʯ��NPC
--������
--��ͨ

--**********************************
--�¼��������
--**********************************
function x026002_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"L߽ng A B� ~~")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
