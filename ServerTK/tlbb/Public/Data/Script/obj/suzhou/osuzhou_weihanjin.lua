--����NPC
--κ����
--һ��

--**********************************
--�¼��������
--**********************************
function x001013_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  T� h�c s�, ti�ng c�m kh�ng � ��n, c�ng kh�ng � tr�n ng�n tay, m� � trong t�m")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
