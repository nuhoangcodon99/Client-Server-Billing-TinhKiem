--´óÌÓÉ±
--»Øµ÷½Å±¾
--line 554
--½Å±¾ºÅ
x808003_g_ScriptId			= 808003
x808003_g_rate_1st=100--cfg tuy y
x808003_g_rate_2nd=100--cfg tuy y
x808003_g_rate_3rd=100--cfg tuy y
x808003_g_TickTime			= 60		--»Øµ÷½Å±¾µÄÊ±ÖÓÊ±¼ä£¨µ¥Î»£ºÃë/´Î£©
x808003_g_NotifyTime		= 29		--¹«¸æÊ±¼ä³¤¶È£¨µ¥Î»£ºÊ±ÖÓµãÊý£©
x808003_g_JoinTime			= 3			--±¨ÃûÊ±¼ä³¤¶È£¨µ¥Î»£ºÊ±ÖÓµãÊý£©
x808003_g_AttackTime		= 10		--±ÈÎäÊ±¼ä³¤¶È£¨µ¥Î»£ºÊ±ÖÓµãÊý£©
x808003_g_IdleTime			= 2			--Ã¿ÂÖÖ®¼äµÄ¿ÕÏÐÊ±¼ä³¤¶È£¨µ¥Î»£ºÊ±ÖÓµãÊý£©
x808003_g_RoundMax			= 5			--×î´ó»ØºÏÊý£¬¼´ÂúÔ±64ÈËµÄÇéÐÎÏÂ
x808003_g_TParamNum			= 8			--±íµ¥²ÎÊýÊýÁ¿
x808003_g_CareResultMax	= 5			--×´ÔªÅÅÃûÊ±Ëù¹ØÐÄµÄ×î´óÈËÊý
x808003_g_thuong	=
		{ 50131001, 50131002, 50131003, 50131004, 50131005, 30503134, 30503135, 30503136, 30503137},

--»î¶¯Êý¾ÝÇøË÷Òý
x808003_g_ActParam	=
{
	["tim"]	= 0,	--Ê±ÖÓ×ÜµãÊý
	["pha"]	= 1,	--»î¶¯½×¶Î£¬»ØºÏÊý*10(1-6»ØºÏ) + »ØºÏ±ê¼Ç(1£¬±¨Ãû£»2£¬¿ªÊ¼£»0£¬¿ÕÏÐ)
	["tab"]	= 2,	--±íµ¥ID
	["unt"]	= 3,	--µ¥ÂÖÖ´ÐÐÊ±¼äµãÊý
	["minl"]= 4,	--¼¶±ðÏÂÏÞ
	["maxl"]= 5,	--¼¶±ðÉÏÏÞ
}

--ÏûÏ¢ÌáÊ¾
x808003_g_Msg				=
{
	["n_pre"]	= "#PHoÕt ðµng báo danh ÐÕi hµi tï võ nhóm #YðÆng c¤p %d#P#Y l¥n thÑ %d#P s¨ b¡t ð¥u sau #Y%d phút#P næa, xin các v¸ chu¦n b¸.",
	["n_bgn"]	= "#PHoÕt ðµng báo danh ÐÕi hµi tÖ võ nhóm #YðÆng c¤p %d#P#Y l¥n thÑ %d#P ðã b¡t ð¥u, Xin các v¸ nhanh chóng báo danh.",
	["n_end"]	= "#PHoÕt ðµng ÐÕi hµi tÖ võ nhóm #YðÆng c¤p %d#P ðªn ðây kªt thúc!",
	["n_bny"]	= "#PQuán Quân ðÕi hµi tÖ võ nhóm #YðÆng c¤p %d#P ðã có , phân chia thành: #W",
}

