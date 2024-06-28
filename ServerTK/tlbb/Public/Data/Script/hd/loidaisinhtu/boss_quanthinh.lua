
x000186_g_ScriptId	= 000186

x000186_g_FuBenScriptId = 000180

x000186_Skill			=	1315
x000186_Skill1			=	1314
x000186_Special	= 122
x000186_IDX_CombatTime		= 1
x000186_IDX_UseSkillIndex	= 2
x000186_IDX_CombatFlag 			= 1

function x000186_OnInit(sceneId, selfId)
	x000186_ResetMyAI( sceneId, selfId )
end


function x000186_OnHeartBeat(sceneId, selfId, nTick)

	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x000186_IDX_CombatFlag ) then
		return
	end


	local CombatTime = MonsterAI_GetIntParamByIndex( sceneId, selfId, x000186_IDX_CombatTime )
	local NextSkillIndex = MonsterAI_GetIntParamByIndex( sceneId, selfId, x000186_IDX_UseSkillIndex )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x000186_IDX_CombatTime, CombatTime + nTick )
	if NextSkillIndex < 1 then
		return
	end
	local Timer = CombatTime+nTick
	if (Timer >=10000 and NextSkillIndex == 1) then
		local x,z = GetWorldPos( sceneId, selfId )
		LuaFnUnitUseSkill( sceneId, selfId, x000186_Skill1, selfId, x, z, 0, 0 )
		CreateSpecialObjByDataIndex(sceneId, selfId, x000186_Special, x+3, z, 0)
		CreateSpecialObjByDataIndex(sceneId, selfId, x000186_Special, x-3, z, 0)
		--CreateSpecialObjByDataIndex(sceneId, selfId, x000186_Special, x+1.5, z+2.12, 0)
		--CreateSpecialObjByDataIndex(sceneId, selfId, x000186_Special, x-1.5, z+2.12, 0)
		--CreateSpecialObjByDataIndex(sceneId, selfId, x000186_Special, x+1.5, z-2.12, 0)
		--CreateSpecialObjByDataIndex(sceneId, selfId, x000186_Special, x-1.5, z-2.12, 0)
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000186_IDX_UseSkillIndex, 2 )
	elseif (Timer >=15000 and NextSkillIndex == 2)  then
		LuaFnNpcChat(sceneId, selfId, 0, "#{SXRW_090630_119}")
		local x,z = GetWorldPos( sceneId, selfId )
		LuaFnUnitUseSkill( sceneId, selfId, x000186_Skill, selfId, x, z, 0, 0 )
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000186_IDX_UseSkillIndex, 1 )
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000186_IDX_CombatTime, 0 )
	end
end

function x000186_OnEnterCombat(sceneId, selfId, enmeyId)
	LuaFnNpcChat(sceneId, selfId, 0, "TÕi hÕ là Quan Vân Trß¶ng xin ðßþc thïnh giáo")
	x000186_ResetMyAI( sceneId, selfId )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x000186_IDX_CombatFlag, 1 )
end

function x000186_OnLeaveCombat(sceneId, selfId)
	x000186_ResetMyAI( sceneId, selfId )
--	LuaFnDeleteMonster( sceneId, selfId )
end

function x000186_OnKillCharacter(sceneId, selfId, targetId)

end

function x000186_OnDie( sceneId, selfId, killerId )
	x000186_ResetMyAI( sceneId, selfId )
	local CheckStep = CallScriptFunction( x000186_g_FuBenScriptId, "CheckStep", sceneId )
	CallScriptFunction( x000186_g_FuBenScriptId, "NextStep", sceneId, CheckStep+1 )
end

function x000186_ResetMyAI( sceneId, selfId )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x000186_IDX_CombatTime, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x000186_IDX_UseSkillIndex, 1 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x000186_IDX_CombatFlag, 0 )
end
