--����NPC
--�粨��
--һ��

--**********************************
--�¼��������
--**********************************
function x001019_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Mu�n ��nh nhau kh�ng? B�n kia c� L�i ��i, ch�ng ta th� �u 1 tr�n. Sao? Kh�ng d�m �?")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
