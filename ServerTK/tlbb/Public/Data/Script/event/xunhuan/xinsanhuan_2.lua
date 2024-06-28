-- Á¬»·¸±±¾ÈÎÎñ
-- Ğş·ğÖé

--************************************************************************
--MisDescBegin

-- ½Å±¾ºÅ
x050221_g_ScriptId = 050221

-- ÈÎÎñºÅ
x050221_g_MissionId = 1257					--1256 »Æ½ğÖ®Á´--1257 Ğş·ğÖé--1258 ÈÛÑÒÖ®µØ

-- ÈÎÎñÄ¿±ê NPC
x050221_g_Name = "Lßu My "

--ÈÎÎñ¹éÀà
x050221_g_MissionKind = 8

--ÈÎÎñµÈ¼¶
x050221_g_MissionLevel = 10000

-- ÈÎÎñÎÄ±¾ÃèÊö
x050221_g_MissionName		= "Huy«n Ph§t Châu"
x050221_g_MissionInfo = "    "														-- ÈÎÎñÃèÊö
x050221_g_MissionTarget = "    #{LLFBM_80918_2}"						-- ÈÎÎñÄ¿±ê
--x050221_g_ContinueInfo = "    ÄãÃÇ×¼±¸ºÃÁË¾ÍÇëÇ°È¥ÖñÁÖÏûÃğºìĞÜÍõ£¡"					-- Î´Íê³ÉÈÎÎñµÄnpc¶Ô»°
x050221_g_SubmitInfo = "#{LLFB_80816_43}"										-- Ìá½»Ê±µÄ´ğ¸´
x050221_g_MissionComplete = "#{LLFB_80902_2}"	--Íê³ÉÈÎÎñnpcËµµÄ»°

x050221_g_IsMissionOkFail = 0														-- 0 ºÅË÷Òı£ºµ±Ç°ÈÎÎñÊÇ·ñÍê³É(0Î´Íê³É£»1Íê³É£»2Ê§°Ü)
x050221_g_IsBossYaoWang = 1															-- 1 ºÅË÷Òı£ºÉ±bossºé¼¬ÑıÍõµÄÊıÁ¿
x050221_g_IsFindGoods = 2																-- 2 ºÅË÷Òı£ºÊÇ·ñÕÒµ½Ğş·ğÖé
x050221_g_Param_sceneid = 3															-- 3 ºÅË÷Òı£ºµ±Ç°ÈÎÎñÊı¾İµÄ3Î»ÖÃÉèÖÃÎª³¡¾°ID

x050221_g_Custom	= { {id="ÒÑš¢ËÀ£º#r  ºé¼¬ÑıÍõ",num=1},{id="ÒÑÕÒµ½£º#r  Ğş·ğÖé",num=1} }

--MisDescEnd
--************************************************************************

--x050221_g_huangjinzhilian = 40004453	--»Æ½ğÖ®Á´
x050221_g_heyuanxin = 40004460	--ºÎÔÃµÄĞÅ
x050221_g_xuanfouzhu = 40004454	--Ğş·ğÖé

--x050221_g_yimouzhufeng = 	--ÒıÄ§Öé£¨·ç£©
--x050221_g_yimouzhuyan = 	--ÒıÄ§Öé£¨Ñæ£©
--x050221_g_yimouzhudi = 	--ÒıÄ§Öé£¨µØ£©
--x050221_g_yimouzhuxuan = 	--ÒıÄ§Öé£¨Ğş£©
--x050221_g_yimouzhudu = 	--ÒıÄ§Öé£¨¶¾£©

x050221_g_Monster15ID = "Ğµc Chß¾ng Ti¬u Quái"			--Ğ¡¹Ö
x050221_g_Monster10ID = "TrÕch Ğ¸a Ğµc Chu"			--Ğ¡¹Ö

x050221_g_BossID = {
	"Tê Phong Ma",
	"Phá Di®m Tôn Giä",
	"Li®t Ğ¸a Hành Giä",
	"Võ Huy«n Tß¾ng",
	"Ngû Ğµc Ma SÑ"
}
x050221_g_YinMoZhuID = {40004456,40004459,40004458,40004455,40004457}

x050221_g_BossYaoWang = "H°ng CÑc Yêu Vß½ng"			-- bossºé¼¬ÑıÍõ

Monster15IDTbl = {13080,13081,13082,13083,13084,13085,13086,13087,13088,13089}			--15Ğ¡¹Ö
Monster10IDTbl = {13100,13101,13102,13103,13104,13105,13106,13107,13108,13109}			--10Ğ¡¹Ö

BossIDTbl = {{13120,13121,13122,13123,13124,13125,13126,13127,13128,13129},	--·çboss
{13200,13201,13202,13203,13204,13205,13206,13207,13208,13209},						--Ñæboss
{13140,13141,13142,13143,13144,13145,13146,13147,13148,13149},					--µØboss
{13160,13161,13162,13163,13164,13165,13166,13167,13168,13169},						--Ğşboss
{13180,13181,13182,13183,13184,13185,13186,13187,13188,13189}}						--¶¾boss

BossYaoWangIDTbl = {13220,13221,13222,13223,13224,13225,13226,13227,13228,13229}		-- bossºé¼¬ÑıÍõ

x050221_g_BossTalk = {
	"Hình nhß có m¤y tên ğang dòm ngó khu vñc cüa ta.",
	"Haizz! Không có ai ğánh nhau, bu°n ngü quá ği...",
	"Lâu l¡m rùi ta không ğßşc múa máy chân tay...",
	"Có biªt danh cüa ta chßa mà dám xông vào ğây.",
	"Các ngß½i ğang tìm kiªm cái gì thª..."
}
x050221_g_YaoWangTalk = "Hô hô! Ta ğây là bá vß½ng cüa vùng này..."			-- bossºé¼¬ÑıÍõËµ»°

x050221_g_Pos = {{left={130,191},right={137,200}},--·ç
 {left={68,132},right={77,142}},--Ñæ
 {left={77,65},right={87,73}},--µØ
 {left={176,158},right={188,169}},--Ğş
 {left={175,62},right={188,72}}}--¶¾

x050221_g_BossYaoWangPos ={127,118}

x050221_g_BossPos ={{132,196},{72,135},{83,72},{182,166},{181,72}}
x050221_g_monster15Pos = {{132,199},{136,200},{138,196},{135,192},{134,189},{128,192},{127,197},{126,202},{142,202},{142,196},{140,190},{124,195},{136,187},{130,204},{143,192},
{75,136},{74,144},{77,138},{68,142},{64,138},{69,128},{79,128},{79,131},{82,139},{76,146},{65,143},{73,133},{73,129},{64,133},{71,140},
{85,73},{82,75},{77,75},{78,79},{79,68},{80,66},{84,64},{87,67},{89,69},{74,70},{76,62},{80,60},{88,62},{89,76},{93,68},
{183,168},{182,172},{178,168},{179,163},{177,160},{180,158},{187,160},{189,163},{190,168},{185,156},{174,166},{191,161},{178,173},{187,173},{191,172},
{184,74},{182,78},{179,75},{179,83},{190,76},{194,74},{191,63},{188,60},{180,61},{177,62},{173,68},{194,62},{175,74},{184,58},{171,63}
}

