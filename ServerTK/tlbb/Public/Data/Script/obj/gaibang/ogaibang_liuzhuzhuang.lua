--ؤ��NPC
--����ׯ
--��ͨ

--**********************************
--�¼��������
--**********************************
function x010003_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"To�n �� ch� th�ng ch�c trong bang kh� nhanh, ta mu�n h�c t�p �ng �y!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
