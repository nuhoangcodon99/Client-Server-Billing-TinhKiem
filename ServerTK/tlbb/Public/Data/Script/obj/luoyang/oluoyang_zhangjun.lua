--����NPC
--�ſ�
--��ͨ

--**********************************
--�¼��������
--**********************************
function x000098_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Nam nay, ��i T�ng ch�ng ta nh�t �nh v�n �o�t gi�i �u")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
