--����NPC
--��ͨ����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x015033_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"<Ti�ng g�y ph�ng ho�ng vang th�u tr�i xanh>")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
