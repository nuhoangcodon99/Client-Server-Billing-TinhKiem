--����NPC
--��ͨ����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x015032_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"<Nh� hoa khoe s�c, d�u d�ng quy�n r�>")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
