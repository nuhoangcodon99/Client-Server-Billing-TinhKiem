--����NPC
--��ͨ����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x016031_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta l� � t� ph�i Tinh T�c !!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
