--ʯ��NPC
--����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x026008_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Vi�n Nguy�t Th�n, trong th�n kh�ng c�n m�y nh� v�n l� ho�n to�n �o�n vi�n.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