x050221_g_monster10Pos = {{132,199},{136,200},{138,196},{135,192},{134,189},{128,192},{127,197},{126,202},{142,202},{142,196},
{75,136},{74,144},{77,138},{68,142},{64,138},{69,128},{79,128},{79,131},{82,139},{76,146},
{85,73},{82,75},{77,75},{78,79},{79,68},{80,66},{84,64},{87,67},{89,69},{74,70},
{183,168},{182,172},{178,168},{179,163},{177,160},{180,158},{187,160},{189,163},{190,168},{185,156},
{184,74},{182,78},{179,75},{179,83},{190,76},{194,74},{191,63},{188,60},{180,61},{177,62}
}

x050221_g_NumText_Main = 1					-- ½ÓÈÎÎñµÄÑ¡Ïî
x050221_g_NumText_EnterCopyScene = 2		-- ÒªÇó½øÈë¸±±¾µÄÑ¡Ïî

x050221_g_CopySceneMap = "dumuchang.nav"
x050221_g_CopySceneArea = "dumuchang_area.ini"
x050221_g_CopySceneMonsterIni = "dumuchang_monster.ini"

x050221_g_CopySceneType = FUBEN_XUANFOUZHU		-- ¸±±¾ÀàĞÍ£¬¶¨ÒåÔÚScriptGlobal.luaÀïÃæ
x050221_g_LimitMembers = 3					-- ¿ÉÒÔ½ø¸±±¾µÄ×îĞ¡¶ÓÎéÈËÊı
x050221_g_TickTime = 5						-- »Øµ÷½Å±¾µÄÊ±ÖÓÊ±¼ä£¨µ¥Î»£ºÃë/´Î£©
x050221_g_LimitTotalHoldTime = 360			-- ¸±±¾¿ÉÒÔ´æ»îµÄÊ±¼ä£¨µ¥Î»£º´ÎÊı£©,Èç¹û´ËÊ±¼äµ½ÁË£¬ÔòÈÎÎñ½«»áÊ§°Ü
x050221_g_CloseTick = 6						-- ¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±£¨µ¥Î»£º´ÎÊı£©
x050221_g_NoUserTime = 30					-- ¸±±¾ÖĞÃ»ÓĞÈËºó¿ÉÒÔ¼ÌĞø±£´æµÄÊ±¼ä£¨µ¥Î»£ºÃë£©

x050221_g_Fuben_X = 220
x050221_g_Fuben_Z = 217
x050221_g_Back_X = 122
x050221_g_Back_Z = 56

x050221_g_TakeTimes = 5											-- Ã¿Ìì×î¶àÁìÈ¡´ÎÊı
--**********************************
-- ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x050221_OnDefaultEvent( sceneId, selfId, targetId )	-- µã»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾
	if GetName( sceneId, targetId ) ~= x050221_g_Name then		-- ÅĞ¶Ï¸ÃnpcÊÇ·ñÊÇ¶ÔÓ¦ÈÎÎñµÄnpc
		return
	end
	
	local numText = GetNumText()

	if IsHaveMission( sceneId, selfId, x050221_g_MissionId ) == 0 then
		if numText == x050221_g_NumText_Main then
			if LuaFnGetAvailableItemCount( sceneId, selfId, x050221_g_heyuanxin ) < 1 then
				BeginEvent( sceneId )
				AddText( sceneId, "#{LLFB_80816_21}" )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
			elseif x050221_CheckAccept( sceneId, selfId, targetId ) > 0 then
				--·¢ËÍÈÎÎñ½ÓÊÜÊ±ÏÔÊ¾µÄĞÅÏ¢
				BeginEvent( sceneId )
					AddText( sceneId, "#{LLFB_80816_22}" )
				EndEvent( )
				DispatchMissionInfo( sceneId, selfId, targetId, x050221_g_ScriptId, x050221_g_MissionId )
			end
		end
	else
		if numText == x050221_g_NumText_Main then
			local bDone = x050221_CheckSubmit( sceneId, selfId )

			BeginEvent( sceneId )
				--AddText( sceneId, x050221_g_MissionName )
	
				if bDone == 1 then
					AddText( sceneId, x050221_g_SubmitInfo )
				else
						AddText( sceneId, "#{LLFB_80816_24}" )
						AddNumText( sceneId, x050221_g_ScriptId, "Ği t¾i Ğµc Chß¾ng TrÕch Ğ¸a", 10, x050221_g_NumText_EnterCopyScene )
						EndEvent( sceneId )
					DispatchEventList( sceneId, selfId, targetId )
					return
				end
			EndEvent( )
			--DispatchMissionDemandInfo( sceneId, selfId, targetId, x050221_g_ScriptId, x050221_g_MissionId, bDone )
			DispatchMissionContinueInfo( sceneId, selfId, targetId, x050221_g_ScriptId, x050221_g_MissionId )
		elseif numText == x050221_g_NumText_EnterCopyScene then
			x050221_AcceptEnterCopyScene( sceneId, selfId, targetId )
		end
	end
end

--**********************************
-- ²»ÄÜÓĞÆäËûµÄÈÎÎñ£¬Ã»ÓĞ·µ»Ø 0£¬ÓĞ·µ»Ø 1
--**********************************
function x050221_CheckConflictMission( sceneId, selfId )
	local missionId = 0

	if IsHaveMission( sceneId, selfId, 1256 ) > 0 then
		return 1
	end
	
	if IsHaveMission( sceneId, selfId, 1258 ) > 0 then
		return 1
	end

	return 0
end

--**********************************
-- ÁĞ¾ÙÊÂ¼ş
--**********************************
function x050221_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x050221_g_Name then		--ÅĞ¶Ï¸ÃnpcÊÇ·ñÊÇ¶ÔÓ¦ÈÎÎñµÄnpc
		return
	end

	-- ²»ÄÜÓĞÆäËûµÄÈÎÎñ
	if x050221_CheckConflictMission( sceneId, selfId ) == 1 then
		return
	end

	AddNumText( sceneId, x050221_g_ScriptId, x050221_g_MissionName, 4, x050221_g_NumText_Main )
end

