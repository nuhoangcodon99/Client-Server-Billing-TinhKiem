-- 402254
-- Ä½ÈÝ¸´

x402254_TBL = 
{
IDX_TimerPrepare = 1,
IDX_TimerInterval = 2,
IDX_FlagCombat = 1,
BossSkill = 1002,
PrepareTime = 60000,
SkillInterval = 60000,
BossBuff = 9998
}

-- ÍõÓïÑÔ¿ªÊ¼µãÃûµÄ¿ª¹Ø
x402254_g_bWangyuyanSpeak = 24
x402254_g_DuanAndWangFlag = 29

--**********************************
-- ×Ô¼ºËÀÍö
--**********************************
function x402254_OnDie( sceneId, selfId, killerId )

	if YTO_ACTIVE==1 then
		local item_drop_kh = 30010080 -- chân nguyên phách
		local str = format("#cff99cc#{_INFOUSR%s} cùng ð°ng ðµi tä xung hæu ðµt v¾i #Y [%s] #cff99cc. Cä ðµi toàn th¡ng tr· v« ð°ng th¶i còn nh§n ðßþc chiªn lþi ph¦m  #Y#{_ITEM"..item_drop_kh.."}", GetName(sceneId,killerId),GetName(sceneId,selfId))
		
		local Rate = random(100)
		if LuaFnHasTeam( sceneId, killerId ) == 0 then
			if Rate <= DROP_RATE_YTO then
				AddMonsterDropItem( sceneId, selfId, killerId, item_drop_kh )
				--thong bao he th¯ng
				BroadMsgByChatPipe(sceneId, selfId, str, 4)
			end
		else
			local leaderObjId = killerId;
			local TeammateCount = GetTeamMemberCount( sceneId, leaderObjId )
			for i=0, TeammateCount-1  do
				local nPlayerId = GetNearTeamMember(sceneId,killerId, i)
				if Rate <= DROP_RATE_YTO then
					AddMonsterDropItem( sceneId, selfId, nPlayerId, item_drop_kh )
					--thong bao he th¯ng
					BroadMsgByChatPipe(sceneId, selfId, str, 4)
				end
			end
		end
	end
	
	LuaFnNpcChat(sceneId, selfId, 0, "Nan ðÕo ngã ÐÕi Yên phøc qu¯c bá nghi®p, chung cÑu kì xích th¸ hoàn lß½ng nh¤t mµng ?")
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerPrepare, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402254_TBL.IDX_FlagCombat, 0)

	-- Í£Ö¹µãÃû
	LuaFnSetCopySceneData_Param(sceneId, x402254_g_bWangyuyanSpeak, 0)
	
	LuaFnSetCopySceneData_Param(sceneId, x402254_g_DuanAndWangFlag, 0)
	
	-- É¾³ý¶ÎÓþÓïæÌµÈÈË
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Vß½ng Ngæ Yên")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Ðoàn Dñ")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Ba Thiên ThÕch")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "PhÕm Hoa")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "ChØ VÕn Lý")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "C± Ð¯c Thành")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Phó Tß Qui")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Chu Ðan Th¥n")
	
	x402254_TipAllHuman( sceneId, "Mµ Dung Phøc ðã b¸ ðánh bÕi, thäo phÕt Yªn TØ ‘ thành công, quay v« Thái H°" )
	
	--LuaFnDeleteMonster(sceneId, selfId)
	
	-- ·¢ÊÀ½ç¹«¸æ
