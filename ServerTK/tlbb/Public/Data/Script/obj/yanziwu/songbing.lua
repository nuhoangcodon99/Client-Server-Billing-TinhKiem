--Ñà×ÓÎë ËÎ±ø Ã»ÓÐÊ²Ã´Êµ¼Ê¹¦ÄÜ
-- T¯ng quân sî binh
--½Å±¾ºÅ
x402262_g_scriptId = 402262

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x402262_g_eventList={}	

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x402262_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local nRand = random(4)
		local str = ""
		if nRand == 1  then
			str = "  Các hÕ th§t mÕnh m¨, ðã dám xông pha vào n½i ð¥y nguy hi¬m này !"
		elseif nRand == 2 then
			str = "  Nguy hi¬m, nguy hi¬m ! Hãy ði ð¥u ð¬ bäo v® chúng tôi !"
		elseif nRand == 3 then
			str = "  Hãy c¯ g¡ng ch×a lÕi h½i th· cu¯i cùng ð¬ ð¤u v¾i b÷n chúng !"
		else
			str = "  Không gì là không th¬...ngß¶i nói chi câu gian d¯i...#3"
		end
		
		AddText(sceneId, str)		    				
		for i, eventId in x402262_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x402262_OnDefaultEvent( sceneId, selfId,targetId )
	x402262_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x402262_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x402262_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x402262_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x402262_g_eventList do
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
function x402262_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x402262_g_eventList do
		if missionScriptId == findId then
			x402262_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x402262_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x402262_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x402262_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x402262_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x402262_OnDie( sceneId, selfId, killerId )

end

