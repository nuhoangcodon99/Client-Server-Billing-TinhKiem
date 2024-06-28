--¸±±¾ÈÎÎñ
--Ö¸µã±¾ÅÉµÜ×Ó

--************************************************************************
--MisDescBegin

--½Å±¾ºÅ
x600037_g_ScriptId = 600037

--ÈÎÎñºÅ
x600037_g_MissionId = 1112

--¸¸ÈÎÎñºÅ
x600037_g_UpMissionId = 1111

--ÈÎÎñµÈ¼¶
x600037_g_MissionLevel = 10000

--ÈÎÎñ¹éÀà
x600037_g_MissionKind = 50

--ÊÇ·ñÊÇ¾«Ó¢ÈÎÎñ
x600037_g_IfMissionElite = 0

--********ÏÂÃæ¼¸ÏîÊÇ¶¯Ì¬ÏÔÊ¾µÄÄÚÈİ£¬ÓÃÓÚÔÚÈÎÎñÁĞ±íÖĞ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö******
--½ÇÉ«Mission±äÁ¿ËµÃ÷
x600037_g_IsMissionOkFail			=0	--0 ÈÎÎñÍê³É±ê¼Ç[Öµ²»ÄÜ±ä]
x600037_g_MissionParam_SubId		=1	--1 ×ÓÈÎÎñ½Å±¾ºÅ´æ·ÅÎ»ÖÃ[Öµ²»ÄÜ±ä]
x600037_g_MissionParam_KillNumber	=2	--2 ĞèÒªÏûÃğµÄ¹ÖÎïÊıÁ¿
x600037_g_Param_sceneid				=3	--3ºÅ£ºµ±Ç°¸±±¾ÈÎÎñµÄ³¡¾°ºÅ
x600037_g_Param_killcount			=4	--4ºÅ£ºÉ±ËÀÈÎÎñ¹ÖµÄÊıÁ¿
--6ºÅ£ºÎ´ÓÃ
--7ºÅ£ºÎ´ÓÃ

--**********************************ÒÔÉÏÊÇ¶¯Ì¬****************************

--ÈÎÎñÎÄ±¾ÃèÊö
x600037_g_MissionName = "Xu¤t ğ¥u lµ di®n cùng m÷i ngß¶i"
x600037_g_MissionInfo = ""													--ÈÎÎñÃèÊö
x600037_g_MissionTarget = "    Ğu±i ği ngß¶i sinh chuy®n gây sñ. "								--ÈÎÎñÄ¿±ê

x600037_g_Parameter_Kill_CountRandom = { { id = 300470, numNeeded = 2, numKilled = 4 } }

-- Í¨ÓÃ³ÇÊĞÈÎÎñ½Å±¾
x600037_g_CityMissionScript = 600001
x600037_g_ConstructionScript = 600035
x600037_g_TransScript = 400900

--ÈÎÎñ½±Àø

--MisDescEnd
--************************************************************************

--¸±±¾Ãû³Æ
x600037_g_CopySceneName = "Th¸ t§p"

x600037_g_CopySceneType = FUBEN_SHIJI2	--¸±±¾ÀàĞÍ£¬¶¨ÒåÔÚScriptGlobal.luaÀïÃæ

