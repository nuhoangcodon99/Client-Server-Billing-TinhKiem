--����NPC
--ʿ��
--��ͨ

--**********************************
--�¼��������
--**********************************
function x011010_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Quang Minh ��nh l� �t c�m. Kh�ng ���c ch�y lung tung! C�n th�n l�c �߶ng!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
