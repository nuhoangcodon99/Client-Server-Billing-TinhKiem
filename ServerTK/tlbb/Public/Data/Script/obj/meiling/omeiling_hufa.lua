--÷��NPC
--����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x033008_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"бi �i r�i! бi �i r�i! Ch�ng ta s�p l�m ch� r�i!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
