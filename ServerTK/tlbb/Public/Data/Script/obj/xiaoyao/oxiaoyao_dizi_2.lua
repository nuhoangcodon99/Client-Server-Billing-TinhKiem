--逍遥NPC
--普通弟子
--普通

--**********************************
--事件交互入口
--**********************************
function x014031_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta l� 甬 t� Ti陁 Dao !!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
