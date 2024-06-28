--¸±±¾ÈÎÎñ
--ËÍ»¹Ê§ÇÔÅä·½

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x600042_g_ScriptId	= 600042
--ÈÎÎñºÅ
x600042_g_MissionId	= 1113
--Ä¿±êNPC
x600042_g_Name			= "Tr¸nh Vô Danh "
--ÈÎÎñµÈ¼¶
x600042_g_MissionLevel		= 10000
--ÈÎÎñ¹éÀà
x600042_g_MissionKind			= 50
--ÊÇ·ñÊÇ¾«Ó¢ÈÎÎñ
x600042_g_IfMissionElite	= 0

--********ÏÂÃæ¼¸ÏîÊÇ¶¯Ì¬ÏÔÊ¾µÄÄÚÈİ£¬ÓÃÓÚÔÚÈÎÎñÁĞ±íÖĞ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö******
--½ÇÉ«Mission±äÁ¿ËµÃ÷
x600042_g_IsMissionOkFail					= 0	--0 ÈÎÎñÍê³É±ê¼Ç
x600042_g_MissionParam_SubId			= 1	--1 ×ÓÈÎÎñ½Å±¾ºÅ´æ·ÅÎ»ÖÃ
x600042_g_MissionParam_Phase			= 2	--2 ½×¶ÎºÅ£¬´ËºÅÓÃÓÚÇø·Öµ±Ç°ÈÎÎñUIµÄÃèÊöĞÅÏ¢
x600042_g_MissionParam_NpcId			= 3	--3 ÈÎÎñNPCµÄNPCIdºÅ
x600042_g_MissionParam_ItemId			= 4	--4 ÈÎÎñÎïÆ·µÄ±àºÅ
x600042_g_Param_sceneid						= 5	--5 µ±Ç°¸±±¾ÈÎÎñµÄ³¡¾°ºÅ
x600042_g_Param_StateId						= 6	--6 ×´Ì¬
x600042_g_Param_RandomPos					= 7	--7 °ï»á³¡¾°ÖĞµÄËæ»ú×ø±ê£¬Ç°ÈıÎ»ÎªX×ø±ê£¬ºóÈıÎ»ÎªY×ø±ê( XXX YYY )
--Ñ­»·ÈÎÎñµÄÊı¾İË÷Òı£¬ÀïÃæ´æ×ÅÒÑ×öµÄ»·Êı
x600042_g_MissionRound						= 61
--**********************************ÒÔÉÏÊÇ¶¯Ì¬****************************

--ÈÎÎñÎÄ±¾ÃèÊö
x600042_g_MissionName			= "Nghiên cÑu nhi®m vø"
x600042_g_MissionInfo			= "Nµi chính thành th¸ - nhi®m vø nghiên cÑu"									--ÈÎÎñÃèÊö
x600042_g_MissionTarget		= "%f"																	--ÈÎÎñÄ¿±ê
x600042_g_ContinueInfo		= "    Nhi®m vø cüa các hÕ vçn chßa hoàn thành à?"					--Î´Íê³ÉÈÎÎñµÄnpc¶Ô»°
x600042_g_SubmitInfo			= "    Sñ tình tiªn tri¬n nhß thª nào r°i?"								--Íê³ÉÎ´Ìá½»Ê±µÄnpc¶Ô»°
x600042_g_MissionComplete	= "    R¤t t¯t r¤t t¯t, tiªn ğµ nghiên cÑu tång nhanh không ít. "--Íê³ÉÈÎÎñnpcËµ»°µÄ»°

x600042_g_Parameter_Item_IDRandom = { { id = 4, num = 1 } }

x600042_g_StrForePart			= 2

--ÓÃÀ´±£´æ×Ö·û´®¸ñÊ½»¯µÄÊı¾İ
x600042_g_FormatList			= {
	"",
	"    Dña vào ğ¥u m¯i tìm ra gián ği®p và nh§n %2i, giao cho %1n. ",			--1 ¸±±¾ÖĞ´ò³öÅä·½
	"    Nh§n ğßşc %2i, giao cho %1n. ",										--2 ÕÒµ½NPC
	"    Hoàn thành nhi®m vø, có th¬ ğªn bang hµi ĞÕi chü quän nh§n giäi thß·ng r°i. "	--3 ËÍ»¹
}

--Í¨ÓÃ³ÇÊĞÈÎÎñ½Å±¾
x600042_g_CityMissionScript	= 600001
x600042_g_ConstructionScript= 600040
x600042_g_TransScript				= 400900

--ÈÎÎñ½±Àø

--MisDescEnd
--************************************************************************

x600042_g_NPCOffset				= 44	--±íÀïµÚ¼¸ÁĞ NPC µÄÆ«ÒÆÁ¿
x600042_g_NPCOffsetEx			= 261	--±íÀïµÚ¼¸ÁĞ NPC µÄÆ«ÒÆÁ¿ modi:lby20071126


--½×¶ÎÈÎÎñ
x600042_g_PhaseKey				= {}
x600042_g_PhaseKey["cpd"]	= 1		--¸±±¾ÖĞ´ò³öÅä·½
x600042_g_PhaseKey["npc"]	= 2		--ÕÒµ½NPC
x600042_g_PhaseKey["end"]	= 3		--ËÍ»¹

--ÃûÆ÷Åä·½
x600042_g_itmNeed					= { 40004291 }
--Ê§ÇÔÏßË÷
x600042_g_itmDirect				= 40004290