x600037_g_CopySceneMap = "shiji_2.nav"
x600037_g_Exit = "shiji_2_area.ini"
x600037_g_LimitMembers = 1				--¿ÉÒÔ½ø¸±±¾µÄ×îĞ¡¶ÓÎéÈËÊı
x600037_g_TickTime = 5					--»Øµ÷½Å±¾µÄÊ±ÖÓÊ±¼ä£¨µ¥Î»£ºÃë/´Î£©
x600037_g_LimitTotalHoldTime = 360		--¸±±¾¿ÉÒÔ´æ»îµÄÊ±¼ä£¨µ¥Î»£º´ÎÊı£©,Èç¹û´ËÊ±¼äµ½ÁË£¬ÔòÈÎÎñ½«»áÊ§°Ü
x600037_g_LimitTimeSuccess = 500		--¸±±¾Ê±¼äÏŞÖÆ£¨µ¥Î»£º´ÎÊı£©£¬Èç¹û´ËÊ±¼äµ½ÁË£¬ÈÎÎñÍê³É
x600037_g_CloseTick = 3					--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±£¨µ¥Î»£º´ÎÊı£©
x600037_g_NoUserTime = 300				--¸±±¾ÖĞÃ»ÓĞÈËºó¿ÉÒÔ¼ÌĞø±£´æµÄÊ±¼ä£¨µ¥Î»£ºÃë£©
x600037_g_DeadTrans = 0					--ËÀÍö×ªÒÆÄ£Ê½£¬0£ºËÀÍöºó»¹¿ÉÒÔ¼ÌĞøÔÚ¸±±¾£¬1£ºËÀÍöºó±»Ç¿ÖÆÒÆ³ö¸±±¾
x600037_g_MonsterCount = 10				--µÜ×ÓÊıÁ¿
x600037_g_Fuben_X = 43					--½øÈë¸±±¾µÄÎ»ÖÃX
x600037_g_Fuben_Z = 45					--½øÈë¸±±¾µÄÎ»ÖÃZ

x600037_g_MonsterGroupId = 1			--ÆÕÍ¨¹Ö
x600037_g_BossGroupId = 2				--boss¹Ö

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x600037_OnDefaultEvent( sceneId, selfId, targetId )
	--Ö»ÓĞ½ÓÁË´ËÈÎÎñ²ÅÄÜ×ß½øÀ´¡£ÈÎÎñÍê³ÉÊ±»á×Ô¶¯É¾³ı£¬Ò²²»»á×ßµ½ÕâÀï
	if IsHaveMission( sceneId, selfId, x600037_g_MissionId ) > 0 then
		x600037_AcceptEnterCopyScene( sceneId, selfId )
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x600037_OnEnumerate( sceneId, selfId, targetId )
	TAddText( sceneId, x600037_g_MissionName )
	x600037_AskEnterCopyScene( sceneId, selfId )
end

--**********************************
--Ñ¯ÎÊÍæ¼ÒÊÇ·ñÒª½øÈë¸±±¾
--**********************************
function x600037_AskEnterCopyScene( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600037_g_MissionId ) <= 0 then	-- Ã»ÓĞÈÎÎñ
		return
	end

	local PlayerGender = GetSex( sceneId, selfId )
	local rank

	if PlayerGender == 0 then
		rank = "Næ hi®p"
	elseif PlayerGender == 1 then
		rank = " các hÕ"
	else
		rank = " các hÕ "
	end

	local missionInfo = format( "    Mßşn ğ° thì không có gì khó, chï có ği«u có ngß¶i mu¯n gây phi«n hà cho ta, c¥n nh¶" .. rank .. "Xu¤t ğ¥u lµ di®n hµ ta" )

	TAddText( sceneId, missionInfo )
	TAddNumText( sceneId, x600037_g_ScriptId, "Vào chş", 10, 1, x600037_g_ScriptId )
end

--**********************************
--Íæ¼ÒÍ¬Òâ½øÈë¸±±¾
--**********************************
function x600037_AcceptEnterCopyScene( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600037_g_MissionId ) > 0 then					--ÓĞÈÎÎñ²Å¿ÉÒÔ×ßÕâÀï
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600037_g_MissionId )
		local copysceneid = GetMissionParam( sceneId, selfId, misIndex, x600037_g_Param_sceneid )

		if copysceneid >= 0 then												--½ø¹ı¸±±¾
			--½«×Ô¼º´«ËÍµ½¸±±¾³¡¾°
			if IsCanEnterCopyScene( copysceneid, GetHumanGUID( sceneId, selfId ) ) == 1 then
				NewWorld( sceneId, selfId, copysceneid, x600037_g_Fuben_X, x600037_g_Fuben_Z )
				return
			end
		end

		SetMissionByIndex( sceneId, selfId, misIndex, x600037_g_IsMissionOkFail, 0 )	--½«ÈÎÎñµÄµÚ0ºÅÊı¾İÉèÖÃÎª0,±íÊ¾Î´Íê³ÉµÄÈÎÎñ
		SetMissionByIndex( sceneId, selfId, misIndex, x600037_g_Param_sceneid, -1 )		--½«ÈÎÎñµÄµÚ2ºÅÊı¾İÉèÖÃÎª-1, ÓÃÓÚ±£´æ¸±±¾µÄ³¡¾°ºÅ
		x600037_MakeCopyScene( sceneId, selfId )
	end
