--星宿NPC
--普通弟子
--普通

--**********************************
--事件交互入口
--**********************************
function x016032_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta l� 甬 t� ph醝 Tinh T鷆 !!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
