--����NPC
--Ѿ��
--��ͨ

--**********************************
--�¼��������
--**********************************
function x002047_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Ta l� a ho�n")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