end

--**********************************
--´´½¨¸±±¾
--**********************************
function x600037_MakeCopyScene( sceneId, selfId )
	local mylevel = GetLevel( sceneId, selfId )

	local leaderguid = LuaFnObjId2Guid( sceneId, selfId )
	LuaFnSetSceneLoad_Map( sceneId, x600037_g_CopySceneMap )						--µØÍ¼ÊÇ±ØĞëÑ¡È¡µÄ£¬¶øÇÒ±ØĞëÔÚConfig/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
	LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x600037_g_NoUserTime * 1000 )
	LuaFnSetCopySceneData_Timer( sceneId, x600037_g_TickTime * 1000 )
	LuaFnSetCopySceneData_Param( sceneId, 0, x600037_g_CopySceneType )				--ÉèÖÃ¸±±¾Êı¾İ£¬ÕâÀï½«0ºÅË÷ÒıµÄÊı¾İÉèÖÃÎª999£¬ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êı×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param( sceneId, 1, x600037_g_ScriptId )					--½«1ºÅÊı¾İÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼ş½Å±¾ºÅ
	LuaFnSetCopySceneData_Param( sceneId, 2, 0 )							--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
	LuaFnSetCopySceneData_Param( sceneId, 3, -1 )							--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	LuaFnSetCopySceneData_Param( sceneId, 4, 0 )							--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å£¬1¹Ø±Õ
	LuaFnSetCopySceneData_Param( sceneId, 5, 0 )							--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊı
	LuaFnSetCopySceneData_Param( sceneId, 6, x600037_g_MonsterCount )				--Ê£Óà¹ÖÎïµÄÊıÁ¿

	local x, z = LuaFnGetWorldPos( sceneId, selfId )
	LuaFnSetCopySceneData_Param( sceneId, 7, x )							--Íæ¼Ò³öÀ´Ê±ºòµÄÎ»ÖÃ
	LuaFnSetCopySceneData_Param( sceneId, 8, z )							--Íæ¼Ò³öÀ´Ê±ºòµÄÎ»ÖÃ

  local PlayerMaxLevel = GetHumanMaxLevelLimit()
	local iniLevel
	if mylevel < 10 then
		iniLevel = 10
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor( mylevel/10 ) * 10
	else
		iniLevel = PlayerMaxLevel
	end

	LuaFnSetSceneLoad_Area( sceneId, x600037_g_Exit )
	LuaFnSetSceneLoad_Monster( sceneId, "shiji_2_monster_" .. iniLevel .. ".ini" )

	LuaFnSetCopySceneData_Param(sceneId, CopyScene_LevelGap, mylevel - iniLevel) --¼¶±ğ²î£¬CopyScene_LevelGap ÔÚ scene.lua ÖĞ¸³Öµ

	local bRetSceneID = LuaFnCreateCopyScene( sceneId )						--³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êı
	if bRetSceneID > 0 then
		x600037_NotifyFailTips( sceneId, selfId, "D¸ch chuy¬n thành công!" )
	else
		x600037_NotifyFailTips( sceneId, selfId, "S¯ lßşng bän sao ğã ğªn gi¾i hÕn, ğ« ngh¸ lát næa thØ lÕi!" )
	end

end

