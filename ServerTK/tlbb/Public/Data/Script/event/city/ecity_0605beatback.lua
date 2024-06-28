-- ∑¥ª˜’Ω
--MisDescBegin
-- Ω≈±æ∫≈
x600044_g_ScriptId = 600044

--»ŒŒÒ∫≈
x600044_g_MissionId = 1109

--»ŒŒÒƒø±Ínpc
x600044_g_Name = "Vı –’i Uy "

--»ŒŒÒπÈ¿‡
x600044_g_MissionKind = 50

--»ŒŒÒµ»º∂
x600044_g_MissionLevel = 10000

-- «∑Ò «æ´”¢»ŒŒÒ
x600044_g_IfMissionElite = 0

--œ¬√Êº∏œÓ «∂ØÃ¨œ‘ æµƒƒ⁄»›£¨”√”⁄‘⁄»ŒŒÒ¡–±Ì÷–∂ØÃ¨œ‘ æ»ŒŒÒ«Èøˆ**********************
x600044_g_IsMissionOkFail			= 0									--0 »ŒŒÒÕÍ≥…±Íº«[÷µ≤ªƒ‹±‰]
x600044_g_MissionParam_SubId		= 1									--1 ◊”»ŒŒÒΩ≈±æ∫≈¥Ê∑≈Œª÷√[÷µ≤ªƒ‹±‰]

--“‘…œ «∂ØÃ¨**************************************************************

--»ŒŒÒ±‰¡øµ⁄“ªŒª”√¿¥¥Ê¥¢ÀÊª˙µ√µΩµƒΩ≈±æ∫≈

--»ŒŒÒŒƒ±æ√Ë ˆ
x600044_g_MissionName = "NhiÆm v¯ quØc phÚng"
x600044_g_MissionInfo = "    NhiÆm v¯ quØc phÚng"									--»ŒŒÒ√Ë ˆ
x600044_g_MissionTarget = "    NhiÆm v¯ c¸a c·c h’ l‡ gi™t ch™t %n. "						--»ŒŒÒƒø±Í
x600044_g_ContinueInfo = "    NhiÆm v¯ c¸a c·c h’ vÁn chﬂa ho‡n th‡nh ‡?"					--Œ¥ÕÍ≥…»ŒŒÒµƒnpc∂‘ª∞
x600044_g_SubmitInfo = "    SÒ tÏnh ti™n tri¨n nhﬂ th™ n‡o r∞i?"							--ÕÍ≥…Œ¥Ã·Ωª ±µƒnpc∂‘ª∞
x600044_g_MissionComplete = "    L‡m tØt l°m, r§t tØt r§t tØt. "					--ÕÍ≥…»ŒŒÒnpcÀµª∞µƒª∞

x600044_g_StrForePart = 4

x600044_g_MissionRound = 79

x600044_g_Parameter_Kill_AllRandom = { { id = 4, numNeeded = 5, numKilled = 6 } }

-- Õ®”√≥« –»ŒŒÒΩ≈±æ
x600044_g_CityMissionScript = 600001
x600044_g_MilitaryScript = 600030

--»ŒŒÒΩ±¿¯

--MisDescEnd

x600044_g_MonsterOffset = 43											-- Suppose to 43, ±Ì¿Ôµ⁄º∏¡– Monster µƒ∆´“∆¡ø

x600044_g_MissionParam_MonsterId = x600044_g_StrForePart
x600044_g_MissionParam_MonsterNeeded = x600044_g_StrForePart + 1
x600044_g_MissionParam_MonsterKilled = x600044_g_StrForePart + 2

