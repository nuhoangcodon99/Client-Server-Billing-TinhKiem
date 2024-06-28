
x000183_g_ScriptId	= 000183

x000183_g_FuBenScriptId = 000180
x000183_SmallMonster = {13541,13542,13543,13544,13545,13546}
x000183_MonsterName ={"#RH°ng Trang T¯ Khöa", "#ccc33ccTØ Khí Ðông Lai", "#YHoàng Lß½ng MÛ Mµng"}
x000183_Buff_Boss			= 10504
x000183_Buff			= {10505,10506,10507}
x000183_Buff_Die		= 10503
x000183_g_myLevel			= 8
x000183_g_iniLevel			= 9

x000183_IDX_CombatTime		= 1
x000183_IDX_UseSkillIndex	= 2
x000183_IDX_CombatFlag 			= 1
x000183_IDX_MonsterFlag	= 2

function x000183_OnInit(sceneId, selfId)
	x000183_ResetMyAI( sceneId, selfId )
end


function x000183_OnHeartBeat(sceneId, selfId, nTick)

	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x000183_IDX_CombatFlag ) then
		return
	end


	local CombatTime = MonsterAI_GetIntParamByIndex( sceneId, selfId, x000183_IDX_CombatTime )
	local NextSkillIndex = MonsterAI_GetIntParamByIndex( sceneId, selfId, x000183_IDX_UseSkillIndex )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x000183_IDX_CombatTime, CombatTime + nTick )
	if NextSkillIndex < 1 then
		return
	end
	local Timer = CombatTime+nTick
	if (Timer >=10000 and NextSkillIndex == 1) then
		local iniLevel = LuaFnGetCopySceneData_Param( sceneId, x000180_g_iniLevel ) - 6
		local myLevel = LuaFnGetCopySceneData_Param( sceneId, x000180_g_myLevel )
		LuaFnNpcChat(sceneId, selfId, 0, "HÞi các Phøc Binh, hãy mau ra nghe hi®u l®nh cüa ta")
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x000183_Buff_Boss, 0 )
		local x,z = GetWorldPos( sceneId, selfId )
		for i=1, 3 do
			local MstId = CallScriptFunction( x000183_g_FuBenScriptId, "CreateBOSS", sceneId, x000183_SmallMonster[iniLevel],"", myLevel, x+i, z+i, 0, 27, 0, -1 )
			LuaFnSendSpecificImpactToUnit( sceneId, MstId, MstId, MstId, x000183_Buff[i], 0 )
			SetCharacterName( sceneId, MstId, x000183_MonsterName[i] )
		end
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000183_IDX_UseSkillIndex, 2 )
	elseif Timer >= 20000 and NextSkillIndex==2 then
		local nMonsterNum = GetMonsterCount(sceneId)
		local nsmall = MonsterAI_GetBoolParamByIndex( sceneId, selfId, x000183_IDX_MonsterFlag )
		for i=0, nMonsterNum-1 do
			local MonsterId = GetMonsterObjID(sceneId,i)
			if GetName(sceneId, MonsterId) == x000183_MonsterName[1] then
				LuaFnCancelSpecificImpact( sceneId, MonsterId, x000183_Buff[1] )
				LuaFnNpcChat(sceneId, selfId, 0, "Phøc Binh nghe hi®u l®nh cüa ta, H°ng Trang T¯ Khöa")
				MonsterAI_SetBoolParamByIndex( sceneId, selfId, x000183_IDX_MonsterFlag, nsmall+1 )
			elseif GetName(sceneId, MonsterId) == x000183_MonsterName[3] then
				LuaFnSendSpecificImpactToUnit( sceneId, MonsterId, MonsterId, MonsterId, x000183_Buff[3], 0 )
			end
		end
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000183_IDX_UseSkillIndex, 3 )
	elseif Timer >= 30000 and NextSkillIndex==3 then
		local nMonsterNum = GetMonsterCount(sceneId)
		local nsmall = MonsterAI_GetBoolParamByIndex( sceneId, selfId, x000183_IDX_MonsterFlag )
		for i=0, nMonsterNum-1 do
			local MonsterId = GetMonsterObjID(sceneId,i)
			if GetName(sceneId, MonsterId) == x000183_MonsterName[2] then
				LuaFnCancelSpecificImpact( sceneId, MonsterId, x000183_Buff[2] )
				LuaFnNpcChat(sceneId, selfId, 0, "Phøc Binh nghe hi®u l®nh cüa ta, TØ Khí Ðông Lai")
				MonsterAI_SetBoolParamByIndex( sceneId, selfId, x000183_IDX_MonsterFlag, nsmall+1 )
			elseif GetName(sceneId, MonsterId) == x000183_MonsterName[1] then
				LuaFnSendSpecificImpactToUnit( sceneId, MonsterId, MonsterId, MonsterId, x000183_Buff[1], 0 )
			end
		end
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000183_IDX_UseSkillIndex, 4 )
	elseif Timer >= 40000 and NextSkillIndex==4 then
		local nMonsterNum = GetMonsterCount(sceneId)
		local nsmall = MonsterAI_GetBoolParamByIndex( sceneId, selfId, x000183_IDX_MonsterFlag )
		for i=0, nMonsterNum-1 do
			local MonsterId = GetMonsterObjID(sceneId,i)
			if GetName(sceneId, MonsterId) == x000183_MonsterName[3] then
				LuaFnCancelSpecificImpact( sceneId, MonsterId, x000183_Buff[3] )
				LuaFnNpcChat(sceneId, selfId, 0, "Phøc Binh nghe hi®u l®nh cüa ta, Hoàng Lß½ng MÛ Mµng")
				MonsterAI_SetBoolParamByIndex( sceneId, selfId, x000183_IDX_MonsterFlag, nsmall+1 )
			elseif GetName(sceneId, MonsterId) == x000183_MonsterName[2] then
				LuaFnSendSpecificImpactToUnit( sceneId, MonsterId, MonsterId, MonsterId, x000183_Buff[2], 0 )
			end
		end
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000183_IDX_UseSkillIndex, 5 )
	elseif NextSkillIndex == 5 then
		if MonsterAI_GetBoolParamByIndex( sceneId, selfId, x000183_IDX_MonsterFlag ) ~= 0 then
			MonsterAI_SetIntParamByIndex( sceneId, selfId, x000183_IDX_UseSkillIndex, 2 )
			MonsterAI_SetIntParamByIndex( sceneId, selfId, x000183_IDX_CombatTime,  10001 )
		else
			MonsterAI_SetIntParamByIndex( sceneId, selfId, x000183_IDX_UseSkillIndex, 6 )
		end
		MonsterAI_SetBoolParamByIndex( sceneId, selfId, x000183_IDX_MonsterFlag, 0 )
	elseif NextSkillIndex == 6 then 
		LuaFnNpcChat(sceneId, selfId, 0, "Các ngß½i ðã phá vÞ phøc binh cüa ta, sÖ nhøc ta quá")
		LuaFnCancelSpecificImpact( sceneId, selfId, x000183_Buff_Boss )
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000183_IDX_UseSkillIndex, 1 )
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000183_IDX_CombatTime,  0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x000183_Buff_Die, 0 )
	end
end

function x000183_OnEnterCombat(sceneId, selfId, enmeyId)
	LuaFnNpcChat(sceneId, selfId, 0, "TÕi hÕ Ngô Vinh xin ðßþc thïnh giáo")
	x000183_ResetMyAI( sceneId, selfId )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x000183_IDX_CombatFlag, 1 )
end

function x000183_OnLeaveCombat(sceneId, selfId)
	x000183_ResetMyAI( sceneId, selfId )
	--LuaFnDeleteMonster( sceneId, selfId )
end

function x000183_OnKillCharacter(sceneId, selfId, targetId)

end

function x000183_OnDie( sceneId, selfId, killerId )
	x000183_ResetMyAI( sceneId, selfId )
	local CheckStep = CallScriptFunction( x000183_g_FuBenScriptId, "CheckStep", sceneId )
	CallScriptFunction( x000183_g_FuBenScriptId, "NextStep", sceneId, CheckStep+1 )
end

function x000183_ResetMyAI( sceneId, selfId )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x000183_IDX_CombatTime, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x000183_IDX_UseSkillIndex, 1 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x000183_IDX_CombatFlag, 0 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x000183_IDX_MonsterFlag, 0 )
end
