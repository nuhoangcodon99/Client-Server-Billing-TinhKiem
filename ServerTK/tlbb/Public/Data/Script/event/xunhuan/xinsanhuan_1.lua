-- Á¬»·¸±±¾ÈÎÎñ
-- »Æ½ðÖ®Á´

--************************************************************************
--MisDescBegin

-- ½Å±¾ºÅ
x050220_g_ScriptId = 050220

---- ÈÎÎñºÅ
x050220_g_MissionId = 1256					--1256 »Æ½ðÖ®Á´--1257 Ðþ·ðÖé--1258 ÈÛÑÒÖ®µØ

---- ÉÏÒ»¸öÈÎÎñµÄ ID
---- g_MissionIdPre = 1260

---- ÈÎÎñÄ¿±ê NPC
x050220_g_Name = "Hà Duy®t "

--ÈÎÎñ¹éÀà
x050220_g_MissionKind = 8

--ÈÎÎñµÈ¼¶
x050220_g_MissionLevel = 10000

-- ÈÎÎñÎÄ±¾ÃèÊö
x050220_g_MissionName = "Hoàng Kim Chi Liên"
x050220_g_MissionInfo = "    "														-- ÈÎÎñÃèÊö
x050220_g_MissionTarget = "    #{LLFBM_80918_1}"						-- ÈÎÎñÄ¿±ê
--x050220_g_ContinueInfo = "    ÄãÃÇ×¼±¸ºÃÁË¾ÍÇëÇ°È¥ÖñÁÖÏûÃðºìÐÜÍõ£¡"					-- Î´Íê³ÉÈÎÎñµÄnpc¶Ô»°
x050220_g_SubmitInfo = "#{LLFB_80816_19}"										-- Ìá½»Ê±µÄ´ð¸´
x050220_g_MissionComplete = "#{LLFB_80902_1}"	--Íê³ÉÈÎÎñnpcËµµÄ»°

x050220_g_IsMissionOkFail = 0														-- 0ºÅË÷Òý£ºµ±Ç°ÈÎÎñÊÇ·ñÍê³É(0Î´Íê³É£»1Íê³É£»2Ê§°Ü)
x050220_g_IsSmallMonster = 1														-- 1 ºÅË÷Òý£ºÉ±ÐþÀ×ÆÂÍÁ·ËµÄÊýÁ¿
x050220_g_IsBossNiuQu = 2																-- 2 ºÅË÷Òý£ºÉ±Å£ÇúµÄÊýÁ¿
x050220_g_IsBossNiuQi = 3																-- 3 ºÅË÷Òý£ºÉ±Å£ÆæµÄÊýÁ¿
x050220_g_IsBossWang = 4																-- 4 ºÅË÷Òý£ºÉ±ÍõÑÖµÄÊýÁ¿
x050220_g_IsFindGoods = 5																-- 5 ºÅË÷Òý£ºÊÇ·ñÕÒµ½»Æ½ðÖ®Á´
x050220_g_Param_sceneid = 6															-- 6ºÅË÷Òý£ºµ±Ç°ÈÎÎñÊý¾ÝµÄ6Î»ÖÃÉèÖÃÎª³¡¾°ID

-- ÈÎÎñÍê³ÉÇé¿ö,ÄÚÈÝ¶¯Ì¬Ë¢ÐÂ,´ÓÈÎÎñ²ÎÊýµÄµÚ1Î»¿ªÊ¼
x050220_g_Custom	= { {id="Ðã giªt chªt#r  Huy«n Lôi Pha Th± Phï",num=60},{id="  Ngßu Khúc",num=1},{id="  Ngßu KÏ",num=1},{id="  Vß½ng Diêm",num=1},{id="Ðã tìm th¤y#r  Hoàng Kim Chi Liên",num=1} }

--MisDescEnd
--************************************************************************

x050220_g_huangjinzhilian = 40004453	--»Æ½ðÖ®Á´
x050220_g_heyuanxin = 40004460	--ºÎÔÃµÄÐÅ

x050220_g_SmallMonster = "Huy«n Lôi Pha Th± Phï"			--Ð¡¹Ö
x050220_g_NiuQu = "Ngßu Khúc"							--Å£Çú
x050220_g_NiuQi = "Ngßu KÏ"							--Å£Ææ
x050220_g_BossWang = "Vß½ng Diêm"					-- bossÍõÑÖ

SmallMonsterIDTbl = {13000,13001,13002,13003,13004,13005,13006,13007,13008,13009}			--Ð¡¹Ö
NiuQuIDTbl = {13020,13021,13022,13023,13024,13025,13026,13027,13028,13029}							--Å£Çú
NiuQiIDTbl = {13040,13041,13042,13043,13044,13045,13046,13047,13048,13049}							--Å£Ææ
BossWangIDTbl = {13060,13061,13062,13063,13064,13065,13066,13067,13068,13069}					-- bossÍõÑÖ

x050220_g_SmallMonsterAPos = { --AµØÐ¡¹Ö×ø±ê
{124,	201},{128,	201},{136,	201},{142,	201},{148,	197},
{148,	193},{148,	189},{148,	186},{148,	181},{143,	174},
{138,	174},{132,	174},{126,	174},{159,	183},{159,	189}}

x050220_g_SmallMonsterBPos = { --BµØÐ¡¹Ö×ø±ê
{55,	85},{64,	85},{75,	85},{86,	84},{97,	84},
{107,	84},{107,	70},{97,	71},{85,	69},{74,	68},
{64,	68},{55,	68},{53,	56},{75,	57},{85,	58},
{56,	45},{75,	46},{85,	46},{61,	37},{66,	37}}

x050220_g_SmallMonsterCPos = { --CµØÐ¡¹Ö×ø±ê
{165,	43},{171,	43},{168,	45},{166,	49},{172,	49},
{157,	61},{164,	61},{160,	64},{157,	68},{164,	67},
{176,	60},{182,	61},{179,	63},{176,	66},{182,	66},
{173,	79},{178,	81},{175,	82},{171,	84},{177,	86},
{197,	68},{205,	70},{200,	72},{196,	74},{204,	76}
}

x050220_g_NumText_Main = 1					-- ½ÓÈÎÎñµÄÑ¡Ïî
x050220_g_NumText_EnterCopyScene = 2		-- ÒªÇó½øÈë¸±±¾µÄÑ¡Ïî

x050220_g_CopySceneMap = "xuanmuchang.nav"
x050220_g_CopySceneArea = "xuanmuchang_area.ini"
x050220_g_CopySceneMonsterIni = "xuanmuchang_monster.ini"

