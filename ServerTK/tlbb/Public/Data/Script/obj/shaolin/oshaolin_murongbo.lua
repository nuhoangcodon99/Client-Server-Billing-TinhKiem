--����NPC
--Ľ�ݲ�
--��ͨ

--**********************************
--�¼��������
--**********************************
function x009007_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"A Di �� Ph�t, th� ch� t�i T�ng Kinh C�c n�y l�m g�? ")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
