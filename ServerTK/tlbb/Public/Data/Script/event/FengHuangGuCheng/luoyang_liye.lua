--NPC tiªp dçn Phøng Hoàng C± Thành

--************************--
x930501_g_ScriptId = 930501
x930501_g_eventlist = {930500,930510}
--************************--

--*****************************--
--*     On Default Event      *--
--*****************************--
function x930501_OnDefaultEvent(sceneId,selfId,targetId)

	--*****************--
	BeginEvent(sceneId)
		AddText(sceneId,"N½i chiªn trß¶ng kh¯c li®t mang tên #GPhøng Hoàng C± Thành#W là n½i di­n ra r¤t nhi«u cuµc chiªn ðçm máu cüa qu¥n hùng trên giang h°.")
		AddText(sceneId,"HoÕt ðµng khai m· vào #G21 gi¶#W m²i ngày, báo danh #Gtrß¾c 30 phút#W. Các hÕ hãy n¡m væng l¸ch trình mà tham gia nhé.")
		for i,eventId in x930501_g_eventlist do
			CallScriptFunction(eventId,"OnEnumerate",sceneId,selfId,targetId)
		end
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	--*****************--
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x930501_OnEventRequest(sceneId,selfId,targetId,eventId)

	--*****************--
	for i,findId in x930501_g_eventlist do
		if eventId==findId then
			CallScriptFunction(eventId,"OnDefaultEvent",sceneId,selfId,targetId)
			return
		end
	end
	--*****************--
	
end