x050220_g_CopySceneType = FUBEN_HUANGJINZHILIAN		-- ¸±±¾ÀàÐÍ£¬¶¨ÒåÔÚScriptGlobal.luaÀïÃæ
x050220_g_LimitMembers = 3					-- ¿ÉÒÔ½ø¸±±¾µÄ×îÐ¡¶ÓÎéÈËÊý
--x050220_g_LevelLimit = 30					-- ¿ÉÒÔ½øÈë¸±±¾µÄ×îµÍ¼¶±ð
x050220_g_TickTime = 5						-- »Øµ÷½Å±¾µÄÊ±ÖÓÊ±¼ä£¨µ¥Î»£ºÃë/´Î£©
x050220_g_LimitTotalHoldTime = 360			-- ¸±±¾¿ÉÒÔ´æ»îµÄÊ±¼ä£¨µ¥Î»£º´ÎÊý£©,Èç¹û´ËÊ±¼äµ½ÁË£¬ÔòÈÎÎñ½«»áÊ§°Ü
x050220_g_CloseTick = 6						-- ¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±£¨µ¥Î»£º´ÎÊý£©
x050220_g_NoUserTime = 30					-- ¸±±¾ÖÐÃ»ÓÐÈËºó¿ÉÒÔ¼ÌÐø±£´æµÄÊ±¼ä£¨µ¥Î»£ºÃë£©

x050220_g_Fuben_X = 38
x050220_g_Fuben_Z = 220
x050220_g_Back_X = 295
x050220_g_Back_Z = 68

x050220_g_TakeTimes = 5											-- Ã¿Ìì×î¶àÁìÈ¡´ÎÊý
--**********************************
-- ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x050220_OnDefaultEvent( sceneId, selfId, targetId )	-- µã»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	if GetName( sceneId, targetId ) ~= x050220_g_Name then		-- ÅÐ¶Ï¸ÃnpcÊÇ·ñÊÇ¶ÔÓ¦ÈÎÎñµÄnpc
		return
	end

	local numText = GetNumText()

	if IsHaveMission( sceneId, selfId, x050220_g_MissionId ) == 0 then
		if numText == x050220_g_NumText_Main then
			if x050220_CheckAccept( sceneId, selfId, targetId ) > 0 then
				--·¢ËÍÈÎÎñ½ÓÊÜÊ±ÏÔÊ¾µÄÐÅÏ¢
				BeginEvent( sceneId )
					AddText( sceneId, "#{LLFB_80816_2}" )
				EndEvent( )
				DispatchMissionInfo( sceneId, selfId, targetId, x050220_g_ScriptId, x050220_g_MissionId )
			end
		end
	else
		if numText == x050220_g_NumText_Main then
			local bDone = x050220_CheckSubmit( sceneId, selfId )

			BeginEvent( sceneId )
				--AddText( sceneId, x050220_g_MissionName )
	
				if bDone == 1 then
					AddText( sceneId, x050220_g_SubmitInfo )
				else
						AddText( sceneId, "#{LLFB_80816_8}" )
						AddNumText( sceneId, x050220_g_ScriptId, "Tiªn vào Huy«n Lôi Pha", 10, x050220_g_NumText_EnterCopyScene )
						EndEvent( sceneId )
					DispatchEventList( sceneId, selfId, targetId )
					return
				end
			EndEvent( )
			--DispatchMissionDemandInfo( sceneId, selfId, targetId, x050220_g_ScriptId, x050220_g_MissionId, bDone )
			DispatchMissionContinueInfo( sceneId, selfId, targetId, x050220_g_ScriptId, x050220_g_MissionId )
		elseif numText == x050220_g_NumText_EnterCopyScene then
			x050220_AcceptEnterCopyScene( sceneId, selfId, targetId )
		end
	end
end

--**********************************
-- ²»ÄÜÓÐÆäËûµÄÈÎÎñ£¬Ã»ÓÐ·µ»Ø 0£¬ÓÐ·µ»Ø 1
--**********************************
function x050220_CheckConflictMission( sceneId, selfId )
	local missionId = 0

	for missionId = 1256+1, 1258 do
		if IsHaveMission( sceneId, selfId, missionId ) > 0 then
			return 1
		end
	end

	return 0
end

--**********************************
-- ÁÐ¾ÙÊÂ¼þ
--**********************************
function x050220_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x050220_g_Name then		--ÅÐ¶Ï¸ÃnpcÊÇ·ñÊÇ¶ÔÓ¦ÈÎÎñµÄnpc
		return
	end

	-- ²»ÄÜÓÐÆäËûµÄÈÎÎñ
	if x050220_CheckConflictMission( sceneId, selfId ) == 1 then
		return
	end

	AddNumText( sceneId, x050220_g_ScriptId, x050220_g_MissionName, 4, x050220_g_NumText_Main )
end

--**********************************
-- ¼ì²â½ÓÊÜÌõ¼þ
--**********************************
function x050220_CheckAccept( sceneId, selfId, targetId )
	-- ÒÑ¾­½Ó¹ýÔò²»·ûºÏÌõ¼þ
	if IsHaveMission( sceneId, selfId, x050220_g_MissionId ) > 0 then
		return 0
	end

	-- ²»ÄÜÓÐÆäËûµÄÈÎÎñ
	if x050220_CheckConflictMission( sceneId, selfId ) == 1 then
		return 0
	end
	
	-- Ò»ÌìÖ»ÄÜÁì x050220_g_TakeTimes ´Î
	local DayTimes, oldDate, nowDate, takenTimes

	DayTimes = GetMissionData( sceneId, selfId, MD_XINSANHUAN_1_DAYTIME )
	oldDate = mod( DayTimes, 100000 )
	takenTimes = floor( DayTimes/100000 )

	nowDate = GetDayTime()
	if nowDate ~= oldDate then
		takenTimes = 0
		SetMissionData( sceneId, selfId, MD_XINSANHUAN_1_DAYTIME, nowDate )
	end

	--5´Î
	if takenTimes >= x050220_g_TakeTimes then
		x050220_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_3}" )
		return 0
	end

	-- ¼ì²âÍæ¼ÒÊÇ·ñ·ûºÏ¸Õ·ÅÆúÈÎÎñ
	local iTime = GetMissionData( sceneId, selfId, MD_XINSANHUAN_1_LAST )			-- ÉÏÒ»´Î·ÅÆúÈÎÎñµÄÊ±¼ä(µ¥Î»£ºÒ»¿ÌÖÓ)
	--begin modified by zhangguoxin 090208
	--local CurTime = GetHourTime()												-- µ±Ç°Ê±¼ä(µ¥Î»£ºÒ»¿ÌÖÓ)
	local CurTime = GetQuarterTime()												-- µ±Ç°Ê±¼ä(µ¥Î»£ºÒ»¿ÌÖÓ)
	--end modified by zhangguoxin 090208

	if iTime+1  >= CurTime then
		x050220_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_4}" )
		--return 0
	end
	
	-- µÈ¼¶´ïµ½75
	if GetLevel(sceneId, selfId) < 75 then
		x050220_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_5}" )
		return 0
	end

	-- ËùÓÐÐÄ·¨´ïµ½45
	if x050220_CheckAllXinfaLevel(sceneId, selfId, 45) == 0  then
		x050220_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_5}" )
		return 0
	end

	-- ÉíÉÏÈÎÎñÊýÁ¿ÊÇ·ñ´ïµ½ÉÏÏÞ20¸ö
	if GetMissionCount( sceneId, selfId ) >= 20 then						
		x050220_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_6}" )
		return 0
	end

	return 1
end

