--Phø bän Binh Thánh KÏ Tr§n
--NPC Lâu Lan - Cao Dß½ng
--Code by Sói

--************************--
x910200_g_ScriptId=910200												
x910200_g_Event_ScriptId=910201												--Script event
--************************--
x910200_g_Introduce="Liêu Hoàng s¡c phong #GGia Lu§t Liên Thành#W thø tß¾ng ¤n #GChinh nam tiên phong#W, cùng v¾i 4 tên thü v® cùng xu¤t hi®n uy hiªp nhà T¯ng. Trß¾c tình hình này, T¯ng tri«u cØ quan thßþng thß #GCao Dß½ng#W c¥u cÑu sñ giúp ðÞ cüa võ lâm qu¥n hùng."
--************************--

--*****************************--
--*     On Default Event      *--
--*****************************--
function x910200_OnDefaultEvent(sceneId,selfId,targetId)

	--************************--
	BeginEvent(sceneId)
		AddText(sceneId,x910200_g_Introduce)
		CallScriptFunction(x910200_g_Event_ScriptId,"OnEnumerate",sceneId,selfId,targetId)
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,x910200_g_ScriptId)
	--************************--
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x910200_OnEventRequest(sceneId,selfId,targetId,eventId)

	if eventId==x910200_g_Event_ScriptId then
		CallScriptFunction(eventId,"OnDefaultEvent",sceneId,selfId,targetId)
		return
	end
	
end