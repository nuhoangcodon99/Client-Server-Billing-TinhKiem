--����NPC
--��ī
--һ��

--**********************************
--�¼��������
--**********************************
function x001034_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  C�ng t� c�a ch�ng ta t�i cao, nh�t �nh tr�ng")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