--**********************************
--¸±±¾ÊÂ¼ş
--**********************************
function x600037_OnCopySceneReady( sceneId, destsceneId )
	LuaFnSetCopySceneData_Param( destsceneId, 3, sceneId )					--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	local leaderguid = LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local leaderObjId = LuaFnGuid2ObjId( sceneId, leaderguid )

	if leaderObjId == -1 then
		return
	end

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then			-- ´¦ÓÚÎŞ·¨Ö´ĞĞÂß¼­µÄ×´Ì¬
		return
	end

	if IsHaveMission( sceneId, leaderObjId, x600037_g_MissionId ) > 0 then			--ÓĞÈÎÎñ²Å¿ÉÒÔ×ßÕâÀï
		local misIndex = GetMissionIndexByID( sceneId, leaderObjId, x600037_g_MissionId )

		--½«ÈÎÎñµÄµÚ3ºÅÊı¾İÉèÖÃÎª¸±±¾µÄ³¡¾°ºÅ
		SetMissionByIndex( sceneId, leaderObjId, misIndex, x600037_g_Param_sceneid, destsceneId )
		NewWorld( sceneId, leaderObjId, destsceneId, x600037_g_Fuben_X, x600037_g_Fuben_Z )
	end
end

--**********************************
--ÓĞÍæ¼Ò½øÈë¸±±¾ÊÂ¼ş
--**********************************
function x600037_OnPlayerEnter( sceneId, selfId )
end

--**********************************
--ÓĞÍæ¼ÒÔÚ¸±±¾ÖĞËÀÍöÊÂ¼ş
--**********************************
function x600037_OnHumanDie( sceneId, selfId, killerId )
end

--**********************************
--·ÅÆú
--**********************************
function x600037_OnAbandon( sceneId, selfId )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600037_g_MissionId )
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, x600037_g_Param_sceneid )

	if IsHaveMission( sceneId, selfId, x600037_g_UpMissionId ) > 0 then				--¸¸ÈÎÎñÉèÖÃ³ÉÊ§°Ü
		misIndex = GetMissionIndexByID( sceneId, selfId, x600037_g_UpMissionId )
		SetMissionByIndex( sceneId, selfId, misIndex, x600037_g_IsMissionOkFail, 2 )
		ResetMissionEvent( sceneId, selfId, x600037_g_UpMissionId, 4 )
	end

	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦µÄÈÎÎñ
	DelMission( sceneId, selfId, x600037_g_MissionId )

	if sceneId == copyscene then											--Èç¹ûÔÚ¸±±¾ÀïÉ¾³ıÈÎÎñ£¬ÔòÖ±½Ó´«ËÍ»Ø
		x600037_NotifyFailTips( sceneId, selfId, "Nhi®m vø th¤t bÕi!" )
		x600037_BackToCity( sceneId, selfId )
	end
end