--**********************************
--»ŒŒÒ»Îø⁄∫Ø ˝
--**********************************
function x600044_OnDefaultEvent( sceneId, selfId, targetId )	--µ„ª˜∏√»ŒŒÒ∫Û÷¥––¥ÀΩ≈±æ
	if GetName( sceneId, targetId ) ~= x600044_g_Name then		--≈–∂œ∏√npc «∑Ò «∂‘”¶»ŒŒÒµƒnpc
		return
	end

	--»Áπ˚“—Ω”¥À»ŒŒÒ
	if IsHaveMission( sceneId, selfId, x600044_g_MissionId ) > 0 then
		--∑¢ÀÕ»ŒŒÒ–Ë«Ûµƒ–≈œ¢
		local bDone = x600044_CheckSubmit( sceneId, selfId )
		local strText

		if bDone == 1 then
			strText = x600044_g_SubmitInfo
		else
			strText = x600044_g_ContinueInfo
		end

		--∑¢ÀÕ»ŒŒÒ–Ë«Ûµƒ–≈œ¢
		BeginEvent( sceneId )
			AddText( sceneId, x600044_g_MissionName )
			AddText( sceneId, strText )
		EndEvent( )
		DispatchMissionDemandInfo( sceneId, selfId, targetId, x600044_g_ScriptId, x600044_g_MissionId, bDone )
	--¬˙◊„»ŒŒÒΩ” ’Ãıº˛
	elseif x600044_CheckAccept( sceneId, selfId ) > 0 then
		local nTemp = CallScriptFunction( x600044_g_CityMissionScript, "CanDoMisToDay", sceneId, selfId )
		if nTemp == 1 then
			x600044_OnAccept( sceneId, selfId, targetId )
		end
	end
end

--**********************************
--¡–æŸ ¬º˛
--**********************************
function x600044_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600044_g_Name then		--≈–∂œ∏√npc «∑Ò «∂‘”¶»ŒŒÒµƒnpc
		return
	end

   --»Áπ˚“—Ω”¥À»ŒŒÒ
	if IsHaveMission( sceneId, selfId, x600044_g_MissionId ) > 0 then
		AddNumText( sceneId, x600044_g_ScriptId, x600044_g_MissionName,3,-1 )
	end
end

--**********************************
--ºÏ≤‚Ω” ‹Ãıº˛
--**********************************
function x600044_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600044_g_MilitaryScript, "CheckAccept", sceneId, selfId )
	return ret
end

--**********************************
--Ω” ‹
--**********************************
function x600044_OnAccept( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600044_g_Name then		--≈–∂œ∏√npc «∑Ò «∂‘”¶»ŒŒÒµƒnpc
		return
	end

	local myLevel = GetLevel( sceneId, selfId )

	if GetLevel( sceneId, selfId ) < 40 then
		CallScriptFunction( x600044_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, "KhÙng ¸ ∆ng c§p" )
		return
	end

	--º”»Î»ŒŒÒµΩÕÊº“¡–±Ì
	AddMission( sceneId, selfId, x600044_g_MissionId, x600044_g_ScriptId, 1, 0, 0 )	-- kill°¢area°¢item
	if IsHaveMission( sceneId, selfId, x600044_g_MissionId ) <= 0 then
		return
	end

	CallScriptFunction( x600044_g_MilitaryScript, "OnAccept", sceneId, selfId, targetId, x600044_g_ScriptId )

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600044_g_MissionId )
	local nMonsterId, strMonsterName, strMonsterSceneDesc = LuaFnGetLevelMatchingMonster( x600044_g_MonsterOffset, myLevel )

	local count = floor( myLevel/10 ) * 5 + 5
	SetMissionByIndex( sceneId, selfId, misIndex, x600044_g_MissionParam_MonsterId, nMonsterId )
	SetMissionByIndex( sceneId, selfId, misIndex, x600044_g_MissionParam_MonsterNeeded, count )

	strMonsterSceneDesc = gsub( strMonsterSceneDesc, "–Ìch", "" )

	--œ‘ æƒ⁄»›∏ÊÀﬂÕÊº““—æ≠Ω” ‹¡À»ŒŒÒ
	BeginEvent( sceneId )
		local missionInfo
		missionInfo = format( "    L˙c mæi x‚y dÒng th‡nh th∏, luÙn g£p ph‰i %s c¸a %s x‚m lﬂ˛c, l˙c Û ch˙ng tÙi d‚n Ìt, th™ lÒc y™u æt, chÔ cÛ th¨ nhÏn b˜n %s lµng h‡nh. #r B‚y gi∂, %s, ch˙ng tÙi „ cÛ •y ¸ lÒc lﬂ˛ng! –i %s gi™t %d tÍn %s, h„y ·nh 1 trßn thßt ©p m°t!",
				strMonsterSceneDesc, strMonsterName, strMonsterName, GetName( sceneId, selfId ),
				strMonsterSceneDesc, count, strMonsterName )

		AddText( sceneId, missionInfo )
		AddText( sceneId, "    C·c h’ „ nhßn nhiÆm v¯: " .. x600044_g_MissionName )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--∑≈∆˙
