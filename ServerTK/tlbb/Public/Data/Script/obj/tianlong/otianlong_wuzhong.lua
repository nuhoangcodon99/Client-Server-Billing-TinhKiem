--����NPC
--����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x013009_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  H� quan Ng� Trung ph�ng th�nh ch� t�i v�n an l�o ph� ho�ng")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
