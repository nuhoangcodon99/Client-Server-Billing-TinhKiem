--�䵱NPC
--������
--��ͨ

--**********************************
--�¼��������
--**********************************
function x012000_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"N�i V� �ang g�n ��y ��o gi�o ph�t tri�n h�ng th�nh, �� v��t qua Long H� S�n, tr� th�nh th� l�c ��o gi�o danh ti�ng nh�t Trung hoa")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
