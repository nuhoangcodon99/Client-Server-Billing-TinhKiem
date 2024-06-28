
x000626_g_ScriptId	= 000626
x000626_g_FuBenScriptId = 000618

--x000626_Skill			=	1320
--x000626_Buff			= 10500

x000626_IDX_CombatTime		= 1
--x000626_IDX_UseSkillIndex	= 2
x000626_IDX_CombatFlag 			= 1

function x000626_OnInit(sceneId, selfId)
	x000626_ResetMyAI( sceneId, selfId )
end

function x000626_OnHeartBeat(sceneId, selfId, nTick)

	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x000626_IDX_CombatFlag ) then
		return
	end
end
function x000626_OnEnterCombat(sceneId, selfId, enmeyId)
	x000626_ResetMyAI( sceneId, selfId )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x000626_IDX_CombatFlag, 1 )
end

function x000626_OnLeaveCombat(sceneId, selfId)
	x000626_ResetMyAI( sceneId, selfId )
	--LuaFnDeleteMonster( sceneId, selfId )
end

function x000626_OnKillCharacter(sceneId, selfId, targetId)

end

function x000626_OnDie( sceneId, selfId, killerId )
	local iniLevel = LuaFnGetCopySceneData_Param( sceneId, x000618_g_iniLevel )
	local check = x000626_CheckBOSS(sceneId, BOSSList_boss_hantuong[iniLevel-7].mID1)
	local updatestep =LuaFnGetCopySceneData_Param( sceneId, x000618_g_IDX_FuBenLifeStep)
	if check~= -1 then

		local CheckStep = CallScriptFunction( x000626_g_FuBenScriptId, "CheckStep", sceneId )
		CallScriptFunction( x000626_g_FuBenScriptId, "NextStep", sceneId, CheckStep+1 )

	end
end

function x000626_ResetMyAI( sceneId, selfId )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x000626_IDX_CombatTime, 0 )
	--MonsterAI_SetIntParamByIndex( sceneId, selfId, x000626_IDX_UseSkillIndex, 1 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x000626_IDX_CombatFlag, 0 )
end
function x000626_CheckBOSS(sceneId, bossId)
	local nNpcId = -1
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,i)		
		if GetMonsterDataID( sceneId, nMonsterId ) == bossId  then
			nNpcId = nMonsterId
		end
	end
	return nNpcId
end

function x000626_TipAllHuman( sceneId, Str )

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
