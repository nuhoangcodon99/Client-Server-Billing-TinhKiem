--����NPC
--л��
--һ��

--**********************************
--�¼��������
--**********************************
function x001027_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  C�u ch�u th߽ng h�i s�p l�p t�c ch�nh th�c m� h�ng")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