--**********************************
-- ¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x050221_CheckAccept( sceneId, selfId, targetId )
	-- ÒÑ¾­½Ó¹ıÔò²»·ûºÏÌõ¼ş
	if IsHaveMission( sceneId, selfId, x050221_g_MissionId ) > 0 then
		return 0
	end

	-- ²»ÄÜÓĞÆäËûµÄÈÎÎñ
	if x050221_CheckConflictMission( sceneId, selfId ) == 1 then
		return 0
	end
	
	-- Ò»ÌìÖ»ÄÜÁì x050221_g_TakeTimes ´Î
	local DayTimes, oldDate, nowDate, takenTimes

	DayTimes = GetMissionData( sceneId, selfId, MD_XINSANHUAN_2_DAYTIME )
	oldDate = mod( DayTimes, 100000 )
	takenTimes = floor( DayTimes/100000 )

	nowDate = GetDayTime()
	if nowDate ~= oldDate then
		takenTimes = 0
		SetMissionData( sceneId, selfId, MD_XINSANHUAN_2_DAYTIME, nowDate )
	end

	--5´Î
	if takenTimes >= x050221_g_TakeTimes then
		x050221_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_3}" )
		return 0
	end

	-- ¼ì²âÍæ¼ÒÊÇ·ñ·ûºÏ¸Õ·ÅÆúÈÎÎñ
	local iTime = GetMissionData( sceneId, selfId, MD_XINSANHUAN_2_LAST )			-- ÉÏÒ»´Î·ÅÆúÈÎÎñµÄÊ±¼ä(µ¥Î»£ºÒ»¿ÌÖÓ)
	--begin modified by zhangguoxin 090208
	--local CurTime = GetHourTime()												-- µ±Ç°Ê±¼ä(µ¥Î»£ºÒ»¿ÌÖÓ)
	local CurTime = GetQuarterTime()												-- µ±Ç°Ê±¼ä(µ¥Î»£ºÒ»¿ÌÖÓ)
	--end modified by zhangguoxin 090208

	if iTime+1  >= CurTime then
		x050221_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_4}" )
		return 0
	end

	-- µÈ¼¶´ïµ½75
	if GetLevel(sceneId, selfId) < 75 then
		x050221_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_5}" )
		return 0
	end

	-- ËùÓĞĞÄ·¨´ïµ½45
	if x050221_CheckAllXinfaLevel(sceneId, selfId, 45) == 0  then
		x050221_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_5}" )
		return 0
	end

	-- ÉíÉÏÈÎÎñÊıÁ¿ÊÇ·ñ´ïµ½ÉÏÏŞ20¸ö
	if GetMissionCount( sceneId, selfId ) >= 20 then						
		x050221_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_6}" )
		return 0
	end
	
	-- ÉíÉÏÈÎÎñÎïÆ·À¸ÊıÁ¿
	if LuaFnGetTaskItemBagSpace( sceneId, selfId ) < 1 then
		x050221_NotifyFailTips( sceneId, selfId, "Túi ğ° nhi®m vø cüa các hÕ không ğü ch² tr¯ng." )
		return 0
	end
	
	if LuaFnGetAvailableItemCount( sceneId, selfId, x050221_g_heyuanxin ) < 1 then
		x050221_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_21}" )
		return 0
	end

	return 1
end

--**********************************
--½ÓÊÜ
--**********************************
function x050221_OnAccept( sceneId, selfId, targetId )
	if LuaFnDelAvailableItem( sceneId, selfId, x050221_g_heyuanxin, 1 ) <= 0 then--ĞèÒª¿Û³ıºÎÔÃµÄĞÅ
		x050221_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_21}" )
		return
	end

	-- ¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	AddMission( sceneId, selfId, x050221_g_MissionId, x050221_g_ScriptId, 1, 0, 0 )			-- kill¡¢area¡¢item
	if IsHaveMission( sceneId, selfId, x050221_g_MissionId ) <= 0 then
		return
	end

	-- Ò»ÌìÖ»ÄÜÁì x050221_g_TakeTimes ´Î
	local DayTimes = GetMissionData( sceneId, selfId, MD_XINSANHUAN_2_DAYTIME )
	local takenTimes = floor( DayTimes/100000 )
	DayTimes = (takenTimes+1)*100000 + GetDayTime()
	SetMissionData( sceneId, selfId, MD_XINSANHUAN_2_DAYTIME, DayTimes )

--	SetMissionEvent( sceneId, selfId, x050221_g_MissionId, 4 ) -- ×¢²á OnLockedTarget ÊÂ¼ş

	local misIndex = GetMissionIndexByID( sceneId, selfId, x050221_g_MissionId )

	SetMissionByIndex( sceneId, selfId, misIndex, x050221_g_IsMissionOkFail, 0 )	-- ÈÎÎñÍê³ÉÇé¿öÖÃÎªÎ´Íê³É
	SetMissionByIndex( sceneId, selfId, misIndex, x050221_g_Param_sceneid, -1 )		-- ¸±±¾ºÅÖÃÎª -1
	SetMissionByIndex( sceneId, selfId, misIndex, x050221_g_IsBossYaoWang, 0 )
	SetMissionByIndex( sceneId, selfId, misIndex, x050221_g_IsFindGoods, 0 )
	
	--ĞèÒª¿Û³ıÒ»´ÎÒıÄ§Öé£¬ÉÏ´ÎÈÎÎñÊ§°Ü¿ÉÄÜÉíÉÏ»¹ÓĞÒıÄ§Öé´æÔÚ
	for i = 1, getn( x050221_g_YinMoZhuID ) do
		local num = LuaFnGetAvailableItemCount( sceneId, selfId, x050221_g_YinMoZhuID[i] )
		if num > 0 then
			LuaFnDelAvailableItem( sceneId, selfId, x050221_g_YinMoZhuID[i], num )
		end
	end
	
	--¸øÒıÄ§Öé£¨·ç£©
	BeginAddItem( sceneId )
	AddItem( sceneId, x050221_g_YinMoZhuID[1], 1 )
	local ret = EndAddItem( sceneId, selfId )
	if ret <= 0 then
		x050221_NotifyFailBox( sceneId, selfId, targetId, "ÄãµÄ±³°üMÁË¡£" )
		return
	end
	AddItemListToHuman(sceneId, selfId)

	--ÏÔÊ¾ÄÚÈİ¸æËßÍæ¼ÒÒÑ¾­½ÓÊÜÁËÈÎÎñ
	BeginEvent( sceneId )
		AddText( sceneId, "#{LLFB_80816_24}" )
		AddNumText( sceneId, x050221_g_ScriptId, "Ç°Íù¶¾ÕÏÉµØ", 10, x050221_g_NumText_EnterCopyScene )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ÇëÇó½øÈë¸±±¾³¡¾°
