--洛阳NPC

--北条司

--普通

x000047_g_ScriptId=000047

--**********************************
--事件交互入口
--**********************************
function x000047_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Nghe n骾 qu痗 l� m� n呔c Cao Ly c痭g d鈔g 疸 b� m, c� th kh鬾g?")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
