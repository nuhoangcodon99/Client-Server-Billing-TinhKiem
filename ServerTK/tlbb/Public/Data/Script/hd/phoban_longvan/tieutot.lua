
x000627_g_ScriptId	= 000627
x000627_g_FuBenScriptId = 000618

--x000627_Skill			=	1320
--x000627_Buff			= 10500

x000627_IDX_CombatTime		= 1
--x000627_IDX_UseSkillIndex	= 2
x000627_IDX_CombatFlag 			= 1

function x000627_OnInit(sceneId, selfId)
	x000627_ResetMyAI( sceneId, selfId )
end


function x000627_OnEnterCombat(sceneId, selfId, enmeyId)
	x000627_ResetMyAI( sceneId, selfId )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x000627_IDX_CombatFlag, 1 )
end

function x000627_OnLeaveCombat(sceneId, selfId)
	x000627_ResetMyAI( sceneId, selfId )
	--LuaFnDeleteMonster( sceneId, selfId )
end

function x000627_OnKillCharacter(sceneId, selfId, targetId)

end
function x000627_OnHeartBeat(sceneId, selfId, nTick)

	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x000627_IDX_CombatFlag ) then
		return
	end
end
function x000627_OnDie( sceneId, selfId, killerId )
	local bossName = GetName(sceneId,selfId)
	local iniLevel = LuaFnGetCopySceneData_Param( sceneId, x000618_g_iniLevel )
	local x,z = LuaFnGetWorldPos(sceneId,selfId)

	if bossName == "Trung Thành Binh Dûng" then
		----x4 Ác Linh Binh Dûng
			x000618_CreateBOSS( sceneId, x000618_g_BOSSList_boss_binhdung[iniLevel-7].mID1, "", x000618_g_BOSSList_boss_binhdung[iniLevel-7].bLevel, x+1, z+1, 0, 27, 0, 627 )
			x000618_CreateBOSS( sceneId, x000618_g_BOSSList_boss_binhdung[iniLevel-7].mID1, "", x000618_g_BOSSList_boss_binhdung[iniLevel-7].bLevel, x+3, z, 0, 27, 0, 627 )
			x000618_CreateBOSS( sceneId, x000618_g_BOSSList_boss_binhdung[iniLevel-7].mID1, "", x000618_g_BOSSList_boss_binhdung[iniLevel-7].bLevel, x, z+3, 0, 27, 0, 627 )
			x000618_CreateBOSS( sceneId, x000618_g_BOSSList_boss_binhdung[iniLevel-7].mID1, "", x000618_g_BOSSList_boss_binhdung[iniLevel-7].bLevel, x+3, z+3, 0, 27, 0, 627 )
	else
		LuaFnSetCopySceneData_Param( sceneId, x000618_g_IDX_FuBenLifeStep,99 )
	end
end

function x000627_ResetMyAI( sceneId, selfId )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x000627_IDX_CombatTime, 0 )
	--MonsterAI_SetIntParamByIndex( sceneId, selfId, x000627_IDX_UseSkillIndex, 1 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x000627_IDX_CombatFlag, 0 )
end


function x000627_TipAllHuman( sceneId, Str )

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

