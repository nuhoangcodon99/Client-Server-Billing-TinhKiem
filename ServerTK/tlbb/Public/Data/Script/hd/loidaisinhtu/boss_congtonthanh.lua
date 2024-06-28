
x000185_g_ScriptId	= 000185

x000185_g_FuBenScriptId = 000180
x000185_Monster = {13469,13470,13471,13472,13473,13474}
x000185_Skill1			=	1321
x000185_Skill2			=	1322
x000185_Skill3			=	1323
x000185_Skill4			=	1324
x000185_Buff			=	10511
x000185_IDX_CombatTime		= 1
x000185_IDX_UseSkillIndex	= 2
x000185_IDX_TickTime		= 3
x000185_IDX_CombatFlag 			= 1
x000185_g_myLevel			= 8
x000185_g_iniLevel			= 9

function x000185_OnInit(sceneId, selfId)
	x000185_ResetMyAI( sceneId, selfId )
end


function x000185_OnHeartBeat(sceneId, selfId, nTick)

	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end
	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x000185_IDX_CombatFlag ) then
		return
	end
	local CombatTime = MonsterAI_GetIntParamByIndex( sceneId, selfId, x000185_IDX_CombatTime )
	local TickTime = MonsterAI_GetIntParamByIndex( sceneId, selfId, x000185_IDX_TickTime )
	local NextSkillIndex = MonsterAI_GetIntParamByIndex( sceneId, selfId, x000185_IDX_UseSkillIndex )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x000185_IDX_CombatTime, CombatTime + nTick )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x000185_IDX_TickTime, TickTime + nTick )
	if NextSkillIndex < 1 then
		return
	end
	local Timer = CombatTime+nTick
	local SkillTick = TickTime+nTick
	local CurPercent = GetHp( sceneId, selfId ) / GetMaxHp( sceneId, selfId )
	if CurPercent < 0.18 then
		if Timer >= 10000 then
			x000185_CreateBoss(sceneId, selfId)
			MonsterAI_SetIntParamByIndex( sceneId, selfId, x000185_IDX_CombatTime, 0 )
		elseif Timer >= 5000 then
			local Totalboss = 0
			local nMonsterNum = GetMonsterCount(sceneId)
			for i=0, nMonsterNum-1 do
				local MonsterId = GetMonsterObjID(sceneId,i)
				if GetName(sceneId, MonsterId) == "Công Tôn Thánh" then
					Totalboss = Totalboss+1
				end
			end
			if Totalboss < 2 then 
				x000185_CreateBoss(sceneId, selfId)
			end
			MonsterAI_SetIntParamByIndex( sceneId, selfId, x000185_IDX_CombatTime, 0 )
		end
	end
	if (SkillTick >=10000 and NextSkillIndex == 1) then
		local x,z = GetWorldPos( sceneId, selfId )
		LuaFnUnitUseSkill( sceneId, selfId, x000185_Skill2, selfId, x, z, 0, 0 )
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000185_IDX_UseSkillIndex, 2 )
	elseif (SkillTick >=20000 and NextSkillIndex == 2)  then
		local x,z = GetWorldPos( sceneId, selfId )
		LuaFnUnitUseSkill( sceneId, selfId, x000185_Skill3, selfId, x, z, 0, 0 )
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000185_IDX_UseSkillIndex, 3 )
	elseif (SkillTick >=30000 and NextSkillIndex == 3)  then
		local x,z = GetWorldPos( sceneId, selfId )
		LuaFnUnitUseSkill( sceneId, selfId, x000185_Skill4, selfId, x, z, 0, 0 )
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000185_IDX_UseSkillIndex, 1 )
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x000185_IDX_TickTime,  0 )
	end

end
function x000185_CreateBoss(sceneId, selfId)
LuaFnNpcChat(sceneId, selfId, 0, "#{SXRW_090630_122}")
	LuaFnUnitUseSkill( sceneId, selfId, x000185_Skill1, selfId, x, z, 0, 0 )
	local iniLevel = LuaFnGetCopySceneData_Param( sceneId, x000185_g_iniLevel ) - 6
	local myLevel = LuaFnGetCopySceneData_Param( sceneId, x000185_g_myLevel )
	local x,z = GetWorldPos( sceneId, selfId )
	local MstId = CallScriptFunction( x000185_g_FuBenScriptId, "CreateBOSS", sceneId, x000185_Monster[iniLevel],"Thiên Nhàn Tinh", myLevel, x+1, z+1, 0, 27, 0, 185 )
	LuaFnSendSpecificImpactToUnit( sceneId, MstId, MstId, MstId, x000185_Buff, 0 )
end
function x000185_OnEnterCombat(sceneId, selfId, enmeyId)
	LuaFnNpcChat(sceneId, selfId, 0, "TÕi hÕ là Công Tôn Thánh xin ðßþc thïnh giáo")
	x000185_ResetMyAI( sceneId, selfId )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x000185_IDX_CombatFlag, 1 )
end

function x000185_OnLeaveCombat(sceneId, selfId)
	x000185_ResetMyAI( sceneId, selfId )
--	LuaFnDeleteMonster( sceneId, selfId )
	
end

function x000185_OnKillCharacter(sceneId, selfId, targetId)

end

function x000185_OnDie( sceneId, selfId, killerId )
	x000185_ResetMyAI( sceneId, selfId )
	local Totalboss = 0
		local nMonsterNum = GetMonsterCount(sceneId)
		for i=0, nMonsterNum-1 do
			local MonsterId = GetMonsterObjID(sceneId,i)
			if GetName(sceneId, MonsterId) == "Công Tôn Thánh" then
				Totalboss = Totalboss+1
			end
		end
		if Totalboss < 2 then 
			local CheckStep = CallScriptFunction( x000185_g_FuBenScriptId, "CheckStep", sceneId )
			CallScriptFunction( x000185_g_FuBenScriptId, "NextStep", sceneId, CheckStep+1 )
			local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
			for i=0, nHumanNum-1  do
				local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
				if LuaFnIsObjValid( sceneId, PlayerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, PlayerId ) == 1 then
					AddMonsterDropItem( sceneId, selfId, PlayerId, 30505167 )
					local ran = random(1,12)
					if ran == 1 then AddMonsterDropItem( sceneId, selfId, PlayerId, 30700213 )
						elseif ran == 2 then AddMonsterDropItem( sceneId, selfId, PlayerId, 20310117 )
						elseif ran == 3 then AddMonsterDropItem( sceneId, selfId, PlayerId, 30900015 )
						elseif (ran == 4 or ran == 5 or ran == 6 or ran == 7) then AddMonsterDropItem( sceneId, selfId, PlayerId, 30505169 )
					end
				end
			end
		end
	SetCharacterDieTime( sceneId, selfId, 1000 )
end

function x000185_ResetMyAI( sceneId, selfId )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x000185_IDX_CombatTime, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x000185_IDX_UseSkillIndex, 1 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x000185_IDX_CombatFlag, 0 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x000185_IDX_BossFlag, 0 )
end
