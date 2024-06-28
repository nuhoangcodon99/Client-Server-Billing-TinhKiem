-- 402240
-- ºôÑÓÇì  Ñà×ÓÎë¸±±¾ÄÚ
--H° Diên Khánh
--½Å±¾ºÅ
x402240_g_scriptId = 402240

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x402240_g_eventList={}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x402240_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId, "#{dazhan_yzw_001}")		    				
		for i, eventId in x402240_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		
		-- Ìí¼ÓÒ»¸öÍË³ö¸±±¾µÄÑ¡Ïî
		--AddNumText( sceneId, x402240_g_scriptId, "Quay v« Thái H°", 9 ,1  )
		
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x402240_OnDefaultEvent( sceneId, selfId,targetId )
	x402240_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x402240_OnEventRequest( sceneId, selfId, targetId, eventId )
	
--	if GetNumText() == 1   then
--		CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 4,70,121)
--		return
--	end

	for i, findId in x402240_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x402240_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x402240_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
			end
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x402240_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x402240_g_eventList do
		if missionScriptId == findId then
			x402240_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x402240_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x402240_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x402240_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x402240_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x402240_OnDie( sceneId, selfId, killerId )

end

