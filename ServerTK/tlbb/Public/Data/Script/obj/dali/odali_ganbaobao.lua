--大理NPC
--甘宝宝
--普通

--**********************************
--事件交互入口
--**********************************
function x002085_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  H�, ai l鄊 nh鎛g vi甤 v� l読 nh� v, nh鎛g k� v� l読 nh� v, kh鬾g c ta ph鋓 ch豬")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
