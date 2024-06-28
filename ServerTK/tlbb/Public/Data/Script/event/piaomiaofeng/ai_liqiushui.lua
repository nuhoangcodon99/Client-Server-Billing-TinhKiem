--Æ®Ãì·å ÀîÇïË®AI

--A ¡¾Ğ¡ÎŞÏà¹¦¡¿¸ø×Ô¼ºÓÃ¸ö¿Õ¼¼ÄÜ....ÔÙ¸øËæ»ú¸øÒ»¸öÍæ¼ÒÊ§Ã÷....
--B ¡¾½£Îè¡¿¸ø×Ô¼ºÓÃÒ»¸ö¿Õ¼¼ÄÜ....½ÓÏÂÀ´15sÄÚÒÀ´Î¸øÈ«¸±±¾Íæ¼Ò¼ÓÉËº¦ÖµÖğ½¥¼Ó´óµÄÉËº¦buff....
--C ¡¾È÷ÍÑ¡¿¸ø×Ô¼ºÓÃÒ»¸öÇåbuffµÄ¼¼ÄÜ....
--D ¡¾±ù±¬¡¿¸ø×Ô¼ºÓÃ¸ö¿Õ¼¼ÄÜ....ÔÙ¸øËæ»ú¸øÍæ¼Ò½ÅÏÂ·Å¸öÏİÚå....
--E ¡¾¿ñ±©¡¿¸ø×Ô¼º¼Ó·è¿ñµÄbuff....²»ÔÙÊ¹ÓÃÆäËû¼¼ÄÜ....

--È«³Ì¶¼´øÓĞÃâÒßÖÆ¶¨¼¼ÄÜµÄbuff....
--Õ½¶·¿ªÊ¼Í¬Ê±Ã¿¸ô10ÃëÓÃA¼¼ÄÜ....
--µ±HP½µÎª66%ºÍ33%Ê±·Ö±ğÊ¹ÓÃB¼¼ÄÜ....B¼¼ÄÜµÄ³ÖĞøÊ±¼äÄÚ....ÆäËü¼¼ÄÜCDµ½ÁË²»Ê¹ÓÃ....
--Ã¿¸ô20ÃëÓÃC¼¼ÄÜ....
--Ã¿¸ô20ÃëÓÃD¼¼ÄÜ....


--½Å±¾ºÅ
x402269_g_ScriptId	= 402269

--¸±±¾Âß¼­½Å±¾ºÅ....
x402269_g_FuBenScriptId = 402263


--ÃâÒßÌØ¶¨¼¼ÄÜbuff....
x402269_Buff_MianYi1	= 10472	--ÃâÒßÒ»Ğ©¸ºÃæĞ§¹û....
x402269_Buff_MianYi2	= 10471	--ÃâÒßÆÕÍ¨ÒşÉí....

--AĞ¡ÎŞÏà¹¦....
x402269_SkillA_ID			= 1042
x402269_SkillA_Buff		=	10271
x402269_SkillA_CD			= 10000

--B½£Îè....
x402269_SkillB_SkillIDTbl = { 1043, 1044, 1045, 1046, 1047, 1048 }
x402269_SkillB_WeatherTbl = { 11, 12, 13, 14, 15, 16 }
x402269_SkillB_TalkTbl =
{
	"#{PMF_20080530_10}",
	"#{PMF_20080530_11}",
	"#{PMF_20080530_12}",
	"#{PMF_20080530_13}",
	"#{PMF_20080530_14}",
	"#{PMF_20080530_15}"
}

x402269_SkillB_Text =
{
	"#{PMFTS_80917_5}",
	"#{PMFTS_80917_3}",
	"#{PMFTS_80917_6}",
	"#{PMFTS_80917_1}",
	"#{PMFTS_80917_2}",
	"#{PMFTS_80917_4}"
}

x402269_SkillB_BuffIDTbl =
{
	[1] = {10280,10281,10282,10283,10284,10285,10286,10287,10288,10289,10290,10291,10292,10293,10294},
	[2] = {10295,10296,10297,10298,10299,10300,10301,10302,10303,10304,10305,10306,10307,10308,10309},
	[3] = {10310,10311,10312,10313,10314,10315,10316,10317,10318,10319,10320,10321,10322,10323,10324},
	[4] = {10325,10326,10327,10328,10329,10330,10331,10332,10333,10334,10335,10336,10337,10338,10339},
	[5] = {10340,10341,10342,10343,10344,10345,10346,10347,10348,10349,10350,10351,10352,10353,10354},
	[6] = {10355,10356,10357,10358,10359,10360,10361,10362,10363,10364,10365,10366,10367,10368,10369}
}

