--苏州NPC
--柳月虹
--一般
x001025_g_ScriptId = 1025

x001025_g_ControlScript = 808071


--**********************************
--事件交互入口
--**********************************
function x001025_OnDefaultEvent( sceneId, selfId,targetId )

	BeginEvent(sceneId)
		AddText(sceneId,"  B 馥u t� 疴y, ch鄋g ch� 疬㧟 y陁 m靚h ta, th呓ng m靚h ta, kh鬾g 疬㧟 d痠 l譨 ta, ph鋓 l鄊 h猼 nh鎛g vi甤 ta mu痭 nh�")
		CallScriptFunction( x001025_g_ControlScript, "OnEnumerate",sceneId, selfId, targetId )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end


function x001025_OnEventRequest( sceneId, selfId, targetId, eventId )
  
	if eventId == x001025_g_ControlScript then
		CallScriptFunction( x001025_g_ControlScript, "OnDefaultEvent",sceneId, selfId, targetId )
		return
	end

end
