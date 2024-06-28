-- 002058
-- °×³çÒå

--½Å±¾ºÅ
x002058_g_scriptId = 002058

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x002058_g_eventList={125020}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x002058_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		--AddText(sceneId,"  #G$N#WÓ¢ÐÛ£¡íáÔÉ½·â¶UÅ_¸‚¼¼ˆöÕ¹Ê¾Ò»ÏÂÄãµÄŒÁ¦°É£¡#r  #GÄãÔÚßMÈë·â¶UÅ_Ö®Ç°±Øíš¼ÓÈëÒ»Ö§ê Îé£¬ß@Ö§ê ÎéÖÐµÄËùÓÐÈËÔÚßMÈë·â¶UÅ_áá¶¼ºÍÄãŒÙì¶Í¬Ò»‚€ê‡ I£¬³ýÁËËû‚ƒÒÔÍâ£¬ÔÚ·â¶UÅ_ÉÏµÄÆäËûËùÓÐÈË¶¼ÊÇÄãµÄŒ¦ÊÖ¡£#W #r  ÔõüN˜Ó£¬ÏëíÔ‡Ô‡¿´†á£¿");
		AddText(sceneId,"  "..PlayerName..PlayerSex.."#{OBJ_dali_0033}"..PlayerName..PlayerSex.."Làm thay à")
		for i, eventId in x002058_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002058_OnDefaultEvent( sceneId, selfId,targetId )
	x002058_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x002058_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x002058_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x002058_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002058_g_eventList do
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
function x002058_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x002058_g_eventList do
		if missionScriptId == findId then
			x002058_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x002058_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002058_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x002058_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x002058_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x002058_OnDie( sceneId, selfId, killerId )
end