--**********************************
function x050221_AcceptEnterCopyScene( sceneId, selfId, targetId )
	if IsHaveMission( sceneId, selfId, x050221_g_MissionId ) > 0 then					-- ÓĞÈÎÎñ²Å¿ÉÒÔ×ßÕâÀï
		local misIndex = GetMissionIndexByID( sceneId, selfId, x050221_g_MissionId )
		local copysceneid = GetMissionParam( sceneId, selfId, misIndex, x050221_g_Param_sceneid )
		if copysceneid >= 0 then												-- ½ø¹ı¸±±¾
		-- ½«×Ô¼º´«ËÍµ½¸±±¾³¡¾°
			if GetMissionParam( sceneId, selfId, misIndex, x050221_g_IsMissionOkFail ) == 2 then
				x050221_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_23}" )
			elseif IsCanEnterCopyScene( copysceneid, GetHumanGUID( sceneId, selfId ) ) == 1 then
				NewWorld( sceneId, selfId, copysceneid, x050221_g_Fuben_X, x050221_g_Fuben_Z )
			else
				x050221_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_23}" )
			end
			return
		end

		if LuaFnHasTeam( sceneId, selfId ) == 0 then
			x050221_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_25}" )
			return
		end

		if LuaFnIsTeamLeader( sceneId, selfId ) == 0 then
			x050221_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_10}" )
			return
		end
		
		local teamMemberCount = GetTeamMemberCount(sceneId, selfId);
		local nearMemberCount = GetNearTeamCount(sceneId, selfId);
		if not nearMemberCount or nearMemberCount < x050221_g_LimitMembers then
			x050221_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_26}" )
			return
		end

		if not teamMemberCount or teamMemberCount ~= nearMemberCount then
			x050221_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_12}" )
			return
		end
		
		local outmessage = "#{FB0}"
		local issatisfy = 1 --ÊÇ·ñÂú×ãÌõ¼ş
		local memberID = 0
		local isAccept = 0 --ÊÇ·ñÓĞÈËÒÑ¾­½ÓÁËÈÎÎñ
		local Acceptmessage = "" --ÒÑ¾­½ÓÁËÈÎÎñµÄÌáÊ¾ÓëÆäËû¹«¹²ÌáÊ¾²»Í¬
		for	i = 0, nearMemberCount - 1 do
			memberID = GetNearTeamMember( sceneId, selfId, i )
			outmessage = outmessage.."#r#Bê †T  "..GetName(sceneId, memberID)
			if GetLevel(sceneId, memberID) >= 75 then
				outmessage = outmessage.."#{FB1}"
			else
				outmessage = outmessage.."#{FB2}"
				issatisfy = 0
			end
			
			if x050221_CheckAllXinfaLevel(sceneId, memberID, 45) == 1 then
				outmessage = outmessage.."#{FB3}"
			else
				outmessage = outmessage.."#{FB4}"
				issatisfy = 0
			end
			
			if IsHaveMission( sceneId, memberID, x050221_g_MissionId ) > 0 then
				local misIndex = GetMissionIndexByID( sceneId, memberID, x050221_g_MissionId )

			 	if GetMissionParam( sceneId, memberID, misIndex, x050221_g_IsMissionOkFail ) == 0 then
			 		if GetMissionParam( sceneId, memberID, misIndex, x050221_g_Param_sceneid ) == -1 then
			 			outmessage = outmessage.."#{FB5}"
			 		else
			 			outmessage = outmessage.."#{FB6}"
						issatisfy = 0
						
						if isAccept == 0 then
							Acceptmessage = "#G"..GetName(sceneId, memberID)
						else
							Acceptmessage = Acceptmessage.."#W¡¢#G"..GetName(sceneId, memberID)
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
			x050221_NotifyFailBox( sceneId, selfId, targetId, Acceptmessage)
			return
		end
		
		if issatisfy == 0 then
			x050221_NotifyFailBox( sceneId, selfId, targetId, outmessage)
			return
		end
		
		--¼ÆËã¸±±¾ÖĞ¹ÖµÄµÈ¼¶....
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

		local leaderguid = LuaFnObjId2Guid( sceneId, selfId )
		LuaFnSetSceneLoad_Map( sceneId, x050221_g_CopySceneMap )						-- µØÍ¼ÊÇ±ØĞëÑ¡È¡µÄ£¬¶øÇÒ±ØĞëÔÚConfig/SceneInfo.iniÀïÅäÖÃºÃ
		LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
		LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x050221_g_NoUserTime * 1000 )
		LuaFnSetCopySceneData_Timer( sceneId, x050221_g_TickTime * 1000 )
		LuaFnSetCopySceneData_Param( sceneId, 0, x050221_g_CopySceneType )				-- ÉèÖÃ¸±±¾Êı¾İ£¬ÕâÀï½«0ºÅË÷ÒıµÄÊı¾İÉèÖÃÎª999£¬ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êı×Ö×Ô¶¨Òå)
		LuaFnSetCopySceneData_Param( sceneId, 1, x050221_g_ScriptId )					-- ½«1ºÅÊı¾İÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼ş½Å±¾ºÅ
		LuaFnSetCopySceneData_Param( sceneId, 2, 0 )							-- ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
		LuaFnSetCopySceneData_Param( sceneId, 3, -1 )							-- ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
		LuaFnSetCopySceneData_Param( sceneId, 4, 0 )							-- ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å£¬1¹Ø±Õ
		LuaFnSetCopySceneData_Param( sceneId, 5, 0 )							-- ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊı
		LuaFnSetCopySceneData_Param( sceneId, 6, GetTeamId( sceneId, selfId ) )	-- ±£´æ¶ÓÎéºÅ
		LuaFnSetCopySceneData_Param( sceneId, 7, mylevel )				-- ¶ÓÎéµÄ»ù´¡µÈ¼¶
		LuaFnSetCopySceneData_Param( sceneId, 8, iniLevel )				-- 
		LuaFnSetCopySceneData_Param( sceneId, 9, 0 )							-- ·ç
		LuaFnSetCopySceneData_Param( sceneId, 10, 0 )							-- Ñæ
		LuaFnSetCopySceneData_Param( sceneId, 11, 0 )							-- µØ
		LuaFnSetCopySceneData_Param( sceneId, 12, 0 )							-- Ğş
		LuaFnSetCopySceneData_Param( sceneId, 13, 0 )							-- ¶¾
		LuaFnSetCopySceneData_Param( sceneId, 14, 0 )							-- ÊÇ·ñÉ±ËÀÆÆÑæ×ğÕß
		LuaFnSetCopySceneData_Param( sceneId, 15, 0 )							-- ÊÇ·ñÒı³öºé¼¬ÑıÍõ
		LuaFnSetCopySceneData_Param( sceneId, 16, 0 )							-- Ê×´ÎÌáĞÑÊ±¼ä

		LuaFnSetSceneLoad_Area( sceneId, x050221_g_CopySceneArea )

		LuaFnSetSceneLoad_Monster( sceneId, x050221_g_CopySceneMonsterIni )

		local bRetSceneID = LuaFnCreateCopyScene( sceneId )						-- ³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êı
		if bRetSceneID > 0 then
			x050221_NotifyFailTips( sceneId, selfId, "D¸ch chuy¬n thành công! Vui lòng ğşi giây lát s¨ d¸ch chuy¬n! " )
			AuditXinSanHuanCreateFuben( sceneId, selfId, 2 )
		else
			x050221_NotifyFailTips( sceneId, selfId, "S¯ lßşng bän sao vßşt quá gi¾i hÕn, ğ« ngh¸ lát næa thØ lÕi!" )
		end
	end
end

