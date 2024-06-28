
x000191_g_ScriptId	= 000191

x000191_g_FuBenScriptId = 000180

x000191_Skill1			=	1325
x000191_Skill2			=	1326
x000191_Skill3			=	1327
x000191_Skill4			=	1328
x000191_Special1 ={123,124,125,126,127,128}
x000191_Special2			= 129
x000191_Special3			= 130
x000191_Special4			= 131
x000191_g_iniLevel			= 9


x000191_IDX_CombatTime		= 1
x000191_IDX_UseSkillIndex	= 2
x000191_IDX_CombatFlag 			= 1

function x000191_OnInit(sceneId, selfId)
	x000191_ResetMyAI( sceneId, selfId )
end


function x000191_OnHeartBeat(sceneId, selfId, nTick)

	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x000191_IDX_CombatFlag ) then
		return
	end


	local CombatTime = MonsterAI_GetIntParamByIndex( sceneId, selfId, x000191_IDX_CombatTime )
	local NextSkillIndex = MonsterAI_GetIntParamByIndex( sceneId, selfId, x000191_IDX_UseSkillIndex )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x000191_IDX_CombatTime, CombatTime + nTick )
	if NextSkillIndex < 1 then
		return
	end
	local Timer = CombatTime+nTick
	if (Timer >=10000 and NextSkillIndex == 1) or  (Timer >=35000 and NextSkillIndex == 4) then
		local iniLevel = LuaFnGetCopySceneData_Param( sceneId, x000191_g_iniLevel ) - 6
		LuaFnNpcChat(sceneId, selfId, 0, "#{SXRW_090630_123}")
		local x,z = GetWorldPos( sceneId, selfId )
		LuaFnUnitUseSkill( sceneId, selfId, x000191_Skill1, selfId, x, z, 0, 0 )
		CreateSpecialObjByDataIndex(sceneId, selfId, x000191_Special1[iniLevel], x+2, z, 0)
		CreateSpecialObjByDataIndex(sceneId, selfId, x000191_Special1[iniLevel], x-2, z, 0)
		--CreateSpecialObjByDataIndex(sceneId, selfId, x000191_Special1[iniLevel], x, z+2, 0)
		--CreateSpecialObjByDataIndex(sceneId, selfId, x000191_Special1[iniLevel], x, z-2, 0)
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000191_IDX_UseSkillIndex, NextSkillIndex+1 )
	elseif (Timer >=20000 and NextSkillIndex == 2)  then
		LuaFnNpcChat(sceneId, selfId, 0, "#{SXRW_090630_124}")
		local x,z = GetWorldPos( sceneId, selfId )
		LuaFnUnitUseSkill( sceneId, selfId, x000191_Skill2, selfId, x, z, 0, 0 )
		CreateSpecialObjByDataIndex(sceneId, selfId, x000191_Special2, x+2, z, 0)
		CreateSpecialObjByDataIndex(sceneId, selfId, x000191_Special2, x-2, z, 0)
		--CreateSpecialObjByDataIndex(sceneId, selfId, x000191_Special2, x, z+2, 0)
		--CreateSpecialObjByDataIndex(sceneId, selfId, x000191_Special2, x, z-2, 0)
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000191_IDX_UseSkillIndex, 3 )
	elseif (Timer >=30000 and NextSkillIndex == 3)  then
		LuaFnNpcChat(sceneId, selfId, 0, "#{SXRW_090630_125}")
		local x,z = GetWorldPos( sceneId, selfId )
		LuaFnUnitUseSkill( sceneId, selfId, x000191_Skill3, selfId, x, z, 0, 0 )
		CreateSpecialObjByDataIndex(sceneId, selfId, x000191_Special3, x+2, z, 0)
		CreateSpecialObjByDataIndex(sceneId, selfId, x000191_Special3, x-2, z, 0)
		--CreateSpecialObjByDataIndex(sceneId, selfId, x000191_Special3, x, z+2, 0)
		--CreateSpecialObjByDataIndex(sceneId, selfId, x000191_Special3, x, z-2, 0)
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000191_IDX_UseSkillIndex, 4 )
	elseif (Timer >=40000 and NextSkillIndex == 5)  then
		LuaFnNpcChat(sceneId, selfId, 0, "#{SXRW_090630_126}")
		local x,z = GetWorldPos( sceneId, selfId )
		LuaFnUnitUseSkill( sceneId, selfId, x000191_Skill4, selfId, x, z, 0, 0 )
		CreateSpecialObjByDataIndex(sceneId, selfId, x000191_Special4, x+2, z, 0)
		CreateSpecialObjByDataIndex(sceneId, selfId, x000191_Special4, x-2, z, 0)
		--CreateSpecialObjByDataIndex(sceneId, selfId, x000191_Special4, x, z+2, 0)
		--CreateSpecialObjByDataIndex(sceneId, selfId, x000191_Special4, x, z-2, 0)
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000191_IDX_CombatTime, 0 )
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000191_IDX_UseSkillIndex, 1 )
	end
end

function x000191_OnEnterCombat(sceneId, selfId, enmeyId)
	LuaFnNpcChat(sceneId, selfId, 0, "Hoa Dung xin ðßþc thïnh giáo")
	x000191_ResetMyAI( sceneId, selfId )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x000191_IDX_CombatFlag, 1 )
end

function x000191_OnLeaveCombat(sceneId, selfId)
	x000191_ResetMyAI( sceneId, selfId )
	--LuaFnDeleteMonster( sceneId, selfId )
end

function x000191_OnKillCharacter(sceneId, selfId, targetId)

end

function x000191_OnDie( sceneId, selfId, killerId )
	x000191_ResetMyAI( sceneId, selfId )
	local CheckStep = CallScriptFunction( x000191_g_FuBenScriptId, "CheckStep", sceneId )
	CallScriptFunction( x000191_g_FuBenScriptId, "NextStep", sceneId, CheckStep+1 )
end

function x000191_ResetMyAI( sceneId, selfId )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x000191_IDX_CombatTime, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x000191_IDX_UseSkillIndex, 1 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x000191_IDX_CombatFlag, 0 )
end