--**********************************
-- »Ø³Ç£¬Ö»ÓĞ³ÇÊĞÈÎÎñ¸±±¾¿ÉÒÔµ÷ÓÃ´Ë½Ó¿Ú
--**********************************
function x600037_BackToCity( sceneId, selfId )
	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )			--È¡µÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	local x = LuaFnGetCopySceneData_Param( sceneId, 7 )
	local z = LuaFnGetCopySceneData_Param( sceneId, 8 )
	CallScriptFunction( x600037_g_TransScript, "TransferFunc", sceneId, selfId, oldsceneId, x, z )
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x600037_OnKillObject( sceneId, selfId, objdataId, objId )
	if IsHaveMission( sceneId, selfId, x600037_g_MissionId ) == 0 then
		return
	end

	--ÊÇ·ñÊÇ¸±±¾
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600037_g_MissionId )

	--ÊÇ·ñÊÇËùĞèÒªµÄ¸±±¾
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x600037_g_CopySceneType then
		return
	end

	--¸±±¾¹Ø±Õ±êÖ¾
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
	if leaveFlag == 1 then														--Èç¹û¸±±¾ÒÑ¾­±»ÖÃ³É¹Ø±Õ×´Ì¬£¬ÔòÉ±¹ÖÎŞĞ§
		return
	end

	local monstercount = LuaFnGetCopySceneData_Param( sceneId, 6 )
	monstercount = monstercount - 1
	LuaFnSetCopySceneData_Param( sceneId, 6, monstercount )						--Ê£ÓàµÜ×ÓµÄÊıÁ¿
	SetMissionByIndex( sceneId, selfId, misIndex, x600037_g_Param_killcount, x600037_g_MonsterCount - monstercount )	--ÒÑÉ±ËÀµÄ¹ÖÎïÊıÁ¿£¬½ö¹©¿Í»§¶ËÊ¹ÓÃ

	local strText

	if monstercount > 0 then
		strText = format( "Còn lÕi %d kë gây sñ", monstercount )
		x600037_NotifyFailTips( sceneId, selfId, strText )
	else
		--ÉèÖÃÈÎÎñÍê³É±êÖ¾
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )

		strText = format( "Hoàn t¤t nhi®m vø, trong vòng %d giây næa s¨ ğßa ğªn ch² ra vào", x600037_g_CloseTick * x600037_g_TickTime )
		x600037_NotifyFailTips( sceneId, selfId, strText )

		if IsHaveMission( sceneId, selfId, x600037_g_UpMissionId ) > 0 then				--¸¸ÈÎÎñÉèÖÃĞÂ½×¶Î
			misIndex = GetMissionIndexByID( sceneId, selfId, x600037_g_UpMissionId )
			SetMissionByIndex( sceneId, selfId, misIndex, 2, 4 )
		end

		--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦µÄÈÎÎñ
		DelMission( sceneId, selfId, x600037_g_MissionId )
	end
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x600037_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x600037_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼ş
--**********************************
function x600037_OnCopySceneTimer( sceneId, nowTime )

	--¸±±¾Ê±ÖÓ¶ÁÈ¡¼°ÉèÖÃ
	local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )						--È¡µÃÒÑ¾­Ö´ĞĞµÄ¶¨Ê±´ÎÊı
	TickCount = TickCount + 1
	LuaFnSetCopySceneData_Param( sceneId, 2, TickCount )							--ÉèÖÃĞÂµÄ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı

	-- ½« Boss ¼ÓÇ¿
	if TickCount == 1 then
		local monstercount = GetMonsterCount( sceneId )
		local monsterId
		for i = 0, monstercount - 1 do
			-- ÕÒµ½ Boss = monsterId
			monsterId = GetMonsterObjID( sceneId, i )
			local GroupID = GetMonsterGroupID( sceneId, monsterId )
			if GroupID == x600037_g_BossGroupId then
				local maxHP = LuaFnGetMaxBaseHp( sceneId, monsterId )
				maxHP = floor( maxHP * 0.3 )
				maxHP = maxHP + LuaFnGetLifeTimeAttrRefix_MaxHP( sceneId, monsterId )
				LuaFnSetLifeTimeAttrRefix_MaxHP( sceneId, monsterId, maxHP )
				RestoreHp( sceneId, monsterId )
				break
			end
		end
	end

	--¸±±¾¹Ø±Õ±êÖ¾
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )

	local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	local i

	for i=0, membercount-1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	if leaveFlag == 1 then															--ĞèÒªÀë¿ª
		--Àë¿ªµ¹¼ÆÊ±¼äµÄ¶ÁÈ¡ºÍÉèÖÃ
		local leaveTickCount = LuaFnGetCopySceneData_Param( sceneId, 5 )
		leaveTickCount = leaveTickCount + 1
		LuaFnSetCopySceneData_Param( sceneId, 5, leaveTickCount )

		if leaveTickCount >= x600037_g_CloseTick then										--µ¹¼ÆÊ±¼äµ½£¬´ó¼Ò¶¼³öÈ¥°É
			--½«µ±Ç°¸±±¾³¡¾°ÀïµÄËùÓĞÈË´«ËÍ»ØÔ­À´½øÈëÊ±ºòµÄ³¡¾°
			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x600037_BackToCity( sceneId, mems[i] )
				end
			end
		else
			--Í¨Öªµ±Ç°¸±±¾³¡¾°ÀïµÄËùÓĞÈË£¬³¡¾°¹Ø±Õµ¹¼ÆÊ±¼ä
			local strText = format( "Các hÕ s¨ r¶i khöi n½i này trong vòng %d giây næa", ( x600037_g_CloseTick - leaveTickCount ) * x600037_g_TickTime )

			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x600037_NotifyFailTips( sceneId, mems[i], strText )
				end
			end
		end
	end
end

function x600037_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
