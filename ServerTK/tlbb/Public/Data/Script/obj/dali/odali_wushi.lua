--����NPC
--��ʿ
--��ͨ

--**********************************
--�¼��������
--**********************************
function x002065_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Ai mu�n t� th� v� ngh�, xin m�i l�n v� ��i")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
