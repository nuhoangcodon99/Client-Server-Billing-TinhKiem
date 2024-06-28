--Phø bän Lôi ðài sinh tØ
--Author: vanhong@2gvn
--Date:31/1/2012

x000180_g_ScriptId = 000180

x000180_g_CopySceneType = FUBEN_LOIDAISINHTU

x000180_g_TickTime		= 1
x000180_g_NoUserTime	= 60
x000180_g_Fuben_X			= 15
x000180_g_Fuben_Z			= 33
x000180_g_FuBenTime		= 50*60

NPCList ={
			{ mID=13550, Title="Thiên Khôi Tinh", ScriptID=181 },
			{ mID=13551, Title="Thiên Sát Tinh",  ScriptID=182 },
			{ mID=13552, Title="Thiên C½ Tinh",  ScriptID=183 },
			{ mID=13553, Title="Thiên Cß½ng Tinh",  ScriptID=184 },
			{ mID=13554, Title="Thiên Nhàn Tinh",  ScriptID=185 },
			{ mID=13555, Title="Thiên Dûng Tinh",  ScriptID=186 },
			{ mID=13556, Title="Thiên Cô Tinh",  ScriptID=187 },
			{ mID=13557, Title="Thiên Uy Tinh",  ScriptID=188 },
			{ mID=13558, Title="Thiên Hùng Tinh",  ScriptID=189 },
			{ mID=13559, Title="Thiên Mãnh Tinh",  ScriptID=190 },
			{ mID=13560, Title="Thiên Anh Tinh",  ScriptID=191 },
			{ mID=13561, Title="Thiên Thß½ng Tinh",  ScriptID=192 },
}

BOSSList = {}
BOSSList[1] = {
			{ mID=13433, ScriptID=181 },
			{ mID=13434, ScriptID=181 },
			{ mID=13435, ScriptID=181 },
			{ mID=13436, ScriptID=181 },
			{ mID=13437, ScriptID=181 },
			{ mID=13438, ScriptID=181 },
}
BOSSList[2] = {
			{ mID=13442, ScriptID=182 },
			{ mID=13443, ScriptID=182 },
			{ mID=13444, ScriptID=182 },
			{ mID=13445, ScriptID=182 },
			{ mID=13446, ScriptID=182 },
			{ mID=13447, ScriptID=182 },
}
BOSSList[3] = {
			{ mID=13451, ScriptID=183 },
			{ mID=13452, ScriptID=183 },
			{ mID=13453, ScriptID=183 },
			{ mID=13454, ScriptID=183 },
			{ mID=13455, ScriptID=183 },
			{ mID=13456, ScriptID=183 },
}
BOSSList[4] = {
			{ mID=13460, ScriptID=184 },
			{ mID=13461, ScriptID=184 },
			{ mID=13462, ScriptID=184 },
			{ mID=13463, ScriptID=184 },
			{ mID=13464, ScriptID=184 },
			{ mID=13465, ScriptID=184 },
}
BOSSList[5] = {
			{ mID=13469, ScriptID=185 },
			{ mID=13470, ScriptID=185 },
			{ mID=13471, ScriptID=185 },
			{ mID=13472, ScriptID=185 },
			{ mID=13473, ScriptID=185 },
			{ mID=13474, ScriptID=185 },
}
BOSSList[6] = {
			{ mID=13478, ScriptID=186 },
			{ mID=13479, ScriptID=186 },
			{ mID=13480, ScriptID=186 },
			{ mID=13481, ScriptID=186 },
			{ mID=13482, ScriptID=186 },
			{ mID=13483, ScriptID=186 },
}
BOSSList[7] = {
			{ mID=13487, ScriptID=187 },
			{ mID=13488, ScriptID=187 },
			{ mID=13489, ScriptID=187 },
			{ mID=13490, ScriptID=187 },
			{ mID=13491, ScriptID=187 },
			{ mID=13492, ScriptID=187 },
}
BOSSList[8] = {
			{ mID=13496, ScriptID=188 },
			{ mID=13497, ScriptID=188 },
			{ mID=13498, ScriptID=188 },
			{ mID=13499, ScriptID=188 },
			{ mID=13500, ScriptID=188 },
			{ mID=13501, ScriptID=188 },
}
BOSSList[9] = {
			{ mID=13505, ScriptID=189 },
			{ mID=13506, ScriptID=189 },
			{ mID=13507, ScriptID=189 },
			{ mID=13508, ScriptID=189 },
			{ mID=13509, ScriptID=189 },
			{ mID=13510, ScriptID=189 },
}
BOSSList[10] = {
			{ mID=13514, ScriptID=190 },
			{ mID=13515, ScriptID=190 },
			{ mID=13516, ScriptID=190 },
			{ mID=13517, ScriptID=190 },
			{ mID=13518, ScriptID=190 },
			{ mID=13519, ScriptID=190 },
}
BOSSList[11] = {
			{ mID=13523, ScriptID=191 },
			{ mID=13524, ScriptID=191 },
			{ mID=13525, ScriptID=191 },
			{ mID=13526, ScriptID=191 },
			{ mID=13527, ScriptID=191 },
			{ mID=13528, ScriptID=191 },
}
BOSSList[12] = {
			{ mID=13532, ScriptID=192 },
			{ mID=13533, ScriptID=192 },
			{ mID=13534, ScriptID=192 },
			{ mID=13535, ScriptID=192 },
			{ mID=13536, ScriptID=192 },
			{ mID=13537, ScriptID=192 },
}


