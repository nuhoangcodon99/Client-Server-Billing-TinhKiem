--����NPC
--��ͨ����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x016033_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta l� � t� Tinh T�c !!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
