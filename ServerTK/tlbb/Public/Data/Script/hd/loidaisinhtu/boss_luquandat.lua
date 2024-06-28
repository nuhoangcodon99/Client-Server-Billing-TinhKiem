
x000184_g_ScriptId	= 000184

x000184_g_FuBenScriptId = 000180

x000184_Skill1			=	1307
x000184_Skill2			=	1308
x000184_Skill3			=	1309
x000184_IDX_CombatTime		= 1
x000184_IDX_UseSkillIndex	= 2
x000184_IDX_CombatFlag 			= 1

function x000184_OnInit(sceneId, selfId)
	x000184_ResetMyAI( sceneId, selfId )
end


function x000184_OnHeartBeat(sceneId, selfId, nTick)

	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end
	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x000184_IDX_CombatFlag ) then
		return
	end
	local CombatTime = MonsterAI_GetIntParamByIndex( sceneId, selfId, x000184_IDX_CombatTime )
	local NextSkillIndex = MonsterAI_GetIntParamByIndex( sceneId, selfId, x000184_IDX_UseSkillIndex )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x000184_IDX_CombatTime, CombatTime + nTick )
	if NextSkillIndex < 1 then
		return
	end
	local Timer = CombatTime+nTick
	if (Timer >=15000 and NextSkillIndex == 1) then
		LuaFnNpcChat(sceneId, selfId, 0, "#{SXRW_090119_143}")
		local x,z = GetWorldPos( sceneId, selfId )
		LuaFnUnitUseSkill( sceneId, selfId, x000184_Skill1, selfId, x, z, 0, 0 )
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000184_IDX_UseSkillIndex, 2 )
	elseif (Timer >=30000 and NextSkillIndex == 2)  then
		LuaFnNpcChat(sceneId, selfId, 0, "#{SXRW_090119_167}")
		local x,z = GetWorldPos( sceneId, selfId )
		LuaFnUnitUseSkill( sceneId, selfId, x000184_Skill2, selfId, x, z, 0, 0 )
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000184_IDX_UseSkillIndex, 3 )
	elseif (Timer >=45000 and NextSkillIndex == 3)  then
		LuaFnNpcChat(sceneId, selfId, 0, "#{SXRW_090630_115}")
		local x,z = GetWorldPos( sceneId, selfId )
		LuaFnUnitUseSkill( sceneId, selfId, x000184_Skill3, selfId, x, z, 0, 0 )
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000184_IDX_UseSkillIndex, 1 )
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000184_IDX_CombatTime,  0 )
	end
end

function x000184_OnEnterCombat(sceneId, selfId, enmeyId)
	LuaFnNpcChat(sceneId, selfId, 0, "TÕi hÕ là Lß Quân D§t xin ðßþc thïnh giáo")
	x000184_ResetMyAI( sceneId, selfId )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x000184_IDX_CombatFlag, 1 )
end

function x000184_OnLeaveCombat(sceneId, selfId)
	x000184_ResetMyAI( sceneId, selfId )
	--LuaFnDeleteMonster( sceneId, selfId )
end

function x000184_OnKillCharacter(sceneId, selfId, targetId)

end

function x000184_OnDie( sceneId, selfId, killerId )
	x000184_ResetMyAI( sceneId, selfId )
	local CheckStep = CallScriptFunction( x000184_g_FuBenScriptId, "CheckStep", sceneId )
	CallScriptFunction( x000184_g_FuBenScriptId, "NextStep", sceneId, CheckStep+1 )
end

function x000184_ResetMyAI( sceneId, selfId )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x000184_IDX_CombatTime, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x000184_IDX_UseSkillIndex, 1 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x000184_IDX_CombatFlag, 0 )
end