--**********************************
--½ÓÊÜ
--**********************************
function x050220_OnAccept( sceneId, selfId, targetId )
	-- ¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	AddMission( sceneId, selfId, x050220_g_MissionId, x050220_g_ScriptId, 1, 0, 0 )			-- kill¡¢area¡¢item
	if IsHaveMission( sceneId, selfId, x050220_g_MissionId ) <= 0 then
		return
	end
	
	--ÐèÒª¿Û³ýÒ»´ÎÖÐ¼äÈÎÎñÎïÆ·»Æ½ðÖ®Á´
	local num = LuaFnGetAvailableItemCount( sceneId, selfId, x050220_g_huangjinzhilian )
	if num > 0 then
		LuaFnDelAvailableItem( sceneId, selfId, x050220_g_huangjinzhilian, num )
	end
	
	-- Ò»ÌìÖ»ÄÜÁì x050220_g_TakeTimes ´Î
	local DayTimes = GetMissionData( sceneId, selfId, MD_XINSANHUAN_1_DAYTIME )
	local takenTimes = floor( DayTimes/100000 )
	DayTimes = (takenTimes+1)*100000 + GetDayTime()
	SetMissionData( sceneId, selfId, MD_XINSANHUAN_1_DAYTIME, DayTimes )

--	SetMissionEvent( sceneId, selfId, x050220_g_MissionId, 4 ) -- ×¢²á OnLockedTarget ÊÂ¼þ

	local misIndex = GetMissionIndexByID( sceneId, selfId, x050220_g_MissionId )

	SetMissionByIndex( sceneId, selfId, misIndex, x050220_g_IsMissionOkFail, 0 )	-- ÈÎÎñÍê³ÉÇé¿öÖÃÎªÎ´Íê³É
	SetMissionByIndex( sceneId, selfId, misIndex, x050220_g_IsSmallMonster, 0 )
	SetMissionByIndex( sceneId, selfId, misIndex, x050220_g_IsBossNiuQu, 0 )
	SetMissionByIndex( sceneId, selfId, misIndex, x050220_g_IsBossNiuQi, 0 )
	SetMissionByIndex( sceneId, selfId, misIndex, x050220_g_IsBossWang, 0 )
	SetMissionByIndex( sceneId, selfId, misIndex, x050220_g_IsFindGoods, 0 )
	SetMissionByIndex( sceneId, selfId, misIndex, x050220_g_Param_sceneid, -1 )		-- ¸±±¾ºÅÖÃÎª -1

	--ÏÔÊ¾ÄÚÈÝ¸æËßÍæ¼ÒÒÑ¾­½ÓÊÜÁËÈÎÎñ
	BeginEvent( sceneId )
		AddText( sceneId, "#{LLFB_80816_8}" )
		AddNumText( sceneId, x050220_g_ScriptId, "Tiªn vào Huy«n Lôi Pha", 10, x050220_g_NumText_EnterCopyScene )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ÇëÇó½øÈë¸±±¾³¡¾°