--CÈ÷ÍÑ....
x402269_SkillC_ID		= 1049
x402269_SkillC_CD		= 20000

--D±ù±¬....
x402269_SkillD_ID		= 1050
x402269_SkillD_CD		= 20000
x402269_SkillD_SpecObj = 59

--E¿ñ±©....
x402269_SkillE_Buff1	= 10234
x402269_SkillE_Buff2	= 10235
--¿ªÊ¼½øÈë¿ñ±©×´Ì¬µÄÊ±¼ä....
x402269_EnterKuangBaoTime	= 10*60*1000


--AI Index....
x402269_IDX_StopWatch						= 1	--Ãë±í....
x402269_IDX_SkillA_CD						= 2	--A¼¼ÄÜµÄCDÊ±¼ä....
x402269_IDX_SkillB_HPStep				= 3	--ÑªÁ¿¼¶±ğ....
x402269_IDX_SkillB_Step					= 4	--B¼¼ÄÜµÄStep....0=Î´·¢¶¯ 15=buff1 14=buff2 ¡­¡­ 1=buff15
x402269_IDX_SkillB_Type					= 5	--µ±Ç°ÕıÔÚÊ¹ÓÃÄÄÖÖÀàĞÍµÄ½£Îè....
x402269_IDX_SkillC_CD						= 6	--C¼¼ÄÜµÄCDÊ±¼ä....
x402269_IDX_SkillD_CD						= 7	--C¼¼ÄÜµÄCDÊ±¼ä....
x402269_IDX_KuangBaoTimer				= 8	--¿ñ±©µÄ¼ÆÊ±Æ÷....


x402269_IDX_CombatFlag 			= 1	--ÊÇ·ñ´¦ÓÚÕ½¶·×´Ì¬µÄ±êÖ¾....
x402269_IDX_IsKuangBaoMode	= 2	--ÊÇ·ñ´¦ÓÚ¿ñ±©Ä£Ê½µÄ±êÖ¾....


--**********************************
--³õÊ¼»¯....
--**********************************
function x402269_OnInit(sceneId, selfId)
	--ÖØÖÃAI....
	x402269_ResetMyAI( sceneId, selfId )
end


--**********************************
--ĞÄÌø....
--**********************************
function x402269_OnHeartBeat(sceneId, selfId, nTick)

	--¼ì²âÊÇ²»ÊÇËÀÁË....
	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	--¼ì²âÊÇ·ñ²»ÔÚÕ½¶·×´Ì¬....
	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x402269_IDX_CombatFlag ) then
		return
	end

	--¿ñ±©×´Ì¬²»ĞèÒª×ßÂß¼­....
	if 1 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x402269_IDX_IsKuangBaoMode ) then
		return
	end

	--A¼¼ÄÜĞÄÌø....
	if 1 == x402269_TickSkillA( sceneId, selfId, nTick ) then
		return
	end

	--B¼¼ÄÜĞÄÌø....
	if 1 == x402269_TickSkillB( sceneId, selfId, nTick ) then
		return
	end

	--C¼¼ÄÜĞÄÌø....
	if 1 == x402269_TickSkillC( sceneId, selfId, nTick ) then
		return
	end

	--D¼¼ÄÜĞÄÌø....
	if 1 == x402269_TickSkillD( sceneId, selfId, nTick ) then
		return
	end

	--E¼¼ÄÜĞÄÌø....
	if 1 == x402269_TickSkillE( sceneId, selfId, nTick ) then
		return
	end

	--Ãë±íĞÄÌø....
	x402269_TickStopWatch( sceneId, selfId, nTick )

end


