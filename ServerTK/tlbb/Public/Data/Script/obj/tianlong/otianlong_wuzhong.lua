--天龙NPC
--伍忠
--普通

--**********************************
--事件交互入口
--**********************************
function x013009_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  H� quan Ng� Trung ph鴑g th醤h ch� t緄 v an l鉶 ph� ho鄋g")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