--**********************************
function x050220_AcceptEnterCopyScene( sceneId, selfId, targetId )
	if IsHaveMission( sceneId, selfId, x050220_g_MissionId ) > 0 then					-- ÓÐÈÎÎñ²Å¿ÉÒÔ×ßÕâÀï
		local misIndex = GetMissionIndexByID( sceneId, selfId, x050220_g_MissionId )
		local copysceneid = GetMissionParam( sceneId, selfId, misIndex, x050220_g_Param_sceneid )
		if copysceneid >= 0 then												-- ½ø¹ý¸±±¾
		-- ½«×Ô¼º´«ËÍµ½¸±±¾³¡¾°
			if GetMissionParam( sceneId, selfId, misIndex, x050220_g_IsMissionOkFail ) == 2 then
				x050220_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_7}" )
			elseif IsCanEnterCopyScene( copysceneid, GetHumanGUID( sceneId, selfId ) ) == 1 then
				NewWorld( sceneId, selfId, copysceneid, x050220_g_Fuben_X, x050220_g_Fuben_Z )
			else
				x050220_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_7}" )
			end
			return
		end

		if LuaFnHasTeam( sceneId, selfId ) == 0 then
			x050220_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_9}" )
			return
		end

		if LuaFnIsTeamLeader( sceneId, selfId ) == 0 then
			x050220_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_10}" )
			return
		end
		
		local teamMemberCount = GetTeamMemberCount(sceneId, selfId);
		local nearMemberCount = GetNearTeamCount(sceneId, selfId);
		if not nearMemberCount or nearMemberCount < x050220_g_LimitMembers then
			x050220_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_11}" )
			return
		end

		if not teamMemberCount or teamMemberCount ~= nearMemberCount then
			x050220_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_12}" )
			return
		end
		
		local outmessage = "#{FB0}"
		local issatisfy = 1 --ÊÇ·ñÂú×ãÌõ¼þ
		local memberID = 0
		local isAccept = 0 --ÊÇ·ñÓÐÈËÒÑ¾­½ÓÁËÈÎÎñ
		local Acceptmessage = "" --ÒÑ¾­½ÓÁËÈÎÎñµÄÌáÊ¾ÓëÆäËû¹«¹²ÌáÊ¾²»Í¬
		for	i = 0, nearMemberCount - 1 do
			memberID = GetNearTeamMember( sceneId, selfId, i )
			outmessage = outmessage.."#r#BThành viên   "..GetName(sceneId, memberID)
			if GetLevel(sceneId, memberID) >= 75 then
				outmessage = outmessage.."#{FB1}"
			else
				outmessage = outmessage.."#{FB2}"
				issatisfy = 0
			end
			
			if x050220_CheckAllXinfaLevel(sceneId, memberID, 45) == 1 then
				outmessage = outmessage.."#{FB3}"
			else
				outmessage = outmessage.."#{FB4}"
				issatisfy = 0
			end
			
			if IsHaveMission( sceneId, memberID, x050220_g_MissionId ) > 0 then --ÊÇ·ñÓÐÈÎÎñ
				local misIndex = GetMissionIndexByID( sceneId, memberID, x050220_g_MissionId )

			 	if GetMissionParam( sceneId, memberID, misIndex, x050220_g_IsMissionOkFail ) == 0 then --ÊÇ·ñÊÇÊ§°ÜµÄÈÎÎñ
			 		if GetMissionParam( sceneId, memberID, misIndex, x050220_g_Param_sceneid ) == -1 then --ÊÇ·ñÊÇÒÑ½ÓµÄÈÎÎñ
						outmessage = outmessage.."#{FB5}"
					else
						outmessage = outmessage.."#{FB6}"
						issatisfy = 0
						
						if isAccept == 0 then
							Acceptmessage = "#G"..GetName(sceneId, memberID)
						else
							Acceptmessage = Acceptmessage.."#W. #G"..GetName(sceneId, memberID)
						end
						isAccept = 1
					end
				else
					outmessage = outmessage.."#{FB6}"
					issatisfy = 0
				end
			else
				outmessage = outmessage.."#{FB6}"
				issatisfy = 0
			end
		end

		if isAccept == 1 then
			Acceptmessage = "#{FB7}"..Acceptmessage.."#{FB8}"
			x050220_NotifyFailBox( sceneId, selfId, targetId, Acceptmessage)
			return
		end
		
		if issatisfy == 0 then
			x050220_NotifyFailBox( sceneId, selfId, targetId, outmessage)
			return
		end
		
		--¼ÆËã¸±±¾ÖÐ¹ÖµÄµÈ¼¶....
		local mylevel = 0
		local memId
		local tempMemlevel = 0
		local level0 = 0
		local level1 = 0
	
		for	i = 0, nearMemberCount - 1 do
			memId = GetNearTeamMember(sceneId, selfId, i)
			tempMemlevel = GetLevel(sceneId, memId)
			level0 = level0 + (tempMemlevel ^ 4 )
			level1 = level1 + (tempMemlevel ^ 3 )
		end
	
		if level1 == 0 then
			mylevel = 0
		else
			mylevel = level0/level1
		end
	
		if nearMemberCount == -1 then
			mylevel = GetLevel(sceneId, selfId)
		end
	
		--¼ÆËãµÈ¼¶¶Î....
		local PlayerMaxLevel = GetHumanMaxLevelLimit()
		local iniLevel
		if mylevel < 10 then
			iniLevel = 1
		elseif mylevel < PlayerMaxLevel then
			iniLevel = floor((mylevel-75)/5) + 1
			if iniLevel < 0 then
				iniLevel = 1
			elseif iniLevel > 10 then
				iniLevel = 10
			end
		else
			iniLevel = 10
		end
	
		local smallmonsterId = SmallMonsterIDTbl[1]
		if SmallMonsterIDTbl[iniLevel] then
			smallmonsterId = SmallMonsterIDTbl[iniLevel]
		end
		
		local NiuquId = NiuQuIDTbl[1]
		if NiuQuIDTbl[iniLevel] then
			NiuquId = NiuQuIDTbl[iniLevel]
		end
		
		local NiuqiId = NiuQiIDTbl[1]
		if NiuQiIDTbl[iniLevel] then
			NiuqiId = NiuQiIDTbl[iniLevel]
		end
		
		local BossWangID = BossWangIDTbl[1]
		if BossWangIDTbl[iniLevel] then
			BossWangID = BossWangIDTbl[iniLevel]
		end
		
		--PrintStr("smallmonsterId"..smallmonsterId.." NiuquId"..NiuquId.." NiuqiId"..NiuqiId.." BossWangID"..BossWangID.." mylevel"..mylevel.." iniLevel"..iniLevel)

		local leaderguid = LuaFnObjId2Guid( sceneId, selfId )
		LuaFnSetSceneLoad_Map( sceneId, x050220_g_CopySceneMap )						-- µØÍ¼ÊÇ±ØÐëÑ¡È¡µÄ£¬¶øÇÒ±ØÐëÔÚConfig/SceneInfo.iniÀïÅäÖÃºÃ
		LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
		LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x050220_g_NoUserTime * 1000 )
		LuaFnSetCopySceneData_Timer( sceneId, x050220_g_TickTime * 1000 )
		LuaFnSetCopySceneData_Param( sceneId, 0, x050220_g_CopySceneType )				-- ÉèÖÃ¸±±¾Êý¾Ý£¬ÕâÀï½«0ºÅË÷ÒýµÄÊý¾ÝÉèÖÃÎª999£¬ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êý×Ö×Ô¶¨Òå)
		LuaFnSetCopySceneData_Param( sceneId, 1, x050220_g_ScriptId )					-- ½«1ºÅÊý¾ÝÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼þ½Å±¾ºÅ
		LuaFnSetCopySceneData_Param( sceneId, 2, 0 )							-- ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊý
		LuaFnSetCopySceneData_Param( sceneId, 3, -1 )							-- ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
		LuaFnSetCopySceneData_Param( sceneId, 4, 0 )							-- ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å£¬1¹Ø±Õ
		LuaFnSetCopySceneData_Param( sceneId, 5, 0 )							-- ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊý
		LuaFnSetCopySceneData_Param( sceneId, 6, GetTeamId( sceneId, selfId ) )	-- ±£´æ¶ÓÎéºÅ
		LuaFnSetCopySceneData_Param( sceneId, 7, 0 )							-- É±Ð¡¹ÖµÄÊýÁ¿
		LuaFnSetCopySceneData_Param( sceneId, 8, 0 )							-- ÊÇ·ñÉ±ËÀÅ£Çø
		LuaFnSetCopySceneData_Param( sceneId, 9, 0 )							-- ÊÇ·ñÉ±ËÀÅ£Ææ
		LuaFnSetCopySceneData_Param( sceneId, 10, 0 )							-- ÊÇ·ñË¢³öÁËbossÍõ
		LuaFnSetCopySceneData_Param( sceneId, 11, 0 )							-- Èç¹ûÒªÌáÐÑµÄ»°£¬ÉÏ´ÎÌáÐÑÊ±¼ä£¨ÒòÎªÃ¿2·ÖÌáÐÑÒ»´Î£¬ÐèÒª¼ÇÂ¼Ò»¸öÉÏ´ÎÌáÐÑÊ±¼ä£©
		LuaFnSetCopySceneData_Param( sceneId, 12, smallmonsterId )-- 
		LuaFnSetCopySceneData_Param( sceneId, 13, NiuquId )				-- 
		LuaFnSetCopySceneData_Param( sceneId, 14, NiuqiId )				-- 
		LuaFnSetCopySceneData_Param( sceneId, 15, BossWangID )		-- 
		LuaFnSetCopySceneData_Param( sceneId, 16, mylevel )			-- 

		LuaFnSetSceneLoad_Area( sceneId, x050220_g_CopySceneArea )

		LuaFnSetSceneLoad_Monster( sceneId, x050220_g_CopySceneMonsterIni )

		local bRetSceneID = LuaFnCreateCopyScene( sceneId )						-- ³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êý
		if bRetSceneID > 0 then
				x050220_NotifyFailTips( sceneId, selfId, "D¸ch chuy¬n thành công! Vui lòng ðþi giây lát s¨ d¸ch chuy¬n! " )
			AuditXinSanHuanCreateFuben( sceneId, selfId, 1 )
		else
			x050220_NotifyFailTips( sceneId, selfId, "S¯ lßþng bän sao vßþt quá gi¾i hÕn, ð« ngh¸ lát næa thØ lÕi!" )
		end
	end
end

