--����NPC
--�ʱ���
--��ͨ

--**********************************
--�¼��������
--**********************************
function x002085_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  H�, ai l�m nh�ng vi�c v� l�i nh� v�y, nh�ng k� v� l�i nh� v�y, kh�ng c�n ta ph�i ch�i")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
