--����NPC
--��Զɽ
--��ͨ

--**********************************
--�¼��������
--**********************************
function x009006_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Kh�ng cho xem, ta nh�t �nh ph�i xem!")

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
