--����NPC
--��ɽ
--һ��

--**********************************
--�¼��������
--**********************************
function x001023_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Ha ha, ng߶i � cu�i c�ng l� T�n S�n, hi�n lang c�n ��ng sau T�n S�n!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