--**********************************
--½øÈëÕ½¶·....
--**********************************
function x402269_OnEnterCombat(sceneId, selfId, enmeyId)

	--¼Ó³õÊ¼buff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x402269_Buff_MianYi1, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x402269_Buff_MianYi2, 0 )

	--ÖØÖÃAI....
	x402269_ResetMyAI( sceneId, selfId )

	--ÉèÖÃ½øÈëÕ½¶·×´Ì¬....
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x402269_IDX_CombatFlag, 1 )

end


--**********************************
--Àë¿ªÕ½¶·....
--**********************************
function x402269_OnLeaveCombat(sceneId, selfId)

	--ÖØÖÃAI....
	x402269_ResetMyAI( sceneId, selfId )

	--É¾³ı×Ô¼º....
	LuaFnDeleteMonster( sceneId, selfId )

end


--**********************************
--É±ËÀµĞÈË....
--**********************************
function x402269_OnKillCharacter(sceneId, selfId, targetId)

end


--**********************************
--ËÀÍö....
--**********************************
function x402269_OnDie( sceneId, selfId, killerId )
	if PMP_ACTIVE==1 then
		local item_drop_kh = 30010080 -- chân nguyên phách
		local str = format("#cff99cc#{_INFOUSR%s} cùng ğ°ng ğµi tä xung hæu ğµt v¾i #Y [%s] #cff99cc. Cä ğµi toàn th¡ng tr· v« ğ°ng th¶i còn nh§n ğßşc chiªn lşi ph¦m  #Y#{_ITEM"..item_drop_kh.."}", GetName(sceneId,killerId),GetName(sceneId,selfId))
		
		local Rate = random(100)
		if LuaFnHasTeam( sceneId, killerId ) == 0 then
			if Rate <= DROP_RATE_PMP then
				AddMonsterDropItem( sceneId, selfId, killerId, item_drop_kh )
				--thong bao he th¯ng
				BroadMsgByChatPipe(sceneId, selfId, str, 4)
			end
		else
			local leaderObjId = killerId;
			local TeammateCount = GetTeamMemberCount( sceneId, leaderObjId )
			for i=0, TeammateCount-1  do
				local nPlayerId = GetNearTeamMember(sceneId,killerId, i)
				if Rate <= DROP_RATE_PMP then
					AddMonsterDropItem( sceneId, selfId, nPlayerId, item_drop_kh )
					--thong bao he th¯ng
					BroadMsgByChatPipe(sceneId, selfId, str, 4)
				end
			end
		end
	end
	--ÖØÖÃAI....
	x402269_ResetMyAI( sceneId, selfId )

	--ÉèÖÃÒÑ¾­ÌôÕ½¹ıÀîÇïË®....
	CallScriptFunction( x402269_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "LiQiuShui", 2 )

	-- zchw È«Çò¹«¸æ
	local	playerName	= GetName( sceneId, killerId )
	
	--É±ËÀ¹ÖÎïµÄÊÇ³èÎïÔò»ñÈ¡ÆäÖ÷ÈËµÄÃû×Ö....
	local playerID = killerId
	local objType = GetCharacterType( sceneId, killerId )
	if objType == 3 then
		playerID = GetPetCreator( sceneId, killerId )
		playerName = GetName( sceneId, playerID )
	end
	
	--Èç¹ûÍæ¼Ò×é¶ÓÁËÔò»ñÈ¡¶Ó³¤µÄÃû×Ö....
	local leaderID = GetTeamLeader( sceneId, playerID )
	if leaderID ~= -1 then
		playerName = GetName( sceneId, leaderID )
	end
	
	if playerName ~= nil then
		str = format("#{PMF_8812_06}#{_INFOUSR%s}#{PMF_8812_07}#{_INFOUSR%s}#{PMF_8812_08}", playerName, playerName); --ÀîÇïË®
		AddGlobalCountNews( sceneId, str )
	end
	
end


--**********************************
--ÖØÖÃAI....
--**********************************
function x402269_ResetMyAI( sceneId, selfId )

	--ÖØÖÃ²ÎÊı....
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_StopWatch, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillA_CD, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillB_HPStep, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillB_Step, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillB_Type, 1 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillC_CD, x402269_SkillC_CD )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillD_CD, x402269_SkillD_CD )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_KuangBaoTimer, 0 )

	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x402269_IDX_CombatFlag, 0 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x402269_IDX_IsKuangBaoMode, 0 )

end

