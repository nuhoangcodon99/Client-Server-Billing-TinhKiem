--����NPC
--������
--��ͨ

--**********************************
--�¼��������
--**********************************
function x000014_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  G�n ��y c� k� quan thi�n v�n l� Th�y tinh l�ng nh�t, r�nh r�i h�y �i xem xem!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
