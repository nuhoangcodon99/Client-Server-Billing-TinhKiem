--����NPC
--������
--��ͨ

--**********************************
--�¼��������
--**********************************
function x000032_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Th�i h�u sai ch�ng t�i �n T�ng tri�u r�ng s�c thi �u t�c c�u")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
