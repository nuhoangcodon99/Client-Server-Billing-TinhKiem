--ؤ��NPC
--ȫ����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x010004_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Th� l�n c�a ph� bang ch� nh�t �nh ph�i b�o, ai ph�n �i k� �� ch�nh l� �ng b�n c�a l� gi�t ch�t M� ph� bang ch�")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
