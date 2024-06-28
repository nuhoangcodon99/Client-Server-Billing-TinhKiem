--NPC chiªn trß¶ng

--************************--
x910071_g_ScriptId = 910071
x910071_g_eventlist = {910072}
--************************--

--*****************************--
--*     On Default Event      *--
--*****************************--
function x910071_OnDefaultEvent(sceneId,selfId,targetId)

	BeginEvent(sceneId)
		AddText(sceneId,"Th¶i gian g¥n ðây, hai nß¾c #GT¯ng Liêu#W chiªn tranh liên miên, khiªn bá tính l¥m than, cuµc s¯ng tüi cñc nay càng khó khån h½n.")
		AddText(sceneId,"V¾i b±n ph§n là nhân sÛ võ lâm giang h°, các v¸ anh hùng hãy tham gia tr§n chiªn này, ðÑng v« bên công lý, d©p ð¸ch càng nhanh thì bách tính càng ðÞ kh±.")
		AddText(sceneId,"Chiªn trß¶ng #GT¯ng Liêu#W b¡t ð¥u vào m²i #G19 gi¶#W m²i ngày. Các v¸ chú ý th¶i gian tham gia!")
		for i,eventId in x910071_g_eventlist do
			CallScriptFunction(eventId,"OnEnumerate",sceneId,selfId,targetId)
		end
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x910071_OnEventRequest(sceneId,selfId,targetId,eventId)

	for i,findId in x910071_g_eventlist do
		if eventId==findId then
			CallScriptFunction(eventId,"OnDefaultEvent",sceneId,selfId,targetId)
			return
		end
	end
	
end
