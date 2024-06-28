
x000182_g_ScriptId	= 000182

x000182_g_FuBenScriptId = 000180

x000182_Skill			=	1310
x000182_IDX_CombatTime		= 1
x000182_IDX_UseSkillIndex	= 2
x000182_IDX_CombatFlag 			= 1

function x000182_OnInit(sceneId, selfId)
	x000182_ResetMyAI( sceneId, selfId )
end


function x000182_OnHeartBeat(sceneId, selfId, nTick)

	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x000182_IDX_CombatFlag ) then
		return
	end


	local CombatTime = MonsterAI_GetIntParamByIndex( sceneId, selfId, x000182_IDX_CombatTime )
	local NextSkillIndex = MonsterAI_GetIntParamByIndex( sceneId, selfId, x000182_IDX_UseSkillIndex )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x000182_IDX_CombatTime, CombatTime + nTick )
	if NextSkillIndex < 1 then
		return
	end
	local Timer = CombatTime+nTick
	if Timer >= 11000 then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000182_IDX_CombatTime, 0 )
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000182_IDX_UseSkillIndex, 1 )
	elseif (Timer >=10000 and NextSkillIndex == 1) then
		LuaFnNpcChat(sceneId, selfId, 0, "Hãy nh§n sát khí này")
		local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
		for i=0, nHumanCount-1 do
			local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 and LuaFnIsCharacterLiving(sceneId, nHumanId) == 1 then
				local x,z = GetWorldPos( sceneId, selfId )
				LuaFnUnitUseSkill( sceneId, selfId, x000182_Skill, selfId, x, z, 0, 0 )
				MonsterAI_SetIntParamByIndex( sceneId, selfId, x000182_IDX_UseSkillIndex, NextSkillIndex+1 )
				break
			end

		end
	end
end

function x000182_OnEnterCombat(sceneId, selfId, enmeyId)
	LuaFnNpcChat(sceneId, selfId, 0, "TÕi hÕ là Lý Khôi xin ðßþc thïnh giáo")
	x000182_ResetMyAI( sceneId, selfId )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x000182_IDX_CombatFlag, 1 )
end

function x000182_OnLeaveCombat(sceneId, selfId)
	x000182_ResetMyAI( sceneId, selfId )
	--LuaFnDeleteMonster( sceneId, selfId )
end

function x000182_OnKillCharacter(sceneId, selfId, targetId)

end

function x000182_OnDie( sceneId, selfId, killerId )
	x000182_ResetMyAI( sceneId, selfId )
	local CheckStep = CallScriptFunction( x000182_g_FuBenScriptId, "CheckStep", sceneId )
	CallScriptFunction( x000182_g_FuBenScriptId, "NextStep", sceneId, CheckStep+1 )
end

function x000182_ResetMyAI( sceneId, selfId )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x000182_IDX_CombatTime, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x000182_IDX_UseSkillIndex, 1 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x000182_IDX_CombatFlag, 0 )
end
