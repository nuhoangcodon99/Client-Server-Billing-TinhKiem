--NPC
--傀儡


--**********************************
--事件交互入口
--**********************************
function x014011_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  #{MenpaiInfo_008}")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
