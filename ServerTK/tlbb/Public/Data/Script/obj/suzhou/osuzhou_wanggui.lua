--����NPC
--����
--һ��

--**********************************
--�¼��������
--**********************************
function x001008_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  S� ��i nh�n, t� l� pha ch� l�n n�y kh�ng sai ch�?")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
