--逍遥NPC
--普通弟子
--普通

--**********************************
--事件交互入口
--**********************************
function x014030_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  N猽 c� v 皤 g�, xin c� 皙n g Tri kh醕h s� c黙 Ti陁 Dao")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
