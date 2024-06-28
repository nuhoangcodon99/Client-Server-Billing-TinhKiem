--ÂåÑôNPC
--ÓÎÌ¹Ö®
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
x000017_g_scriptId = 17
x000017_g_eventList={173}	--808090:ÁìÈ¡ÕÐÅÆ»î¶¯	--add by xindefeng

function x000017_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"  Ti¬u thß A TØ, ð©p...ð©p nhß tiên tr¶i...th§t mu¯n...mu¯n ngày nào cûng ðßþc g£p nàng..")
	
	for i, eventId in x000017_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000017_OnDefaultEvent( sceneId, selfId,targetId )
	x000017_UpdateEventList( sceneId, selfId, targetId )
end

function x000017_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	for i, findId in x000017_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnEventRequest",sceneId, selfId, targetId )
			return
		end
	end
end
