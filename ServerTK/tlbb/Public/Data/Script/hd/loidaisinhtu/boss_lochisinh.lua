
x000187_g_ScriptId	= 000187

x000187_g_FuBenScriptId = 000180

x000187_Skill1			=	1312
x000187_Skill2			=	1313
x000187_Buff			=	10519
x000187_IDX_CombatTime		= 1
x000187_IDX_UseSkillIndex	= 2
x000187_IDX_CombatFlag 			= 1

function x000187_OnInit(sceneId, selfId)
	x000187_ResetMyAI( sceneId, selfId )
end


function x000187_OnHeartBeat(sceneId, selfId, nTick)

	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x000187_IDX_CombatFlag ) then
		return
	end


	local CombatTime = MonsterAI_GetIntParamByIndex( sceneId, selfId, x000187_IDX_CombatTime )
	local NextSkillIndex = MonsterAI_GetIntParamByIndex( sceneId, selfId, x000187_IDX_UseSkillIndex )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x000187_IDX_CombatTime, CombatTime + nTick )
	if NextSkillIndex < 1 then
		return
	end
	local Timer = CombatTime+nTick
	if (Timer >=10000 and NextSkillIndex == 1) then
		LuaFnNpcChat(sceneId, selfId, 0, "Gi¶ thì ai có th¬ ðµng ðßþc ðªn ta, hahaha!")
		local x,z = GetWorldPos( sceneId, selfId )
		LuaFnUnitUseSkill( sceneId, selfId, x000187_Skill1, selfId, x, z, 0, 0 )
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000187_IDX_UseSkillIndex, 2 )
	elseif ((Timer >=12000 and NextSkillIndex == 2) or  (Timer >=16000 and NextSkillIndex == 3) or (Timer >=20000 and NextSkillIndex == 4))  then
		local x,z = GetWorldPos( sceneId, selfId )
		LuaFnUnitUseSkill( sceneId, selfId, x000187_Skill2, selfId, x, z, 0, 0 )
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000187_IDX_UseSkillIndex, NextSkillIndex+1 )
	elseif (Timer >=24000 and NextSkillIndex == 5)  then
		LuaFnNpcChat(sceneId, selfId, 0, "#{SXRW_090630_118}")
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x000187_Buff, 0 )
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000187_IDX_CombatTime, 0 )
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000187_IDX_UseSkillIndex, 1 )
	end
end

function x000187_OnEnterCombat(sceneId, selfId, enmeyId)
	LuaFnNpcChat(sceneId, selfId, 0, "TÕi hÕ L² Chí Sinh xin ðßþc thïnh giáo")
	x000187_ResetMyAI( sceneId, selfId )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x000187_IDX_CombatFlag, 1 )
end

function x000187_OnLeaveCombat(sceneId, selfId)
	x000187_ResetMyAI( sceneId, selfId )
	--LuaFnDeleteMonster( sceneId, selfId )
end

function x000187_OnKillCharacter(sceneId, selfId, targetId)

end

function x000187_OnDie( sceneId, selfId, killerId )
	x000187_ResetMyAI( sceneId, selfId )
	local CheckStep = CallScriptFunction( x000187_g_FuBenScriptId, "CheckStep", sceneId )
	CallScriptFunction( x000187_g_FuBenScriptId, "NextStep", sceneId, CheckStep+1 )
end

function x000187_ResetMyAI( sceneId, selfId )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x000187_IDX_CombatTime, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x000187_IDX_UseSkillIndex, 1 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x000187_IDX_CombatFlag, 0 )
end
