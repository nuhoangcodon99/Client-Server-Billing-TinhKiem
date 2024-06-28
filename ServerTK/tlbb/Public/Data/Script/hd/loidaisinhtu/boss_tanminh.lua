
x000190_g_ScriptId	= 000190

x000190_g_FuBenScriptId = 000180

x000190_Skill			=	1318
x000190_Buff			= 10521

x000190_IDX_CombatTime		= 1
x000190_IDX_UseSkillIndex	= 2
x000190_IDX_CombatFlag 			= 1

function x000190_OnInit(sceneId, selfId)
	x000190_ResetMyAI( sceneId, selfId )
end


function x000190_OnHeartBeat(sceneId, selfId, nTick)

	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x000190_IDX_CombatFlag ) then
		return
	end


	local CombatTime = MonsterAI_GetIntParamByIndex( sceneId, selfId, x000190_IDX_CombatTime )
	local NextSkillIndex = MonsterAI_GetIntParamByIndex( sceneId, selfId, x000190_IDX_UseSkillIndex )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x000190_IDX_CombatTime, CombatTime + nTick )
	if NextSkillIndex < 1 then
		return
	end
	local Timer = CombatTime+nTick

	if (Timer >=10000 and NextSkillIndex == 1) then
		LuaFnNpcChat(sceneId, selfId, 0, "#{SXRW_090119_148}")
		local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
		for i=0, nHumanCount-1 do
			local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 and LuaFnIsCharacterLiving(sceneId, nHumanId) == 1 then
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, nHumanId, x000190_Buff, 0 )
			end

		end
		local x,z = GetWorldPos( sceneId, selfId )
		LuaFnUnitUseSkill( sceneId, selfId, x000190_Skill, selfId, x, z, 0, 0 )
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000190_IDX_UseSkillIndex, 2 )
	elseif (Timer >=15000 and NextSkillIndex == 2)  then
		local x,z = GetWorldPos( sceneId, selfId )
		LuaFnUnitUseSkill( sceneId, selfId, x000190_Skill, selfId, x, z, 0, 0 )
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000190_IDX_UseSkillIndex, 3 )
	elseif (Timer >=20000 and NextSkillIndex == 3)  then
		local x,z = GetWorldPos( sceneId, selfId )
		LuaFnUnitUseSkill( sceneId, selfId, x000190_Skill, selfId, x, z, 0, 0 )
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000190_IDX_UseSkillIndex, 4 )
	elseif (Timer >=25000 and NextSkillIndex == 4)  then
		local x,z = GetWorldPos( sceneId, selfId )
		LuaFnUnitUseSkill( sceneId, selfId, x000190_Skill, selfId, x, z, 0, 0 )
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000190_IDX_CombatTime, 0 )
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000190_IDX_UseSkillIndex, 1 )
	end
end

function x000190_OnEnterCombat(sceneId, selfId, enmeyId)
	LuaFnNpcChat(sceneId, selfId, 0, "T¥n Minh xin ðßþc thïnh giáo")
	x000190_ResetMyAI( sceneId, selfId )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x000190_IDX_CombatFlag, 1 )
end

function x000190_OnLeaveCombat(sceneId, selfId)
	x000190_ResetMyAI( sceneId, selfId )
	--LuaFnDeleteMonster( sceneId, selfId )
end

function x000190_OnKillCharacter(sceneId, selfId, targetId)

end

function x000190_OnDie( sceneId, selfId, killerId )
	x000190_ResetMyAI( sceneId, selfId )
	local CheckStep = CallScriptFunction( x000190_g_FuBenScriptId, "CheckStep", sceneId )
	CallScriptFunction( x000190_g_FuBenScriptId, "NextStep", sceneId, CheckStep+1 )
end

function x000190_ResetMyAI( sceneId, selfId )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x000190_IDX_CombatTime, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x000190_IDX_UseSkillIndex, 1 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x000190_IDX_CombatFlag, 0 )
end