x000180_g_myLevel			= 8
x000180_g_iniLevel			= 9
x000180_g_IDX_FuBenLifeStep	= 10
x000180_g_IDBOSS1		= 11
x000180_g_IDBOSS2		= 12
x000180_g_IDBOSS3		= 13
x000180_g_IDBOSS4		= 14
x000180_g_IDBOSS5		= 15
x000180_g_IDBOSS6		= 16
x000180_g_Flag	= 17

function x000180_OnDefaultEvent( sceneId, selfId, targetId )

	local ret, msg = x000180_CheckCanEnter( sceneId, selfId, targetId )
	if 1 ~= ret then
		BeginEvent(sceneId)
			AddText(sceneId,msg)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)

	x000180_MakeCopyScene( sceneId, selfId )

end


function x000180_OnEnumerate( sceneId, selfId, targetId )

	AddNumText( sceneId, x000180_g_ScriptId, "Sát Tinh", 10, 1 )

end


function x000180_CheckCanEnter( sceneId, selfId, targetId )

	if LuaFnHasTeam(sceneId,selfId) ~= 1 then
		return 0, "#{SXRW_090119_017}"
	end

	if GetTeamLeader(sceneId,selfId) ~= selfId then
		return 0, "#{SXRW_090119_018}"
	end

	if GetTeamSize(sceneId,selfId) < 3 then
		return 0, "#{SXRW_090119_019}"
	end

	local NearTeamSize = GetNearTeamCount(sceneId,selfId)
	if GetTeamSize(sceneId,selfId) ~= NearTeamSize then
		return 0, "#{SXRW_090119_020}"
	end

	local Humanlist = {}
	local nHumanNum = 0

	for i=0, NearTeamSize-1 do
		local PlayerId = GetNearTeamMember( sceneId, selfId, i )
		if GetLevel( sceneId, PlayerId ) < 70 then
			Humanlist[nHumanNum] = GetName( sceneId, PlayerId )
			nHumanNum = nHumanNum + 1
		end
	end

	if nHumanNum > 0 then

		local msg = "    Trong t± ðµi có: "
		for i=0, nHumanNum-2 do
			msg = msg .. Humanlist[i] .. " "
		end
		msg = msg .. Humanlist[nHumanNum-1] .. " không ðü c¤p ðµ 70"
		return 0, msg

	end

	local nHumanNum = 0

	for i=0, NearTeamSize-1 do
		local PlayerId = GetNearTeamMember( sceneId, selfId, i )
		local nMenpai = GetMenPai(sceneId, PlayerId)
			if nMenpai<0 or nMenpai>9   then
				Humanlist[nHumanNum] = GetName( sceneId, PlayerId )
				nHumanNum = nHumanNum + 1
			end
			for i=1, 6 do
				if nMenpai == 9 then
					local nXinfaLevel = LuaFnGetXinFaLevel(sceneId, PlayerId, 63 + i)
						if nXinfaLevel < 45    then
						Humanlist[nHumanNum] = GetName( sceneId, PlayerId )
						nHumanNum = nHumanNum + 1
					end
				else
					local nXinfaLevel = LuaFnGetXinFaLevel(sceneId, PlayerId, nMenpai*6 + i)
					if nXinfaLevel < 45    then
						Humanlist[nHumanNum] = GetName( sceneId, PlayerId )
						nHumanNum = nHumanNum + 1
					end
				end
			end
	end

	if nHumanNum > 0 then

		local msg = "    Trong t± ðµi có: "
		for i=0, nHumanNum-2 do
			msg = msg .. Humanlist[i] .. " "
		end
		msg = msg .. Humanlist[nHumanNum-1] .. " ðÆng c¤p tâm pháp 6 quy¬n ð¥u tiên chßa ðÕt 45"
		return 0, msg

	end


	nHumanNum = 0
	local CurDayTime = GetDayTime()
	for i=0, NearTeamSize-1 do

		local PlayerId = GetNearTeamMember( sceneId, selfId, i )
		local lastTime = GetMissionData( sceneId, PlayerId, MD_LOIDAISINHTU_LASTTIME )
		local lastDayTime = floor( lastTime / 100 )
		local lastDayCount = mod( lastTime, 100 )
	
		if CurDayTime > lastDayTime then
			lastDayTime = CurDayTime
			lastDayCount = 0
		end

		if lastDayCount >= 3 then
			Humanlist[nHumanNum] = GetName( sceneId, PlayerId )
			nHumanNum = nHumanNum + 1
		end

	end

	if nHumanNum > 0 then

		local msg = "    "
		for i=0, nHumanNum-2 do
			msg = msg .. Humanlist[i] .. " "
		end
		msg = msg .. Humanlist[nHumanNum-1] .. " ðã tham gia ðü lßþt trong ngày."
		return 0, msg

	end

	return 1

