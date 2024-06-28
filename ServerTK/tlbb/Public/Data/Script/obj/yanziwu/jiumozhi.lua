-- 402248
-- 鸠摩智

x402248_TBL = 
{
IDX_TimerPrepare = 1,
IDX_TimerInterval = 2,
IDX_FlagCombat = 1,
BossSkill = 1002,
PrepareTime = 60000,
SkillInterval = 60000,
BossBuff = 9999
}

function x402248_OnDie( sceneId, selfId, killerId )
	--LuaFnNpcChat(sceneId, selfId, 0, "十八年后，爷爷我又是一条好汉！")
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerPrepare, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402248_TBL.IDX_FlagCombat, 0)

	local szNpcName = GetName(sceneId, selfId)

	if szNpcName == "Di陁 B� D呓ng"  then
		LuaFnNpcChat(sceneId, selfId, 0, "M叨i t醡 n錷 sau, gia gia ta v鏽 l� m祎 h鋙 h醤 !")
		x402248_ClearMonsterByName(sceneId, "T Gia Tr読 Th鈔 Binh")
		x402248_TipAllHuman( sceneId, "Di陁 B� D呓ng 疸 b読 tr, th� h� 疣o tho醫 t醤 lo課." )
		
	elseif szNpcName == "T� M� L鈓"  then
		LuaFnNpcChat(sceneId, selfId, 0, "M叨i t醡 n錷 sau, gia gia ta v鏽 l� m祎 h鋙 h醤 !")
		x402248_ClearMonsterByName(sceneId, "Thanh Th鄋h Ph醝 挟 T�")
		x402248_TipAllHuman( sceneId, "T� M� L鈓 疸 b読 tr, th� h� 疣o tho醫 t醤 lo課." )
		
	elseif szNpcName == "C遳 Ma Tr�"  then
		LuaFnNpcChat(sceneId, selfId, 0, "T叻ng b 疳o trung nguy阯 v� l鈓 ng鱝 h� t鄋g long, c醤h h鎢 nh� th� cao th�")
		x402248_ClearMonsterByName(sceneId, "Th� Ph皀 L誸 Ma")
		x402248_ClearMonsterByName(sceneId, "M� Nh鈔 Kh瞚 L瞚")
		x402248_TipAllHuman( sceneId, "C遳 Ma Tr� 疸 b読 tr, th� h� 疣o tho醫 t醤 lo課." )
		
		if LuaFnGetCopySceneData_Param(sceneId, 8) == 12  then
			LuaFnSetCopySceneData_Param(sceneId, 8, 14)
			-- 给副本内的玩家一个任务成功或者失败的提示
		end
	end
	
	-- 检测目前的副本进度

end

function x402248_OnHeartBeat(sceneId, selfId, nTick)
--	if(1==LuaFnIsCharacterLiving(sceneId, selfId)) then
--		if(1==MonsterAI_GetBoolParamByIndex(sceneId, selfId, x402248_TBL.IDX_FlagCombat)) then
--			--Countdown TimerPrepare
--			local TimePrepare = MonsterAI_GetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerPrepare)
--			if(0<TimePrepare) then
--				TimePrepare = TimePrepare - nTick;
--				MonsterAI_SetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerPrepare, TimePrepare)
--			else
--				local TimeInterval = MonsterAI_GetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerInterval)
--				if(0<TimeInterval) then
--					--Countdown TimerInterval
--					TimeInterval = TimeInterval - nTick;
--					MonsterAI_SetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerInterval, TimeInterval)
--				else
--					MonsterAI_SetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerInterval, x402248_TBL.SkillInterval)
--					local nTarget = LuaFnGetTargetObjID(sceneId, selfId)
--					if(-1~=nTarget) then
--						local posX, posZ = GetWorldPos(sceneId,nTarget)
--						local fDir = 0.0
--						LuaFnUnitUseSkill(sceneId, selfId, x402248_TBL.BossSkill, nTarget, posX, posZ, fDir)			
--						LuaFnNpcChat(sceneId, selfId, 0, "尝尝浔阳江上的烈焰吧！")
--					end
--				end
--			end
--		end
--	end
end

function x402248_OnInit(sceneId, selfId)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerPrepare, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402248_TBL.IDX_FlagCombat, 0)
end

function x402248_OnKillCharacter(sceneId, selfId, targetId)
--	if(-1~=targetId) then
--		local szTarget = GetName(sceneId, targetId)		
--		LuaFnNpcChat(sceneId, selfId, 0, szTarget .. "，你就算再厉害十倍，遇上爷爷也只有死路一条！")
--	end
end

function x402248_OnEnterCombat(sceneId, selfId, enmeyId)
--	if(0<x402248_TBL.BossBuff) then
--		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x402248_TBL.BossBuff, 0)
--	end
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerPrepare, x402248_TBL.PrepareTime)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402248_TBL.IDX_FlagCombat, 1)
end

function x402248_OnLeaveCombat(sceneId, selfId)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerPrepare, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402248_TBL.IDX_FlagCombat, 0)
end


--**********************************
-- 清除场景内的XX怪
--**********************************
function x402248_ClearMonsterByName(sceneId, szName)
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,i)
		if GetName(sceneId, nMonsterId)== szName  then
			LuaFnDeleteMonster(sceneId, nMonsterId)
		end
	end
end

--**********************************
--提示所有副本内玩家
--**********************************
function x402248_TipAllHuman( sceneId, Str )
	-- 获得场景里头的所有人
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- 没有人的场景，什么都不做
	if nHumanNum < 1 then
		return
	end
	
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		BeginEvent(sceneId)
			AddText(sceneId, Str)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId, PlayerId)
	end
end