--************************************************************************
--¸±±¾Ïà¹Ø
x600042_g_CopySceneName	= "Th¸ t§p"				--¸±±¾Ãû³Æ
x600042_g_CopySceneType	= FUBEN_SHIJI1	--¸±±¾ÀàĞÍ£¬¶¨ÒåÔÚScriptGlobal.luaÀïÃæ
x600042_g_CopySceneMap	= "shiji_1.nav"
x600042_g_Exit					= "shiji_1_area.ini"
x600042_g_TickTime			= 5					--»Øµ÷½Å±¾µÄÊ±ÖÓÊ±¼ä£¨µ¥Î»£ºÃë/´Î£©
x600042_g_LimitTotalHoldTime	= 360	--¸±±¾¿ÉÒÔ´æ»îµÄÊ±¼ä£¨µ¥Î»£º´ÎÊı£©,Èç¹û´ËÊ±¼äµ½ÁË£¬ÔòÈÎÎñ½«»áÊ§°Ü
x600042_g_LimitTimeSuccess		= 500	--¸±±¾Ê±¼äÏŞÖÆ£¨µ¥Î»£º´ÎÊı£©£¬Èç¹û´ËÊ±¼äµ½ÁË£¬ÈÎÎñÍê³É
x600042_g_CloseTick			= 6					--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±£¨µ¥Î»£º´ÎÊı£©
x600042_g_NoUserTime		= 300				--¸±±¾ÖĞÃ»ÓĞÈËºó¿ÉÒÔ¼ÌĞø±£´æµÄÊ±¼ä£¨µ¥Î»£ºÃë£©
x600042_g_DeadTrans			= 0					--ËÀÍö×ªÒÆÄ£Ê½£¬0£ºËÀÍöºó»¹¿ÉÒÔ¼ÌĞøÔÚ¸±±¾£¬1£ºËÀÍöºó±»Ç¿ÖÆÒÆ³ö¸±±¾
x600042_g_MonsterCount	= 10				--´óĞ¡¹Ö×ÜÊıÁ¿
x600042_g_Fuben_X				= 43				--½øÈë¸±±¾µÄÎ»ÖÃX
x600042_g_Fuben_Z				= 45				--½øÈë¸±±¾µÄÎ»ÖÃZ
x600042_g_MonsterGroupId= 0					--Ğ¡¹Ö
x600042_g_BossGroupId		= 1					--Boss

--¸±±¾Êı¾İÇøË÷Òı
x600042_g_keyParam			=
{
	["typ"]	= 0,	--ÉèÖÃ¸±±¾Êı¾İ£¬ÕâÀï½«0ºÅË÷ÒıµÄÊı¾İÉèÖÃÎª999£¬ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êı×Ö×Ô¶¨Òå)
	["sid"]	= 1,	--½«1ºÅÊı¾İÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼ş½Å±¾ºÅ
	["tim"]	= 2,	--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
	["ent"]	= 3,	--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	["cls"]	= 4,	--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å£¬1¹Ø±Õ
	["dwn"]	= 5,	--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊı
	["tem"]	= 6,	--±£´æ¶ÓÎé±àºÅ
	["px"]	= 7,	--Íæ¼Ò³öÀ´Ê±µÄX×ø±ê
	["pz"]	= 8,	--Íæ¼Ò³öÀ´Ê±µÄZ×ø±ê
}

--ÃüÃû±í¸ñ
x600042_g_lstBossName		=
{
	["fst"]	=
	{
		"Gia Cát ", "Tß Mã ", "Âu Dß½ng ", "Tây Môn", "Hoàng Phü",
		"Tß Ğ°", "Úy Trì", "Hô Diên", "Trß¶ng Quan", "Trß¶ng Tôn",
		"Công Tôn", "Løc Phi",	"Nam Quan"
	},
	["mid"]	=
	{	
		"An ", "Lâm ", "Thanh b¢ng", "Thanh", "Kim",
		"Chân ", "Thành ", "Gió", "Ân", "Sinh",
		"Canh ", "Ôn (¤m)", "Thìn"
	},
	["lst"]	=
	{
		"L® ", "Tàn bÕo", "Ğ¬", "H±", "Báo",
		"Lµc ", "ĞÕo", "Li®t ", "Ğêm", "Di®t ",
		"Bá ", "K¸ch ", "T¯ "
	}
}

--°ï»á³¡¾°ÖĞµÄËæ»ú×ø±ê
x600042_g_posRandom			=
{
	{ 50, 51 }, { 54, 92 }, { 85, 99 }, {110, 100}, {152, 84 },
	{140, 54 }, { 99, 50 }, { 84, 43 }, { 66, 56 }, { 99, 83 },
	{ 39, 129}, { 60, 130}, { 60, 150}, { 80, 150}, {100, 150},
	{ 80, 130}, {120, 130}, {120, 150}, {140, 130}, {140, 150},
	{155, 140}, { 45, 64 }
}

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x600042_OnDefaultEvent( sceneId, selfId, targetId )

	--ÅĞ¶Ï¸ÃnpcÊÇ·ñÊÇ¶ÔÓ¦ÈÎÎñµÄnpc
	if GetName( sceneId, targetId ) ~= x600042_g_Name then
		return
	end

	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600042_g_MissionId ) > 0 then
		local bDone = x600042_CheckSubmit( sceneId, selfId )
		local strText

		if bDone == 1 then
			strText = x600042_g_SubmitInfo
		else
			strText = x600042_g_ContinueInfo
		end

		BeginEvent( sceneId )
			AddText( sceneId, x600042_g_MissionName )
			AddText( sceneId, strText )
		EndEvent( )
		DispatchMissionDemandInfo( sceneId, selfId, targetId, x600042_g_ScriptId, x600042_g_MissionId, bDone )

	--Î´½Ó´ËÈÎÎñ£¬ÇÒÂú×ãÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x600042_CheckAccept( sceneId, selfId ) > 0 then
		x600042_OnAccept( sceneId, selfId, targetId )
	end

end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x600042_OnEnumerate( sceneId, selfId, targetId )

	--ÅĞ¶Ï¸ÃnpcÊÇ·ñÊÇ¶ÔÓ¦ÈÎÎñµÄnpc
	if GetName( sceneId, targetId ) ~= x600042_g_Name then
		return
	end

   --Èç¹ûÒÑ½Ó´ËÈÎÎñ
	if IsHaveMission( sceneId, selfId, x600042_g_MissionId ) > 0 then
		AddNumText( sceneId, x600042_g_ScriptId, x600042_g_MissionName,3,-1 )
	end