--**********************************
--¸±±¾ÊÂ¼þ
--**********************************
function x050220_OnCopySceneReady( sceneId, destsceneId )
	LuaFnSetCopySceneData_Param( destsceneId, 3, sceneId )				-- ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	local leaderguid = LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local leaderObjId = LuaFnGuid2ObjId( sceneId, leaderguid )

	if leaderObjId == -1 then											-- ÕÒ²»µ½¸ÃÍæ¼Ò
		return
	end

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then		-- ´¦ÓÚÎÞ·¨Ö´ÐÐÂß¼­µÄ×´Ì¬
		return
	end

	--È¡µÃÍæ¼Ò¸½½üµÄ¶ÓÓÑÊýÁ¿£¨°üÀ¨×Ô¼º£©
	local i, nearMemberCount, member
	local members = {}
	local validmembercount = 0

	nearMemberCount = GetNearTeamCount( sceneId, leaderObjId )
	for i = 0, nearMemberCount - 1 do
		member = GetNearTeamMember( sceneId, leaderObjId, i )
		if IsHaveMission( sceneId, member, x050220_g_MissionId ) > 0 then		-- ÓÐÈÎÎñ
			validmembercount = validmembercount + 1
			members[validmembercount] = member
		end
	end

	local misIndex
	for i = 1, validmembercount do
		if IsHaveMission( sceneId, members[i], x050220_g_MissionId ) > 0 then
			misIndex = GetMissionIndexByID( sceneId, members[i], x050220_g_MissionId )

			if LuaFnIsCanDoScriptLogic( sceneId, members[i] ) == 1 then			-- ´¦ÓÚ¿ÉÒÔÖ´ÐÐÂß¼­µÄ×´Ì¬
				--½«ÈÎÎñµÄµÚ1ºÅÊý¾ÝÉèÖÃÎª¸±±¾µÄ³¡¾°ºÅ
				SetMissionByIndex( sceneId, members[i], misIndex, x050220_g_Param_sceneid, destsceneId )
		--		SetMissionEvent( sceneId, members[i], x050220_g_MissionId, 0 )			-- ¹ØÐÄÉ±¹ÖÊÂ¼þ
				NewWorld( sceneId, members[i], destsceneId, x050220_g_Fuben_X, x050220_g_Fuben_Z )
			end
		end
	end
end

--**********************************
--ÓÐÍæ¼Ò½øÈë¸±±¾ÊÂ¼þ
--**********************************
function x050220_OnPlayerEnter( sceneId, selfId )
end

--**********************************
--objËÀÍö
--**********************************
function x050220_OnDie( sceneId, objId, selfId )--Õâ¸öselfId¿ÉÄÜÊÇ³èÎï
	local objType = GetCharacterType( sceneId, selfId )
	if objType == 3 then --Èç¹ûÊÇ³èÎïµÄ»°£¬°ÑÕâ¸öIDÉèÖÃ³ÉÖ÷ÈËID
		selfId = GetPetCreator( sceneId, selfId )
	end
	
	if selfId == -1 then
		return
	end

	--if IsHaveMission( sceneId, selfId, x050220_g_MissionId ) <= 0 then
	--	return
	--end
	
	--ÊÇ·ñÊÇ¸±±¾
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	--ÊÇ·ñÊÇËùÐèÒªµÄ¸±±¾
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x050220_g_CopySceneType then
		return
	end

	--¸±±¾¹Ø±Õ±êÖ¾
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
	if leaveFlag == 1 then														-- Èç¹û¸±±¾ÒÑ¾­±»ÖÃ³É¹Ø±Õ×´Ì¬£¬ÔòÉ±¹ÖÎÞÐ§
		return
	end

	--È¡µÃµ±Ç°³¡¾°ÀïµÄÈËÊý
	local num = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	
	for i = 0, num - 1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	--È¡µÃÉ±ËÀ¹ÖÎïµÄname
	local szName = GetName( sceneId, objId )
	if szName == x050220_g_SmallMonster then--Ð¡¹ÖGroup
		local KilledMonsterNum = LuaFnGetCopySceneData_Param( sceneId, 7 )
		KilledMonsterNum = KilledMonsterNum + 1
		
		local misIndex = 0
		for i = 0, num - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then						-- ²»ÔÚ³¡¾°µÄ²»×ö´Ë²Ù×÷
				x050220_NotifyFailTips( sceneId, mems[i], "Ðã giªt "..szName.." ðßþc "..KilledMonsterNum.."/60" )
				misIndex = GetMissionIndexByID( sceneId, mems[i], x050220_g_MissionId )
				SetMissionByIndex( sceneId, mems[i], misIndex, x050220_g_IsSmallMonster, KilledMonsterNum )
			end
		end
		
		LuaFnSetCopySceneData_Param( sceneId, 7, KilledMonsterNum ) --ÉèÖÃÉ±Ð¡¹ÖÊýÁ¿
	elseif szName == x050220_g_NiuQu then--Å£Çú
		LuaFnSetCopySceneData_Param( sceneId, 8, 1 ) --ÉèÖÃÅ£Çú±êÖ¾
		
		local misIndex = 0
		for i = 0, num - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then						-- ²»ÔÚ³¡¾°µÄ²»×ö´Ë²Ù×÷
				x050220_NotifyFailTips( sceneId, mems[i], "Ðã giªt "..szName.."ðßþc 1/1" )
				misIndex = GetMissionIndexByID( sceneId, mems[i], x050220_g_MissionId )
				SetMissionByIndex( sceneId, mems[i], misIndex, x050220_g_IsBossNiuQu, 1 )
			end
		end
		
		local otherflag = LuaFnGetCopySceneData_Param( sceneId, 9 ) --È¡µÃÁíÒ»¸öboss±êÖ¾
		local nMonsterNum = GetMonsterCount(sceneId)

		if otherflag == 0 then --ÁíÒ»¸öbossÃ»ÓÐËÀ
			for i=0, nMonsterNum-1 do
				local MonsterId = GetMonsterObjID(sceneId,i)
				LuaFnSendSpecificImpactToUnit(sceneId,MonsterId,MonsterId,MonsterId,5960,0)
				if GetName( sceneId, MonsterId ) == x050220_g_NiuQi then
					--CallScriptFunction((200060), "Paopao",sceneId, x050220_g_NiuQi, "ÐþÀ×ÆÂ", "´ó¸ç£¬ÐÖµÜÌæÄã±¨³ð£¡")
					MonsterTalk(sceneId,MonsterId,"BOSS", "Các ngß¶i th§t là to gan ð¤y #14")
				end
			end
		else
			for i=0, nMonsterNum-1 do
				local MonsterId = GetMonsterObjID(sceneId,i)
				LuaFnCancelSpecificImpact(sceneId,MonsterId,5959)
				LuaFnCancelSpecificImpact(sceneId,MonsterId,5960)
			end
		end
	elseif szName == x050220_g_NiuQi then--Å£Ææ
		LuaFnSetCopySceneData_Param( sceneId, 9, 1 ) --ÉèÖÃÅ£Ææ±êÖ¾
		
		local misIndex = 0
		for i = 0, num - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then						-- ²»ÔÚ³¡¾°µÄ²»×ö´Ë²Ù×÷
				x050220_NotifyFailTips( sceneId, mems[i], "Ðã giªt "..szName.." ðßþc 1/1" )
				misIndex = GetMissionIndexByID( sceneId, mems[i], x050220_g_MissionId )
				SetMissionByIndex( sceneId, mems[i], misIndex, x050220_g_IsBossNiuQi, 1 )
			end
		end
		
		local otherflag = LuaFnGetCopySceneData_Param( sceneId, 8 ) --È¡µÃÁíÒ»¸öboss±êÖ¾
		local nMonsterNum = GetMonsterCount(sceneId)

		if otherflag == 0 then --ÁíÒ»¸öbossÃ»ÓÐËÀ
			for i=0, nMonsterNum-1 do
				local MonsterId = GetMonsterObjID(sceneId,i)
				LuaFnSendSpecificImpactToUnit(sceneId,MonsterId,MonsterId,MonsterId,5960,0)
				if GetName( sceneId, MonsterId ) == x050220_g_NiuQu then
					--CallScriptFunction((200060), "Paopao",sceneId, x050220_g_NiuQu, "ÐþÀ×ÆÂ", "ÐÖµÜ£¬´ó¸çÌæÄã±¨³ð£¡")
					MonsterTalk(sceneId,MonsterId,"BOSS", "Sao các ngß½i dám giªt ðàn em cüa ta #14")
				end
			end
		else
			for i=0, nMonsterNum-1 do
				local MonsterId = GetMonsterObjID(sceneId,i)
				LuaFnCancelSpecificImpact(sceneId,MonsterId,5959)
				LuaFnCancelSpecificImpact(sceneId,MonsterId,5960)
			end
		end
	elseif szName == x050220_g_BossWang then-- bossÍõÑÖ
		local misIndex = 0
		
		for i = 0, num - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then						-- ²»ÔÚ³¡¾°µÄ²»×ö´Ë²Ù×÷
				x050220_NotifyFailTips( sceneId, mems[i], "Ðã giªt "..szName.." ðßþc 1/1" )
				misIndex = GetMissionIndexByID( sceneId, mems[i], x050220_g_MissionId )
				SetMissionByIndex( sceneId, mems[i], misIndex, x050220_g_IsBossWang, 1 )
				AddMonsterDropItem( sceneId, objId, mems[i], x050220_g_huangjinzhilian )
				if random(1,2) == 1 then
					AddMonsterDropItem( sceneId, objId, mems[i], 30700213 )
				end
			end
		end
		
		local BroadcastMsg = "#{LLFB_80816_17}#W#{_INFOUSR$N}#{LLFB_80816_18}"
		BroadcastMsg = gsub( BroadcastMsg, "%$N", GetName( sceneId, selfId ) )
		BroadMsgByChatPipe( sceneId, selfId, BroadcastMsg, 4 )
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )--ÉèÖÃÀë¿ª³¡¾°
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x050220_OnKillObject( sceneId, selfId, objdataId, objId )						-- ²ÎÊýÒâË¼£º³¡¾°ºÅ¡¢Íæ¼ÒobjId¡¢¹ÖÎï±íÎ»ÖÃºÅ¡¢¹ÖÎïobjId
end

