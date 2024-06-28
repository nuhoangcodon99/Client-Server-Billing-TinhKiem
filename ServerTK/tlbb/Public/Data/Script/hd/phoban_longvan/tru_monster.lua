
x000624_g_ScriptId	= 000624
x000624_g_FuBenScriptId = 000618

--x000624_Skill			=	1320
--x000624_Buff			= 10500

x000624_IDX_CombatTime		= 1
--x000624_IDX_UseSkillIndex	= 2
x000624_IDX_CombatFlag 			= 1

function x000624_OnInit(sceneId, selfId)
	--x000624_ResetMyAI( sceneId, selfId )
end


function x000624_OnEnterCombat(sceneId, selfId, enmeyId)
	--x000624_ResetMyAI( sceneId, selfId )
	--MonsterAI_SetBoolParamByIndex( sceneId, selfId, x000624_IDX_CombatFlag, 1 )
end

function x000624_OnLeaveCombat(sceneId, selfId)
	--x000624_ResetMyAI( sceneId, selfId )
	--LuaFnDeleteMonster( sceneId, selfId )
end

function x000624_OnKillCharacter(sceneId, selfId, targetId)

end

function x000624_OnHeartBeat(sceneId, selfId, nTick)

	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x000624_IDX_CombatFlag ) then
		return
	end
end
function x000624_OnDie( sceneId, selfId, killerId )
	x000624_ResetMyAI( sceneId, selfId )
	local numTru = LuaFnGetCopySceneData_Param( sceneId, x000618_g_sotrukill)
	LuaFnSetCopySceneData_Param(sceneId,x000618_g_sotrukill,numTru+1)
	
	local show = numTru+1
	local text ="#WÐã phá hüy #Y"..show.."/9  #WLong Trø"
	x000624_TipAllHuman( sceneId,text)
	CallScriptFunction((200060), "Duibai",sceneId, "", "", "#G[Phøng Minh Vß½ng Lång]: #Y"..text)
	
	local x,z=GetWorldPos(sceneId, selfId)
	for i=1,9 do
		if x==x000618_g_LongTruList[i].x and z==x000618_g_LongTruList[i].z then
			LuaFnSetCopySceneData_Param( sceneId, 10+numTru,i)
			LuaFnSetCopySceneData_Param( sceneId,x000618_g_quaivuachet, i)
			break
		end
	end
	LuaFnSetCopySceneData_Param( sceneId, x000618_g_IDX_FuBenLifeStep,2)
	
	
end
function x000624_ResetMyAI( sceneId, selfId )
	--MonsterAI_SetIntParamByIndex( sceneId, selfId, x000624_IDX_CombatTime, 0 )
	--MonsterAI_SetIntParamByIndex( sceneId, selfId, x000624_IDX_UseSkillIndex, 1 )
	--MonsterAI_SetBoolParamByIndex( sceneId, selfId, x000624_IDX_CombatFlag, 0 )
end

function x000624_TipAllHuman( sceneId, Str )

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