--**********************************
--A¼¼ÄÜĞÄÌø....
--**********************************
function x402269_TickSkillA( sceneId, selfId, nTick )

	--¸üĞÂ¼¼ÄÜCD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillA_CD )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillA_CD, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillA_CD, x402269_SkillA_CD-(nTick-cd) )
		return x402269_UseSkillA( sceneId, selfId )
	end

end

--**********************************
--B¼¼ÄÜĞÄÌø....
--**********************************
function x402269_TickSkillB( sceneId, selfId, nTick )

	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	local LastStep = MonsterAI_GetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillB_HPStep )
	local CurStep = 0
	if CurPercent <= 0.3333 then
		CurStep = 2
	elseif CurPercent <= 0.6666 then
		CurStep = 1
	end

	if CurStep > LastStep then

		--ÉèÖÃ²ÎÊı....
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillB_HPStep, CurStep )
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillB_Step, 15 )
		local JianWuType = random( getn(x402269_SkillB_SkillIDTbl) )
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillB_Type, JianWuType )

		--º°»°....
		MonsterTalk(sceneId, -1, "", x402269_SkillB_TalkTbl[JianWuType] )
		
		MonsterTalk(sceneId, -1, "", x402269_SkillB_Text[JianWuType] )
		--·ÅÈ«³¡¾°ÑÌ»¨....
		LuaFnSetSceneWeather(sceneId, x402269_SkillB_WeatherTbl[JianWuType], 15000 )

		--¶Ô×Ô¼ºÊ¹ÓÃ¿Õ¼¼ÄÜ....
		local x,z = GetWorldPos( sceneId, selfId )
		LuaFnUnitUseSkill( sceneId, selfId, x402269_SkillB_SkillIDTbl[JianWuType], selfId, x, z, 0, 1 )

		return 1

	end

	return 0

end

--**********************************
--C¼¼ÄÜĞÄÌø....
--**********************************
function x402269_TickSkillC( sceneId, selfId, nTick )

	--¸üĞÂ¼¼ÄÜCD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillC_CD )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillC_CD, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillC_CD, x402269_SkillC_CD-(nTick-cd) )
		return x402269_UseSkillC( sceneId, selfId )
	end

end

--**********************************
--D¼¼ÄÜĞÄÌø....
--**********************************
function x402269_TickSkillD( sceneId, selfId, nTick )

	--¸üĞÂ¼¼ÄÜCD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillD_CD )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillD_CD, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillD_CD, x402269_SkillD_CD-(nTick-cd) )
		return x402269_UseSkillD( sceneId, selfId )
	end

end

--**********************************
--E¼¼ÄÜĞÄÌø....
--**********************************
function x402269_TickSkillE( sceneId, selfId, nTick )

	--Èç¹ûÕıÔÚÓÃB¼¼ÄÜÔòÏÈµÈ´ı....
	if MonsterAI_GetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillB_Step ) > 0 then
		return 0
	end

	--¼ì²âÊÇ·ñµ½ÁË¿ñ±©µÄÊ±ºò....
	local kbTime = MonsterAI_GetIntParamByIndex( sceneId, selfId, x402269_IDX_KuangBaoTimer )
	if kbTime < x402269_EnterKuangBaoTime then

		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_KuangBaoTimer, kbTime+nTick )
		return 0

	else

		MonsterAI_SetBoolParamByIndex( sceneId, selfId, x402269_IDX_IsKuangBaoMode, 1 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x402269_SkillE_Buff1, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x402269_SkillE_Buff2, 0 )
		return 1

	end

end

