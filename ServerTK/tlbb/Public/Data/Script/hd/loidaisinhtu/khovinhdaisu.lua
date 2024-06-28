--NPC Kho Vinh
--Author: vanhong@2gvn
--Date: 31/1/2012

x000179_g_ScriptId = 000179


--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x000179_g_eventList={180}


function x000179_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{SXRW_090119_001}")
		
		--AddText(sceneId,"#G#bPhø bän Sát Tinh tÕm ðóng ð¬ sØa l²i k©t map. Các bÕn vui lòng quay lÕi sau !")
		for i, eventId in x000179_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		AddNumText( sceneId, x000179_g_ScriptId, "#{SXRW_090119_003}", 11, 10 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end


function x000179_OnDefaultEvent( sceneId, selfId,targetId )
	if sceneId == 2 then
		x000179_UpdateEventList( sceneId, selfId, targetId )
	else
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ ðã thu phøc xong Sát Tinh chßa?")
			AddNumText( sceneId, x000179_g_ScriptId, "V« ÐÕi Lý", 11, 100 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
end


function x000179_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 10 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{SXRW_090119_069}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	if GetNumText() == 100 then
		NewWorld( sceneId, selfId, 2, 131, 78 )
		return
	end
	for i, findId in x000179_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x000179_g_ScriptId )
		return
		end
	end
end

