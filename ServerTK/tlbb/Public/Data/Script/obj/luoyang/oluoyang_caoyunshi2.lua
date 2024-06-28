--ËÕÖİNPC
--äîÔËÊ¹
--äîÔËÑ­»·ÈÎÎñ

--½Å±¾ºÅ
x311007_g_scriptId = 311007

--ËùÓµÓĞµÄÊÂ¼şIDÁĞ±í
x311007_g_eventList={311010}	

--¹êÍÃÈüÅÜÈÎÎñºÅ
x311007_g_MissionId			= 1000
--¹êÍÃÈüÅÜÈÎÎñÊÂ¼şÁĞ±í
x311007_g_GodFireEventList={}		-- 808081
--Ã¿Ìì¹êÍÃÈüÅÜ»î¶¯¿ªÆôÊ±¼ä
x311007_g_ActivityTime		= { {tstart=1230, tend=1330},
														  {tstart=1930, tend=2030},
														  {tstart=2130, tend=2230} }

--¹êÍÃÈüÅÜÈÎÎñÍê³É±ê¼Ç
x311007_g_Mission_IsComplete = 0	--ÈÎÎñ²ÎÊıµÄµÚ0Î»
--¹êÍÃÈüÅÜÂåÑô´ò¿¨±ê¼Ç
x311007_g_LuoYang_RecordIdx = 1		--ÈÎÎñ²ÎÊıµÄµÚ1Î»
--¹êÍÃÈüÅÜËÕÖİ´ò¿¨±ê¼Ç
x311007_g_SuZhou_RecordIdx = 2		--ÈÎÎñ²ÎÊıµÄµÚ2Î»
--¹êÍÃÈüÅÜ´óÀí´ò¿¨±ê¼Ç
x311007_g_DaLi_RecordIdx = 3			--ÈÎÎñ²ÎÊıµÄµÚ3Î»
--¿×Ã÷µÆÍê³ÉÊıÁ¿±ê¼Ç
x311007_g_KongMing_Lighten = 4		--ÈÎÎñ²ÎÊıµÄµÚ4Î»
--¹êÍÃÈüÅÜ´«µİÈÎÎñÃ¿ÌìÂÖÊı±ê¼Ç
x311007_g_RoundIndex = 7					--ÈÎÎñ²ÎÊıµÄµÚ7Î»

--ĞèÒªµãÈ¼¿×Ã÷µÆµÄ×ÜÊı
x311007_g_KongMing_CntMax	 = 24

--**********************************
--ÊÂ¼şÁĞ±í
--**********************************
function x311007_UpdateEventList( sceneId, selfId, targetId )

	for i, eventId in x311007_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
	end

end

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x311007_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		-- µãÈ¼ËÕÖİ»ğÔ´
		if x311007_OnIsFillPlayCard(sceneId, selfId, targetId) == 1 then

			local misIndex = GetMissionIndexByID(sceneId,selfId,x311007_g_MissionId)
			SetMissionByIndex(sceneId, selfId, misIndex, x311007_g_SuZhou_RecordIdx, 1)
			x311007_NotifyTip( sceneId, selfId, "#{GodFire_Info_003}" )
			
			-- ¼ì²âÈÎÎñÊÇ·ñÍê³É
			if GetMissionParam(sceneId, selfId, misIndex, x311007_g_LuoYang_RecordIdx) == 1
				 and GetMissionParam(sceneId, selfId, misIndex, x311007_g_SuZhou_RecordIdx) == 1
				 and GetMissionParam(sceneId, selfId, misIndex, x311007_g_DaLi_RecordIdx) == 1 then
				
				-- ¼ì²âÊÇ·ñµãÈ¼ËùÓĞ¿×Ã÷µÆ
				if GetMissionParam(sceneId, selfId, misIndex, x311007_g_KongMing_Lighten) >= x311007_g_KongMing_CntMax then								
					-- ÈÎÎñÍê³É
					AddText( sceneId, "#{GodFire_Info_028}" )
					SetMissionByIndex( sceneId, selfId, misIndex, x311007_g_Mission_IsComplete, 1 )
				else
					AddText( sceneId, "#{GodFire_Info_037}" )
				end
			else
				-- µãÈ¼»ğÔ´
				AddText( sceneId, "#{GodFire_Info_010}" )
			end
			
		else
			AddText( sceneId, "#{function_caoyun_1}" )
			AddNumText( sceneId, x311007_g_scriptId, "V« Tào V§n", 11, 1 )
			AddNumText( sceneId, x311007_g_scriptId, "Mua thß½ng ph¦m", 7, 2 )
			
			for i, eventId in x311007_g_GodFireEventList do
				CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
			end
		end
		
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞÒ»Ïî
--**********************************
function x311007_OnEventRequest( sceneId, selfId, targetId, eventId )
	local NumText = GetNumText();
	if NumText == 1 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_052}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	elseif NumText == 2 then
		x311007_UpdateEventList( sceneId, selfId, targetId )
		return
	end

	for i, findId in x311007_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnHandle_QuestUI",sceneId, selfId, targetId, NumText )
			return
		end
	end
	
	for i, findId in x311007_g_GodFireEventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			
			return 0
		end
	end
	
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x311007_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x311007_g_GodFireEventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId, missionScriptId )
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x311007_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬¹Ø±Õ¶Ô»°´°¿Ú
	return
end

--**********************************
--¼ÌĞø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x311007_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x311007_g_GodFireEventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x311007_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x311007_g_GodFireEventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼ş
--**********************************
function x311007_OnDie( sceneId, selfId, killerId )
end


-- ¼ì²â¹êÍÃÈüÅÜ´«µİ»î¶¯ÊÇ·ñÂú×ã´ò¿¨Ìõ¼ş
function x311007_OnIsFillPlayCard(sceneId, selfId, targetId)

  --Íæ¼ÒÉíÉÏÊÇ·ñÓĞ¹êÍÃÈüÅÜÈÎÎñ
	if IsHaveMission( sceneId, selfId, x311007_g_MissionId ) <= 0 then				
		return 0
	end

	--¼ì²âÍæ¼Ò²Î¼Ó»î¶¯µÄÊ±¼ä
	local	nDayTime = GetMissionData( sceneId, selfId, MD_GODOFFIRE_DAYTIME )
	
	local nDay = LuaFnGetDayOfThisMonth()
	if nDayTime ~= nDay then
		return 0
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x311007_g_MissionId)
	
	--¼ì²âµ±Ìì²Î¼ÓµÄÊÇµÚ¼¸ÂÖ
	local nRoundIdx = GetMissionParam(sceneId, selfId, misIndex, x311007_g_RoundIndex)

	local nHour	 = GetHour()
	local nMinute = GetMinute()  
  local curHourTime = nHour*100+nMinute

	if curHourTime < x311007_g_ActivityTime[nRoundIdx].tstart or curHourTime > x311007_g_ActivityTime[nRoundIdx].tend then
		return 0
	end
	
	--¼ì²âÊÇ·ñÔÚËÕÖİ´ò¹ı¿¨
	if GetMissionParam(sceneId, selfId, misIndex, x311007_g_SuZhou_RecordIdx) == 1 then
		return 0
	end
	
	return 0
end

--**********************************
--ĞÑÄ¿ÌáÊ¾
--**********************************
function x311007_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
