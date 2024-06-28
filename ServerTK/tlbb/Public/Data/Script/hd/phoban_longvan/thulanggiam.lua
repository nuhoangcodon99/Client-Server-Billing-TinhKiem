x000623_g_FuBenScriptId = 000618
x000623_g_ScriptId	= 000623
x000623_g_CopySceneType = FUBEN_LONGVAN
x000623_IDX_CombatTime		= 1
x000623_IDX_UseSkillIndex	= 2
x000623_IDX_CombatFlag 			= 1
x000623_g_Pos = {{left={39,39},right={56,56}}}

function x000623_OnInit(sceneId, selfId)
	x000623_ResetMyAI( sceneId, selfId )
end


function x000623_OnEnterCombat(sceneId, selfId, enmeyId)
		x000623_ResetMyAI( sceneId, selfId )
		MonsterAI_SetBoolParamByIndex( sceneId, selfId, x000623_IDX_CombatFlag, 1 )
end

function x000623_OnLeaveCombat(sceneId, selfId)
	x000623_ResetMyAI( sceneId, selfId )
	--LuaFnDeleteMonster( sceneId, selfId )
end

function x000623_OnKillCharacter(sceneId, selfId, targetId)

end
function x000623_OnHeartBeat(sceneId, selfId, nTick)
	--x000623_TipAllHuman(sceneId,"OnHeartBeat")
	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end
	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x000623_IDX_CombatTime ) then
		-- return
	end
	local flag = MonsterAI_GetIntParamByIndex( sceneId, selfId, x000623_IDX_CombatTime )
	if flag >= 2000 then
		--LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 2773, 0 ) --2% hp
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 2781, 0 ) --10% hp
		
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000623_IDX_CombatTime, 0 )
		local text ="Boss Thú Lång Giám ðang liên tøc phøc h°i máu. Mau kéo h¡n tr· lÕi ði¬m xu¤t hi®n!!"
		x000623_TipAllHuman(sceneId,text)
	end
	--local x,z = GetWorldPos( sceneId, selfId )
	local posX,posZ = GetWorldPos(sceneId, selfId)
	for i = 1, getn( x000623_g_Pos ) do
		if x000623_g_Pos[i].left[1] <= posX and posX <= x000623_g_Pos[i].right[1] and x000623_g_Pos[i].left[2] <= posZ and posZ <= x000623_g_Pos[i].right[2] then  
		else
			--LuaFnUnitUseSkill( sceneId, selfId, 1435, selfId, posX, posZ, 0, 0 )
			--x000623_TipAllHuman(sceneId,"OnEnterCombat"..flag)
			flag = MonsterAI_GetIntParamByIndex( sceneId, selfId, x000623_IDX_CombatTime )
			MonsterAI_SetIntParamByIndex( sceneId, selfId, x000623_IDX_CombatTime, flag+nTick )
		end
	end
end
function x000623_OnDie( sceneId, selfId, killerId )
	x000623_ResetMyAI( sceneId, selfId )
	LuaFnSetCopySceneData_Param( sceneId, x000618_g_bosscuoi,1) --set biªn boss ðã die
	CallScriptFunction( x000623_g_FuBenScriptId, "TaoDongRuong", sceneId)
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		AddMonsterDropItem( sceneId, selfId, PlayerId, 20309019 )--r½i ra chìa khóa
		--LuaFnSetCopySceneData_Param( sceneId, x000618_g_IDX_FuBenLifeStep,27 ) --hd comment 30/06
	end
end
function x000623_ResetMyAI( sceneId, selfId )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x000623_IDX_CombatTime, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x000623_IDX_UseSkillIndex, 1 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x000623_IDX_CombatFlag, 0 )
end

function x000623_TipAllHuman( sceneId, Str )

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
		