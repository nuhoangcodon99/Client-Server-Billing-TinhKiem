--����NPC
--�ܰ���
--��ͨ

--**********************************
--�¼��������
--**********************************
function x000013_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Nghe �n ti�u th� S� S� �� b� ��a v�o trong �oan v߽ng ph�, th�c kh�ng d�m tin �� l� s� th�c")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