--#w¡¾¶Ó³¤Ãû¡¿#cff99ccÓë#{_BOSS0}µ¥Ìô£¬È´°µÊ¹¶ÓÓÑÔÚÆäÉíºóÔÒ°å×©¡¢Ê¹°í×Ó¡¢ÇÃÃÆ¹÷¡¢È÷Ê¯»Ò¡­¡­ÎÞËù²»ÓÃ£¬ÖÕÓÚ½«#{_BOSS0}´òµÃ´ó°Ü£¬Âä»Ä¶øÌÓ£¬Ò»¾Ù¹¥ÏÂÁËYªn TØ Ô¡£
--#w¡¾¶Ó³¤Ãû¡¿#cff99ccÂÊÁì¶ÓÓÑÓë#{_BOSS0}º¨Õ½°ëÈÕ£¬ºö¶øÁìÎòµ½ÎäÑ§µÄÕæÚÐ£¬¶ÙÊ±Îä¹¦±©ÕÇ£¬#{_BOSS0}µÖµÐ²»¹ý£¬Ö»µÃÂä»Ä¶øÌÓ£¬Yªn TØ ÔËìÏÝ¡£
--#w¡¾¶Ó³¤Ãû¡¿#cff99ccÔÚYªn TØ Ôµ÷±øÇ²½«£¬ÔË³ïá¡á¢£¬ÔÚÊ¹ÓÃÁËÂ÷Ìì¹ýº££¬°µ¶È³Â²ÖµÈÈýÊ®Áù¼ÆÖ®ºó£¬´òµÃ#{_BOSS0}Ö»µÃÊ¹ÓÃµÚÈýÊ®Æß¼ÆÌÓÖ®Ø²Ø²ÁË¡£
	
	local playerID = killerId
	local objType = GetCharacterType( sceneId, killerId )
	if objType == 3 then
		playerID = GetPetCreator( sceneId, killerId )
	end
		--Èç¹û×éÁË¶ÓÔò»ñÈ¡¶Ó³¤µÄID....
	local nLeaderId = GetTeamLeader(sceneId, playerID)
	if nLeaderId < 1   then
		nLeaderId = playerID
	end
	local str = ""
	local ran = random(3)
	if ran == 1  then
		str = format("#W#{_INFOUSR%s}#cff99cc cùng #{_BOSS0} ðang cùng nhau so tài nµi lñc. #{_BOSS0} do b¸ mu²i chích nên th¤t thª ðành bö mÕng.", GetName(sceneId,nLeaderId))
	elseif ran == 2  then
		str = format("#W#{_INFOUSR%s}#cff99cc dùng sÑc không chiªn lÕi #{_BOSS0} bèn thách thÑc #{_BOSS0} ch½i oÇn tù tì. Do thông minh nên cu¯i cùng ðã chiªn th¡ng !", GetName(sceneId,nLeaderId))
	else
		str = format("#W#{_INFOUSR%s}#cff99cc cùng ð°ng ðµi quyªt tr§n tØ chiªn v¾i #{_BOSS0} và ðã giành ðßþc th¡ng lþi to l¾n.", GetName(sceneId,nLeaderId))
	end
	
	BroadMsgByChatPipe(sceneId, nLeaderId, str, 4)
	
	
end

--**********************************
-- ÐÄÌø
--**********************************
function x402254_OnHeartBeat(sceneId, selfId, nTick)

	-- µ±Ä½ÈÝ¸´ÑªÁ¿µôµ½50%µÄÊ±ºò£¬ÈÃ ÍõÓïæÌ µãÃû£¬Í¬Ê±¶ÎÓþÑð¹¥
	if(1==LuaFnIsCharacterLiving(sceneId, selfId)) then
		if(1==MonsterAI_GetBoolParamByIndex(sceneId, selfId, x402254_TBL.IDX_FlagCombat)) then
			--PrintNum(1)
			-- Èç¹û Ä½ÈÝ¸´ ÑªÉÙÓÚ¶àÉÙ£¬¾ÍÔõÃ´Ñù×Ó
			if LuaFnGetCopySceneData_Param(sceneId, x402254_g_bWangyuyanSpeak) == 0  then
				if GetHp(sceneId, selfId)*2 <= GetMaxHp(sceneId, selfId) then
					LuaFnSetCopySceneData_Param(sceneId, x402254_g_bWangyuyanSpeak, 1)
				end
			end
		else
			--PrintNum(2)
		end
	end

