
x000584_g_ScriptId	= 000584

x000584_g_FuBenScriptId = 000583

x000584_Skill			=	1317
x000584_Buff			= 10520

x000584_IDX_CombatTime		= 1
x000584_IDX_UseSkillIndex	= 2
x000584_IDX_CombatFlag 			= 1
x000584_MijiID = 38000529
function x000584_OnInit(sceneId, selfId)
	x000584_ResetMyAI( sceneId, selfId )
end


function x000584_OnHeartBeat(sceneId, selfId, nTick)

	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x000584_IDX_CombatFlag ) then
		return
	end
	local bossselect = -1
	for i=1, getn(g_DanrenFB_List_25_Boss) do
		if GetName( sceneId, selfId ) == g_DanrenFB_List_25_Boss[i].name then
			bossselect = i
			break
		end
	end
	if bossselect == -1 then
		return
	end
	local CombatTime = MonsterAI_GetIntParamByIndex( sceneId, selfId, x000584_IDX_CombatTime )
	local NextSkillIndex = MonsterAI_GetIntParamByIndex( sceneId, selfId, x000584_IDX_UseSkillIndex )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x000584_IDX_CombatTime, CombatTime + nTick )
	if NextSkillIndex < 1 then
		return
	end
	local Timer = CombatTime+nTick

	if (Timer >=10000 and NextSkillIndex == 1) then
		LuaFnNpcChat(sceneId, selfId, 0, g_DanrenFB_List_25_Boss[bossselect].chat1 )
--		local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
--		for i=0, nHumanCount-1 do
--			local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
--			if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 and LuaFnIsCharacterLiving(sceneId, nHumanId) == 1 then
--				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, nHumanId, x000584_Buff, 0 )
--			end
--		end
		local x,z = GetWorldPos( sceneId, selfId )
		LuaFnUnitUseSkill( sceneId, selfId, g_DanrenFB_List_25_Boss[bossselect].skill1, selfId, x, z, 0, 0 )
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000584_IDX_UseSkillIndex, 2 )
	elseif (Timer >=20000 and NextSkillIndex == 2)  then
		LuaFnNpcChat(sceneId, selfId, 0, g_DanrenFB_List_25_Boss[bossselect].chat2 )
		local x,z = GetWorldPos( sceneId, selfId )
		LuaFnUnitUseSkill( sceneId, selfId, g_DanrenFB_List_25_Boss[bossselect].skill2, selfId, x, z, 0, 0 )
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000584_IDX_CombatTime, 0 )
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000584_IDX_UseSkillIndex, 1 )
	end
end

function x000584_OnEnterCombat(sceneId, selfId, enmeyId)
	--LuaFnNpcChat(sceneId, selfId, 0, "Báo TØ Ð¥u - Lâm Sung xin ðßþc thïnh giáo")
	x000584_ResetMyAI( sceneId, selfId )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x000584_IDX_CombatFlag, 1 )
end

function x000584_OnLeaveCombat(sceneId, selfId)
	x000584_ResetMyAI( sceneId, selfId )
	--LuaFnDeleteMonster( sceneId, selfId )
end

function x000584_OnKillCharacter(sceneId, selfId, targetId)

end

function x000584_OnDie( sceneId, selfId, killerId )
	local bossselect = -1
	for i=1, getn(g_DanrenFB_List_25_Boss) do
		if GetName( sceneId, selfId ) == g_DanrenFB_List_25_Boss[i].name then
			bossselect = i			-- Tìm ra con boss thÑ bao nhiêu
			break
		end
	end
	if bossselect == -1 then
		return
	end
	
	RestoreHp( sceneId, killerId )
	RestoreMp( sceneId, killerId )
	RestoreRage( sceneId, killerId )
	RestoreStrikePoint( sceneId, killerId )
	x000584_ResetMyAI( sceneId, selfId )
	local CheckStep = CallScriptFunction( x000584_g_FuBenScriptId, "CheckStep", sceneId )
	CallScriptFunction( x000584_g_FuBenScriptId, "NextStep", sceneId, CheckStep+1 )

	-- Nªu là con boss thÑ 5 thì add drop
	if CheckStep >= 10 then		
		local rate = LuaFnGetCopySceneData_Param(sceneId, x000583_g_Rate)
		if rate < 2 then
			AddMonsterDropItem( sceneId, selfId, killerId, x000584_MijiID )
		else
			for i=1,rate do
				AddMonsterDropItem( sceneId, selfId, killerId, x000584_MijiID )
			end
		end
	end

	-- --Khi kill ðßþc boss lv cao h½n thì lßu thông tin
	local lv_us = GetMissionData( sceneId, killerId, MD_HUKHONG_LV_USE)	--ddddd--xx-yyy
	local lastday = floor(lv_us/100000)
	local lv = floor(lv_us/1000)-lastday*100
	local us = mod(lv_us,1000)
	if lv < bossselect then
		SetMissionData( sceneId, killerId, MD_HUKHONG_LV_USE, lastday*100000+bossselect*1000+us)	--Khi kill ðßþc boss lv cao h½n
	end

	-- Ði¬m tâm ð¡c
	SetMissionData(sceneId,killerId,MD_MJ_TAMDAC,GetMissionData(sceneId,killerId,MD_MJ_TAMDAC)+g_DanrenFB_List_25_Boss[bossselect].point)
	BeginEvent(sceneId)
		strText = format("Ðã nh§n ðßþc %d Tâm Ð¡c Võ H÷c",g_DanrenFB_List_25_Boss[bossselect].point)
	AddText(sceneId,strText);
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,killerId)
end

function x000584_ResetMyAI( sceneId, selfId )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x000584_IDX_CombatTime, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x000584_IDX_UseSkillIndex, 1 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x000584_IDX_CombatFlag, 0 )
end
