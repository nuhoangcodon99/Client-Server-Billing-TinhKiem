--天山NPC
--普通弟子
--普通

--**********************************
--事件交互入口
--**********************************
function x017031_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta l� 甬 t� c黙 ph醝 Thi阯 S絥")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
