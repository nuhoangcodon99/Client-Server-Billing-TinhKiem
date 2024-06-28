--Phø bän TÑ Tuy®t Trang
--Phan Tinh Tinh
--Author: Hoàng Steven

--************************--
x910177_g_ScriptId=910177												
x910177_g_Event_ScriptId=910170												--Script event
--************************--
x910177_g_Introduce="#{SJZ_100129_02}"
--************************--

--*****************************--
--*     On Default Event      *--
--*****************************--
function x910177_OnDefaultEvent(sceneId,selfId,targetId)

	--************************--
	BeginEvent(sceneId)
		AddText(sceneId,x910177_g_Introduce)
		CallScriptFunction(x910177_g_Event_ScriptId,"OnEnumerate",sceneId,selfId,targetId)
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,x910177_g_ScriptId)
	--************************--
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x910177_OnEventRequest(sceneId,selfId,targetId,eventId)

	if eventId==x910177_g_Event_ScriptId then
		CallScriptFunction(eventId,"OnDefaultEvent",sceneId,selfId,targetId)
		return
	end
	
end