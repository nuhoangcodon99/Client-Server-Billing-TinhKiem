--NPC
--����


--**********************************
--�¼��������
--**********************************
function x014011_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  #{MenpaiInfo_008}")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
