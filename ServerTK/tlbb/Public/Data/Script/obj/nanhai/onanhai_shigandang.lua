--ÄÏº£NPC
--Ê¯¸Òµ±
--ÆÕÍ¨

--½Å±¾ºÅ
x034005_g_scriptId = 34005

--ËùÓµÓĞµÄÊÂ¼şIDÁĞ±í
x034005_g_eventList={212114}

--**********************************
--ÊÂ¼şÁĞ±í
--**********************************
function x034005_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"<Mµt ngß¶i ğá kh±ng l°, ğÑng cô ğµc bên c¥u>")
	for i, eventId in x034005_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x034005_OnDefaultEvent( sceneId, selfId,targetId )
	x034005_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞÒ»Ïî
--**********************************
function x034005_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x034005_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x034005_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x034005_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			end
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x034005_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼şÁĞ±í
	for i, findId in x034005_g_eventList do
		if missionScriptId == findId then
			x034005_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌĞø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x034005_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x034005_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x034005_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x034005_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼ş
--**********************************
function x034005_OnDie( sceneId, selfId, killerId )
end