end

--**********************************
--¼ì²â½ÓÊÜÌõ¼ş
--**********************************
function x600042_CheckAccept( sceneId, selfId )

	local	ret	= CallScriptFunction( x600042_g_ConstructionScript, "CheckAccept", sceneId, selfId )
	return ret

end

--**********************************
--¸ù¾İÍæ¼ÒµÈ¼¶µÃµ½¶ÔÓ¦MissionNPC_HashTable.txtÖĞµÄÑ¡ÔñĞÅÏ¢
--**********************************
function x600042_GetMissionNPCKey( sceneId, selfId )

	local nPlayerLevel = GetLevel( sceneId, selfId )
	local nPos
	if nPlayerLevel < 30 then				-- 10 ~ 29 Level
		nPos = 0
	elseif nPlayerLevel < 50 then		-- 30 ~ 49 Level
		nPos = 1
	elseif nPlayerLevel < 70 then		-- 50 ~ 69 Level
		nPos = 2
	--else														-- 70 ~ 100 Level
	--	nPos = 3
	--end
	--return nPos + x600042_g_NPCOffset
	elseif	nPlayerLevel < 100 then		-- 70 ~ 100 Level
		nPos = 3
	elseif nPlayerLevel < 120 then		-- 100 ~ 120 Level	modi:lby20071126
		nPos = 0
	else 															-- >=120 Level
		nPos = 1
		
	end
	
	if nPlayerLevel < 100 then
		return nPos + x600042_g_NPCOffset
	else
		return nPos + x600042_g_NPCOffsetEx
	end
end

--**********************************
--½ÓÊÜ
--**********************************
function x600042_OnAccept( sceneId, selfId, targetId )

	--Ã»ÓĞÈÎÎñ²Å¿ÉÒÔ×ßÕâÀï
	if IsHaveMission( sceneId, selfId, x600042_g_MissionId ) == 0 then
		if GetLevel( sceneId, selfId ) < 10 then
			x600042_NotifyFailTips( sceneId, selfId, "Không ğü ğÆng c¤p" )
			return
		end
		
		if LuaFnGetTaskItemBagSpace( sceneId, selfId ) < 1 then
			x600042_NotifyFailTips( sceneId, selfId, "Nhi®m vø này c¥n ít nh¤t mµt không gian v§t ph¦m nhi®m vø" )
			return
		end

		--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
		--LuaFnAddMission²ÎÊıËµÃ÷£º
		--sceneId, selfId, misId(ÈÎÎñ±àºÅ), scriptId, k(ÊÇ·ñ»Øµ÷x600042_OnKillObject), e(ÊÇ·ñ»Øµ÷OnEnterArea), i(ÊÇ·ñ»Øµ÷OnItemChange)
		--¹¦ÄÜËµÃ÷£ºÔÚÍæ¼ÒÉíÉÏÌí¼ÓmisId±àºÅµÄÈÎÎñ£¬³É¹¦·µ»Ø1
		AddMission( sceneId, selfId, x600042_g_MissionId, x600042_g_ScriptId, 1, 0, 1 )	-- kill¡¢area¡¢item
		if IsHaveMission( sceneId, selfId, x600042_g_MissionId ) <= 0 then
			return
		end

		--ĞŞ¸ÄÍæ¼ÒÉíÉÏmisId±àºÅµÄÈÎÎñÏàÓ¦ÊÂ¼ş
		--eventId£ºµ÷ÓÃ½Å±¾±àºÅ£¬0 KillObj, 1 EnterArea, 2 ItemChanged, 3 PetChanged, 4 LockedTarget
		--×¢²á x600042_OnLockedTarget ÊÂ¼ş
		SetMissionEvent( sceneId, selfId, x600042_g_MissionId, 4 )
		CallScriptFunction( x600042_g_ConstructionScript, "OnAccept", sceneId, selfId, targetId, x600042_g_ScriptId )
		local misIndex	= GetMissionIndexByID( sceneId, selfId, x600042_g_MissionId )

		--Ëæ»úÌô³öÒ»¸öÊÊÓÃµÄÎïÆ·
		local	nItemId					= x600042_g_itmNeed[ random( getn(x600042_g_itmNeed) ) ]
		local _, strItemName	= GetItemInfoByItemId( nItemId )

		--Ñ¡ÔñËÍĞÅNPC
		local nNpcId, strNpcName, strNpcSceneDesc, _, nPosX, nPosZ, _, nGender = GetOneMissionNpc( x600042_GetMissionNPCKey( sceneId, selfId ) )

		SetMissionByIndex( sceneId, selfId, misIndex, x600042_g_MissionParam_Phase, x600042_g_PhaseKey["cpd"] )
		SetMissionByIndex( sceneId, selfId, misIndex, x600042_g_MissionParam_NpcId, nNpcId )
		SetMissionByIndex( sceneId, selfId, misIndex, x600042_g_MissionParam_ItemId, nItemId )

		--ÏÔÊ¾ÄÚÈİ¸æËßÍæ¼ÒÒÑ¾­½ÓÊÜÁËÈÎÎñ
		local	sex
		if nGender == 0 then
			sex	= "muµi ¤y "
		else
			sex	= "huynh ¤y "
		end
		local	missionInfo	= format( "    %s, lÕi có nhi®m vø giao cho các hÕ ğây! %s có %s (%d, %d) cüa bang chúng ta ğã nghiên cÑu ra %s, ğang chu¦n b¸ giao cho %s thì b¸ l¤y m¤t, cån cÑ vào sñ suy ğoán cüa Trí Nang Ğoàn, có l¨ là do Nµi QuÖ gây nên, m®nh l®nh cho các hÕ phäi cån cÑ vào ğ¥u m¯i ğ¬ tìm ra Nµi QuÖ và l¤y ğßşc %s, ğúng h©n giao cho khách hàng cüa bän thành, ği nhanh v« nhanh!",
				GetName( sceneId, selfId), strNpcSceneDesc, strNpcName, nPosX, nPosZ, strItemName, sex, strItemName )
		BeginEvent( sceneId )
			AddText( sceneId, x600042_g_MissionName )
			AddText( sceneId, missionInfo )
			AddText( sceneId, "#rCác hÕ ğã nh§n " .. x600042_g_MissionName )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

		--Ìá¹©ÈÎÎñÎïÆ·£ºÊ§ÇÔÏßË÷
		if GetItemCount( sceneId, selfId, x600042_g_itmDirect ) <= 0 then
			local pos = LuaFnTryRecieveItem( sceneId, selfId, x600042_g_itmDirect, QUALITY_MUST_BE_CHANGE)
			if pos == -1 then
				x600042_NotifyFailTips( sceneId, selfId, "Ch² tr¯ng trong túi xách không ğü" )
				return
			end
		end
		
		--ÉèÖÃ½øÈë¸±±¾µÄËæ»ú×ø±ê
		local	pos		= x600042_g_posRandom[ random( getn(x600042_g_posRandom) ) ]
		local	tmp		= pos[1] * 1000 + pos[2]
		SetMissionByIndex( sceneId, selfId, misIndex, x600042_g_Param_RandomPos, tmp )

	end

