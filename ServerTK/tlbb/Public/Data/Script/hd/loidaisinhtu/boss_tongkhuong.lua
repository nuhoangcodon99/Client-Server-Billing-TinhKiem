
x000181_g_ScriptId	= 000181

x000181_g_FuBenScriptId = 000180

x000181_Skill			=	1305
x000181_IDX_CombatTime		= 1
x000181_IDX_UseSkillIndex	= 2
x000181_IDX_CombatFlag 			= 1

function x000181_OnInit(sceneId, selfId)
	x000181_ResetMyAI( sceneId, selfId )
end


function x000181_OnHeartBeat(sceneId, selfId, nTick)

	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x000181_IDX_CombatFlag ) then
		return
	end


	local CombatTime = MonsterAI_GetIntParamByIndex( sceneId, selfId, x000181_IDX_CombatTime )
	local NextSkillIndex = MonsterAI_GetIntParamByIndex( sceneId, selfId, x000181_IDX_UseSkillIndex )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x000181_IDX_CombatTime, CombatTime + nTick )
	if NextSkillIndex < 1 then
		return
	end
	local Timer = CombatTime+nTick
	if Timer >= 20000 then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000181_IDX_CombatTime, 0 )
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000181_IDX_UseSkillIndex, 1 )
	elseif (Timer >=10000 and NextSkillIndex == 1) then
		LuaFnNpcChat(sceneId, selfId, 0, "Hãy xem uy lñc cüa T¯ng Khß½ng ta ðây ")
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000181_IDX_UseSkillIndex, NextSkillIndex+1 )
	elseif (Timer >=12000 and NextSkillIndex == 2)  then
		local x,z = GetWorldPos( sceneId, selfId )
		LuaFnUnitUseSkill( sceneId, selfId, x000181_Skill, selfId, x, z, 0, 0 )
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000181_IDX_UseSkillIndex, NextSkillIndex+1 )
	end
end

function x000181_OnEnterCombat(sceneId, selfId, enmeyId)
	LuaFnNpcChat(sceneId, selfId, 0, "TÕi hÕ là T¯ng Khß½ng xin ðßþc thïnh giáo")
	x000181_ResetMyAI( sceneId, selfId )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x000181_IDX_CombatFlag, 1 )
end

function x000181_OnLeaveCombat(sceneId, selfId)
	x000181_ResetMyAI( sceneId, selfId )
	--LuaFnDeleteMonster( sceneId, selfId )
end

function x000181_OnKillCharacter(sceneId, selfId, targetId)

end

function x000181_OnDie( sceneId, selfId, killerId )
	x000181_ResetMyAI( sceneId, selfId )
	local CheckStep = CallScriptFunction( x000181_g_FuBenScriptId, "CheckStep", sceneId )
	CallScriptFunction( x000181_g_FuBenScriptId, "NextStep", sceneId, CheckStep+1 )
end

function x000181_ResetMyAI( sceneId, selfId )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x000181_IDX_CombatTime, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x000181_IDX_UseSkillIndex, 1 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x000181_IDX_CombatFlag, 0 )
end