end

function x000180_MakeCopyScene( sceneId, selfId )
	local member, mylevel, numerator, denominator = 0, 0, 0, 0
	local nearMemberCount = GetNearTeamCount(sceneId, selfId);
	for i = 0, nearMemberCount - 1 do
		member = GetNearTeamMember( sceneId, selfId, i )
		numerator = numerator + GetLevel( sceneId, member ) ^ 4
		denominator = denominator + GetLevel( sceneId, member ) ^ 3
	end
	if denominator <= 0 then
		mylevel = 0
	else
		mylevel = numerator / denominator
	end
    	local PlayerMaxLevel = GetHumanMaxLevelLimit()
	local iniLevel
	if mylevel < 10 then
		iniLevel = 10
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor( mylevel/10 ) * 10
	else
		iniLevel = PlayerMaxLevel
	end
	local x = 0
	local z = 0
	x,z = LuaFnGetWorldPos(sceneId,selfId)
	local leaderguid=LuaFnObjId2Guid(sceneId,selfId)

	LuaFnSetSceneLoad_Map(sceneId, "shengsileitai.nav")
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid)
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x000180_g_NoUserTime*1000)
	LuaFnSetCopySceneData_Timer(sceneId, x000180_g_TickTime*1000)
	LuaFnSetCopySceneData_Param(sceneId, 0, x000180_g_CopySceneType)
	LuaFnSetCopySceneData_Param(sceneId, 1, x000180_g_ScriptId)
	LuaFnSetCopySceneData_Param(sceneId, 2, 0)
	LuaFnSetCopySceneData_Param(sceneId, 3, sceneId)
	LuaFnSetCopySceneData_Param(sceneId, 4, x)
	LuaFnSetCopySceneData_Param(sceneId, 5, z)
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId))
	LuaFnSetCopySceneData_Param(sceneId, 7, 0)

	for i=8, 31 do
		LuaFnSetCopySceneData_Param(sceneId, i, 0)
	end

	LuaFnSetCopySceneData_Param( sceneId, x000180_g_myLevel, mylevel )
	LuaFnSetCopySceneData_Param( sceneId, x000180_g_iniLevel, iniLevel/10 )
	LuaFnSetCopySceneData_Param( sceneId, x000180_g_IDX_FuBenLifeStep, 0 )

	LuaFnSetCopySceneData_Param( sceneId, x000180_g_IDBOSS1, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x000180_g_IDBOSS2, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x000180_g_IDBOSS3, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x000180_g_IDBOSS4, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x000180_g_IDBOSS5, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x000180_g_IDBOSS6, 0 )

	LuaFnSetSceneLoad_Area( sceneId, "shengsileitai_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "shengsileitai_monster.ini" )

	local bRetSceneID = LuaFnCreateCopyScene(sceneId)
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"Ðang d¸ch chuy¬n vào phø bän");
		else
			AddText(sceneId,"S¯ lßþng bän sao vßþt quá gi¾i hÕn");
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)

