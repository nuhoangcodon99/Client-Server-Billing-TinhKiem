-- 402254
-- 慕容复

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

-- 王语言开始点名的开关
x402254_g_bWangyuyanSpeak = 24
x402254_g_DuanAndWangFlag = 29

--**********************************
-- 自己死亡
--**********************************
function x402254_OnDie( sceneId, selfId, killerId )

	if YTO_ACTIVE==1 then
		local item_drop_kh = 30010080 -- ch鈔 nguy阯 ph醕h
		local str = format("#cff99cc#{_INFOUSR%s} c鵱g 鸢ng 鸬i t� xung h鎢 鸬t v緄 #Y [%s] #cff99cc. C� 鸬i to鄋 thg tr� v� 鸢ng th秈 c騨 nh 疬㧟 chi猲 l㱮 ph  #Y#{_ITEM"..item_drop_kh.."}", GetName(sceneId,killerId),GetName(sceneId,selfId))
		
		local Rate = random(100)
		if LuaFnHasTeam( sceneId, killerId ) == 0 then
			if Rate <= DROP_RATE_YTO then
				AddMonsterDropItem( sceneId, selfId, killerId, item_drop_kh )
				--thong bao he th痭g
				BroadMsgByChatPipe(sceneId, selfId, str, 4)
			end
		else
			local leaderObjId = killerId;
			local TeammateCount = GetTeamMemberCount( sceneId, leaderObjId )
			for i=0, TeammateCount-1  do
				local nPlayerId = GetNearTeamMember(sceneId,killerId, i)
				if Rate <= DROP_RATE_YTO then
					AddMonsterDropItem( sceneId, selfId, nPlayerId, item_drop_kh )
					--thong bao he th痭g
					BroadMsgByChatPipe(sceneId, selfId, str, 4)
				end
			end
		end
	end
	
	LuaFnNpcChat(sceneId, selfId, 0, "Nan 鹫o ng� 姓i Y阯 ph鴆 qu痗 b� nghi畃, chung c製 k� x韈h th� ho鄋 l呓ng nh m祅g ?")
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerPrepare, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402254_TBL.IDX_FlagCombat, 0)

	-- 停止点名
	LuaFnSetCopySceneData_Param(sceneId, x402254_g_bWangyuyanSpeak, 0)
	
	LuaFnSetCopySceneData_Param(sceneId, x402254_g_DuanAndWangFlag, 0)
	
	-- 删除段誉语嫣等人
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "V呓ng Ng� Y阯")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "衞鄋 D�")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Ba Thi阯 Th誧h")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Ph誱 Hoa")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Ch� V課 L�")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "C� 携c Th鄋h")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Ph� T� Qui")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Chu 衋n Th")
	
	x402254_TipAllHuman( sceneId, "M� Dung Ph鴆 疸 b� 疳nh b読, th鋙 ph誸 Y猲 T� � th鄋h c鬾g, quay v� Th醝 H�" )
	
	--LuaFnDeleteMonster(sceneId, selfId)
	
	-- 发世界公告
--#w【队长名】#cff99cc与#{_BOSS0}单挑，却暗使队友在其身后砸板砖、使绊子、敲闷棍、洒石灰……无所不用，终于将#{_BOSS0}打得大败，落荒而逃，一举攻下了Y猲 T� 浴�
--#w【队长名】#cff99cc率领队友与#{_BOSS0}酣战半日，忽而领悟到武学的真谛，顿时武功暴涨，#{_BOSS0}抵敌不过，只得落荒而逃，Y猲 T� 运煜荨�
--#w【队长名】#cff99cc在Y猲 T� 缘鞅步顺镝♂ⅲ谑褂昧寺魈旃＃刀瘸虏值热浦螅虻�#{_BOSS0}只得使用第三十七计逃之夭夭了。
	
	local playerID = killerId
	local objType = GetCharacterType( sceneId, killerId )
	if objType == 3 then
		playerID = GetPetCreator( sceneId, killerId )
	end
		--如果组了队则获取队长的ID....
	local nLeaderId = GetTeamLeader(sceneId, playerID)
	if nLeaderId < 1   then
		nLeaderId = playerID
	end
	local str = ""
	local ran = random(3)
	if ran == 1  then
		str = format("#W#{_INFOUSR%s}#cff99cc c鵱g #{_BOSS0} 餫ng c鵱g nhau so t鄆 n礽 l馽. #{_BOSS0} do b� mu瞚 ch韈h n阯 th th� 疣nh b� m課g.", GetName(sceneId,nLeaderId))
	elseif ran == 2  then
		str = format("#W#{_INFOUSR%s}#cff99cc d鵱g s裞 kh鬾g chi猲 l読 #{_BOSS0} b鑞 th醕h th裞 #{_BOSS0} ch絠 o莕 t� t�. Do th鬾g minh n阯 cu痠 c鵱g 疸 chi猲 thg !", GetName(sceneId,nLeaderId))
	else
		str = format("#W#{_INFOUSR%s}#cff99cc c鵱g 鸢ng 鸬i quy猼 tr t� chi猲 v緄 #{_BOSS0} v� 疸 gi鄋h 疬㧟 thg l㱮 to l緉.", GetName(sceneId,nLeaderId))
	end
	
	BroadMsgByChatPipe(sceneId, nLeaderId, str, 4)
	
	
