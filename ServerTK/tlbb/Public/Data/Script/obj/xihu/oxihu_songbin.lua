--����NPC
--ʿ��
--��ͨ

--**********************************
--�¼��������
--**********************************
function x030006_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Tr߽ng t߾ng qu�n d�ng binh nh� th�n, th� l�c c�a Th�y Qu� c�ng l�c c�ng y�u �i")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