--**********************************
--¸±±¾ÊÂ¼ş
--**********************************
function x050221_OnCopySceneReady( sceneId, destsceneId )
	LuaFnSetCopySceneData_Param( destsceneId, 3, sceneId )				-- ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	local leaderguid = LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local leaderObjId = LuaFnGuid2ObjId( sceneId, leaderguid )

	if leaderObjId == -1 then											-- ÕÒ²»µ½¸ÃÍæ¼Ò
		return
	end

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then		-- ´¦ÓÚÎŞ·¨Ö´ĞĞÂß¼­µÄ×´Ì¬
		return
	end

	--È¡µÃÍæ¼Ò¸½½üµÄ¶ÓÓÑÊıÁ¿£¨°üÀ¨×Ô¼º£©
	local i, nearMemberCount, member
	local members = {}
	local validmembercount = 0

	nearMemberCount = GetNearTeamCount( sceneId, leaderObjId )
	for i = 0, nearMemberCount - 1 do
		member = GetNearTeamMember( sceneId, leaderObjId, i )
		if IsHaveMission( sceneId, member, x050221_g_MissionId ) > 0 then		-- ÓĞÈÎÎñ
			validmembercount = validmembercount + 1
			members[validmembercount] = member
		end
	end

	local misIndex
	for i = 1, validmembercount do
		if IsHaveMission( sceneId, members[i], x050221_g_MissionId ) > 0 then
			misIndex = GetMissionIndexByID( sceneId, members[i], x050221_g_MissionId )
			if LuaFnIsCanDoScriptLogic( sceneId, members[i] ) == 1 then			-- ´¦ÓÚ¿ÉÒÔÖ´ĞĞÂß¼­µÄ×´Ì¬
				--½«ÈÎÎñµÄµÚ1ºÅÊı¾İÉèÖÃÎª¸±±¾µÄ³¡¾°ºÅ
				SetMissionByIndex( sceneId, members[i], misIndex, x050221_g_Param_sceneid, destsceneId )
		--		SetMissionEvent( sceneId, members[i], x050221_g_MissionId, 0 )			-- ¹ØĞÄÉ±¹ÖÊÂ¼ş
				NewWorld( sceneId, members[i], destsceneId, x050221_g_Fuben_X, x050221_g_Fuben_Z )
			end
		end
	end
end

--**********************************
--ÓĞÍæ¼Ò½øÈë¸±±¾ÊÂ¼ş
--**********************************
function x050221_OnPlayerEnter( sceneId, selfId )
end

--**********************************
--objËÀÍö
--**********************************
function x050221_OnDie( sceneId, objId, selfId )--Õâ¸öselfId¿ÉÄÜÊÇ³èÎï
	local objType = GetCharacterType( sceneId, selfId )
	if objType == 3 then --Èç¹ûÊÇ³èÎïµÄ»°£¬°ÑÕâ¸öIDÉèÖÃ³ÉÖ÷ÈËID
		selfId = GetPetCreator( sceneId, selfId )
	end
	
	if selfId == -1 then
		return
	end
	
	--if IsHaveMission( sceneId, selfId, x050221_g_MissionId ) <= 0 then
	--	return
	--end
	
	--ÊÇ·ñÊÇ¸±±¾
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	--ÊÇ·ñÊÇËùĞèÒªµÄ¸±±¾
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x050221_g_CopySceneType then
		return
	end

	--¸±±¾¹Ø±Õ±êÖ¾
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
	if leaveFlag == 1 then														-- Èç¹û¸±±¾ÒÑ¾­±»ÖÃ³É¹Ø±Õ×´Ì¬£¬ÔòÉ±¹ÖÎŞĞ§
		return
	end

	--È¡µÃµ±Ç°³¡¾°ÀïµÄÈËÊı
	local num = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	
	for i = 0, num - 1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	--È¡µÃÉ±ËÀ¹ÖÎïµÄname
	local szName = GetName( sceneId, objId )
	
	for i = 1, getn( x050221_g_BossID ) do
		if szName == x050221_g_BossID[i] then
		
			local dropthing = 0
			if i == 1 then--·ç
				dropthing = x050221_g_YinMoZhuID[3]
			elseif i == 2 then--Ñæ
			elseif i == 3 then--µØ
				dropthing = x050221_g_YinMoZhuID[5]
			elseif i == 4 then--Ğş
				dropthing = x050221_g_YinMoZhuID[2]
			elseif i == 5 then--¶¾
				dropthing = x050221_g_YinMoZhuID[4]
			end
			
			for j = 0, num - 1 do
				if LuaFnIsObjValid( sceneId, mems[j] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[j] ) == 1 then						-- ²»ÔÚ³¡¾°µÄ²»×ö´Ë²Ù×÷
					x050221_NotifyFailTips( sceneId, mems[j], "Ğã giªt "..x050221_g_BossID[i].." ğßşc 1/1" )
				end
			end
			
			if i == 2 then--É±ËÀÁËÆÆÑæ×ğÕß
				LuaFnSetCopySceneData_Param( sceneId, 14, 1 )
			else
				for j = 0, num - 1 do
					if LuaFnIsObjValid( sceneId, mems[j] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[j] ) == 1 then						-- ²»ÔÚ³¡¾°µÄ²»×ö´Ë²Ù×÷
						AddMonsterDropItem( sceneId, objId, mems[j], dropthing )
					end
				end
			end
			
			return
		end
	end
	
	if szName == x050221_g_BossYaoWang then
		local misIndex = 0
		for i = 0, num - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then						-- ²»ÔÚ³¡¾°µÄ²»×ö´Ë²Ù×÷
				--x050221_NotifyFailTips( sceneId, mems[i], "ÈÎÎñÄ¿±êÍê³É" )
				x050221_NotifyFailTips( sceneId, mems[i], "Ğã giªt "..x050221_g_BossYaoWang.." ğßşc 1/1" )
				if IsHaveMission( sceneId, mems[i], x050221_g_MissionId ) > 0 then
					misIndex = GetMissionIndexByID( sceneId, mems[i], x050221_g_MissionId )
					SetMissionByIndex( sceneId, mems[i], misIndex, x050221_g_IsBossYaoWang, 1 )--ÉèÖÃÉ±boss±êÖ¾				
					--SetMissionByIndex( sceneId, mems[i], misIndex, x050221_g_IsMissionOkFail, 1 )	-- ÈÎÎñÍê³É
				end
				AddMonsterDropItem( sceneId, objId, mems[i], x050221_g_xuanfouzhu )
				if random(1,2) == 1 then
					AddMonsterDropItem( sceneId, objId, mems[i], 30700213 )
				end
			end
		end
		
		local BroadcastMsg = "#{LLFB_80816_41}#W#{_INFOUSR$N}#{LLFB_80816_42}"
		BroadcastMsg = gsub( BroadcastMsg, "%$N", GetName( sceneId, selfId ) )
		BroadMsgByChatPipe( sceneId, selfId, BroadcastMsg, 4 )
		
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )--ÉèÖÃÀë¿ª³¡¾°
		return
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x050221_OnKillObject( sceneId, selfId, objdataId, objId )						-- ²ÎÊıÒâË¼£º³¡¾°ºÅ¡¢Íæ¼ÒobjId¡¢¹ÖÎï±íÎ»ÖÃºÅ¡¢¹ÖÎïobjId
end

--**********************************
--ÓĞÍæ¼ÒÔÚ¸±±¾ÖĞËÀÍöÊÂ¼ş
--**********************************
function x050221_OnHumanDie( sceneId, selfId, killerId )
end

--**********************************
--Àë¿ª¸±±¾
--**********************************
function x050221_Exit( sceneId, selfId )
	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )				-- È¡µÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	NewWorld( sceneId, selfId, oldsceneId, x050221_g_Back_X, x050221_g_Back_Z )
end

--**********************************
--¼ÌĞø
--**********************************
function x050221_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x050221_g_MissionName )
		AddText( sceneId, "good À^Àm" )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x050221_g_ScriptId, x050221_g_MissionId )
end