--»î¶¯×é±ðÐÅÏ¢
--»î¶¯ID£¬¶¨ÒåÔÚ¡¶ActivityNotice¡·±íÖÐ
x808003_g_Act				=
{
	--ÐèÒªÅäÖÃ¹«¸æ
	[1]	= { id=22, minLev=40, maxLev=49 },	--ÖÜÁù40¼¶±ð×é
	[2]	= { id=23, minLev=40, maxLev=49 },	--ÖÜÈý40¼¶±ð×é
	--²»ÐèÒªÅäÖÃ¹«¸æ
	[3]	= { id=30, minLev=50, maxLev=59 },
	[4]	= { id=31, minLev=50, maxLev=59 },
	[5]	= { id=32, minLev=60, maxLev=69 },
	[6]	= { id=33, minLev=60, maxLev=69 },
	[7]	= { id=34, minLev=70, maxLev=79 },
	[8]	= { id=35, minLev=70, maxLev=79 },
	[9]	= { id=44, minLev=80, maxLev=89 },
	[10]= { id=45, minLev=80, maxLev=89 },
	[11]= { id=46, minLev=90, maxLev=99 },
	[12]= { id=47, minLev=90, maxLev=99 },
	[13]= { id=124, minLev=100, maxLev=109 },
	[14]= { id=125, minLev=100, maxLev=109 },
	[15]= { id=126, minLev=110, maxLev=119 },
	[16]= { id=127, minLev=110, maxLev=119 },
}

--**********************************
--½Å±¾Èë¿Úº¯Êý
--C++»Øµ÷º¯Êý
--**********************************
function x808003_OnDefaultEvent( sceneId, actId, iNoticeType, param2, param3, param4, param5 )

	--Ò»¸ö»î¶¯¶ÔÓ¦Ò»¸ö×é±ð
	local	ActInfo	= nil
	for i = 1, getn( x808003_g_Act ) do
		ActInfo			= x808003_g_Act[i]
		if ActInfo.id == actId then
			break
		else
			ActInfo		= nil
		end
	end
	if ActInfo == nil then	--Ã»ÓÐÕÒµ½Õâ¸ö×é±ðµÄ»î¶¯
		return
	end

	--²ÎÊýËµÃ÷£º³¡¾°ID£¬»î¶¯ID£¬Ê±¼ä¼ä¸ô£¨ºÁÃë£©
	StartOneActivity( sceneId, ActInfo.id, floor(x808003_g_TickTime*1000), iNoticeType )
	--×¢²áÅÅÐÐ°ñ±íµ¥£¬Çë×¢ÒâÔÚ»î¶¯½áÊøÊ±ÊÍ·Å
	tabId	= HitParadeRegisterTab( sceneId )

	--»î¶¯Êý¾ÝÇø
	SetActivityParam( sceneId, ActInfo.id, x808003_g_ActParam["tim"], 0 )			--±£´æÊ±ÖÓ×ÜµãÊý
	SetActivityParam( sceneId, ActInfo.id, x808003_g_ActParam["pha"], 0 )			--±£´æ»î¶¯½×¶Î
	SetActivityParam( sceneId, ActInfo.id, x808003_g_ActParam["tab"], tabId )	--±£´æ±íµ¥ID
	SetActivityParam( sceneId, ActInfo.id, x808003_g_ActParam["minl"], ActInfo.minLev )
	SetActivityParam( sceneId, ActInfo.id, x808003_g_ActParam["maxl"], ActInfo.maxLev )

	--Add Log
	LogInfo	= format( "[TAOSHA]: x808003_OnDefaultEvent( sceneId=%d, actId=%d, iNoticeType=%d ), tabId=%d, minLev=%d, maxLev=%d",
		sceneId, actId, iNoticeType, tabId, ActInfo.minLev, ActInfo.maxLev )
	MissionLog( sceneId, LogInfo )

end