end

--**********************************
--µ±Ëø¶¨Ò»¸ö¶ÔÏó
--**********************************
function x600042_OnLockedTarget( sceneId, selfId, objId )

	if IsHaveMission( sceneId, selfId, x600042_g_MissionId ) < 1 then
		return		--Ã»ÓĞ¸ÃÈÎÎñ
	end

	local misIndex			= GetMissionIndexByID( sceneId, selfId, x600042_g_MissionId )
	local nNpcId				= GetMissionParam( sceneId, selfId, misIndex, x600042_g_MissionParam_NpcId )
	local _, strNpcName	= GetNpcInfoByNpcId(sceneId, nNpcId )
	if GetName( sceneId, objId ) ~= strNpcName then
		return		--ÕÒ´íÈËÁË
	end

	local itemId	= GetMissionParam( sceneId, selfId, misIndex, x600042_g_MissionParam_ItemId )
	local _, strDemandItemName	= GetItemInfoByItemId( itemId )

	local Phase		= GetMissionParam( sceneId, selfId, misIndex, x600042_g_MissionParam_Phase )
	if Phase == x600042_g_PhaseKey["npc"] then
		if GetItemCount( sceneId, selfId, itemId ) < 1 then
			return
		end

		local	missionInfo	= format( "    T¯t quá, r¤t cäm ½n, quı bang giæ chæ tín t¯t quá, r¤t mong có sñ hşp tác l¥n sau" )
		TAddText( sceneId, missionInfo )

		ResetMissionEvent( sceneId, selfId, x600042_g_MissionId, 4 )
		DelItem( sceneId, selfId, itemId, 1 )

		--ÈÎÎñÍê³É
		SetMissionByIndex( sceneId, selfId, misIndex, x600042_g_MissionParam_Phase, x600042_g_PhaseKey["end"] )
		SetMissionByIndex( sceneId, selfId, misIndex, x600042_g_IsMissionOkFail, 1 )
		x600042_NotifyFailTips( sceneId, selfId, "Nhi®m vø hoàn thành" )

	-- ÒâÍâÇé¿ö
	else
		return
	end

end

--**********************************
--·ÅÆú
--**********************************
function x600042_OnAbandon( sceneId, selfId )

	if IsHaveMission( sceneId, selfId, x600042_g_MissionId ) <= 0 then
		return
	end

	--É¾³ıÎïÆ·
	local misIndex		= GetMissionIndexByID( sceneId, selfId, x600042_g_MissionId )
	local demandItemId= GetMissionParam( sceneId, selfId, misIndex, x600042_g_MissionParam_ItemId )
	if GetItemCount( sceneId, selfId, demandItemId ) > 0 then
		DelItem( sceneId, selfId, demandItemId, 1 )
	end
	if GetItemCount( sceneId, selfId, x600042_g_itmDirect ) > 0 then
		DelItem( sceneId, selfId, x600042_g_itmDirect, 1 )
	end

	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦µÄÈÎÎñ
	CallScriptFunction( x600042_g_ConstructionScript, "OnAbandon", sceneId, selfId )

	--Èç¹ûÔÚ¸±±¾ÀïÉ¾³ıÈÎÎñ£¬ÔòÖ±½Ó´«ËÍ»Ø
	if sceneId == GetMissionParam( sceneId, selfId, misIndex, x600042_g_Param_sceneid ) then
		x600042_NotifyFailTips( sceneId, selfId, "Nhi®m vø th¤t bÕi!" )
		x600042_BackToCity( sceneId, selfId )
	end

end

--**********************************
--¼ÌĞø
--**********************************
function x600042_OnContinue( sceneId, selfId, targetId )

	BeginEvent( sceneId )
		AddText( sceneId, x600042_g_MissionName )
		AddText( sceneId, x600042_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600042_g_ScriptId, x600042_g_MissionId )

end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x600042_CheckSubmit( sceneId, selfId, selectRadioId )

	--ÅĞ¶ÏÈÎÎñÊÇ·ñÒÑ¾­Íê³É
	local ret = CallScriptFunction( x600042_g_ConstructionScript, "CheckSubmit", sceneId, selfId )
	return ret

end

