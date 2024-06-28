--²ÔÉ½ BOSSÈºË¢ÐÂ½Å±¾

--½Å±¾ºÅ
x810001_g_ScriptId	= 810001

--Ë¢ÐÂ·½Ê½Îª:
--¼¤»î´Ë½Å±¾Ê±¶¨µãË¢³ö10¸öBOSS....

--ÐèÒªË¢³öµÄBOSSµÄÊý¾Ý±í....
--BOSSµÄMonsterID²»ÄÜÖØ¸´....ÔÚ³¡¾°ÖÐÍ¬Ò»Ê±¿ÌÍ¬Ò»¸öMonsterIDµÄ¹ÖÖ»ÄÜ´æÔÚÒ»¸ö....ÓÐÁË¾Í²»Ë¢ÁË....
x810001_g_BossData = {

	-- ID						BOSSµÄ monster id
	-- PosX					×ø±ê
	-- PosY					×ø±ê
	-- BaseAI				BOSSµÄBaseAI....
	-- ExtAIScript	BOSSµÄÀ©Õ¹AI....
	-- ScriptID			BOSSµÄ½Å±¾ID....
	-- NeedCreate		¶¼Ìî1....

	{ ID=9110, PosX=40,  PosY=263, BaseAI=29, ExtAIScript=254, ScriptID=810001, NeedCreate=1 },
	{ ID=9111, PosX=51,  PosY=223, BaseAI=29, ExtAIScript=254, ScriptID=810001, NeedCreate=1 },
	{ ID=9112, PosX=98,  PosY=246, BaseAI=29, ExtAIScript=254, ScriptID=810001, NeedCreate=1 },
	{ ID=9113, PosX=108, PosY=285, BaseAI=29, ExtAIScript=254, ScriptID=810001, NeedCreate=1 },
	{ ID=9114, PosX=264, PosY=263, BaseAI=29, ExtAIScript=254, ScriptID=810001, NeedCreate=1 },
	{ ID=9115, PosX=145, PosY=59,  BaseAI=29, ExtAIScript=254, ScriptID=810001, NeedCreate=1 },
	{ ID=9116, PosX=130, PosY=50,  BaseAI=29, ExtAIScript=254, ScriptID=810001, NeedCreate=1 },
	{ ID=9117, PosX=37,  PosY=47,  BaseAI=29, ExtAIScript=254, ScriptID=810001, NeedCreate=1 },
	{ ID=9118, PosX=195, PosY=271, BaseAI=29, ExtAIScript=254, ScriptID=810001, NeedCreate=1 },
	{ ID=9119, PosX=211, PosY=144, BaseAI=29, ExtAIScript=254, ScriptID=810001, NeedCreate=1 },
}


--**********************************
--½Å±¾Èë¿Úº¯Êý
--**********************************
function x810001_OnDefaultEvent( sceneId, actId, iNoticeType, param2, param3, param4, param5 )

	--¿ªÆô»î¶¯....
	StartOneActivity( sceneId, actId, 180*1000, iNoticeType )

	--BOSSÊý¾Ý±íÎª¿Õ¾Í²»Ë¢BOSS....
	if getn(x810001_g_BossData) < 1 then
		return
	end

	--ÖØÖÃBossÖØ½¨×´Ì¬....
	for _, Data in x810001_g_BossData do
		Data.NeedCreate = 1
	end

	--±éÀú³¡¾°ÖÐËùÓÐµÄ¹Ö....¸üÐÂBOSSÖØ½¨×´Ì¬....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		local MosDataID = GetMonsterDataID( sceneId, MonsterId )
		x810001_CurSceneHaveMonster( sceneId, MosDataID )
	end

	--ÖØ½¨ÐèÒªÖØ½¨µÄBOSS....
	for _, BossData in x810001_g_BossData do
		if BossData.NeedCreate == 1 then
			local MonsterID = LuaFnCreateMonster(sceneId, BossData.ID, BossData.PosX, BossData.PosY, BossData.BaseAI, BossData.ExtAIScript, BossData.ScriptID )
			SetCharacterTitle(sceneId, MonsterID, "Thß½ng S½n Cu°ng Ð°")
		end
	end

end

--**********************************
--ÐÄÌøº¯Êý
--**********************************
function x810001_OnTimer( sceneId, actId, uTime )

	--¼ì²â»î¶¯ÊÇ·ñ¹ýÆÚ
	if CheckActiviyValidity( sceneId, actId ) == 0 then
		StopOneActivity( sceneId, actId )
	end

end

--**********************************
--ÓÃÓÚ¸üÐÂÖØ½¨×´Ì¬....
--**********************************
function x810001_CurSceneHaveMonster( sceneId, DataID )

	for i, Data in x810001_g_BossData do
		if DataID == Data.ID then
			x810001_g_BossData[i].NeedCreate = 0
			break
		end
	end

end
function x810001_OnDie( sceneId, selfId, killerId )

	if MAP_ACTIVE==1 then
		local rand = random(getn(DROP_BOSS_ALLMAP))
		local Rate = random(100)
		if LuaFnHasTeam( sceneId, killerId ) == 0 then
			if Rate <= MAP_RATE then
				AddMonsterDropItem( sceneId, selfId, killerId, DROP_BOSS_ALLMAP[rand] )
			end
		else
			local leaderObjId = killerId;
			local TeammateCount = GetTeamMemberCount( sceneId, leaderObjId )
			for i=0, TeammateCount-1  do
				local nPlayerId = GetNearTeamMember(sceneId,killerId, i)
				if Rate <= MAP_RATE then
					AddMonsterDropItem( sceneId, selfId, nPlayerId, DROP_BOSS_ALLMAP[rand] )
				end
			end
		end
	end
end



function x810001_PickupItem( sceneId, selfId, itemId, bagidx )
	local transfer = GetBagItemTransfer(sceneId, selfId, bagidx)
	local str = format("#cff99cc#{_INFOUSR%s} cùng ð°ng ðµi tä xung hæu ðµt v¾i #GHuy«n Kích Kim Cß½ng cùng ð°ng b÷n #cff99cctÕi #YThß½ng S½n #cff99cc. Cä ðµi toàn th¡ng tr· v« ð°ng th¶i còn nh§n ðßþc chiªn lþi ph¦m #{_INFOMSG%s}",GetName(sceneId,selfId), transfer)
	AddGlobalCountNews(sceneId,str)
end
