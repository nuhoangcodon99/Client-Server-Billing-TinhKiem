--����NPC
--�ڿ���
--��ͨ

--**********************************
--�¼��������
--**********************************
function x000041_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Kh�ng kh� � th�nh L�c D߽ng, �c h�n nhi�u so v�i kh�ng kh� th�nh La Ta. Th�c kh�ng quen l�m...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