end

--**********************************
-- 心跳
--**********************************
function x402254_OnHeartBeat(sceneId, selfId, nTick)

	-- 当慕容复血量掉到50%的时候，让 王语嫣 点名，同时段誉佯攻
	if(1==LuaFnIsCharacterLiving(sceneId, selfId)) then
		if(1==MonsterAI_GetBoolParamByIndex(sceneId, selfId, x402254_TBL.IDX_FlagCombat)) then
			--PrintNum(1)
			-- 如果 慕容复 血少于多少，就怎么样子
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
--						LuaFnNpcChat(sceneId, selfId, 0, "尝尝浔阳江上的烈焰吧！")
--					end
--				end
--			end
--		end
--	end
end

--**********************************
-- 初始化
--**********************************
function x402254_OnInit(sceneId, selfId)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerPrepare, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402254_TBL.IDX_FlagCombat, 0)
end

--**********************************
-- 杀死玩家
--**********************************
function x402254_OnKillCharacter(sceneId, selfId, targetId)
--	if(-1~=targetId) then
--		local szTarget = GetName(sceneId, targetId)
--		LuaFnNpcChat(sceneId, selfId, 0, szTarget .. "，你就算再厉害十倍，遇上爷爷也只有死路一条！")
--	end
end

--**********************************
-- 进入战斗
--**********************************
function x402254_OnEnterCombat(sceneId, selfId, enmeyId)
	if(0<x402254_TBL.BossBuff) then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x402254_TBL.BossBuff, 0)
	end
	
	-- 进入战斗状态，
	LuaFnNpcChat(sceneId, selfId, 0, "Ha ha ha. cho d� ng呓i tu luy畁 10 n錷 n鎍 m� g ta th� c鹡g ch� c� con 疬秐g ch猼 m� th鬷")
	
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerPrepare, x402254_TBL.PrepareTime)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402254_TBL.IDX_FlagCombat, 1)
	
	CallScriptFunction((200060), "Paopao",sceneId, "衞鄋 D�", "Y猲 T� �", "V呓ng C� N呓ng, n猽 c� nguy hi琺, h銀 瓞 t読 h� 餴 馥u ti阯 瓞 b鋙 v� c� n呓ng")
	CallScriptFunction((200060), "Paopao",sceneId, "V呓ng Ng� Y阯", "Y猲 T� �", "Bi瑄 ca kh鬾g di, mu礽 s� kh鬾g 餴 疴u h猼, mu礽 s� � l読 c鵱g bi瑄 ca")

end

--**********************************
-- 脱离战斗
--**********************************
function x402254_OnLeaveCombat(sceneId, selfId)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerPrepare, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402254_TBL.IDX_FlagCombat, 0)

	-- 删除段誉语嫣等人
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "V呓ng Ng�  Y阯")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "衞鄋 D�")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Ba Thi阯 Th誧h")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Ph誱 Hoa")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Ch� V課 L�")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "C� 携c Th鄋h")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Ph� T� Quy")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Chu 衋n Th")

	-- 从新在场景中生成这些Npc
	CallScriptFunction((401040), "CreateMonster_11",sceneId)

	-- 停止点名
	LuaFnSetCopySceneData_Param(sceneId, x402254_g_bWangyuyanSpeak, 0)
	LuaFnSetCopySceneData_Param(sceneId, x402254_g_DuanAndWangFlag, 0)
end

--**********************************
--提示所有副本内玩家
--**********************************
function x402254_TipAllHuman( sceneId, Str )
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