--**********************************
function x600044_OnAbandon( sceneId, selfId )
	--…æ≥˝ÕÊº“»ŒŒÒ¡–±Ì÷–∂‘”¶µƒ»ŒŒÒ
	CallScriptFunction( x600044_g_MilitaryScript, "OnAbandon", sceneId, selfId )
end

--**********************************
--ºÃ–¯
--**********************************
function x600044_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x600044_g_MissionName )
		AddText( sceneId, x600044_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600044_g_ScriptId, x600044_g_MissionId )
end

--**********************************
--ºÏ≤‚ «∑Òø…“‘Ã·Ωª
--**********************************
function x600044_CheckSubmit( sceneId, selfId )
	local ret = CallScriptFunction( x600044_g_MilitaryScript, "CheckSubmit", sceneId, selfId )
	return ret
end

--**********************************
--Ã·Ωª
--**********************************
function x600044_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x600044_g_Name then			--≈–∂œ∏√npc «∑Ò «∂‘”¶»ŒŒÒµƒnpc
		return
	end

	if x600044_CheckSubmit( sceneId, selfId ) == 1 then
		CallScriptFunction( x600044_g_MilitaryScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
	end
end

--**********************************
--…±À¿π÷ŒÔªÚÕÊº“
--**********************************
function x600044_OnKillObject( sceneId, selfId, objdataId, objId )	--≤Œ ˝“‚Àº£∫≥°æ∞∫≈°¢ÕÊº“objId°¢π÷ŒÔ±ÌŒª÷√∫≈°¢π÷ŒÔobjId
	local allOwnersCount = GetMonsterOwnerCount( sceneId, objId )		--»°µ√’‚∏ˆπ÷ŒÔÀ¿∫Û”µ”–∑÷≈‰»®µƒ»À ˝
	local curOwner, misIndex
	local nNpcId, strNpcName, nNeeded, nKilled
	local MonsterName = GetName( sceneId, objId )

	for i = 0, allOwnersCount - 1 do
		curOwner = GetMonsterOwnerID( sceneId, objId, i )				--»°µ√”µ”–∑÷≈‰»®µƒ»ÀµƒobjId
		if IsHaveMission( sceneId, curOwner, x600044_g_MissionId ) > 0 and
		   GetScriptIDByMissionID( sceneId, curOwner, x600044_g_MissionId ) == x600044_g_ScriptId then		--»Áπ˚’‚∏ˆ»À”µ”–»ŒŒÒ
			misIndex = GetMissionIndexByID( sceneId, curOwner, x600044_g_MissionId )
			nNpcId = GetMissionParam( sceneId, curOwner, misIndex, x600044_g_MissionParam_MonsterId )
			_, strNpcName = GetNpcInfoByNpcId( sceneId, nNpcId )

			if MonsterName == strNpcName then
				nNeeded = GetMissionParam( sceneId, curOwner, misIndex, x600044_g_MissionParam_MonsterNeeded )
				nKilled = GetMissionParam( sceneId, curOwner, misIndex, x600044_g_MissionParam_MonsterKilled )
				nKilled = nKilled + 1

				SetMissionByIndex( sceneId, curOwner, misIndex, x600044_g_MissionParam_MonsterKilled, nKilled )
				CallScriptFunction( x600044_g_CityMissionScript, "NotifyFailTips", sceneId, curOwner,
					format( "–„ gi™t ch™t %s: %d/%d", MonsterName, nKilled, nNeeded ) )

				if nNeeded <= nKilled then
					SetMissionByIndex( sceneId, curOwner, misIndex, x600044_g_IsMissionOkFail, 1 )
					ResetMissionEvent( sceneId, curOwner, x600044_g_MissionId, 0 )	-- ≤ª‘Ÿπÿ–ƒ…±π÷
				end
			end
		end
	end
end

--**********************************
--Ω¯»Î«¯”Ú ¬º˛
--**********************************
function x600044_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µ¿æﬂ∏ƒ±‰
--**********************************
function x600044_OnItemChanged( sceneId, selfId, itemdataId )
end
