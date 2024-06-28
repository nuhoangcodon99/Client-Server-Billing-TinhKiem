--Phø bän Tàng Kinh Các
--NPC Thiªu Lâm Vân Du Tång Nhân
--Author: Hoàng Steven

--************************--
x910122_g_ScriptId=910122												
x910122_g_Event_ScriptId=910120												--Script event
--************************--
x910122_g_Introduce="A di ðà ph§t! Không biªt t× ðâu xu¤t hi®n tên ác tång #GMông Diên#W khiêu chiªn #GThiªu Lâm Tñ#W hòng ðoÕt bäo v§t c¤t giæ trong #GTàng Kinh Các#W. Các v¸ anh hùng häo hán, các v¸ hãy giúp #GThiªu Lâm#W vßþt qua kiªp nÕn này. Xin ða tÕ các v¸ nhi«u!"
--************************--

--*****************************--
--*     On Default Event      *--
--*****************************--
function x910122_OnDefaultEvent(sceneId,selfId,targetId)

	--************************--
	BeginEvent(sceneId)
		AddText(sceneId,x910122_g_Introduce)
		CallScriptFunction(x910122_g_Event_ScriptId,"OnEnumerate",sceneId,selfId,targetId)
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,x910122_g_ScriptId)
	--************************--
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x910122_OnEventRequest(sceneId,selfId,targetId,eventId)

	if eventId==x910122_g_Event_ScriptId then
		CallScriptFunction(eventId,"OnDefaultEvent",sceneId,selfId,targetId)
		return
	end
	
end