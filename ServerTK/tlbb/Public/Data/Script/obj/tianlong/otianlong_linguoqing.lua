--����NPC
--�ֹ���
--��ͨ

--**********************************
--�¼��������
--**********************************
function x013008_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  H� qu�n L�m Qu�c Thanh ph�ng th�nh ch� t�i v�n an l�o ph� ho�ng")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
