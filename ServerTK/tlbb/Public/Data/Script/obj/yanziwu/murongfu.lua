-- 402254
-- Ľ�ݸ�

x402254_TBL = 
{
IDX_TimerPrepare = 1,
IDX_TimerInterval = 2,
IDX_FlagCombat = 1,
BossSkill = 1002,
PrepareTime = 60000,
SkillInterval = 60000,
BossBuff = 9998
}

-- �����Կ�ʼ�����Ŀ���
x402254_g_bWangyuyanSpeak = 24
x402254_g_DuanAndWangFlag = 29

--**********************************
-- �Լ�����
--**********************************
function x402254_OnDie( sceneId, selfId, killerId )

	if YTO_ACTIVE==1 then
		local item_drop_kh = 30010080 -- ch�n nguy�n ph�ch
		local str = format("#cff99cc#{_INFOUSR%s} c�ng �ng �i t� xung h�u �t v�i #Y [%s] #cff99cc. C� �i to�n th�ng tr� v� �ng th�i c�n nh�n ���c chi�n l�i ph�m  #Y#{_ITEM"..item_drop_kh.."}", GetName(sceneId,killerId),GetName(sceneId,selfId))
		
		local Rate = random(100)
		if LuaFnHasTeam( sceneId, killerId ) == 0 then
			if Rate <= DROP_RATE_YTO then
				AddMonsterDropItem( sceneId, selfId, killerId, item_drop_kh )
				--thong bao he th�ng
				BroadMsgByChatPipe(sceneId, selfId, str, 4)
			end
		else
			local leaderObjId = killerId;
			local TeammateCount = GetTeamMemberCount( sceneId, leaderObjId )
			for i=0, TeammateCount-1  do
				local nPlayerId = GetNearTeamMember(sceneId,killerId, i)
				if Rate <= DROP_RATE_YTO then
					AddMonsterDropItem( sceneId, selfId, nPlayerId, item_drop_kh )
					--thong bao he th�ng
					BroadMsgByChatPipe(sceneId, selfId, str, 4)
				end
			end
		end
	end
	
	LuaFnNpcChat(sceneId, selfId, 0, "Nan ��o ng� ��i Y�n ph�c qu�c b� nghi�p, chung c�u k� x�ch th� ho�n l߽ng nh�t m�ng ?")
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerPrepare, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402254_TBL.IDX_FlagCombat, 0)

	-- ֹͣ����
	LuaFnSetCopySceneData_Param(sceneId, x402254_g_bWangyuyanSpeak, 0)
	
	LuaFnSetCopySceneData_Param(sceneId, x402254_g_DuanAndWangFlag, 0)
	
	-- ɾ���������̵���
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "V߽ng Ng� Y�n")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "�o�n D�")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Ba Thi�n Th�ch")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Ph�m Hoa")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Ch� V�n L�")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "C� Яc Th�nh")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Ph� T� Qui")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Chu �an Th�n")
	
	x402254_TipAllHuman( sceneId, "M� Dung Ph�c �� b� ��nh b�i, th�o ph�t Y�n T� � th�nh c�ng, quay v� Th�i H�" )
	
	--LuaFnDeleteMonster(sceneId, selfId)
	
	-- �����繫��
--#w���ӳ�����#cff99cc��#{_BOSS0}������ȴ��ʹ������������Ұ�ש��ʹ���ӡ����ƹ�����ʯ�ҡ����������ã����ڽ�#{_BOSS0}��ô�ܣ���Ķ��ӣ�һ�ٹ�����Y�n T� ԡ�
--#w���ӳ�����#cff99cc���������#{_BOSS0}��ս���գ�����������ѧ�����У���ʱ�书���ǣ�#{_BOSS0}�ֵв�����ֻ����Ķ��ӣ�Y�n T� ����ݡ�
--#w���ӳ�����#cff99cc��Y�n T� Ե���ǲ�����˳��ᢣ���ʹ����������������ȳ²ֵ���ʮ����֮�󣬴��#{_BOSS0}ֻ��ʹ�õ���ʮ�߼���֮زز�ˡ�
	
	local playerID = killerId
	local objType = GetCharacterType( sceneId, killerId )
	if objType == 3 then
		playerID = GetPetCreator( sceneId, killerId )
	end
		--������˶����ȡ�ӳ���ID....
	local nLeaderId = GetTeamLeader(sceneId, playerID)
	if nLeaderId < 1   then
		nLeaderId = playerID
	end
	local str = ""
	local ran = random(3)
	if ran == 1  then
		str = format("#W#{_INFOUSR%s}#cff99cc c�ng #{_BOSS0} �ang c�ng nhau so t�i n�i l�c. #{_BOSS0} do b� mu�i ch�ch n�n th�t th� ��nh b� m�ng.", GetName(sceneId,nLeaderId))
	elseif ran == 2  then
		str = format("#W#{_INFOUSR%s}#cff99cc d�ng s�c kh�ng chi�n l�i #{_BOSS0} b�n th�ch th�c #{_BOSS0} ch�i o�n t� t�. Do th�ng minh n�n cu�i c�ng �� chi�n th�ng !", GetName(sceneId,nLeaderId))
	else
		str = format("#W#{_INFOUSR%s}#cff99cc c�ng �ng �i quy�t tr�n t� chi�n v�i #{_BOSS0} v� �� gi�nh ���c th�ng l�i to l�n.", GetName(sceneId,nLeaderId))
	end
	
	BroadMsgByChatPipe(sceneId, nLeaderId, str, 4)
	
	