end

function x000180_OnCopySceneReady( sceneId, destsceneId )
	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId)
	local leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId)
	local leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid)

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then
		return
	end

	if LuaFnHasTeam( sceneId, leaderObjId ) == 0  then
		NewWorld( sceneId, leaderObjId, destsceneId, x000180_g_Fuben_X, x000180_g_Fuben_Z) ;
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			NewWorld( sceneId, leaderObjId, destsceneId, x000180_g_Fuben_X, x000180_g_Fuben_Z) ;
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				NewWorld( sceneId, mems[i], destsceneId, x000180_g_Fuben_X, x000180_g_Fuben_Z)
			end
		end		
	end

end


function x000180_OnCopySceneTimer( sceneId, nowTime )
	local lifeStep = LuaFnGetCopySceneData_Param( sceneId, x000180_g_IDX_FuBenLifeStep )
	local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )
	local TickFlag = LuaFnGetCopySceneData_Param( sceneId, 7 )
	local BossId1 = LuaFnGetCopySceneData_Param( sceneId, x000180_g_IDBOSS1 )
	local BossId2 = LuaFnGetCopySceneData_Param( sceneId, x000180_g_IDBOSS2 )
	local BossId3 = LuaFnGetCopySceneData_Param( sceneId, x000180_g_IDBOSS3 )
	local BossId4 = LuaFnGetCopySceneData_Param( sceneId, x000180_g_IDBOSS4 )
	local BossId5 = LuaFnGetCopySceneData_Param( sceneId, x000180_g_IDBOSS5 )
	local BossId6 = LuaFnGetCopySceneData_Param( sceneId, x000180_g_IDBOSS6 )

	TickCount = TickCount + 1
	TickFlag = TickFlag + 1
	LuaFnSetCopySceneData_Param( sceneId, 2, TickCount )
	LuaFnSetCopySceneData_Param( sceneId, 7, TickFlag )


	if lifeStep == 0 then
		x000180_CreateNPC(sceneId)
		x000180_TipAllHuman( sceneId, "Còn 15 giây næa s¨ b¡t ð¥u chiªn ð¤u" )
		LuaFnSetCopySceneData_Param( sceneId, x000180_g_IDX_FuBenLifeStep, 1 )
	end

	if TickCount == 10 then
		x000180_TipAllHuman( sceneId, "Còn 5 giây næa s¨ b¡t ð¥u chiªn ð¤u")
	elseif TickCount == 15 then
		x000180_CreateBossStart(sceneId, BossId1, 40, 22)
		LuaFnSetCopySceneData_Param( sceneId, x000180_g_IDX_FuBenLifeStep, 2 )
	elseif TickCount == 10*60 or TickCount == 20*60 or TickCount == 30*60 or TickCount == 40*60 or TickCount == 45*60 then
		x000180_TipAllHuman( sceneId, "#HPhø bän Sát Tinh s¨ ðóng sau "..floor((x000180_g_FuBenTime-TickCount)/60).." phút, hãy nhanh chóng khiêu chiªn")
	elseif TickCount == x000180_g_FuBenTime then
		x000180_TipAllHuman( sceneId, "#HPhø bän Sát Tinh khiêu chiªn th¤t bÕi, chu¦n b¸ r¶i khöi phø bän...")
		LuaFnSetCopySceneData_Param( sceneId, x000180_g_IDX_FuBenLifeStep, 13 )
		LuaFnSetCopySceneData_Param( sceneId, 7, 0 )
	end
	if lifeStep == 3 and TickFlag == 10 then
		x000180_CreateBossStart(sceneId, BossId2, 40, 26)
		LuaFnSetCopySceneData_Param( sceneId, x000180_g_IDX_FuBenLifeStep, 4 )
	elseif lifeStep == 5  and TickFlag == 10 then
		x000180_CreateBossStart(sceneId, BossId3, 40, 30)
		LuaFnSetCopySceneData_Param( sceneId, x000180_g_IDX_FuBenLifeStep, 6 )
	elseif lifeStep == 7  and TickFlag == 10 then
		x000180_CreateBossStart(sceneId, BossId4, 40, 34)
		LuaFnSetCopySceneData_Param( sceneId, x000180_g_IDX_FuBenLifeStep, 8 )
	elseif lifeStep == 9  and TickFlag == 10 then
		x000180_CreateBossStart(sceneId, BossId5, 40, 38)
		LuaFnSetCopySceneData_Param( sceneId, x000180_g_IDX_FuBenLifeStep, 10 )
	elseif lifeStep == 11  and TickFlag == 10 then
		x000180_CreateBossStart(sceneId, BossId6, 40, 42)
		LuaFnSetCopySceneData_Param( sceneId, x000180_g_IDX_FuBenLifeStep, 12 )
	elseif lifeStep == 13 and TickFlag == 5 then
		x000180_TipAllHuman( sceneId, "Còn 5 giây næa s¨ r¶i khöi phø bän")
	elseif lifeStep == 13 and TickFlag == 7 then
		x000180_TipAllHuman( sceneId, "Còn 3 giây næa s¨ r¶i khöi phø bän")
	elseif lifeStep == 13 and TickFlag == 8 then
		x000180_TipAllHuman( sceneId, "Còn 2 giây næa s¨ r¶i khöi phø bän")
	elseif lifeStep == 13 and TickFlag == 9 then
		x000180_TipAllHuman( sceneId, "Còn 1 giây næa s¨ r¶i khöi phø bän")
	elseif lifeStep == 13 and TickFlag == 10 then
		LuaFnSetCopySceneData_Param( sceneId, x000180_g_IDX_FuBenLifeStep, 14 )
		local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
		local oldSceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )
		local oldX = LuaFnGetCopySceneData_Param( sceneId, 4 )
		local oldZ = LuaFnGetCopySceneData_Param( sceneId, 5 )
		for i=0, nHumanNum-1  do
			local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			if LuaFnIsObjValid( sceneId, PlayerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, PlayerId ) == 1 then
				NewWorld( sceneId, PlayerId, oldSceneId, oldX, oldZ )
			end
		end
		return
	end
