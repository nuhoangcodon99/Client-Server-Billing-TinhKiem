--²ÝÔ­ BOSSÈºË¢ÐÂ½Å±¾

--½Å±¾ºÅ
x810003_g_ScriptId	= 810003

--Ë¢ÐÂ·½Ê½Îª:
--¼¤»î´Ë½Å±¾Ê±¶¨µãË¢³ö10¸öBOSS....

--ÐèÒªË¢³öµÄBOSSµÄÊý¾Ý±í....
--BOSSµÄMonsterID²»ÄÜÖØ¸´....ÔÚ³¡¾°ÖÐÍ¬Ò»Ê±¿ÌÍ¬Ò»¸öMonsterIDµÄ¹ÖÖ»ÄÜ´æÔÚÒ»¸ö....ÓÐÁË¾Í²»Ë¢ÁË....
x810003_g_BossData = {

	-- ID						BOSSµÄ monster id
	-- Title				BOSSµÄ³ÆºÅ....
	-- PosX					×ø±ê
	-- PosY					×ø±ê
	-- BaseAI				BOSSµÄBaseAI....
	-- ExtAIScript	BOSSµÄÀ©Õ¹AI....
	-- ScriptID			BOSSµÄ½Å±¾ID....
	-- NeedCreate		¶¼Ìî1....

	{ ID=9130, Title="Di®u thü không không", PosX=77,  PosY=124, BaseAI=29, ExtAIScript=256, ScriptID=810003, NeedCreate=1 },
	{ ID=9131, Title="H§n ð¶i vô ð¯i", PosX=44,  PosY=72,  BaseAI=29, ExtAIScript=256, ScriptID=810003, NeedCreate=1 },
	{ ID=9132, Title="H§n ð¶i vô ð¯i", PosX=83,  PosY=66,  BaseAI=29, ExtAIScript=256, ScriptID=810003, NeedCreate=1 },
	{ ID=9133, Title="H§n ð¶i vô ð¯i", PosX=100, PosY=90,  BaseAI=29, ExtAIScript=256, ScriptID=810003, NeedCreate=1 },
	{ ID=9134, Title="H§n ð¶i vô ð¯i", PosX=58,  PosY=121, BaseAI=29, ExtAIScript=256, ScriptID=810003, NeedCreate=1 },
	{ ID=9135, Title="H§n ð¶i vô ð¯i", PosX=167, PosY=63,  BaseAI=29, ExtAIScript=256, ScriptID=810003, NeedCreate=1 },
	{ ID=9136, Title="H§n ð¶i vô ð¯i", PosX=280, PosY=284, BaseAI=29, ExtAIScript=256, ScriptID=810003, NeedCreate=1 },
	{ ID=9137, Title="H§n ð¶i vô ð¯i", PosX=64,  PosY=253, BaseAI=29, ExtAIScript=256, ScriptID=810003, NeedCreate=1 },
	{ ID=9138, Title="H§n ð¶i vô ð¯i", PosX=190, PosY=49,  BaseAI=29, ExtAIScript=256, ScriptID=810003, NeedCreate=1 },
	{ ID=9139, Title="H§n ð¶i vô ð¯i", PosX=276, PosY=127, BaseAI=29, ExtAIScript=256, ScriptID=810003, NeedCreate=1 },
}


--**********************************
--½Å±¾Èë¿Úº¯Êý
--**********************************
function x810003_OnDefaultEvent( sceneId, actId, iNoticeType, param2, param3, param4, param5 )

	--¿ªÆô»î¶¯....
	StartOneActivity( sceneId, actId, 180*1000, iNoticeType )

	--BOSSÊý¾Ý±íÎª¿Õ¾Í²»Ë¢BOSS....
	if getn(x810003_g_BossData) < 1 then
		return
	end

	--ÖØÖÃBossÖØ½¨×´Ì¬....
	for _, Data in x810003_g_BossData do
		Data.NeedCreate = 1
	end

	--±éÀú³¡¾°ÖÐËùÓÐµÄ¹Ö....¸üÐÂBOSSÖØ½¨×´Ì¬....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		local MosDataID = GetMonsterDataID( sceneId, MonsterId )
		x810003_CurSceneHaveMonster( sceneId, MosDataID )
	end

	--ÖØ½¨ÐèÒªÖØ½¨µÄBOSS....
	for _, BossData in x810003_g_BossData do
		if BossData.NeedCreate == 1 then
			MstId = LuaFnCreateMonster(sceneId, BossData.ID, BossData.PosX, BossData.PosY, BossData.BaseAI, BossData.ExtAIScript, BossData.ScriptID )
			SetCharacterTitle(sceneId, MstId, BossData.Title)
		end
	end

end

--**********************************
--ÐÄÌøº¯Êý
--**********************************
function x810003_OnTimer( sceneId, actId, uTime )

	--¼ì²â»î¶¯ÊÇ·ñ¹ýÆÚ
	if CheckActiviyValidity( sceneId, actId ) == 0 then
		StopOneActivity( sceneId, actId )
	end

end

--**********************************
--ÓÃÓÚ¸üÐÂÖØ½¨×´Ì¬....
--**********************************
function x810003_CurSceneHaveMonster( sceneId, DataID )

	for i, Data in x810003_g_BossData do
		if DataID == Data.ID then
			x810003_g_BossData[i].NeedCreate = 0
			break
		end
	end

end

function x810003_OnDie( sceneId, selfId, killerId )
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


function x810003_PickupItem( sceneId, selfId, itemId, bagidx )

	local transfer = GetBagItemTransfer(sceneId, selfId, bagidx)
	local str = format("#cff99cc#{_INFOUSR%s} cùng ð°ng ðµi tä xung hæu ðµt v¾i #GBÕch Minh Kh·i cùng ð°ng b÷n #cff99cctÕi #YThäo Nguyên #cff99cc. Cä ðµi toàn th¡ng tr· v« ð°ng th¶i còn nh§n ðßþc chiªn lþi ph¦m #{_INFOMSG%s}",GetName(sceneId,selfId), transfer)
	AddGlobalCountNews(sceneId,str)

end