--**********************************
--ÐÄÌøº¯Êý
--C++»Øµ÷º¯Êý
--**********************************
function x808003_OnTimer( sceneId, actId, uTime )

	--Ò»¸ö»î¶¯¶ÔÓ¦Ò»¸ö×é±ð
	local	ActInfo	= nil
	for i = 1, getn( x808003_g_Act ) do
		ActInfo			= x808003_g_Act[i]
		if ActInfo.id == actId then
			break
		else
			ActInfo		= nil
		end
	end
	if ActInfo == nil then	--Ã»ÓÐÕÒµ½Õâ¸ö×é±ðµÄ»î¶¯
		return
	end

	local	m_actId	= actId

	--±íµ¥ID
	tabId	= GetActivityParam( sceneId, m_actId, x808003_g_ActParam["tab"] )
	if tabId < 0 then
		return
	end

	--»î¶¯Êý¾ÝÇø
	tim		= GetActivityParam( sceneId, m_actId, x808003_g_ActParam["tim"] )
	SetActivityParam( sceneId, m_actId, x808003_g_ActParam["tim"], tim+1 )	--±£´æÊ±ÖÓ×ÜµãÊý

	--±£´æ»î¶¯½×¶Î£¬ÓÉÊ±¼ä»®·Ö£º
	--7£º00¹«¸æ
	--µÚÒ»´Î»î¶¯±¨Ãû7£º30£¬»î¶¯¿ªÊ¼7£º35£¬»î¶¯½áÊø7£º45¡£
	--µÚ¶þ´Î¿ªÊ¼±¨Ãû7£º50£¬»î¶¯¿ªÊ¼7£º55£¬»î¶¯½áÊø8£º05¡£
	--ÒÔºóÃ¿´Î»î¶¯±¨Ãû¿ÕÏÐÊ±¼ä5·ÖÖÓ£¬±¨Ãû5·ÖÖÓ£¬»î¶¯Ê±¼ä10·ÖÖÓ¡£
	local	tim_0		= x808003_g_NotifyTime	--²ÎÕÕÊ±¼äµã£¬¼´µÚÒ»»ØºÏµÄ±¨ÃûÊ±¼ä
	local	tim_pnt	=
	{
		["jon"]	= 0,									--±¾»ØºÏµÄµÚ0¸öÊ±¼äµã¿ªÊ¼±¨Ãû
		["bgn"]	= x808003_g_JoinTime,	--±¾»ØºÏµÄµÚ5¸öÊ±¼äµã¿ªÊ¼±ÈÎä
		["end"]	= x808003_g_JoinTime + x808003_g_AttackTime,											--±¾»ØºÏµÄµÚ15¸öÊ±¼äµã½áÊø
		["idl"]	= x808003_g_JoinTime + x808003_g_AttackTime + x808003_g_IdleTime,	--¿ÕÏÐÖÁµÚ20¸öÊ±¼äµã¿ªÊ¼ÏÂÒ»»ØºÏ
	}
	local	tim_all	= tim_pnt["idl"]
	pha			= GetActivityParam( sceneId, m_actId, x808003_g_ActParam["pha"] )
	tmp_mul	= floor( (tim-tim_0) / tim_all )
	tmp_mod	=	(tim-tim_0) - tmp_mul * tim_all
	local	str
	
	if tmp_mul > x808003_g_RoundMax then
		x808003_OnActivityEnd( sceneId, m_actId, tabId )
		--È«Çò¹«¸æ
		str		= format( x808003_g_Msg["n_end"], ActInfo.minLev )
		x808003_MyGlobalNews( sceneId, str )
		return
	end
	
	--µ¥ÂÖÖ´ÐÐÊ±¼äµãÊý
	if tmp_mod < 0 or tmp_mod >= tim_all then
		SetActivityParam( sceneId, m_actId, x808003_g_ActParam["unt"], 0 )
	else
		SetActivityParam( sceneId, m_actId, x808003_g_ActParam["unt"], tmp_mod )
	end

	--»î¶¯½ø¶È
	if pha == 0 then	--µÚÒ»»ØºÏ
	
		--»î¶¯Ô¤±¨
		if tim == floor(tim_0-x808003_g_IdleTime) then
			str	= format( x808003_g_Msg["n_pre"], ActInfo.minLev, 1, x808003_g_IdleTime )
			--È«Çò¹«¸æ
			x808003_MyGlobalNews( sceneId, str )
		end

		--¿ªÊ¼±¨Ãû
		if tim >= tim_0 then
			SetActivityParam( sceneId, m_actId, x808003_g_ActParam["pha"], (tmp_mul+1)*10+1 )
			str	= format( x808003_g_Msg["n_bgn"], ActInfo.minLev, (tmp_mul+1) )
			--È«Çò¹«¸æ
			x808003_MyGlobalNews( sceneId, str )
			--±íµ¥³õÊ¼»¯
			for i = 0, x808003_g_TParamNum do
				HitParadeSetTabParam( sceneId, tabId, i, 0 )
			end
		end

	else
		if tmp_mod == tim_pnt["jon"] then					--±¨ÃûÖÐ
			SetActivityParam( sceneId, m_actId, x808003_g_ActParam["pha"], (tmp_mul+1)*10+1 )
			
			if tmp_mul >= 1 then
				--»î¶¯ÅÅÃû£¬·µ»ØÊ¤³öÈËÊý£¬µÈÓÚ1Ê±¹Ú¾ü²úÉú
				if x808003_OnActivitySort( sceneId, m_actId, tabId ) > 1 then
					--¼ÌÐøÏÂÂÖ±ÈÎä
					str	= format( x808003_g_Msg["n_bgn"], ActInfo.minLev, (tmp_mul+1) )
					--È«Çò¹«¸æ
					x808003_MyGlobalNews( sceneId, str )
					--±íµ¥³õÊ¼»¯
					for i = 0, x808003_g_TParamNum do
						HitParadeSetTabParam( sceneId, tabId, i, 0 )
					end
				end
			end

		elseif tmp_mod == tim_pnt["bgn"] then			--±ÈÎäÖÐ
			SetActivityParam( sceneId, m_actId, x808003_g_ActParam["pha"], (tmp_mul+1)*10+2 )
		elseif tmp_mod == tim_pnt["end"] then			--¿ÕÏÐÖÐ
			SetActivityParam( sceneId, m_actId, x808003_g_ActParam["pha"], (tmp_mul+1)*10 )
		elseif tmp_mod == (tim_pnt["end"]+2) then	--¿ÕÏÐÖÐ
			str		= format( x808003_g_Msg["n_pre"], ActInfo.minLev, (tmp_mul+2), (x808003_g_IdleTime-2) )
			--È«Çò¹«¸æ
			x808003_MyGlobalNews( sceneId, str )
		end

	end