--**********************************
--·ÅÆú
--**********************************
function x050221_OnAbandon( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x050221_g_MissionId ) == 0 then
		return
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x050221_g_MissionId )
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, x050221_g_Param_sceneid )

	-- ÉèÖÃ·ÅÆúÁ¬»·ÈÎÎñµÄÊ±¼ä
	--begin modified by zhangguoxin 090208
	--local CurTime = GetHourTime()											-- µ±Ç°Ê±¼ä
	local CurTime = GetQuarterTime()											-- µ±Ç°Ê±¼ä
	--begin modified by zhangguoxin 090208
	SetMissionData( sceneId, selfId, MD_XINSANHUAN_2_LAST, CurTime )

	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦µÄÈÎÎñ
	DelMission( sceneId, selfId, x050221_g_MissionId )
	
	--ĞèÒª¿Û³ıÖĞ¼äÈÎÎñÎïÆ·£¬ÒıÄ§Öé
	for i = 1, getn( x050221_g_YinMoZhuID ) do
		local num = LuaFnGetAvailableItemCount( sceneId, selfId, x050221_g_YinMoZhuID[i] )
		if num > 0 then
			LuaFnDelAvailableItem( sceneId, selfId, x050221_g_YinMoZhuID[i], num )
		end
	end
	
	--ÊÇ·ñÊÇËùĞèÒªµÄ¸±±¾
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )

	if sceneId == copyscene and fubentype == x050221_g_CopySceneType then											-- Èç¹ûÔÚ¸±±¾ÀïÉ¾³ıÈÎÎñ£¬ÔòÖ±½Ó´«ËÍ»Ø
		x050221_NotifyFailTips( sceneId, selfId, "ÈÎ„ÕÊ§”¡£¡" )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		-- È¡µÃ¸±±¾Èë¿Ú³¡¾°ºÅ
		NewWorld( sceneId, selfId, oldsceneId, x050221_g_Back_X, x050221_g_Back_Z )
	end
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼ş
--**********************************
function x050221_OnCopySceneTimer( sceneId, nowTime )
	--¸±±¾Ê±ÖÓ¶ÁÈ¡¼°ÉèÖÃ
	local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )						-- È¡µÃÒÑ¾­Ö´ĞĞµÄ¶¨Ê±´ÎÊı
	TickCount = TickCount + 1
	LuaFnSetCopySceneData_Param( sceneId, 2, TickCount )							-- ÉèÖÃĞÂµÄ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı

	--¸±±¾¹Ø±Õ±êÖ¾
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )

	local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	local i

	for i = 0, membercount - 1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

--	local LevelGap = LuaFnGetCopySceneData_Param( sceneId, CopyScene_LevelGap )

	if leaveFlag == 1 then															-- ĞèÒªÀë¿ª
		--Àë¿ªµ¹¼ÆÊ±¼äµÄ¶ÁÈ¡ºÍÉèÖÃ
		local leaveTickCount = LuaFnGetCopySceneData_Param( sceneId, 5 )
		leaveTickCount = leaveTickCount + 1
		LuaFnSetCopySceneData_Param( sceneId, 5, leaveTickCount )

		if leaveTickCount >= x050221_g_CloseTick then										-- µ¹¼ÆÊ±¼äµ½£¬´ó¼Ò¶¼³öÈ¥°É
			--½«µ±Ç°¸±±¾³¡¾°ÀïµÄËùÓĞÈË´«ËÍ»ØÔ­À´½øÈëÊ±ºòµÄ³¡¾°
			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
					x050221_Exit( sceneId, mems[i] )
				end
			end
		else
			--Í¨Öªµ±Ç°¸±±¾³¡¾°ÀïµÄËùÓĞÈË£¬³¡¾°¹Ø±Õµ¹¼ÆÊ±¼ä
			local strText = format( "Các hÕ s¨ r¶i khöi ğây sau %d giây!", ( x050221_g_CloseTick - leaveTickCount ) * x050221_g_TickTime )

			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
					x050221_NotifyFailTips( sceneId, mems[i], strText )
				end
			end
		end
	elseif TickCount == x050221_g_LimitTotalHoldTime then									-- ¸±±¾×ÜÊ±¼äÏŞÖÆµ½ÁË
		--´Ë´¦ÉèÖÃ¸±±¾ÈÎÎñÓĞÊ±¼äÏŞÖÆµÄÇé¿ö£¬µ±Ê±¼äµ½ºó´¦Àí...
		local misIndex = 0
		for	i = 0, membercount - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
				x050221_NotifyFailTips( sceneId, mems[i], "Nhi®m vø th¤t bÕi, quá gi¶ !" )
				if IsHaveMission( sceneId, mems[i], x050221_g_MissionId ) > 0 then
					misIndex = GetMissionIndexByID( sceneId, mems[i], x050221_g_MissionId )
					if GetMissionParam( sceneId, mems[i], misIndex, x050221_g_IsMissionOkFail ) ~= 1 then
						SetMissionByIndex( sceneId, mems[i], misIndex, x050221_g_IsMissionOkFail, 2 )	-- Èç¹ûÃ»ÓĞÍê³É¾ÍÉèÖÃÎªÊ§°Ü
					end
				end
				x050221_Exit( sceneId, mems[i] )
			end
		end
		--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )
	else
		--¶¨Ê±¼ì²é¶ÓÎé³ÉÔ±µÄ¶ÓÎéºÅ£¬Èç¹û²»·ûºÏ£¬ÔòÌß³ö¸±±¾
		local oldteamid = LuaFnGetCopySceneData_Param( sceneId, 6 )					-- È¡µÃ±£´æµÄ¶ÓÎéºÅ

		for	i = 0, membercount - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 and oldteamid ~= GetTeamId( sceneId, mems[i] ) then
				x050221_NotifyFailTips( sceneId, mems[i], "Ngß½i không · trong ğµi !" )
				x050221_Exit( sceneId, mems[i] )
			end
		end
		
		local isFireBoss = LuaFnGetCopySceneData_Param( sceneId, 14 )				-- ÊÇ·ñÉ±ËÀÆÆÑæ×ğÕß
		local isYaoWang = LuaFnGetCopySceneData_Param( sceneId, 15 )			-- ÊÇ·ñÒı³öºé¼¬ÑıÍõ
		local NotifyTime = LuaFnGetCopySceneData_Param( sceneId, 16 )			-- ÌáĞÑÊ±¼ä
		
		--Ã¿2·ÖÖÓÌáÊ¾Ò»´Î£¬µ¥Êı¼ÆÊ±
		local isPreNotify = 0
		if mod( TickCount*x050221_g_TickTime, 60 ) == 0 and mod( TickCount*x050221_g_TickTime+60, 120 ) == 0 then
			isPreNotify = 1
			for	i = 0, membercount - 1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
					local Minute = floor( (360 - TickCount)*x050221_g_TickTime/60 )
					x050221_NotifyFailTips( sceneId, mems[i], "Th¶i gian hoàn thành nhi®m vø còn "..Minute.." phút." )
				end
			end	
		end

		--Ğ¡ÓÚ15·ÖÖÓµÄÊ±ºò£¬É±ËÀÁËÆÆÑæ×ğÕß£¬ĞèÒªÃ¿2·ÖÌáĞÑÒ»´Îboss³öÏÖÊ±¼ä
		if TickCount < 180 and isFireBoss == 1 then
			if NotifyTime == 0 then --Ê×´ÎÌáĞÑ
				for	i = 0, membercount - 1 do
					if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
						local Minute = 0
						if 180 - TickCount < 12 then--Ğ¡ÓÚ1·ÖÖÓ°´1·ÖÖÓÌáÊ¾
							Minute = 1
						else
							Minute = floor( (180 - TickCount)*x050221_g_TickTime/60 )
						end
						x050221_NotifyFailTips( sceneId, mems[i], "#{LLFB_80819_6}"..Minute.."#{LLFB_80819_7}" )
					end
				end
				LuaFnSetCopySceneData_Param( sceneId, 16, TickCount )
