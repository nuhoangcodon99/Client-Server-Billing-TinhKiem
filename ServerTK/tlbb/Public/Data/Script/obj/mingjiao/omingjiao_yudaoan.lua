--����NPC
--�����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x011009_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Th�nh n� ��i nh�n g�n ��y kh�ng ���c vui")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