end


function x000180_OnPlayerEnter( sceneId, selfId )

	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x000180_g_Fuben_X, x000180_g_Fuben_Z )

	local lastTime = GetMissionData( sceneId, selfId, MD_LOIDAISINHTU_LASTTIME )
	local lastDayTime = floor( lastTime / 100 )
	local lastDayCount = mod( lastTime, 100 )
	local CurDayTime = GetDayTime()

	if CurDayTime > lastDayTime then
		lastDayTime = CurDayTime
		lastDayCount = 0
	end

	lastDayCount = lastDayCount + 1
	lastTime = lastDayTime * 100 + lastDayCount
	SetMissionData( sceneId, selfId, MD_LOIDAISINHTU_LASTTIME, lastTime )

end


function x000180_OnHumanDie( sceneId, selfId, killerId )
	
end


function x000180_TipAllHuman( sceneId, Str )

	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid( sceneId, PlayerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, PlayerId ) == 1 then
			BeginEvent(sceneId)
				AddText(sceneId, Str)
			EndEvent(sceneId)
			DispatchMissionTips(sceneId, PlayerId)
		end
	end

end

function x000180_CreateBOSS(sceneId, bossId, bossTitle, bossLv, pX, pZ, drId, baseAI, AIscript, scriptId)
	local mstrId = LuaFnCreateMonster(sceneId, bossId, pX, pZ, baseAI, AIscript, scriptId)
	SetLevel(sceneId, mstrId, bossLv)
	SetObjDir( sceneId, mstrId, drId )
	SetCharacterTitle(sceneId, mstrId, bossTitle)
	SetMonsterFightWithNpcFlag( sceneId, mstrId, 0 )
	LuaFnSendSpecificImpactToUnit(sceneId, mstrId, mstrId, mstrId, 152, 0)
	return mstrId
end

function x000180_DeleteBOSS( sceneId, bossId )

	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if bossId == GetMonsterDataID( sceneId, MonsterId ) then
			--LuaFnDeleteMonster( sceneId, MonsterId )
			LuaFnSendSpecificImpactToUnit(sceneId, MonsterId, MonsterId, MonsterId, 152, 0)
			SetCharacterDieTime( sceneId, MonsterId, 1000 )
		end
	end

end

function x442006_CheckBOSS(sceneId, bossId)
	local nNpcId = -1
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,i)		
		if GetMonsterDataID( sceneId, nMonsterId ) == bossId  then
			nNpcId = nMonsterId
		end
	end
	return nNpcId
end