--			elseif TickCount - NotifyTime >= 24 then --ºóÃæµÄÌáĞÑ
--				for	i = 0, membercount - 1 do
--					if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
--						local Minute = 0
--						if 180 - TickCount < 12 then--Ğ¡ÓÚ1·ÖÖÓ°´1·ÖÖÓÌáÊ¾
--							Minute = 1
--						else
--							Minute = floor( (180 - TickCount)*x050221_g_TickTime/60 )
--						end
--						x050221_NotifyFailTips( sceneId, mems[i], "#{LLFB_80819_6}"..Minute.."#{LLFB_80819_7}" )
--					end
--				end
--				LuaFnSetCopySceneData_Param( sceneId, 16, TickCount )
			end
		--´óÓÚµÈÓÚ15·ÖÖÓ
		elseif TickCount >= 180 and isFireBoss == 1 and isYaoWang == 0 then
			local mylevel = LuaFnGetCopySceneData_Param( sceneId, 7 )
			local iniLevel = LuaFnGetCopySceneData_Param( sceneId, 8 )

			local YaoWangID = BossYaoWangIDTbl[1]
			if BossYaoWangIDTbl[iniLevel] then
				YaoWangID = BossYaoWangIDTbl[iniLevel]
			end

			local monsterID = LuaFnCreateMonster( sceneId, YaoWangID, x050221_g_BossYaoWangPos[1], x050221_g_BossYaoWangPos[2], 14, 268, 050221 )
			SetLevel( sceneId, monsterID, mylevel+3 )--µÈ¼¶±ÈÒ»°ãĞ¡¹Ö¸ß3¼¶
			SetCharacterName( sceneId, monsterID, x050221_g_BossYaoWang )
			MonsterTalk(sceneId,monsterID,"¶¾ÕÏÉµØ",x050221_g_YaoWangTalk)
			
			LuaFnSetCopySceneData_Param( sceneId, 15, 1 )
		end
	end
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x050221_CheckSubmit( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x050221_g_MissionId ) <= 0 then
		return 0
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x050221_g_MissionId )				-- µÃµ½ÈÎÎñµÄĞòÁĞºÅ
	if GetMissionParam( sceneId, selfId, misIndex, x050221_g_IsMissionOkFail ) ~= 1 then
		return 0
	end

	if LuaFnGetAvailableItemCount( sceneId, selfId, x050221_g_xuanfouzhu ) < 1 then
		return 0
	end

	return 1
end

--**********************************
--Ìá½»
--**********************************
function x050221_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x050221_g_Name then		--ÅĞ¶Ï¸ÃnpcÊÇ·ñÊÇ¶ÔÓ¦ÈÎÎñµÄnpc
		return
	end
	
	if x050221_CheckSubmit( sceneId, selfId ) == 1 then
		x050221_NotifyFailBox( sceneId, selfId, targetId, x050221_g_MissionComplete )

		--ĞèÒª¿Û³ıÒ»´ÎÖĞ¼äÈÎÎñÎïÆ·ÒıÄ§Öé£¬Ã»ÓĞ¾Í²»¹ÜËü
		for i = 1, getn( x050221_g_YinMoZhuID ) do
			local num = LuaFnGetAvailableItemCount( sceneId, selfId, x050221_g_YinMoZhuID[i] )
			if num > 0 then
				LuaFnDelAvailableItem( sceneId, selfId, x050221_g_YinMoZhuID[i], num )
			end
		end

		DelMission( sceneId, selfId, x050221_g_MissionId )
		-- ÈÎÎñ»ò»î¶¯Í³¼Æ
		LuaFnAuditQuest(sceneId, selfId, "˜ÇÌmßB­hÈÎ„ÕĞş·ğÖé")
	end
end

--**********************************
-- ¶Ô»°´°¿ÚĞÅÏ¢ÌáÊ¾
--**********************************
function x050221_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ÆÁÄ»ÖĞ¼äĞÅÏ¢ÌáÊ¾
--**********************************
function x050221_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--¼ì²âĞÄ·¨ÊÇ²»¹»½ÓÈÎÎñ
--**********************************
function x050221_CheckAllXinfaLevel(sceneId, selfId, level)
	local nMenpai = GetMenPai(sceneId, selfId)
--	if nMenpai<0 or nMenpai>8   then
--		return 0
--	end
	if nMenpai == 9 and GetHumanMenpaiPoint(sceneId, selfId) == 0   then
		return 0
	end
	for i=1, 6 do
		if nMenpai == 9 then
			local nXinfaLevel = LuaFnGetXinFaLevel(sceneId, selfId, 63 + i)
			if nXinfaLevel < level    then
				return 0
			end
		else
			local nXinfaLevel = LuaFnGetXinFaLevel(sceneId, selfId, nMenpai*6 + i)
			if nXinfaLevel < level    then
				return 0
			end
		end
	end
	return 1
end

--**********************************
--ÅĞ¶Ï²úÉúmonsterº¯Êı£¬ÓÉÒıÄ§Öé½Å±¾338510~338514µ÷ÓÃµ½ÕâÀï
--**********************************
function x050221_IsMonster(sceneId, selfId, flag)

	--ÊÇ·ñÊÇ¸±±¾
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		x050221_NotifyFailTips( sceneId, selfId, "#{LLFB_80816_31}" )
		return 0
	end

	--ÊÇ·ñÊÇËùĞèÒªµÄ¸±±¾
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x050221_g_CopySceneType then
		x050221_NotifyFailTips( sceneId, selfId, "#{LLFB_80816_31}" )
		return 0
	end

	local nMonsterNum = GetMonsterCount(sceneId)
	local nAliveMonsterNum = nMonsterNum
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if (LuaFnIsCharacterLiving( sceneId, MonsterId ) == 0) or (GetName(sceneId,MonsterId) == "ÈÎµÀÇå") then
			nAliveMonsterNum = nAliveMonsterNum - 1
		end
	end
	if nAliveMonsterNum > 0 then
		--PrintStr(nMonsterNum)
		x050221_NotifyFailTips( sceneId, selfId, "#{LLFB_80819_5}" )
		return 0
	end

	local posX,posZ = GetWorldPos(sceneId, selfId)
	local inpostype = -1
	
	for i = 1, getn( x050221_g_Pos ) do
		if x050221_g_Pos[i].left[1] <= posX and posX <= x050221_g_Pos[i].right[1] and x050221_g_Pos[i].left[2] <= posZ and posZ <= x050221_g_Pos[i].right[2] then
			inpostype = i
			break
		end
	end
	
	if inpostype == -1 then
		x050221_NotifyFailTips( sceneId, selfId, "#{LLFB_80816_31}" )
		return 0
	end
	
	return 1