--**********************************
--Ìá½»
--**********************************
function x600042_OnSubmit( sceneId, selfId, targetId, selectRadioId )

	--ÅĞ¶Ï¸ÃnpcÊÇ·ñÊÇ¶ÔÓ¦ÈÎÎñµÄnpc
	if GetName( sceneId, targetId ) ~= x600042_g_Name then
		return
	end

	if x600042_CheckSubmit( sceneId, selfId ) == 1 then
		CallScriptFunction( x600042_g_ConstructionScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
	end

end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x600042_OnKillObject( sceneId, selfId, objdataId, objId )

	--ÊÇ·ñÊÇËùĞèÒªµÄ¸±±¾
	local	fubentype = LuaFnGetCopySceneData_Param( sceneId, x600042_g_keyParam["typ"] )
	if fubentype ~= x600042_g_CopySceneType then
		return
	end

	--Ö»¹ØĞÄBoss
	if GetMonsterGroupID( sceneId, objId ) ~= x600042_g_BossGroupId then
		return
	end
	
	--È¡µÃÕâ¸ö¹ÖÎïËÀºóÓµÓĞ·ÖÅäÈ¨µÄÈËÊı
	local allOwnersCount = GetMonsterOwnerCount( sceneId, objId )
	local curOwner
	local misIndex, demandItemId

	--Ö»·ÖÅä¶Ó³¤
	local	leaderguid	= LuaFnGetCopySceneData_TeamLeader( sceneId )
	for i = 0, allOwnersCount - 1 do
		--È¡µÃÓµÓĞ·ÖÅäÈ¨µÄÈËµÄobjId
		curOwner = GetMonsterOwnerID( sceneId, objId, i )
		--Èç¹ûÕâ¸öÈËÓµÓĞÈÎÎñ
		if IsHaveMission( sceneId, curOwner, x600042_g_MissionId ) > 0 and leaderguid == LuaFnGetGUID( sceneId, curOwner ) then
			misIndex = GetMissionIndexByID( sceneId, curOwner, x600042_g_MissionId )
			demandItemId = GetMissionParam( sceneId, curOwner, misIndex, x600042_g_MissionParam_ItemId )

			AddMonsterDropItem( sceneId, objId, curOwner, demandItemId )
		end
	end

end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x600042_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x600042_OnItemChanged( sceneId, selfId, itemdataId )

	local misIndex			= GetMissionIndexByID( sceneId, selfId, x600042_g_MissionId )
	local _, strItemName= GetItemInfoByItemId( itemdataId )
	local demandItemId	= GetMissionParam( sceneId, selfId, misIndex, x600042_g_MissionParam_ItemId )
	local _, strDemandItemName	= GetItemInfoByItemId( demandItemId )

	if itemdataId ~= demandItemId then
		return
	end

	local nItemNum	= GetItemCount( sceneId, selfId, itemdataId )
	local strText		= nil
	if nItemNum > 0 then
		strText = format( "L¤y ğßşc %s", strItemName )
		
		--É¾³ıÏßË÷
		if GetItemCount( sceneId, selfId, x600042_g_itmDirect ) > 0 then
			DelItem( sceneId, selfId, x600042_g_itmDirect, 1 )
		end
		
		--Èç¹ûÔÚ¸±±¾ÀïÉ¾³ıÈÎÎñ£¬ÔòÖ±½Ó´«ËÍ»Ø
		if sceneId == GetMissionParam( sceneId, selfId, misIndex, x600042_g_Param_sceneid ) then
			x600042_OnFinished( sceneId )
		end
	else
--	strText = format( "Ê§È¥ %s", strItemName )
		SetMissionByIndex( sceneId, selfId, misIndex, x600042_g_IsMissionOkFail, 0 )
	end
	
	if strText ~= nil then
		x600042_NotifyFailTips( sceneId, selfId, strText )
	end

end

--**********************************
--Ê¹ÓÃÊ§ÇÔÏßË÷
--½øÈë¸±±¾£¬Ñ°ÕÒÃûÆ÷Åä·½
--**********************************
function x600042_OnItemUse( sceneId, selfId )

	--ÓĞÈÎÎñ²Å¿ÉÒÔ×ßÕâÀï
	if IsHaveMission( sceneId, selfId, x600042_g_MissionId ) <= 0 then
		return
	end
	
	local	misIndex	= GetMissionIndexByID( sceneId, selfId, x600042_g_MissionId )

	--Èç¹ûÔÚ¸±±¾ÀïÔò²»ÏòÏÂ½øĞĞ
	if sceneId == GetMissionParam( sceneId, selfId, misIndex, x600042_g_Param_sceneid ) then
		return
	end
	
	--¸±±¾¹Ø±Õ±êÖ¾
	local	leaveFlag	= LuaFnGetCopySceneData_Param( sceneId, x600042_g_keyParam["cls"] )
	--Èç¹û¸±±¾ÒÑ¾­±»ÖÃ³É¹Ø±Õ×´Ì¬£¬ÔòÉ±¹ÖÎŞĞ§
	if leaveFlag == 1 then
		x600042_NotifyFailTips( sceneId, selfId, "Nhi®m vø th¤t bÕi, hãy bö ği và nh§n lÕi" )
		return
	end

	--°ï»á³¡¾°ÖĞµÄËæ»ú×ø±ê
	local	idCity= CityGetSelfCityID( sceneId, selfId )
	local	tmp		= GetMissionParam( sceneId, selfId, misIndex, x600042_g_Param_RandomPos )
	local	ranX	= floor( tmp / 1000 )
	local	ranZ	= floor( tmp ) - floor( tmp / 1000 ) * 1000
	local	curX	= GetHumanWorldX( sceneId, selfId )
	local	curZ	= GetHumanWorldZ( sceneId, selfId )
	local	str		= format( "— (%d,%d) cüa bang hµi, hình nhß có ngß¶i ğang ngh¸ lu§n gì ğó", ranX, ranZ )
	if idCity ~= sceneId or curX < (ranX-5) or curX > (ranX+5) or curZ < (ranZ-5) or curZ > (ranZ+5) then
		x600042_NotifyFailTips( sceneId, selfId, str )
		return
	end

	local	copysceneid	= GetMissionParam( sceneId, selfId, misIndex, x600042_g_Param_sceneid )

	--½ø¹ı¸±±¾
	if copysceneid > 0 then
		--½«×Ô¼º´«ËÍµ½¸±±¾³¡¾°
		if IsCanEnterCopyScene( copysceneid, GetHumanGUID( sceneId, selfId ) ) == 1 then
			NewWorld( sceneId, selfId, copysceneid, x600042_g_Fuben_X, x600042_g_Fuben_Z )
		-- Ö»ÒªÔÚÀïÃæÃ»ÓĞÍê³É£¬¾ÍËãÊ§°Ü£¬ĞèÒªÖØ×ö
		else
			x600042_NotifyFailTips( sceneId, selfId, "Nhi®m vø th¤t bÕi, hãy bö ği và nh§n lÕi" )
		end
		return
	end

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	local	nNpcId	= GetMissionParam( sceneId, selfId, misIndex, x600042_g_MissionParam_NpcId )
	local	nItemId	= GetMissionParam( sceneId, selfId, misIndex, x600042_g_MissionParam_ItemId )

	local	StateId	= GetMissionParam( sceneId, selfId, misIndex, x600042_g_Param_StateId )
	if StateId == 1 then
		x600042_NotifyFailTips( sceneId, selfId, "Phø bän ğang xây dñng!" )
	else
		SetMissionByIndex( sceneId, selfId, misIndex, x600042_g_Param_StateId, 1 )
		x600042_MakeCopyScene( sceneId, selfId )
	end

end

--**********************************
--´´½¨¸±±¾
--**********************************
function x600042_MakeCopyScene( sceneId, selfId )

	--È¡¶ÓÎé×î¸ßµÈ¼¶
	local	mylevel	= GetLevel( sceneId, selfId )
	local	iniLevel= 0
	if mylevel < 10 then
		iniLevel	= 10
	elseif mylevel < 100 then
		iniLevel	= floor( mylevel/10 ) * 10
	else
		iniLevel	= 100
	end

	local	leaderguid	= LuaFnObjId2Guid( sceneId, selfId )
	LuaFnSetSceneLoad_Map( sceneId, x600042_g_CopySceneMap )							--µØÍ¼ÊÇ±ØĞëÑ¡È¡µÄ£¬¶øÇÒ±ØĞëÔÚConfig/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
	LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x600042_g_NoUserTime * 1000 )
	LuaFnSetCopySceneData_Timer( sceneId, x600042_g_TickTime * 1000 )
	LuaFnSetCopySceneData_Param( sceneId, x600042_g_keyParam["typ"], x600042_g_CopySceneType )			--ÉèÖÃ¸±±¾Êı¾İ£¬ÕâÀï½«0ºÅË÷ÒıµÄÊı¾İÉèÖÃÎª999£¬ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êı×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param( sceneId, x600042_g_keyParam["sid"], x600042_g_ScriptId )						--½«1ºÅÊı¾İÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼ş½Å±¾ºÅ
	LuaFnSetCopySceneData_Param( sceneId, x600042_g_keyParam["tim"], 0 )	--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
	LuaFnSetCopySceneData_Param( sceneId, x600042_g_keyParam["ent"], -1 )	--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	LuaFnSetCopySceneData_Param( sceneId, x600042_g_keyParam["cls"], 0 )	--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å£¬1¹Ø±Õ
	LuaFnSetCopySceneData_Param( sceneId, x600042_g_keyParam["dwn"], 0 )	--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊı
	LuaFnSetCopySceneData_Param( sceneId, x600042_g_keyParam["tem"], GetTeamId( sceneId, selfId ) )	--±£´æ¶ÓÎéºÅ

	local	x, z				= LuaFnGetWorldPos( sceneId, selfId )
	LuaFnSetCopySceneData_Param( sceneId, x600042_g_keyParam["px"], x )		--Íæ¼Ò³öÀ´Ê±ºòµÄÎ»ÖÃ
	LuaFnSetCopySceneData_Param( sceneId, x600042_g_keyParam["pz"], z )		--Íæ¼Ò³öÀ´Ê±ºòµÄÎ»ÖÃ

	LuaFnSetSceneLoad_Area( sceneId, x600042_g_Exit )
	LuaFnSetSceneLoad_Monster( sceneId, "shiji_1_monster_" .. iniLevel .. ".ini" )
	--¼¶±ğ²î£¬CopyScene_LevelGap ÔÚ scene.lua ÖĞ¸³Öµ
	LuaFnSetCopySceneData_Param( sceneId, CopyScene_LevelGap, mylevel - iniLevel - 10 )

	--³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êı
	local bRetSceneID = LuaFnCreateCopyScene( sceneId )
	if bRetSceneID > 0 then
		x600042_NotifyFailTips( sceneId, selfId, "D¸ch chuy¬n thành công!" )
	else
		x600042_NotifyFailTips( sceneId, selfId, "S¯ lßşng bän sao ğã ğªn gi¾i hÕn, ğ« ngh¸ lát næa thØ lÕi!" )
	end