--	if(1==LuaFnIsCharacterLiving(sceneId, selfId)) then
--		if(1==MonsterAI_GetBoolParamByIndex(sceneId, selfId, x402254_TBL.IDX_FlagCombat)) then
--			--Countdown TimerPrepare
--			local TimePrepare = MonsterAI_GetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerPrepare)
--			if(0<TimePrepare) then
--				TimePrepare = TimePrepare - nTick;
--				MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerPrepare, TimePrepare)
--			else
--				local TimeInterval = MonsterAI_GetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval)
--				if(0<TimeInterval) then
--					--Countdown TimerInterval
--					TimeInterval = TimeInterval - nTick;
--					MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval, TimeInterval)
--				else
--					MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval, x402254_TBL.SkillInterval)
--					local nTarget = LuaFnGetTargetObjID(sceneId, selfId)
--					if(-1~=nTarget) then
--						local posX, posZ = GetWorldPos(sceneId,nTarget)
--						local fDir = 0.0
--						LuaFnUnitUseSkill(sceneId, selfId, x402254_TBL.BossSkill, nTarget, posX, posZ, fDir)			
--						LuaFnNpcChat(sceneId, selfId, 0, "³¢³¢ä±Ñô½­ÉÏµÄÁÒÑæ°É£¡")
--					end
--				end
--			end
--		end
--	end
end

--**********************************
-- ³õÊ¼»¯
--**********************************
function x402254_OnInit(sceneId, selfId)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerPrepare, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402254_TBL.IDX_FlagCombat, 0)
end

--**********************************
-- É±ËÀÍæ¼Ò
--**********************************
function x402254_OnKillCharacter(sceneId, selfId, targetId)
--	if(-1~=targetId) then
--		local szTarget = GetName(sceneId, targetId)
--		LuaFnNpcChat(sceneId, selfId, 0, szTarget .. "£¬Äã¾ÍËãÔÙÀ÷º¦Ê®±¶£¬ÓöÉÏÒ¯Ò¯Ò²Ö»ÓÐËÀÂ·Ò»Ìõ£¡")
--	end
end

--**********************************
-- ½øÈëÕ½¶·
--**********************************
function x402254_OnEnterCombat(sceneId, selfId, enmeyId)
	if(0<x402254_TBL.BossBuff) then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x402254_TBL.BossBuff, 0)
	end
	
	-- ½øÈëÕ½¶·×´Ì¬£¬
	LuaFnNpcChat(sceneId, selfId, 0, "Ha ha ha. cho dù ngß½i tu luy®n 10 nåm næa mà g£p ta thì cûng chï có con ðß¶ng chªt mà thôi")
	
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerPrepare, x402254_TBL.PrepareTime)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402254_TBL.IDX_FlagCombat, 1)
	
	CallScriptFunction((200060), "Paopao",sceneId, "Ðoàn Dñ", "Yªn TØ Ô", "Vß½ng Cô Nß½ng, nªu có nguy hi¬m, hãy ð¬ tÕi hÕ ði ð¥u tiên ð¬ bäo v® cô nß½ng")
	CallScriptFunction((200060), "Paopao",sceneId, "Vß½ng Ngæ Yên", "Yªn TØ Ô", "Bi¬u ca không di, muµi s¨ không ði ðâu hªt, muµi s¨ · lÕi cùng bi¬u ca")

end

--**********************************
-- ÍÑÀëÕ½¶·
--**********************************
function x402254_OnLeaveCombat(sceneId, selfId)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerPrepare, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402254_TBL.IDX_FlagCombat, 0)

	-- É¾³ý¶ÎÓþÓïæÌµÈÈË
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Vß½ng Ngæ  Yên")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Ðoàn Dñ")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Ba Thiên ThÕch")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "PhÕm Hoa")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Chæ VÕn Lý")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "C± Ð¯c Thành")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Phó Tß Quy")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Chu Ðan Th¥n")

	-- ´ÓÐÂÔÚ³¡¾°ÖÐÉú³ÉÕâÐ©Npc
	CallScriptFunction((401040), "CreateMonster_11",sceneId)

	-- Í£Ö¹µãÃû
	LuaFnSetCopySceneData_Param(sceneId, x402254_g_bWangyuyanSpeak, 0)
	LuaFnSetCopySceneData_Param(sceneId, x402254_g_DuanAndWangFlag, 0)
end

--**********************************
--ÌáÊ¾ËùÓÐ¸±±¾ÄÚÍæ¼Ò
--**********************************
function x402254_TipAllHuman( sceneId, Str )
	-- »ñµÃ³¡¾°ÀïÍ·µÄËùÓÐÈË
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- Ã»ÓÐÈËµÄ³¡¾°£¬Ê²Ã´¶¼²»×ö
	if nHumanNum < 1 then
		return
	end
	
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		BeginEvent(sceneId)
			AddText(sceneId, Str)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId, PlayerId)
	end
end
