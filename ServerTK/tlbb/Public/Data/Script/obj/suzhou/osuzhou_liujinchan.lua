--����NPC
--�����
--һ��

--**********************************
--�¼��������
--**********************************
function x001038_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  C� th� sinh Nhan Tra T�n �n t� T� Ch�u. Huynh �y r�t bu�n c߶i")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
