--�䵱NPC
--��ͨ����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x012012_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"< H�c minh c�u cao, thanh v�n vu thi�n>")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
