--����NPC
--������
--��ͨ

--**********************************
--�¼��������
--**********************************
function x023002_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"A V�n g�n ��y ch�ng hi�u sao, kh�ng �n kh�ng ng�, su�t ng�y ng� ng� ng�n ng�n...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
