--����NPC
--�˰ٴ�
--һ��

--**********************************
--�¼��������
--**********************************
function x001016_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  C�ng t� c� ch� th�i � �u c�c gi�ng l�o gia, ch� c� tu�i t�c ch�a t�i, ch� ��i tr߷ng th�nh")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