end

--**********************************
-- ����
--**********************************
function x402254_OnHeartBeat(sceneId, selfId, nTick)

	-- ��Ľ�ݸ�Ѫ������50%��ʱ���� ������ ������ͬʱ������
	if(1==LuaFnIsCharacterLiving(sceneId, selfId)) then
		if(1==MonsterAI_GetBoolParamByIndex(sceneId, selfId, x402254_TBL.IDX_FlagCombat)) then
			--PrintNum(1)
			-- ��� Ľ�ݸ� Ѫ���ڶ��٣�����ô����
			if LuaFnGetCopySceneData_Param(sceneId, x402254_g_bWangyuyanSpeak) == 0  then
				if GetHp(sceneId, selfId)*2 <= GetMaxHp(sceneId, selfId) then
					LuaFnSetCopySceneData_Param(sceneId, x402254_g_bWangyuyanSpeak, 1)
				end
			end
		else
			--PrintNum(2)
		end
	end

--	if(1==LuaFnIsCharacterLiving(sceneId, selfId)) then
--		if(1==MonsterAI_GetBoolParamByIndex(sceneId, selfId, x402254_TBL.IDX_FlagCombat)) then
--			--Countdown TimerPrepare
--			local TimePrepare = MonsterAI_GetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerPrepare)
--			if(0<TimePrepare) then
--				TimePrepare = TimePrepare - nTick;
--				MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerPrepare, TimePrepare)
--			else
--				local TimeInterval = MonsterAI_GetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval)
--				if(0<TimeInterval) then
--					--Countdown TimerInterval
--					TimeInterval = TimeInterval - nTick;
--					MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval, TimeInterval)
--				else
--					MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval, x402254_TBL.SkillInterval)
--					local nTarget = LuaFnGetTargetObjID(sceneId, selfId)
--					if(-1~=nTarget) then
--						local posX, posZ = GetWorldPos(sceneId,nTarget)
--						local fDir = 0.0
--						LuaFnUnitUseSkill(sceneId, selfId, x402254_TBL.BossSkill, nTarget, posX, posZ, fDir)			
--						LuaFnNpcChat(sceneId, selfId, 0, "����������ϵ�����ɣ�")
--					end
--				end
--			end
--		end
--	end
end

--**********************************
-- ��ʼ��
--**********************************
function x402254_OnInit(sceneId, selfId)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerPrepare, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402254_TBL.IDX_FlagCombat, 0)
end

--**********************************
-- ɱ�����
--**********************************
function x402254_OnKillCharacter(sceneId, selfId, targetId)
--	if(-1~=targetId) then
--		local szTarget = GetName(sceneId, targetId)
--		LuaFnNpcChat(sceneId, selfId, 0, szTarget .. "�������������ʮ��������үүҲֻ����·һ����")
--	end
end

--**********************************
-- ����ս��
--**********************************
function x402254_OnEnterCombat(sceneId, selfId, enmeyId)
	if(0<x402254_TBL.BossBuff) then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x402254_TBL.BossBuff, 0)
	end
	
	-- ����ս��״̬��
	LuaFnNpcChat(sceneId, selfId, 0, "Ha ha ha. cho d� ng߽i tu luy�n 10 n�m n�a m� g�p ta th� c�ng ch� c� con �߶ng ch�t m� th�i")
	
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerPrepare, x402254_TBL.PrepareTime)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402254_TBL.IDX_FlagCombat, 1)
	
	CallScriptFunction((200060), "Paopao",sceneId, "�o�n D�", "Y�n T� �", "V߽ng C� N߽ng, n�u c� nguy hi�m, h�y � t�i h� �i �u ti�n � b�o v� c� n߽ng")
	CallScriptFunction((200060), "Paopao",sceneId, "V߽ng Ng� Y�n", "Y�n T� �", "Bi�u ca kh�ng di, mu�i s� kh�ng �i ��u h�t, mu�i s� � l�i c�ng bi�u ca")

end

--**********************************
-- ����ս��
--**********************************
function x402254_OnLeaveCombat(sceneId, selfId)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerPrepare, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402254_TBL.IDX_FlagCombat, 0)

	-- ɾ���������̵���
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "V߽ng Ng�  Y�n")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "�o�n D�")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Ba Thi�n Th�ch")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Ph�m Hoa")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Ch� V�n L�")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "C� Яc Th�nh")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Ph� T� Quy")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Chu �an Th�n")

	-- �����ڳ�����������ЩNpc
	CallScriptFunction((401040), "CreateMonster_11",sceneId)

	-- ֹͣ����
	LuaFnSetCopySceneData_Param(sceneId, x402254_g_bWangyuyanSpeak, 0)
	LuaFnSetCopySceneData_Param(sceneId, x402254_g_DuanAndWangFlag, 0)
end

--**********************************
--��ʾ���и��������
--**********************************
function x402254_TipAllHuman( sceneId, Str )
	-- ��ó�����ͷ��������
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- û���˵ĳ�����ʲô������
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