--**********************************
--Ãë±íĞÄÌø....
--**********************************
function x402269_TickStopWatch( sceneId, selfId, nTick )

	--ÏŞÖÆÃ¿Ãë²Å»áÖ´ĞĞÒ»´Î....
	local time = MonsterAI_GetIntParamByIndex( sceneId, selfId, x402269_IDX_StopWatch )
	if (time + nTick) > 1000 then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_StopWatch, time+nTick-1000 )
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_StopWatch, time+nTick )
		return
	end


	-------------------------
	--½£Îè¼¼ÄÜÂß¼­....
	-------------------------
	local buffStep = MonsterAI_GetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillB_Step )
	local skillType = MonsterAI_GetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillB_Type )
	if buffStep >= 1 and buffStep <= 15 then

		--Ñ°ÕÒ·ûÃôÒÇ....
		local bossId = CallScriptFunction( x402269_g_FuBenScriptId, "FindBOSS", sceneId, "FuMinYi_NPC" )
		if bossId <= 0 then
			return 0
		end

		--ÈÃ·ûÃôÒÇ¸øÍæ¼Ò¼Óbuff....
		local buffTbl = x402269_SkillB_BuffIDTbl[skillType]
		local buffId = buffTbl[16-buffStep]
		local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
		for i=0, nHumanCount-1 do
			local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 and LuaFnIsCharacterLiving(sceneId, nHumanId) == 1 then
				LuaFnSendSpecificImpactToUnit( sceneId, bossId, bossId, nHumanId, buffId, 0 )
			end
		end

	end

	if buffStep > 0 then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillB_Step, buffStep-1 )
	end


end

--**********************************
--Ê¹ÓÃA¼¼ÄÜ....
--**********************************
function x402269_UseSkillA( sceneId, selfId )

	--Èç¹ûÕıÔÚÓÃB¼¼ÄÜÔòÌø¹ı....
	if MonsterAI_GetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillB_Step ) > 0 then
		return 0
	end

	--¸±±¾ÖĞÓĞĞ§µÄÍæ¼ÒµÄÁĞ±í....
	local PlayerList = {}

	--½«ÓĞĞ§µÄÈË¼ÓÈëÁĞ±í....
	local numPlayer = 0
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 and LuaFnIsCharacterLiving(sceneId, nHumanId) == 1 then
			PlayerList[numPlayer+1] = nHumanId
			numPlayer = numPlayer + 1
		end
	end

	--Ëæ»úÌôÑ¡Ò»¸öÍæ¼Ò....
	if numPlayer <= 0 then
		return 0
	end
	local PlayerId = PlayerList[ random(numPlayer) ]

	--¶Ô×Ô¼ºÊ¹ÓÃÒ»¸ö¿Õ¼¼ÄÜ....
	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x402269_SkillA_ID, selfId, x, z, 0, 1 )

	--¸øÍæ¼Ò¼ÓÊ§Ã÷buff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, PlayerId, x402269_SkillA_Buff, 0 )

	return 1

end

--**********************************
--Ê¹ÓÃC¼¼ÄÜ....
--**********************************
function x402269_UseSkillC( sceneId, selfId )

	--Èç¹ûÕıÔÚÓÃB¼¼ÄÜÔòÌø¹ı....
	if MonsterAI_GetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillB_Step ) > 0 then
		return 0
	end

	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x402269_SkillC_ID, selfId, x, z, 0, 1 )
	return 1

end

--**********************************
--Ê¹ÓÃD¼¼ÄÜ....
--**********************************
function x402269_UseSkillD( sceneId, selfId )

	--Èç¹ûÕıÔÚÓÃB¼¼ÄÜÔòÌø¹ı....
	if MonsterAI_GetIntParamByIndex( sceneId, selfId, x402269_IDX_SkillB_Step ) > 0 then
		return 0
	end

	--¸±±¾ÖĞÓĞĞ§µÄÍæ¼ÒµÄÁĞ±í....
	local PlayerList = {}

	--½«ÓĞĞ§µÄÈË¼ÓÈëÁĞ±í....
	local numPlayer = 0
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 and LuaFnIsCharacterLiving(sceneId, nHumanId) == 1 then
			PlayerList[numPlayer+1] = nHumanId
			numPlayer = numPlayer + 1
		end
	end

	--Ëæ»úÌôÑ¡Ò»¸öÍæ¼Ò....
	if numPlayer <= 0 then
		return 0
	end
	local PlayerId = PlayerList[ random(numPlayer) ]

	--Ê¹ÓÃ¿Õ¼¼ÄÜ....
	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x402269_SkillD_ID, selfId, x, z, 0, 1 )

	--ÔÚ¸ÃÍæ¼Ò½Åµ×ÏÂ·ÅÏİÚå....
	x,z = GetWorldPos( sceneId, PlayerId )
	CreateSpecialObjByDataIndex(sceneId, selfId, x402269_SkillD_SpecObj, x, z, 0)

	return 1

end
