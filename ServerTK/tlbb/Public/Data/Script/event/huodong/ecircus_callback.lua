--ÂíÏ·ÍÅ»î¶¯
--»Øµ÷½Å±¾

--½Å±¾ºÅ
x808006_g_ScriptId			= 808006
x808006_g_ScriptId_Pao	= 200060	--ÅÝÅÝ½Å±¾
--»î¶¯ID£¬¶¨ÒåÔÚ¡¶ActivityNotice¡·±íÖÐ
x808006_g_ActId					= 38--37
--»î¶¯ÓÐÐ§ÆÚ£º2007Äê5ÔÂ9ÈÕÖÁ5ÔÂ31
x808006_g_ActBegin			= 13066 --07/03/2013
x808006_g_ActEnd				= 13067 --08/03/2013

x808006_g_TickTime			= 60			--»Øµ÷½Å±¾µÄÊ±ÖÓÊ±¼ä£¨µ¥Î»£ºÃë/´Î£©
x808006_g_PrizeMax			= 200			--Ã¿´Î»î¶¯ÖÐ´ó½±µÄ×î´óÊý¶î

--»î¶¯Êý¾ÝÇøË÷Òý
x808006_g_ActParam			=
{
	["tim"]			= 0,			--Ê±ÖÓ×ÜµãÊý
	["n_chg"]		= 1,			--¶Ò»»ÈËÊý
	["n_bty"]		= 2,			--´ó½±ÈËÊý
}

--×Ö´®¼¯
x808006_g_Str	=
{
	--²»°üº¬×ªÒå×Ö·ûµÄ×Ö´®
	["npc"]			= "#Wxem ra trß¾c khi tr¶i t¯i tÕi hÕ còn phäi c¥n nhi«u trân thú bäo bäo m¾i có th¬ hoàn thành nhi®m vø, không biªt có ai nhi®t tình giúp ðÞ tÕi hÕ.",
	
	--°üº¬×ªÒå×Ö·ûµÄ×Ö´®
}

--**********************************
--½Å±¾Èë¿Úº¯Êý
--C++»Øµ÷º¯Êý
--**********************************
function x808006_OnDefaultEvent( sceneId, actId, iNoticeType, param2, param3, param4, param5 )

	--Í³Ò»Ö»¿ªÆô±àºÅÎª x808006_g_ActId µÄ»î¶¯
	m_actId		= x808006_g_ActId

	if x808006_OnActivityCheck() == 0 then
		--Add Log
		--begin modified by zhangguoxin 090207
		--LogInfo	= format( "[CIRCUS]: x808006_OnActivityCheck()==0, sceneId=%d, actId=%d, CurrentHour=%d",
		--	sceneId, m_actId, GetHourTime() )
		LogInfo	= format( "[CIRCUS]: x808006_OnActivityCheck()==0, sceneId=%d, actId=%d, CurrentHour=%d",
			sceneId, m_actId, GetQuarterTime() )
		--end modified by zhangguoxin 090207
		MissionLog( sceneId, LogInfo )
		return
	end

	--²ÎÊýËµÃ÷£º³¡¾°ID£¬»î¶¯ID£¬Ê±¼ä¼ä¸ô£¨ºÁÃë£©
	StartOneActivity( sceneId, m_actId, floor(x808006_g_TickTime*1000), iNoticeType )

	--»î¶¯Êý¾ÝÇø
	SetActivityParam( sceneId, m_actId, x808006_g_ActParam["tim"], 0 )		--±£´æÊ±ÖÓ×ÜµãÊý
	SetActivityParam( sceneId, m_actId, x808006_g_ActParam["n_chg"], 0 )	--±£´æ¶Ò»»ÈËÊý
	SetActivityParam( sceneId, m_actId, x808006_g_ActParam["n_bty"], 0 )	--±£´æ´ó½±ÈËÊý

	--Add Log
	--begin modified by zhangguoxin 090207
	--LogInfo	= format( "[CIRCUS]: x808006_OnDefaultEvent( sceneId=%d, actId=%d, =%d ), CurrentHour=%d",
	--	sceneId, m_actId, iNoticeType, GetHourTime() )
	LogInfo	= format( "[CIRCUS]: x808006_OnDefaultEvent( sceneId=%d, actId=%d, iNoticeType=%d ), CurrentHour=%d",
		sceneId, m_actId, iNoticeType, GetQuarterTime() )
	--end modified by zhangguoxin 090207
	MissionLog( sceneId, LogInfo )

end