end

--**********************************
--»î¶¯ÅÅÃû£¬·µ»ØÊ¤³öÈËÊý£¬µÈÓÚ1Ê±¹Ú¾ü²úÉú
--**********************************
function x808003_OnActivitySort( sceneId, actId, tabId )

	--Ò»¸ö»î¶¯¶ÔÓ¦Ò»¸ö×é±ð
	local	ActInfo	= nil
	for i = 1, getn( x808003_g_Act ) do
		ActInfo			= x808003_g_Act[i]
		if ActInfo.id == actId then
			break
		else
			ActInfo		= nil
		end
	end
	if ActInfo == nil then	--Ã»ÓÐÕÒµ½Õâ¸ö×é±ðµÄ»î¶¯
		return 0
	end

	local	m_actId	= actId

	--²ÎÕÕÅÅÐÐ¼üÖµ£¬½µÐòÅÅÐò£¨¼üÖµÔ½´ó£¬ÅÅÃûÔ½¿¿Ç°£©
	HitParadeSort( sceneId, tabId )
	--»ñÈ¡µ±Ç°±¨ÃûÈËÊý
	local	jon_num	= HitParadeGetTabInfo( sceneId, tabId )
	if jon_num == nil then
		return 0
	else
		--Add Log
		LogInfo	= format( "[TAOSHA]: HitParadeGetTabInfo( sceneId=%d, tabId=%d ), JoinNum=%d",
			sceneId, tabId, jon_num )
		MissionLog( sceneId, LogInfo )
		--×î¶à¼ì²éÇ°5Ãû¾Í×ã¹»
		if jon_num > x808003_g_CareResultMax then
			jon_num		= x808003_g_CareResultMax
		end
	end
	--»ñÈ¡²ÎÈü³É¼¨
	local	no1_num	= 0
	local	guid		= {}
	local	key			= {}
	for i = 0, jon_num do
		guid[i], key[i]	= HitParadeGetPlyInfo( sceneId, tabId, i )
		--Add Log
		if guid[i] ~= nil and key[i] ~= nil then
			LogInfo	= format( "[TAOSHA]: HitParadeGetPlyInfo( sceneId=%d, tabId=%d, i=%d ), GUID=%0X, key=%d",
				sceneId, tabId, i, guid[i], key[i] )
		else
			LogInfo	= format( "[TAOSHA]: HitParadeGetPlyInfo( sceneId=%d, tabId=%d, i=%d ), GUID=NIL, key=NIL",
				sceneId, tabId, i )
		end
		MissionLog( sceneId, LogInfo )
	end

	--»ñÈ¡¹Ú¾üÈËÊý£¬¾ö¶¨ËÄÇ¿Èü
	for i = 0, jon_num do
		if guid[i] == nil then
			break
		end
		if key[i] ~= nil and key[i] == key[0] and mod( key[i], 3 ) > 0 then
			no1_num		= no1_num + 1
		else
			break
		end
	end

	--ÔÝÊ±Î´ÄÜÑ¡³öËÄÇ¿£¬¼ÌÐø½øÐÐÏÂÒ»ÂÖ
	if no1_num > 4 then
		return no1_num
	end

	--¹Ú¾üÊ¤³ö£¬»î¶¯½áÊø
	local	name1, name2
	if no1_num <= 1 then
		--½±ÀøÈý¼×
		if key[0] ~= nil and mod( key[0], 3 ) > 0 then
			x808003_OnPlyBounty( sceneId, guid[0], 1, tabId )
		else
			guid[0]	= nil
		end
		if key[1] ~= nil and mod( key[1], 3 ) > 0 then
			x808003_OnPlyBounty( sceneId, guid[1], 2, tabId )
		else
			guid[1]	= nil
		end
		if key[2] ~= nil and mod( key[2], 3 ) > 0 then
			x808003_OnPlyBounty( sceneId, guid[2], 3, tabId )
		else
			guid[2]	= nil
		end
		--»î¶¯½áÊø
		x808003_OnActivityEnd( sceneId, m_actId, tabId )
		--È«Çò¹«¸æ
		name1	= x808003_GetPlyName( sceneId, guid[0] )
		name2	= x808003_GetPlyName( sceneId, guid[1] )
		str		= format( x808003_g_Msg["n_bny"], ActInfo.minLev )
		x808003_MyGlobalNews( sceneId, str.."TrÕng Nguyên "..name1..", Bäng Nhãn "..name2.."." )

	--¼´½«¿ªÊ¼¾öÈü
	elseif no1_num == 2 then

	--¼´½«¿ªÊ¼ËÄÇ¿Èü£¬µ±È»Ò²ÐíÖ»ÓÐÈýÇ¿
	elseif no1_num <= 4 then

	end
	return no1_num

