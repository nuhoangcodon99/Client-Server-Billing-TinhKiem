--西湖NPC
--士兵
--普通

--**********************************
--事件交互入口
--**********************************
function x030006_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Tr呓ng t呔ng qu鈔 d鴑g binh nh� th, th� l馽 c黙 Th鼀 Qu� c鄋g l鷆 c鄋g y猽 餴")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