--**********************************
--ÐÄÌøº¯Êý
--C++»Øµ÷º¯Êý
--**********************************
function x808006_OnTimer( sceneId, actId, uTime )

	if x808006_g_ActId ~= actId then
		return
	end

	--»î¶¯Êý¾ÝÇø
	tim		= GetActivityParam( sceneId, actId, x808006_g_ActParam["tim"] )
	SetActivityParam( sceneId, actId, x808006_g_ActParam["tim"], tim+1 )	--±£´æÊ±ÖÓ×ÜµãÊý

	--»î¶¯ÔÚµÚ¶þÌìÁè³¿Ç°¹Ø±Õ
	--begin modified by zhangguoxin 090207
	--hur		= GetHourTime()
	--qua		= hur - floor( hur / 100 ) * 100
	qua = mod(GetQuarterTime(),100);
	--end modified by zhangguoxin 090207
	--È«Ìì96¸öÊ±¿Ì
	if qua >= 95 then
		x808006_OnActivityEnd( sceneId, actId )
	end
	
	--Ò»Ð¡Ê±Ò»´ÎµÄNPCÆµµÀ
	mul		= tim - floor( tim / 60 ) * 60
	if tim == 59 then
		CallScriptFunction( x808006_g_ScriptId_Pao, "Paopao", sceneId, "Nhuª Tß", "ÐÕi Lý", x808006_g_Str["npc"] )
	end

end

--**********************************
--»î¶¯½áÊø
--**********************************
function x808006_OnActivityEnd( sceneId, actId )

	if x808006_g_ActId ~= actId then
		return
	end

	SetActivityParam( sceneId, actId, x808006_g_ActParam["tim"], 0 )			--±£´æÊ±ÖÓ×ÜµãÊý
	SetActivityParam( sceneId, actId, x808006_g_ActParam["n_chg"], 0 )		--±£´æ¶Ò»»ÈËÊý
	SetActivityParam( sceneId, actId, x808006_g_ActParam["n_bty"], 0 )		--±£´æ´ó½±ÈËÊý
	StopOneActivity( sceneId, actId )

	--Add Log
	--begin modified by zhangguoxin 090207
	--LogInfo	= format( "[CIRCUS]: x808006_OnActivityEnd( sceneId=%d, actId=%d ), CurrentHour=%d",
	--	sceneId, actId, GetHourTime() )
	LogInfo	= format( "[CIRCUS]: x808006_OnActivityEnd( sceneId=%d, actId=%d ), CurrentHour=%d",
		sceneId, actId, GetQuarterTime() )
	--end modified by zhangguoxin 090207
	MissionLog( sceneId, LogInfo )

end

--**********************************
--»î¶¯¼ì²é
--**********************************
function x808006_OnActivityCheck()

	
	local	day	= GetDayTime()
	if day < x808006_g_ActBegin or day > x808006_g_ActEnd then
		return 0
	end
	return 1

end

--**********************************
--³É¹¦¶Ò»»Ò»´Î£¬¼ÆÊý
--ÎÞÉÏÏÞ
--**********************************
function x808006_OnSuccChange( sceneId )

	local	num_chg	= GetActivityParam( sceneId, x808006_g_ActId, x808006_g_ActParam["n_chg"] )
	SetActivityParam( sceneId, x808006_g_ActId, x808006_g_ActParam["n_chg"], num_chg + 1 )
	return num_chg + 1

end

--**********************************
--³É¹¦´ó½±Ò»´Î£¬¼ÆÊý
--ÓÐÉÏÏÞ
--**********************************
function x808006_OnSuccPrize( sceneId )

	local	num_chg	= GetActivityParam( sceneId, x808006_g_ActId, x808006_g_ActParam["n_chg"] )
	local	num_bty	= GetActivityParam( sceneId, x808006_g_ActId, x808006_g_ActParam["n_bty"] )
	
	if num_bty >= x808006_g_PrizeMax then
		return 0
	end
	SetActivityParam( sceneId, x808006_g_ActId, x808006_g_ActParam["n_bty"], num_bty + 1 )
	--Add Log
	--begin modified by zhangguoxin 090207
	--LogInfo	= format( "[CIRCUS]: x808006_OnSuccPrize(), num_chg=%d, num_bty=%d, CurrentHour=%d",
	--	num_chg, num_bty, GetHourTime() )
	LogInfo	= format( "[CIRCUS]: x808006_OnSuccPrize(), num_chg=%d, num_bty=%d, CurrentHour=%d",
		num_chg, num_bty, GetQuarterTime() )
	--end modified by zhangguoxin 090207
	MissionLog( sceneId, LogInfo )
	return num_bty + 1

end

--**********************************
--ÊÇ·ñ´¦ÔÚ»î¶¯ÖÐ
--**********************************
function x808006_IsActivityDoing( sceneId )
	
	tim	= GetActivityParam( sceneId, x808006_g_ActId, x808006_g_ActParam["tim"] )
	if tim > 0 then
		return 1
	end
	
	return 0

end