--**********************************
--ÓÐÍæ¼ÒÔÚ¸±±¾ÖÐËÀÍöÊÂ¼þ
--**********************************
function x050220_OnHumanDie( sceneId, selfId, killerId )
end

--**********************************
--Àë¿ª¸±±¾
--**********************************
function x050220_Exit( sceneId, selfId )
	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )				-- È¡µÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	NewWorld( sceneId, selfId, oldsceneId, x050220_g_Back_X, x050220_g_Back_Z )
end

--**********************************
--¼ÌÐø
--**********************************
function x050220_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x050220_g_MissionName )
		AddText( sceneId, "Tiªp tøc t¯t" )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x050220_g_ScriptId, x050220_g_MissionId )
end

--**********************************
--·ÅÆú
--**********************************
function x050220_OnAbandon( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x050220_g_MissionId ) == 0 then
		return
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x050220_g_MissionId )
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, x050220_g_Param_sceneid )

	-- ÉèÖÃ·ÅÆúÁ¬»·ÈÎÎñµÄÊ±¼ä
	--begin modified by zhangguoxin 090208
	--local CurTime = GetHourTime()											-- µ±Ç°Ê±¼ä
	local CurTime = GetQuarterTime()											-- µ±Ç°Ê±¼ä
	--end modified by zhangguoxin 090208
	SetMissionData( sceneId, selfId, MD_XINSANHUAN_1_LAST, CurTime )

	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦µÄÈÎÎñ
	DelMission( sceneId, selfId, x050220_g_MissionId )
	
	--ÐèÒª¿Û³ýÒ»´ÎÖÐ¼äÈÎÎñÎïÆ·»Æ½ðÖ®Á´
	local num = LuaFnGetAvailableItemCount( sceneId, selfId, x050220_g_huangjinzhilian )
	if num > 0 then
		LuaFnDelAvailableItem( sceneId, selfId, x050220_g_huangjinzhilian, num )
	end
	
	--ÊÇ·ñÊÇËùÐèÒªµÄ¸±±¾
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )

	if sceneId == copyscene and fubentype == x050220_g_CopySceneType then											-- Èç¹ûÔÚ¸±±¾ÀïÉ¾³ýÈÎÎñ£¬ÔòÖ±½Ó´«ËÍ»Ø
		x050220_NotifyFailTips( sceneId, selfId, "Nh§n nhi®m vø th¤t bÕi !" )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		-- È¡µÃ¸±±¾Èë¿Ú³¡¾°ºÅ
		NewWorld( sceneId, selfId, oldsceneId, x050220_g_Back_X, x050220_g_Back_Z )
	end
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼þ
--**********************************
function x050220_OnCopySceneTimer( sceneId, nowTime )
	--¸±±¾Ê±ÖÓ¶ÁÈ¡¼°ÉèÖÃ
	local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )						-- È¡µÃÒÑ¾­Ö´ÐÐµÄ¶¨Ê±´ÎÊý
	TickCount = TickCount + 1
	LuaFnSetCopySceneData_Param( sceneId, 2, TickCount )							-- ÉèÖÃÐÂµÄ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊý

	--¸±±¾¹Ø±Õ±êÖ¾
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )

	local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	local i

	for i = 0, membercount - 1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