end

--**********************************
--¸±±¾ÊÂ¼ş
--**********************************
function x600042_OnCopySceneReady( sceneId, destsceneId )

	--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	LuaFnSetCopySceneData_Param( destsceneId, x600042_g_keyParam["ent"], sceneId )
	local leaderguid	= LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local leaderObjId	= LuaFnGuid2ObjId( sceneId, leaderguid )

	if leaderObjId == -1 then
		return
	end

	--´¦ÓÚÎŞ·¨Ö´ĞĞÂß¼­µÄ×´Ì¬
	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then
		return
	end

	local	misIndex	= GetMissionIndexByID( sceneId, leaderObjId, x600042_g_MissionId )
	--ÉèÖÃ¸±±¾µÄ³¡¾°ºÅ
	SetMissionByIndex( sceneId, leaderObjId, misIndex, x600042_g_Param_sceneid, destsceneId )
	SetMissionByIndex( sceneId, leaderObjId, misIndex, x600042_g_Param_StateId, 0 )

	NewWorld( sceneId, leaderObjId, destsceneId, x600042_g_Fuben_X, x600042_g_Fuben_Z )

end

--**********************************
--ÓĞÍæ¼Ò½øÈë¸±±¾ÊÂ¼ş
--**********************************
function x600042_OnPlayerEnter( sceneId, selfId )

	--Èç¹û½øÈë¸±±¾Ç°É¾³ıÈÎÎñ£¬ÔòÖ±½Ó´«ËÍ»Ø
