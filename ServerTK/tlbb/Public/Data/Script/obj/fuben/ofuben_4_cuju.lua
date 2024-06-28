-- 402041
-- Í¯êÛ
--Õäçç¸±±¾ÈÎÎñnpc

--½Å±¾ºÅ
x402041_g_scriptId = 402041


--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x402041_g_eventList={}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x402041_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local  PlayerName=GetName(sceneId,selfId)
		AddText(sceneId,"#{CUJU_20071012}")

		local nSceneId = LuaFnGetCopySceneData_Param(sceneId, 3)
	
		AddNumText( sceneId, x402041_g_scriptId, "Tr· v« thành th¸", 9, 10 )
		
		for i, findId in x402041_g_eventList do
			CallScriptFunction( x402041_g_eventList[i], "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x402041_OnDefaultEvent( sceneId, selfId,targetId )
	x402041_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x402041_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 10  then
		local nSceneId = LuaFnGetCopySceneData_Param(sceneId, 3)
		local Pos_X = LuaFnGetCopySceneData_Param(sceneId, 4)
		local Pos_Y = LuaFnGetCopySceneData_Param(sceneId, 5)
		NewWorld(sceneId,selfId,nSceneId,Pos_X,Pos_Y)
		return
	end
	
	
	for i, findId in x402041_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x402041_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x402041_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x402041_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x402041_g_eventList do
		if missionScriptId == findId then
			x402041_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x402041_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x402041_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x402041_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x402041_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x402041_OnDie( sceneId, selfId, killerId )
end