function x000180_CreateNPC(sceneId)
		local ran1 = random(1,12)
		local ran2 = random(1,12)
		local ran3 = random(1,12)
		local ran4 = random(1,12)
		local ran5 = random(1,12)
		local ran6 = random(1,12)
		while (ran2 == ran1) do
			ran2 = random(1,12)
		end
		while (ran3 == ran1 or ran3 == ran2) do
			ran3 = random(1,12)
		end
		while (ran4 == ran1 or ran4 == ran2 or ran4 == ran3) do
			ran4 = random(1,12)
		end
		while (ran5 == ran1 or ran5 == ran2 or ran5 == ran3 or ran5 == ran4 ) do
			ran5 = random(1,12)
		end
		while (ran6 == ran1 or ran6 == ran2 or ran6 == ran3 or ran6 == ran4 or ran6 == ran5 ) do
			ran6 = random(1,12)
		end
		LuaFnSetCopySceneData_Param( sceneId, x000180_g_IDBOSS1, ran1 )
		LuaFnSetCopySceneData_Param( sceneId, x000180_g_IDBOSS2, ran2 )
		LuaFnSetCopySceneData_Param( sceneId, x000180_g_IDBOSS3, ran3 )
		LuaFnSetCopySceneData_Param( sceneId, x000180_g_IDBOSS4, ran4 )
		LuaFnSetCopySceneData_Param( sceneId, x000180_g_IDBOSS5, ran5 )
		LuaFnSetCopySceneData_Param( sceneId, x000180_g_IDBOSS6, ran6 )

		local myLevel = LuaFnGetCopySceneData_Param( sceneId, x000180_g_myLevel )

		local MstId = x000180_CreateBOSS( sceneId, NPCList[ran1].mID, NPCList[ran1].Title, myLevel, 40, 22, 11, 3, 0, -1 )
		SetUnitReputationID( sceneId, MstId, MstId, 0 )
		MstId = x000180_CreateBOSS( sceneId, NPCList[ran2].mID, NPCList[ran2].Title, myLevel, 40, 26, 11, 3, 0, -1 )
		SetUnitReputationID( sceneId, MstId, MstId, 0 )
		MstId = x000180_CreateBOSS( sceneId, NPCList[ran3].mID, NPCList[ran3].Title, myLevel, 40, 30, 11, 3, 0, -1)
		SetUnitReputationID( sceneId, MstId, MstId, 0 )
		MstId = x000180_CreateBOSS( sceneId, NPCList[ran4].mID, NPCList[ran4].Title, myLevel, 40, 34, 11, 3, 0, -1 )
		SetUnitReputationID( sceneId, MstId, MstId, 0 )
		MstId = x000180_CreateBOSS( sceneId, NPCList[ran5].mID, NPCList[ran5].Title, myLevel, 40, 38, 11, 3, 0, -1 )
		SetUnitReputationID( sceneId, MstId, MstId, 0 )
		MstId = x000180_CreateBOSS( sceneId, NPCList[ran6].mID, NPCList[ran6].Title, myLevel, 40, 42, 11, 3, 0, -1 )
		SetUnitReputationID( sceneId, MstId, MstId, 0 )
end

function x000180_CreateBossStart(sceneId, nBoss, pX, pZ)
	local iniLevel = LuaFnGetCopySceneData_Param( sceneId, x000180_g_iniLevel ) - 6
	local myLevel = LuaFnGetCopySceneData_Param( sceneId, x000180_g_myLevel )
	local objID = x442006_CheckBOSS(sceneId, NPCList[nBoss].mID)
	if  objID < 0 then
		x000180_TipAllHuman( sceneId, "L²i phø bän." )
		return
	end
		
	x000180_DeleteBOSS( sceneId, NPCList[nBoss].mID )
	local FightBOSSID = BOSSList[nBoss]
	local msID = x000180_CreateBOSS(sceneId, FightBOSSID[iniLevel].mID, NPCList[nBoss].Title, myLevel, pX, pZ, 27, 27, 0, FightBOSSID[iniLevel].ScriptID)
	x000180_TipAllHuman( sceneId, ""..NPCList[nBoss].Title.." - "..GetName(sceneId, msID).." ðã khai chiªn." )
end

function x000180_NextStep(sceneId, nstep)
	LuaFnSetCopySceneData_Param( sceneId, x000180_g_IDX_FuBenLifeStep, nstep )
	LuaFnSetCopySceneData_Param( sceneId, 7, 0 )
end

function x000180_CheckStep(sceneId)
	local lifeStep = LuaFnGetCopySceneData_Param( sceneId, x000180_g_IDX_FuBenLifeStep )
	return lifeStep
end