--if IsHaveMission( sceneId, selfId, x600042_g_MissionId ) == 0 then
--	x600042_NotifyFailTips( sceneId, selfId, "Äãµ±Ç°Î´½Ó´ËÈÎÎñ" )
--	x600042_BackToCity( sceneId, selfId )
--	return
--end

	--ÉèÖÃËÀÍöºó¸´»îµãÎ»ÖÃ
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", 77, 20, 38 )

end

--**********************************
--ÓĞÍæ¼ÒÔÚ¸±±¾ÖĞËÀÍöÊÂ¼ş
--**********************************
function x600042_OnHumanDie( sceneId, selfId, killerId )
end

--**********************************
--»Ø³Ç£¬Ö»ÓĞ³ÇÊĞÈÎÎñ¸±±¾¿ÉÒÔµ÷ÓÃ´Ë½Ó¿Ú
--**********************************
function x600042_BackToCity( sceneId, selfId )

	--È¡µÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	local oldsceneId	= LuaFnGetCopySceneData_Param( sceneId, x600042_g_keyParam["ent"] )
	local x	= LuaFnGetCopySceneData_Param( sceneId, x600042_g_keyParam["px"] )
	local z	= LuaFnGetCopySceneData_Param( sceneId, x600042_g_keyParam["pz"] )
	CallScriptFunction( x600042_g_TransScript, "TransferFunc", sceneId, selfId, oldsceneId, x, z )

end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼ş
--**********************************
function x600042_OnCopySceneTimer( sceneId, nowTime )

	--¸±±¾Ê±ÖÓ¶ÁÈ¡¼°ÉèÖÃ
	--È¡µÃÒÑ¾­Ö´ĞĞµÄ¶¨Ê±´ÎÊı
	local	TickCount	= LuaFnGetCopySceneData_Param( sceneId, x600042_g_keyParam["tim"] )
	TickCount				= TickCount + 1
	--ÉèÖÃĞÂµÄ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
	LuaFnSetCopySceneData_Param( sceneId, x600042_g_keyParam["tim"], TickCount )

	--Boss¸üÃû
	local	namFst		= x600042_g_lstBossName[ "fst" ]
	local	namMid		= x600042_g_lstBossName[ "mid" ]
	local	namLst		= x600042_g_lstBossName[ "lst" ]
	if TickCount == 1 then
		local	BossName= format( "%s%s%s",
			namFst[ random( getn(namFst) ) ], namMid[ random( getn(namMid) ) ], namLst[ random( getn(namLst) ) ] )
		local monstercount = GetMonsterCount( sceneId )
		local monsterId
		for i = 0, monstercount - 1 do
			--ÕÒµ½Boss
			monsterId		= GetMonsterObjID( sceneId, i )
			if GetMonsterGroupID( sceneId, monsterId ) == x600042_g_BossGroupId then
				SetCharacterName( sceneId, monsterId, BossName )
			end
		end
		
		--Ë¢ĞÂ¹ÖÎïµÈ¼¶
--	x600042_RefreshMonster( sceneId )
	end

	local membercount	= LuaFnGetCopyScene_HumanCount( sceneId )
	local	leaderguid	= LuaFnGetCopySceneData_TeamLeader( sceneId )
	local mems	= {}
	for i = 0, membercount - 1 do
		mems[i]		= LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	--¸±±¾¹Ø±Õ±êÖ¾
	local	leaveFlag	= LuaFnGetCopySceneData_Param( sceneId, x600042_g_keyParam["cls"] )
	local	Back_X		= LuaFnGetCopySceneData_Param( sceneId, x600042_g_keyParam["px"] )	--Íæ¼Ò³öÀ´Ê±ºòµÄÎ»ÖÃ
	local	Back_Z		= LuaFnGetCopySceneData_Param( sceneId, x600042_g_keyParam["pz"] )	--Íæ¼Ò³öÀ´Ê±ºòµÄÎ»ÖÃ
	local	leaveTickCount
	local	oldsceneId= LuaFnGetCopySceneData_Param( sceneId, x600042_g_keyParam["ent"] )
	local	strText

	--Ã»ÓĞÈËµÄÊ±ºò¹Ø±Õ¸±±¾
	--ĞèÒªÀë¿ª
	if leaveFlag == 1 then

		--Àë¿ªµ¹¼ÆÊ±¼äµÄ¶ÁÈ¡ºÍÉèÖÃ
		leaveTickCount	= LuaFnGetCopySceneData_Param( sceneId, x600042_g_keyParam["dwn"] )
		leaveTickCount	= leaveTickCount + 1
		LuaFnSetCopySceneData_Param( sceneId, x600042_g_keyParam["dwn"], leaveTickCount )

		--µ¹¼ÆÊ±¼äµ½£¬´ó¼Ò¶¼³öÈ¥°É
		if leaveTickCount >= x600042_g_CloseTick then
			--½«µ±Ç°¸±±¾³¡¾°ÀïµÄËùÓĞÈË´«ËÍ»ØÔ­À´½øÈëÊ±ºòµÄ³¡¾°
			for i = 0, membercount - 1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					NewWorld( sceneId, mems[i], oldsceneId, Back_X, Back_Z )
				end
			end
		else
			--Í¨Öªµ±Ç°¸±±¾³¡¾°ÀïµÄËùÓĞÈË£¬³¡¾°¹Ø±Õµ¹¼ÆÊ±¼ä
			strText	= format( "Các hÕ s¨ r¶i khöi n½i này trong vòng %d giây næa", ( x600042_g_CloseTick - leaveTickCount ) * x600042_g_TickTime )

			for i = 0, membercount - 1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x600042_NotifyFailTips( sceneId, mems[i], strText )
				end
			end
		end

	--¸±±¾×ÜÊ±¼äÏŞÖÆµ½ÁË
	elseif TickCount >= x600042_g_LimitTotalHoldTime then

		--´Ë´¦ÉèÖÃ¸±±¾ÈÎÎñÓĞÊ±¼äÏŞÖÆµÄÇé¿ö£¬µ±Ê±¼äµ½ºó´¦Àí...
		leaveTickCount	= LuaFnGetCopySceneData_Param( sceneId, x600042_g_keyParam["dwn"] )
		strText	= format( "Các hÕ s¨ r¶i khöi n½i này trong vòng %d giây næa", ( x600042_g_CloseTick - leaveTickCount ) * x600042_g_TickTime )

		for i = 0, membercount - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
				if leaderguid == LuaFnGetGUID( sceneId, mems[i] ) then
					x600042_NotifyFailTips( sceneId, mems[i], "Th¶i hÕn ğã ğªn nhi®m vø th¤t bÕi" )
				end

				x600042_NotifyFailTips( sceneId, mems[i], strText )
			end
		end
		--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾
		LuaFnSetCopySceneData_Param( sceneId, x600042_g_keyParam["cls"], 1 )

	else
		--Ã»ÈË¾Í¹Ø±Õ
		if membercount < 1 and TickCount > x600042_g_NoUserTime then
			LuaFnSetCopySceneData_Param( sceneId, x600042_g_keyParam["cls"], 1 )
			return
		end

	end