end

--**********************************
--»î¶¯½áÊø
--**********************************
function x808003_OnActivityEnd( sceneId, actId, tabId )

	local	m_actId	= actId

	SetActivityParam( sceneId, m_actId, x808003_g_ActParam["pha"], 0 )			--±£´æ»î¶¯½×¶Î
	SetActivityParam( sceneId, m_actId, x808003_g_ActParam["tab"], -1 )			--±£´æ±íµ¥ID
	StopOneActivity( sceneId, m_actId )
	HitParadeReleaseTab( sceneId, tabId )
	
	--Add Log
	LogInfo	= format( "[TAOSHA]: x808003_OnActivityEnd( sceneId=%d, actId=%d, tabId=%d )",
		sceneId, actId, tabId )
	MissionLog( sceneId, LogInfo )

end

--**********************************
--¸ù¾ÝÍæ¼ÒµÈ¼¶»ñÈ¡×é±ðÐÅÏ¢
--**********************************
function x808003_GetGroupInfo( sceneId, selfId )

	if LuaFnIsObjValid( sceneId, selfId ) ~= 1 then
		return nil
	end

	local	lev			= GetLevel( sceneId, selfId )
	local	ActInfo	= nil
	local	minl		= 0
	local	maxl		= 0
	for i = 1, getn( x808003_g_Act ) do
		ActInfo			= x808003_g_Act[i]
		minl				= GetActivityParam( sceneId, ActInfo.id, x808003_g_ActParam["minl"] )
		maxl				= GetActivityParam( sceneId, ActInfo.id, x808003_g_ActParam["maxl"] )
		if lev >= ActInfo.minLev and	--ÊÊºÏµÈ¼¶
			lev <= ActInfo.maxLev and
			minl > 0 and								--´Ë»î¶¯ÒÑ¿ªÆô
			maxl > 0 then
			break
		else
			ActInfo		= nil
		end
	end
	if ActInfo == nil then	--Ã»ÓÐÕÒµ½Õâ¸ö×é±ðµÄ»î¶¯
		return nil
	end
	return ActInfo.id, ActInfo.minLev, ActInfo.maxLev

end

--**********************************
--ÊÇ·ñ´¦ÔÚ±¨Ãû½×¶Î
--**********************************
function x808003_IsJoinDoing( sceneId, selfId )

	local	ActID, _, _	= x808003_GetGroupInfo( sceneId, selfId )
	if ActID == nil then
		return 0
	end

	ret	= GetActivityParam( sceneId, ActID, x808003_g_ActParam["pha"] )
	ret	= ret - floor(ret/10) * 10
	if ret == 1 then
		return 1
	end
	return 0

end