--	local LevelGap = LuaFnGetCopySceneData_Param( sceneId, CopyScene_LevelGap )

	if leaveFlag == 1 then															-- ÐèÒªÀë¿ª
		--Àë¿ªµ¹¼ÆÊ±¼äµÄ¶ÁÈ¡ºÍÉèÖÃ
		local leaveTickCount = LuaFnGetCopySceneData_Param( sceneId, 5 )
		leaveTickCount = leaveTickCount + 1
		LuaFnSetCopySceneData_Param( sceneId, 5, leaveTickCount )

		if leaveTickCount >= x050220_g_CloseTick then										-- µ¹¼ÆÊ±¼äµ½£¬´ó¼Ò¶¼³öÈ¥°É
			--½«µ±Ç°¸±±¾³¡¾°ÀïµÄËùÓÐÈË´«ËÍ»ØÔ­À´½øÈëÊ±ºòµÄ³¡¾°
			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
					x050220_Exit( sceneId, mems[i] )
				end
			end
		else
			--Í¨Öªµ±Ç°¸±±¾³¡¾°ÀïµÄËùÓÐÈË£¬³¡¾°¹Ø±Õµ¹¼ÆÊ±¼ä
			local strText = format( "Các hÕ s¨ r¶i khöi ðây sau %d giây!", ( x050220_g_CloseTick - leaveTickCount ) * x050220_g_TickTime )

			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
					x050220_NotifyFailTips( sceneId, mems[i], strText )
				end
			end
		end
	elseif TickCount == x050220_g_LimitTotalHoldTime then									-- ¸±±¾×ÜÊ±¼äÏÞÖÆµ½ÁË
		--´Ë´¦ÉèÖÃ¸±±¾ÈÎÎñÓÐÊ±¼äÏÞÖÆµÄÇé¿ö£¬µ±Ê±¼äµ½ºó´¦Àí...
		local misIndex = 0
		for	i = 0, membercount - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
				x050220_NotifyFailTips( sceneId, mems[i], "Nhi®m vø th¤t bÕi, quá gi¶ !" )
				if IsHaveMission( sceneId, mems[i], x050220_g_MissionId ) > 0 then
					misIndex = GetMissionIndexByID( sceneId, mems[i], x050220_g_MissionId )
					if GetMissionParam( sceneId, mems[i], misIndex, x050220_g_IsMissionOkFail ) ~= 1 then
						SetMissionByIndex( sceneId, mems[i], misIndex, x050220_g_IsMissionOkFail, 2 )	-- Èç¹ûÃ»ÓÐÍê³É¾ÍÉèÖÃÎªÊ§°Ü
					end
				end
				x050220_Exit( sceneId, mems[i] )
			end
		end
		--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )
	elseif TickCount == 1 then									--¿ªÊ¼µÄÊ±ºòË£¹Ö¡£µØµãA»áÓÐ15¸öÐ¡¹ÖºÍBOSS1Å£Çú£¬µØµãB»áÓÐ20¸öÐ¡¹ÖºÍBOSS2Å£Ææ£¬µØµãC»áÓÐ25¸öÐ¡¹Ö¡£
	
		local smallmonsterId = LuaFnGetCopySceneData_Param( sceneId, 12 )
		local NiuquId = LuaFnGetCopySceneData_Param( sceneId, 13 )
		local NiuqiId = LuaFnGetCopySceneData_Param( sceneId, 14 )
		local mylevel = LuaFnGetCopySceneData_Param( sceneId, 16 )
		
		for i = 1, getn( x050220_g_SmallMonsterAPos ) do
			if x050220_g_SmallMonsterAPos[i] then
				monsterID = LuaFnCreateMonster( sceneId, smallmonsterId, x050220_g_SmallMonsterAPos[i][1], x050220_g_SmallMonsterAPos[i][2], 14, -1, 050220 )
				SetLevel( sceneId, monsterID, mylevel )
				SetCharacterName( sceneId, monsterID, x050220_g_SmallMonster )
				LuaFnSendSpecificImpactToUnit(sceneId,monsterID,monsterID,monsterID,5959,0)
			end
		end
		
		for i = 1, getn( x050220_g_SmallMonsterBPos ) do
			if x050220_g_SmallMonsterBPos[i] then
				monsterID = LuaFnCreateMonster( sceneId, smallmonsterId, x050220_g_SmallMonsterBPos[i][1], x050220_g_SmallMonsterBPos[i][2], 14, -1, 050220 )
				SetLevel( sceneId, monsterID, mylevel )
				SetCharacterName( sceneId, monsterID, x050220_g_SmallMonster )
				LuaFnSendSpecificImpactToUnit(sceneId,monsterID,monsterID,monsterID,5959,0)
			end
		end
		
		for i = 1, getn( x050220_g_SmallMonsterCPos ) do
			if x050220_g_SmallMonsterCPos[i] then
				monsterID = LuaFnCreateMonster( sceneId, smallmonsterId, x050220_g_SmallMonsterCPos[i][1], x050220_g_SmallMonsterCPos[i][2], 14, -1, 050220 )
				SetLevel( sceneId, monsterID, mylevel )
				SetCharacterName( sceneId, monsterID, x050220_g_SmallMonster )
				LuaFnSendSpecificImpactToUnit(sceneId,monsterID,monsterID,monsterID,5959,0)
			end
		end
		
		monsterID = LuaFnCreateMonster( sceneId, NiuquId, 168, 184, 14, -1, 050220 )
		SetLevel( sceneId, monsterID, mylevel+2 ) --µÈ¼¶±ÈÒ»°ãÐ¡¹Ö¸ß2¼¶
		SetCharacterName( sceneId, monsterID, x050220_g_NiuQu )
		
		monsterID = LuaFnCreateMonster( sceneId, NiuqiId, 65, 34, 14, -1, 050220 )
		SetLevel( sceneId, monsterID, mylevel+2 )--µÈ¼¶±ÈÒ»°ãÐ¡¹Ö¸ß2¼¶
		SetCharacterName( sceneId, monsterID, x050220_g_NiuQi )
	else
		--¶¨Ê±¼ì²é¶ÓÎé³ÉÔ±µÄ¶ÓÎéºÅ£¬Èç¹û²»·ûºÏ£¬ÔòÌß³ö¸±±¾
		local oldteamid = LuaFnGetCopySceneData_Param( sceneId, 6 )					-- È¡µÃ±£´æµÄ¶ÓÎéºÅ
		local oldsceneId

		for	i = 0, membercount - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 and oldteamid ~= GetTeamId( sceneId, mems[i] ) then
				x050220_NotifyFailTips( sceneId, mems[i], "Ngß½i không · trong ðµi !" )
				x050220_Exit( sceneId, mems[i] )
			end
		end
		
		local monsternum = LuaFnGetCopySceneData_Param( sceneId, 7 )				-- É±Ð¡¹ÖµÄÊýÁ¿
		local iskillNiuQu = LuaFnGetCopySceneData_Param( sceneId, 8 )				-- ÊÇ·ñÉ±ËÀÅ£Çø
		local iskillNiuQi = LuaFnGetCopySceneData_Param( sceneId, 9 )				-- ÊÇ·ñÉ±ËÀÅ£Ææ
		local isBossWang = LuaFnGetCopySceneData_Param( sceneId, 10 )				-- ÊÇ·ñË¢³öÁËbossÍõ
		local NotifyTime = LuaFnGetCopySceneData_Param( sceneId, 11 )				-- Èç¹ûÒªÌáÐÑµÄ»°£¬ÉÏ´ÎÌáÐÑÊ±¼ä£¨ÒòÎªÃ¿2·ÖÌáÐÑÒ»´Î£¬ÐèÒª¼ÇÂ¼Ò»¸öÉÏ´ÎÌáÐÑÊ±¼ä£©
		
		--Ã¿2·ÖÖÓÌáÊ¾Ò»´Î£¬µ¥Êý¼ÆÊ±
		local isPreNotify = 0
		if mod( TickCount*x050220_g_TickTime, 60 ) == 0 and mod( TickCount*x050220_g_TickTime+60, 120 ) == 0 then
			isPreNotify = 1
			for	i = 0, membercount - 1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
					local Minute = floor( (360 - TickCount)*x050220_g_TickTime/60 )
					x050220_NotifyFailTips( sceneId, mems[i], "Th¶i gian hoàn thành nhi®m vø còn "..Minute.." phút." )
				end
			end	
		end

		--Ð¡ÓÚ15·ÖÖÓµÄÊ±ºò£¬ÏÈÉ±¸É¾»ÁËËùÓÐ¹Ö£¬ÐèÒªÃ¿2·ÖÌáÐÑÒ»´ÎbossÍõ³öÏÖÊ±¼ä
		--if TickCount < 180 and monsternum >= 60 and iskillNiuQu == 1 and iskillNiuQi == 1 then
		if  monsternum >= 60 and iskillNiuQu == 1 and iskillNiuQi == 1 then --hd edit
			if NotifyTime == 0 then --Ê×´ÎÌáÐÑ
				for	i = 0, membercount - 1 do
					if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
						local Minute = 0
						if 180 - TickCount < 12 then--Ð¡ÓÚ1·ÖÖÓ°´1·ÖÖÓÌáÊ¾
							Minute = 1
						else
							Minute = floor( (180 - TickCount)*x050220_g_TickTime/60 )
						end
						x050220_NotifyFailTips( sceneId, mems[i], "#{LLFB_80819_3}"..Minute.."#{LLFB_80819_4}" )
						x050220_NotifyFailTips( sceneId, mems[i], "Sau khi giªt hªt quái, BOSS "..x050220_g_BossWang.." tñ ðµng xu¤t hi®n." ) --hd add
					end
				end
				LuaFnSetCopySceneData_Param( sceneId, 11, TickCount )