end

--**********************************
--Ë¢ĞÂ¹ÖÎïµÈ¼¶
--**********************************
function x600042_RefreshMonster( sceneId )

	--------------------------------------------------------------
	--¼ÆËã¶ÓÎéÖĞµÄ×î¸ßµÈ¼¶
	local	maxLev		= 0
	--ÕÒµ½¶Ó³¤
	local	GuidLeader= LuaFnGetCopySceneData_TeamLeader( sceneId )
	local	idLeader	= LuaFnGuid2ObjId( sceneId, GuidLeader )
	--¶Ó³¤ÔÚ³¡¾°Àï
	if idLeader ~= -1 then
		maxLev			= GetLevel( sceneId, idLeader )
	else
		return
	end
	--------------------------------------------------------------

	--È¡µÃ´Ë³¡¾°ÖĞµÄ¹ÖÎïÊıÁ¿
	local	numMon= GetMonsterCount( sceneId )
	--¹ÖÎïµÄObjId
	local idMon, idGrp
	for i=0, numMon-1 do
		idMon	= GetMonsterObjID( sceneId, i )
		idGrp	= GetMonsterGroupID( sceneId, idMon )
		if idGrp == x600042_g_BossGroupId or idGrp == x600042_g_MonsterGroupId then
			--ÉèÖÃ¹ÖÎïµÈ¼¶Îª¶ÓÎéÖĞ×î¸ßÈËÎïµÈ¼¶+1
			SetLevel( sceneId, idMon, maxLev+1 )
		end
	end

end

--**********************************
--¸±±¾ÈÎÎñÍê³É
--**********************************
function x600042_OnFinished( sceneId )

	--ÊÇ·ñÊÇËùĞèÒªµÄ¸±±¾
	local	fubentype	= LuaFnGetCopySceneData_Param( sceneId, x600042_g_keyParam["typ"] )
	if fubentype ~= x600042_g_CopySceneType then
		return
	end

	--¸±±¾¹Ø±Õ±êÖ¾
	local	leaveFlag	= LuaFnGetCopySceneData_Param( sceneId, x600042_g_keyParam["cls"] )
	--Èç¹û¸±±¾ÒÑ¾­±»ÖÃ³É¹Ø±Õ×´Ì¬£¬ÔòÉ±¹ÖÎŞĞ§
	if leaveFlag == 1 then
		return
	end

	local memCount= LuaFnGetCopyScene_HumanCount( sceneId )
	local mems		= {}
	for i = 0, memCount - 1 do
		mems[i]			= LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	local	leaderguid= LuaFnGetCopySceneData_TeamLeader( sceneId )
	--ËùÓĞ¶ÓÔ±¶¼Òª³öÈ¥
	for i = 0, memCount - 1 do
		x600042_NotifyFailTips( sceneId, mems[i], "Nhi®m vø giai ğoÕn hoàn thành, quay v« bang hµi" )

		if leaderguid == LuaFnGetGUID( sceneId, mems[i] ) then
			local	misIndex	= GetMissionIndexByID( sceneId, mems[i], x600042_g_MissionId )
			--ÉèÖÃÏÂÒ»½×¶ÎÈÎÎñ
			SetMissionByIndex( sceneId, mems[i], misIndex, x600042_g_MissionParam_Phase, x600042_g_PhaseKey["npc"] )
		end
	end

	--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾
	LuaFnSetCopySceneData_Param( sceneId, x600042_g_keyParam["cls"], 1 )
	local	strText		= format( "Sau %d phút s¨ chuy¬n ğªn v¸ trí cØa ra vào", x600042_g_CloseTick * x600042_g_TickTime )
	for i = 0, memCount - 1 do
		x600042_NotifyFailTips( sceneId, mems[i], strText )
	end

end

--**********************************
--ĞÑÄ¿ÌáÊ¾
--**********************************
function x600042_NotifyFailTips( sceneId, selfId, Tip )

	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