--**********************************
--»ñÈ¡±íµ¥ID
--**********************************
function x808003_GetTableID( sceneId, selfId )

	local	ActID, _, _	= x808003_GetGroupInfo( sceneId, selfId )
	if ActID == nil then
		return 0
	end

  return GetActivityParam( sceneId, ActID, x808003_g_ActParam["tab"] )

end

--**********************************
--»ñÈ¡±ÈÎä»ØºÏÊý
--**********************************
function x808003_GetRound( sceneId, selfId )

	local	ActID, _, _	= x808003_GetGroupInfo( sceneId, selfId )
	if ActID == nil then
		return 0
	end

	ret	= GetActivityParam( sceneId, ActID, x808003_g_ActParam["pha"] )
	return floor(ret/10)

end

--**********************************
--»ñÈ¡µ¥ÂÖÖ´ÐÐÊ±¼ä
--**********************************
function x808003_GetCurrentUnitTime( sceneId, selfId, TickTime )

	local	ActID, _, _	= x808003_GetGroupInfo( sceneId, selfId )
	if ActID == nil then
		return 0
	end

	tim	= GetActivityParam( sceneId, ActID, x808003_g_ActParam["unt"] )
	ret	= floor( tim * x808003_g_TickTime / TickTime )
	return ret

end

--**********************************
--»ñÈ¡Ò»¸ö»ØºÏÖÐµÄ±¨ÃûÊ±¼ä³¤¶È
--**********************************
function x808003_GetJoinTime( sceneId, TickTime )

	--¸Ãº¯ÊýÖ»ÄÜÊ¹ÓÃÈ«¾Ö±äÁ¿Óëº¯Êý´«²Î
	--Ô­Òò£º±¨Ãû³¡¾°£¨ËÕÖÝ£©¡¢±ÈÎä³¡¾°£¨¸±±¾£©ÔÚ²»Í¬Ïß³Ì£¬¸Ãº¯Êý»áÔÚ²»Í¬³¡¾°Ëù¹ÒÆðµÄ½Å±¾ÖÐµ÷ÓÃ
	ret	= floor( x808003_g_JoinTime * x808003_g_TickTime / TickTime )
	return ret

end

--**********************************
--»ñÈ¡Ò»¸ö»ØºÏÖÐµÄ±ÈÎäÊ±¼ä³¤¶È
--**********************************
function x808003_GetAttackTime( sceneId, TickTime )

	--¸Ãº¯ÊýÖ»ÄÜÊ¹ÓÃÈ«¾Ö±äÁ¿Óëº¯Êý´«²Î
	--Ô­Òò£º±¨Ãû³¡¾°£¨ËÕÖÝ£©¡¢±ÈÎä³¡¾°£¨¸±±¾£©ÔÚ²»Í¬Ïß³Ì£¬¸Ãº¯Êý»áÔÚ²»Í¬³¡¾°Ëù¹ÒÆðµÄ½Å±¾ÖÐµ÷ÓÃ
	ret	= floor( x808003_g_AttackTime * x808003_g_TickTime / TickTime )
	return ret

end

--**********************************
--¸ù¾ÝGUID»ñÈ¡Íæ¼ÒÃû³Æ
--**********************************
function x808003_GetPlyName( sceneId, guid )

	--Íæ¼ÒÊÇ·ñÔÚ¸Ã³¡¾°
	if guid == nil then
		return "[ tr¯ng ]"
	end
	ObjId		= LuaFnGuid2ObjId( sceneId, guid )
	if LuaFnIsObjValid( sceneId, ObjId ) ~= 1 then
		str		= format( "[%0X]", guid )
		return str
	end

	objNam	= GetName( sceneId, ObjId )
	if objNam ~= nil then
		str		= "#{_INFOUSR"..objNam.."}"
	else
		str		= "[ tr¯ng ]"
	end
	return str

end