end
	
function x050221_GenerateMonster(sceneId, selfId, flag)

	local posX,posZ = GetWorldPos(sceneId, selfId)
	local inpostype = -1
	
	for i = 1, getn( x050221_g_Pos ) do
		if x050221_g_Pos[i].left[1] <= posX and posX <= x050221_g_Pos[i].right[1] and x050221_g_Pos[i].left[2] <= posZ and posZ <= x050221_g_Pos[i].right[2] then
			inpostype = i
			break
		end
	end
	
	if inpostype == -1 then
		x050221_NotifyFailTips( sceneId, selfId, "#{LLFB_80816_31}" )
		return
	end

	local ret = 0 --·µ»ØÖµ£¬1ÒıÄ§Öé»áÏûÊ§£¬0²»»áÏûÊ§
	if flag >= 1 and flag <= 5 then
		local mylevel = LuaFnGetCopySceneData_Param( sceneId, 7 )
		local iniLevel = LuaFnGetCopySceneData_Param( sceneId, 8 )
		local isboss = LuaFnGetCopySceneData_Param( sceneId, 8+flag )
		local monsterID = 0
		
		local monster15ID = Monster15IDTbl[1]
		if Monster15IDTbl[iniLevel] then
			monster15ID = Monster15IDTbl[iniLevel]
		end
		
		local monster10ID = Monster10IDTbl[1]
		if Monster10IDTbl[iniLevel] then
			monster10ID = Monster10IDTbl[iniLevel]
		end
		
		local bossID = BossIDTbl[flag][1]
		if BossIDTbl[flag][iniLevel] then
			bossID = BossIDTbl[flag][iniLevel]
		end
		
		--PrintStr("monster15ID "..monster15ID.."monster10ID "..monster10ID.."bossID "..bossID)

		if inpostype == flag then--µØµãÓÅÏÈ£¬ÊÇ·ñÉ±bossÆä´Î
			if isboss == 0 then--Ã»ÓĞÒı³öboss
				for i = (flag-1)*15+1,flag*15  do
					monsterID = LuaFnCreateMonster( sceneId, monster15ID, x050221_g_monster15Pos[i][1], x050221_g_monster15Pos[i][2], 14, -1, 050221 )
					SetLevel( sceneId, monsterID, mylevel )
					SetCharacterName( sceneId, monsterID, x050221_g_Monster15ID )
				end
			
				local extAIScript = -1
				if flag == 1 then--·ç
					extAIScript = 263
				elseif flag == 2 then--Ñæ
					extAIScript = 267
				elseif flag == 3 then--µØ
					extAIScript = 264
				elseif flag == 4 then--Ğş
					extAIScript = 265
				elseif flag == 5 then--¶¾
					extAIScript = 266
				end

				monsterID = LuaFnCreateMonster( sceneId, bossID, x050221_g_BossPos[flag][1], x050221_g_BossPos[flag][2], 14, extAIScript, 050221 )
				SetLevel( sceneId, monsterID, mylevel+2 )--µÈ¼¶±ÈÒ»°ãĞ¡¹Ö¸ß2¼¶
				SetCharacterName( sceneId, monsterID, x050221_g_BossID[flag] )
				MonsterTalk(sceneId,monsterID,"¶¾ÕÏÉµØ",x050221_g_BossTalk[flag])
				
				LuaFnSetCopySceneData_Param( sceneId, 8+flag, 1)
				
				if flag == 1 then--·ç
					x050221_NotifyFailTips( sceneId, selfId, "#{LLFB_80816_29}" )
				elseif flag == 2 then--Ñæ
					x050221_NotifyFailTips( sceneId, selfId, "#{LLFB_80816_38}" )
				elseif flag == 3 then--µØ
					x050221_NotifyFailTips( sceneId, selfId, "#{LLFB_80816_32}" )
				elseif flag == 4 then--Ğş
					x050221_NotifyFailTips( sceneId, selfId, "#{LLFB_80816_34}" )
				elseif flag == 5 then--¶¾
					x050221_NotifyFailTips( sceneId, selfId, "#{LLFB_80816_36}" )
				end
				
				ret = 1
			else--ÒÑ¾­Òı³öboss
				for i = (flag-1)*10+1,flag*10  do
					monsterID = LuaFnCreateMonster( sceneId, monster10ID, x050221_g_monster10Pos[i][1], x050221_g_monster10Pos[i][2], 14, -1, 050221 )
					SetLevel( sceneId, monsterID, mylevel )
					SetCharacterName( sceneId, monsterID, x050221_g_Monster10ID )
				end
				
				x050221_NotifyFailTips( sceneId, selfId, x050221_g_BossID[flag].."#{LLFB_80816_28}" )
			end
		else--²»ÊÇÕıÈ·µØµã
			for i = (inpostype-1)*10+1,inpostype*10  do--ÔÚÊ¹ÓÃµØÒı³ö10¸öĞ¡¹Ö£¬¶ø²»ÊÇÔÚÒıÄ§ÖéµÄÔ­À´µØ·½
				monsterID = LuaFnCreateMonster( sceneId, monster10ID, x050221_g_monster10Pos[i][1], x050221_g_monster10Pos[i][2], 14, -1, 050221 )
				SetLevel( sceneId, monsterID, mylevel )
				SetCharacterName( sceneId, monsterID, x050221_g_Monster10ID )
			end
			
			if flag == 1 then--·ç
				x050221_NotifyFailTips( sceneId, selfId, "#{LLFB_80816_30}" )
			elseif flag == 2 then--Ñæ
				x050221_NotifyFailTips( sceneId, selfId, "#{LLFB_80816_39}" )
			elseif flag == 3 then--µØ
				x050221_NotifyFailTips( sceneId, selfId, "#{LLFB_80816_33}" )
			elseif flag == 4 then--Ğş
				x050221_NotifyFailTips( sceneId, selfId, "#{LLFB_80816_35}" )
			elseif flag == 5 then--¶¾
				x050221_NotifyFailTips( sceneId, selfId, "#{LLFB_80816_37}" )
			end
		end
	end

	return ret
end

--**********************************
-- Ê°È¡´¦Àí scene.luaµÄx888888_OnPlayerPickupItemFromDropBoxµ÷ÓÃµ½ÕâÀï
--**********************************
function x050221_PickupItem(sceneId, selfId, itemId, bagidx )
	if IsHaveMission( sceneId, selfId, x050221_g_MissionId ) <= 0 then
		return
	end
	
	if itemId ~= x050221_g_xuanfouzhu then
		return
	end
	
	x050221_NotifyFailTips( sceneId, selfId, "Ğã tìm th¤y Huy«n Ph§t Châu 1/1" )
	x050221_NotifyFailTips( sceneId, selfId, "Hoàn thành nhi®m vø." )
	misIndex = GetMissionIndexByID( sceneId, selfId, x050221_g_MissionId )
	SetMissionByIndex( sceneId, selfId, misIndex, x050221_g_IsFindGoods, 1 )
	SetMissionByIndex( sceneId, selfId, misIndex, x050221_g_IsMissionOkFail, 1 )	-- ÈÎÎñÍê³É
end