--			elseif TickCount - NotifyTime >= 24 then --ºóÃæµÄÌáÐÑ
--				for	i = 0, membercount - 1 do
--					if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
--						local Minute = 0
--						if 180 - TickCount < 12 then--Ð¡ÓÚ1·ÖÖÓ°´1·ÖÖÓÌáÊ¾
--							Minute = 1
--						else
--							Minute = floor( (180 - TickCount)*x050220_g_TickTime/60 )
--						end
--						x050220_NotifyFailTips( sceneId, mems[i], "#{LLFB_80819_3}"..Minute.."#{LLFB_80819_4}" )
--					end
--				end
--				LuaFnSetCopySceneData_Param( sceneId, 11, TickCount )
			end
		--´óÓÚµÈÓÚ15·ÖÖÓÒÔºóÐèÒªÅÐ¶ÏËùÓÐ¹ÖÊÇ·ñÉ±¸É¾»£¬É±¸É¾»Èç¹ûÃ»ÓÐ³öbossÍõ¾ÍË¢³öÀ´
		--elseif TickCount >= 180 and monsternum >= 60 and iskillNiuQu == 1 and iskillNiuQi == 1 and isBossWang == 0 then
		--hd edit : create boss sau khi giªt hªt quái
		end
		if monsternum >= 60 and iskillNiuQu == 1 and iskillNiuQi == 1 and isBossWang == 0 then
			local BossWangId = LuaFnGetCopySceneData_Param( sceneId, 15 )
			local mylevel = LuaFnGetCopySceneData_Param( sceneId, 16 )
		
			monsterID = LuaFnCreateMonster( sceneId, BossWangId, 200, 48, 14, 262, 050220 )
			SetLevel( sceneId, monsterID, mylevel+3 )--µÈ¼¶±ÈÒ»°ãÐ¡¹Ö¸ß3¼¶
			SetCharacterName( sceneId, monsterID, x050220_g_BossWang )
			MonsterTalk(sceneId,monsterID,"BOSS","Ai mà dám xông vào sào huy®t cüa ta thª ?")
			
			LuaFnSetCopySceneData_Param( sceneId, 10, 1 )
		end
		
	end
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x050220_CheckSubmit( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x050220_g_MissionId ) <= 0 then
		return 0
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x050220_g_MissionId )				-- µÃµ½ÈÎÎñµÄÐòÁÐºÅ
	if GetMissionParam( sceneId, selfId, misIndex, x050220_g_IsMissionOkFail ) ~= 1 then
		return 0
	end
	
	if LuaFnGetAvailableItemCount( sceneId, selfId, x050220_g_huangjinzhilian ) < 1 then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x050220_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x050220_g_Name then		--ÅÐ¶Ï¸ÃnpcÊÇ·ñÊÇ¶ÔÓ¦ÈÎÎñµÄnpc
		return
	end

	if x050220_CheckSubmit( sceneId, selfId ) == 1 then
		x050220_NotifyFailBox( sceneId, selfId, targetId, x050220_g_MissionComplete )
		if LuaFnDelAvailableItem( sceneId, selfId, x050220_g_huangjinzhilian, 1 ) > 0 then
			BeginAddItem( sceneId )
			AddItem( sceneId, x050220_g_heyuanxin, 1 )
			local ret = EndAddItem( sceneId, selfId )
			if ret > 0 then
				AddItemListToHuman(sceneId, selfId)
				
				DelMission( sceneId, selfId, x050220_g_MissionId )
				-- ÈÎÎñ»ò»î¶¯Í³¼Æ
				LuaFnAuditQuest(sceneId, selfId, "Lâu Lan Liên Hoàn Nhi®m Vø Hoàng Kim Chi Liên")
			else
				x050220_NotifyFailTips( sceneId, selfId, "Nhi®m vø ðã ð¥y !")
			end
		end
	end
end

--**********************************
-- ¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x050220_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ÆÁÄ»ÖÐ¼äÐÅÏ¢ÌáÊ¾
--**********************************
function x050220_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--¼ì²âÐÄ·¨ÊÇ²»¹»½ÓÈÎÎñ
--**********************************
function x050220_CheckAllXinfaLevel(sceneId, selfId, level)
	local nMenpai = GetMenPai(sceneId, selfId)
	if nMenpai<0 or nMenpai>8   then
		return 0
	end
	
	for i=1, 6 do
		local nXinfaLevel = LuaFnGetXinFaLevel(sceneId, selfId, nMenpai*6 + i)
		if nXinfaLevel < level    then
			return 0
		end
	end
	return 1
end

--**********************************
-- Ê°È¡´¦Àí scene.luaµÄx888888_OnPlayerPickupItemFromDropBoxµ÷ÓÃµ½ÕâÀï
--**********************************
function x050220_PickupItem(sceneId, selfId, itemId, bagidx )
	if IsHaveMission( sceneId, selfId, x050220_g_MissionId ) <= 0 then
		return
	end
	
	if itemId ~= x050220_g_huangjinzhilian then
		return
	end
	
	x050220_NotifyFailTips( sceneId, selfId, "Ðã tìm th¤y Hoàng Kim Chi Liên: 1/1." )
	x050220_NotifyFailTips( sceneId, selfId, "Hoàn thành nhi®m vø." )
	misIndex = GetMissionIndexByID( sceneId, selfId, x050220_g_MissionId )
	SetMissionByIndex( sceneId, selfId, misIndex, x050220_g_IsFindGoods, 1 )
	SetMissionByIndex( sceneId, selfId, misIndex, x050220_g_IsMissionOkFail, 1 )	-- ÈÎÎñÍê³É
end
