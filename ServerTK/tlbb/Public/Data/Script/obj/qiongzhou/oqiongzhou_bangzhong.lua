--����NPC
--����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x035005_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Bang ch� ch�ng ta v� c�ng c�i th�, thi�n h� v� �ch, v�n th�nh v� ��c!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
