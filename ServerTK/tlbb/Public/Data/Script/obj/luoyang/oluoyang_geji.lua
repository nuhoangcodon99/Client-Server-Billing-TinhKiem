--����NPC
--�輿
--��ͨ

--**********************************
--�¼��������
--**********************************
function x000045_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  T�i l� ti�u a ho�n, vi�c c�a ch� nh�n t�i kh�ng bi�t ���c")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
