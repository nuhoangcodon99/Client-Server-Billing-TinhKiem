--����NPC
--�ҳ�
--��ͨ

--**********************************
--�¼��������
--**********************************
function x004005_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Sao l�m quan qu�n t�i th� nh�, ta kh�ng d�m ra c߾p � n�a.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
