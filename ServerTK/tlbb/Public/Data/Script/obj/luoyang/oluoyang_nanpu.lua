--����NPC
--����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x000037_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  L�o gia �ang ngh� ng�i, kh�ng ai ���c qu�y r�y")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
