-- 005119
-- ����BOSS����2
-- ���ݱ�
--id monster: 885 H�n Giang Long
x005119_TBL = 
{
IDX_TimerPrepare = 1,
IDX_TimerInterval = 2,
IDX_FlagCombat = 1,
BossSkill = 1006,
PrepareTime = 45000,
SkillInterval = 60000,
BossBuff = 9999
}


function x005119_OnDie( sceneId, selfId, killerId )

	if KINHHO_ACTIVE==1 then
		local item_drop_kh = 30010081 -- ch�n nguy�n tinh ph�ch
		local str = format("#cff99cc#{_INFOUSR%s} c�ng �ng �i t� xung h�u �t v�i #Y [%s] #cff99cc. C� �i to�n th�ng tr� v� �ng th�i c�n nh�n ���c chi�n l�i ph�m  #Y#{_ITEM"..item_drop_kh.."}", GetName(sceneId,killerId),GetName(sceneId,selfId))
		
		local Rate = random(100)
		if LuaFnHasTeam( sceneId, killerId ) == 0 then
			if Rate <= DROP_RATE_KINHHO then
				AddMonsterDropItem( sceneId, selfId, killerId, item_drop_kh )
				--thong bao he th�ng
				BroadMsgByChatPipe(sceneId, selfId, str, 4)
				
			end
		else
			local leaderObjId = killerId;
			local TeammateCount = GetTeamMemberCount( sceneId, leaderObjId )
			for i=0, TeammateCount-1  do
				local nPlayerId = GetNearTeamMember(sceneId,killerId, i)
				if Rate <= DROP_RATE_KINHHO then
					AddMonsterDropItem( sceneId, selfId, nPlayerId, item_drop_kh )
					--thong bao he th�ng
					BroadMsgByChatPipe(sceneId, selfId, str, 4)
				end
			end
		end
	end

	MonsterAI_SetIntParamByIndex(sceneId, selfId, x005119_TBL.IDX_TimerPrepare, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x005119_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x005119_TBL.IDX_FlagCombat, 0)
end

function x005119_OnHeartBeat(sceneId, selfId, nTick)
	if(1==LuaFnIsCharacterLiving(sceneId, selfId)) then
		if(1==MonsterAI_GetBoolParamByIndex(sceneId, selfId, x005119_TBL.IDX_FlagCombat)) then
			--Countdown TimerPrepare
			local TimePrepare = MonsterAI_GetIntParamByIndex(sceneId, selfId, x005119_TBL.IDX_TimerPrepare)
			if(0<TimePrepare) then
				TimePrepare = TimePrepare - nTick;
				MonsterAI_SetIntParamByIndex(sceneId, selfId, x005119_TBL.IDX_TimerPrepare, TimePrepare)
			else
				local TimeInterval = MonsterAI_GetIntParamByIndex(sceneId, selfId, x005119_TBL.IDX_TimerInterval)
				if(0<TimeInterval) then
					--Countdown TimerInterval
					TimeInterval = TimeInterval - nTick;
					MonsterAI_SetIntParamByIndex(sceneId, selfId, x005119_TBL.IDX_TimerInterval, TimeInterval)
				else
					MonsterAI_SetIntParamByIndex(sceneId, selfId, x005119_TBL.IDX_TimerInterval, x005119_TBL.SkillInterval)
					local nTarget = LuaFnGetTargetObjID(sceneId, selfId)
					if(-1~=nTarget) then
						local posX, posZ = GetWorldPos(sceneId,nTarget)
						local fDir = 0.0
						LuaFnUnitUseSkill(sceneId, selfId, x005119_TBL.BossSkill, nTarget, posX, posZ, fDir)			
					end
				end
			end
		end
	end
end

function x005119_OnInit(sceneId, selfId)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x005119_TBL.IDX_TimerPrepare, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x005119_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x005119_TBL.IDX_FlagCombat, 0)
end

function x005119_OnKillCharacter(sceneId, selfId, targetId)
end

function x005119_OnEnterCombat(sceneId, selfId, enmeyId)
	if(0<x005119_TBL.BossBuff) then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x005119_TBL.BossBuff, 0)
	end
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x005119_TBL.IDX_TimerPrepare, x005119_TBL.PrepareTime)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x005119_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x005119_TBL.IDX_FlagCombat, 1)
end

function x005119_OnLeaveCombat(sceneId, selfId)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x005119_TBL.IDX_TimerPrepare, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x005119_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x005119_TBL.IDX_FlagCombat, 0)
end