--**********************************
--Èý¼×½±Àø
--**********************************
function x808003_OnPlyBounty( sceneId, guid, place, tabId )

	--Ö»¹ØÐÄÇ°Èý¼×
	if place < 1 or place > 3 then
		return
	end
	--Íæ¼ÒÊÇ·ñÔÚ¸Ã³¡¾°
	if guid == nil then
		return
	end

	--¼ì²é²ÎÈü³É¼¨
	local	guid_tmp
	local	key_tmp
	local	isFind				= 0
	for i = 0, x808003_g_CareResultMax do
		guid_tmp, key_tmp	= HitParadeGetPlyInfo( sceneId, tabId, i )
		if guid_tmp ~= nil and key_tmp ~= nil and guid_tmp == guid then
			isFind					= 1
		end
	end
	if isFind == 0 then
		--Add Log
		LogInfo	= format( "[TAOSHA]: x808003_OnPlyBounty( sceneId=%d, GUID=%0X ), Not Find",
			sceneId,
			guid )
		MissionLog( sceneId, LogInfo )
		return
	end

	ObjId		= LuaFnGuid2ObjId( sceneId, guid )
	if LuaFnIsObjValid( sceneId, ObjId ) ~= 1 then
		--Add Log
		LogInfo	= format( "[TAOSHA]: x808003_OnPlyBounty( sceneId=%d, GUID=%0X ), Not OnScene",
			sceneId,
			guid )
		MissionLog( sceneId, LogInfo )
		return
	end

	local	lev		= GetLevel( sceneId, ObjId )
	local	gold	= 0
	--×´Ôª
	local ran1 = random(1,100)
	if place == 1 then

		if ran1 < x808003_g_rate_1st then
			local ranit1=random(1,getn(x808003_g_thuong))
			--TryRecieveItem(sceneId,selfId,x808003_g_thuong[ranit1], QUALITY_MUST_BE_CHANGE )
			local nBagIndex	= LuaFnTryRecieveItem( sceneId, ObjId, x808003_g_thuong[ranit1], 1 )

			if nBagIndex == -1
					x808003_MsgBox( sceneId, ObjId, "R¤t tiªc, không gian tay näi không ðü" )
			else
			szTranEqp	= GetBagItemTransfer( sceneId, ObjId, nBagIndex )
			end
		end
		gold	= lev * 1000
		AddMoney( sceneId, ObjId, gold )
	--°ñÑÛ
	elseif place == 2 then
		if ran1 < x808003_g_rate_2nd then
			local ranit2=random(1,getn(x808003_g_thuong))
			--TryRecieveItem(sceneId,selfId,x808003_g_thuong[ranit2], QUALITY_MUST_BE_CHANGE )
			local nBagIndex	= LuaFnTryRecieveItem( sceneId, ObjId, x808003_g_thuong[ranit2], 1 )

			if nBagIndex == -1
				x808003_MsgBox( sceneId, ObjId, "R¤t tiªc, không gian tay näi không ðü" )
			else
				szTranEqp	= GetBagItemTransfer( sceneId, ObjId, nBagIndex )
			end
		end		
		gold	= lev * 500
		AddMoney( sceneId, ObjId, gold )
	--Ì½»¨
	elseif place == 3 then
		if ran1 < x808003_g_rate_3rd then
			local ranit3=random(1,getn(x808003_g_thuong))
			--TryRecieveItem(sceneId,selfId,x808003_g_thuong[ranit3], QUALITY_MUST_BE_CHANGE )
			local nBagIndex	= LuaFnTryRecieveItem( sceneId, ObjId, x808003_g_thuong[ranit3], 1 )

			if nBagIndex == -1
				x808003_MsgBox( sceneId, ObjId, "R¤t tiªc, không gian tay näi không ðü" )
			else
				szTranEqp	= GetBagItemTransfer( sceneId, ObjId, nBagIndex )
			end
		end
		gold	= lev * 200
		AddMoney( sceneId, ObjId, gold )
	end

	--½ðÇ®½±Àø


	--ÎïÆ·½±Àø
	local	item_lst	=
	{
		--×´Ôª£¬¶þ¼¶±¦Ê¯
		{ 50131001, 50131002, 50131003, 50131004, 50131005, 30503134, 30503135, 30503136, 30503137},
		--°ñÑÛ£¬¶þ¼¶±¦Ê¯
		{ 50131001, 50131002, 50131003, 50131004, 50131005, 30503134, 30503135, 30503136, 30503137},
		--Ì½»¨£¬Ò»¼¶±¦Ê¯
		{ 50131001, 50131002, 50131003, 50131004, 50131005, 30503134, 30503135, 30503136, 30503137},
	}
	local	item_unt	= item_lst[place]
	local	item_rnd	= random( getn( item_unt ) )
	local	item_nam	= GetItemName( sceneId, item_unt[item_rnd] )
	if item_nam ~= nil then
		x808003_MsgBox( sceneId, ObjId, "ÐÕt ðßþc "..item_nam )
	end

	--local nBagIndex	= LuaFnTryRecieveItem( sceneId, ObjId, item_unt[item_rnd], 1 )
	--local	szTranEqp	= nil
	--if  nBagIndex == -1 then
	--	x808003_MsgBox( sceneId, ObjId, "R¤t tiªc, không gian tay näi không ðü" )
	--else
	--	szTranEqp			= GetBagItemTransfer( sceneId, ObjId, nBagIndex )
	--end


	local	title_lst	=
	{
		{ 136,	"#cff99ccTÖ Võ TrÕng Nguyên" },		--×´Ôª
		{ 137,	"#cff99ccTÖ Võ Bäng Nhãn" },		--°ñÑÛ
		{ 138,	"#cff99ccTÖ Võ Thám Hoa" },		--Ì½»¨
	}
	local	title			= title_lst[place]
	x808003_MsgBox( sceneId, ObjId, "ÐÕt ðßþc "..title[2].." danh hi®u" )
	LuaFnAwardTitle( sceneId, ObjId, 7, title[1], 7*24 )	--³ÆºÅµÄÓÐÐ§ÆÚÒ»ÖÜ£¬UsefulLifeµ¥Î»Ð¡Ê±
	LuaFnDispatchAllTitle( sceneId, ObjId )								--¸üÐÂËùÓÐ³ÆºÅµ½CLIENT
	
	local	strMsg
	local	rndMsg		= random( 3 )
	if szTranEqp ~= nil then
		if rndMsg == 1 then	
		  strMsg	= format( "#W#{_INFOUSR%s}#P trong ðÕi hµi tÖ võ ðã áp ðäo qu¥n hùng, khiªn thiên hÕ anh hùng khen ngþi không ng¾t, ðÕt t¾i danh hi®u #Y%s#P trong thÑc trao giäi các ngß¶i üng hµ nhi®t tình ðã gØi lên #W#{_INFOMSG%s}#P và #W#{_MONEY%d}#P tö lòng yêu thích.",
		  	LuaFnGetName( sceneId, ObjId ),
		  	title[2],
		  	szTranEqp, gold )
		elseif rndMsg == 2 then
			strMsg	= format( "#W#{_INFOUSR%s}#P · ðÕi hµi tÖ võ l¥n này ðã bi¬u hi®n xu¤t chúng, kinh ngÕc ðªn tri«u ðình, ban thß·ng riêng Danh hi®u #W%s#P cùng #W#{_INFOMSG%s}#P và #W#{_MONEY%d}#P ð¬ th¬ hi®n hoàng ân.",
				LuaFnGetName( sceneId, ObjId ),
				title[2],
				szTranEqp, gold )
		else
			strMsg	= format( "#W#{_INFOUSR%s}#P do ðoÕt ðßþc danh hi®u #W%s#P trong ðÕi hµi tÖ võ này ðã làm cho các môn phái ðßþc dß½ng danh giang h°, chß·ng môn môn phái này r¤t là hài lòng, lÕi t£ng thêm #W#{_INFOMSG%s}#P và #W#{_MONEY%d}#P l¤y công ðó làm gß½ng sáng. ",
				LuaFnGetName( sceneId, ObjId ),
				title[2],
				szTranEqp, gold )
		end
		x808003_MyGlobalNews( sceneId, strMsg )
	end

end

--**********************************
--ÐÑÄ¿ÌáÊ¾
--**********************************
function x808003_MsgBox( sceneId, selfId, Msg )

	if Msg == nil then
		return
	end
	--ÊÇ·ñ´¦ÓÚÎÞ·¨Ö´ÐÐÂß¼­µÄ×´Ì¬
	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 then
		return
	end

	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
	--Add Log
	LogInfo	= format( "[TAOSHA]: x808003_MsgBox( sceneId=%d, GUID=%0X ), %s",
		sceneId,
		LuaFnObjId2Guid( sceneId, selfId ),
		Msg )
	MissionLog( sceneId, LogInfo )

end

--**********************************
--È«Çò¹«¸æ
--**********************************
function x808003_MyGlobalNews( sceneId, Msg )

	if Msg == nil then
		return
	end

	AddGlobalCountNews( sceneId, Msg )
	--Add Log
	MissionLog( sceneId, "[TAOSHA]: "..Msg )

end
