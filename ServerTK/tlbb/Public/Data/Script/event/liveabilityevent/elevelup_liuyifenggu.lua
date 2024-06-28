--六艺风骨技能升c

--脚本号
x713596_g_ScriptId = 713596

--此npc可以升到to� 鸬 最高等c
x713596_g_nMaxLevel = 30

--**********************************
--任务入口函数
--**********************************
function x713596_OnDefaultEvent( sceneId, selfId, targetId )
	--玩家技能to� 鸬 等c
	AbilityLevel = QueryHumanAbilityLevel(sceneId, selfId, ABILITY_LIUYIFENGGU)
	--玩家加工技能to� 鸬 熟练度
	ExpPoint = GetAbilityExp(sceneId, selfId, ABILITY_LIUYIFENGGU)
	--任务判断

	--判断喧ng否喧ngTi陁 Dao派弟子,不喧ngTi陁 Dao弟子不能学习
		if GetMenPai(sceneId,selfId) ~= MP_XIAOYAO then
			BeginEvent(sceneId)
        		AddText(sceneId,"Ng呓i kh鬾g ph鋓 l� 甬 t� b眓 bang, ta kh鬾g th� d誽 ng呓i");
        	EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
	--如果还没有学会该生活技能
	if AbilityLevel < 1	then
		BeginEvent(sceneId)
			strText = "Ng呓i v鏽 ch遖 h鱟 k� n錸g l鴆 ngh� phong c痶"
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--如果生活技能等c已经超出该npc所能教to� 鸬 范围
	if AbilityLevel >= x713596_g_nMaxLevel then
		BeginEvent(sceneId)
			--[ QUFEI 2007-07-17 15:33 修改 ]
			strText = "Tr呔c m k� n錸g n鄖 ch� c� th� h鱟 皙n c 100"
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	else
		--DispatchAbilityInfo(sceneId, selfId, targetId,x713596_g_ScriptId, ABILITY_LIUYIFENGGU, LEVELUP_ABILITY_ASSISTANT[AbilityLevel+1].Money, LEVELUP_ABILITY_ASSISTANT[AbilityLevel+1].HumanExp, LEVELUP_ABILITY_ASSISTANT[AbilityLevel+1].AbilityExpLimitShow,LEVELUP_ABILITY_ASSISTANT[AbilityLevel+1].HumanLevelLimit)
		local tempScriptId = x713596_g_ScriptId;
		local tempAbilityId = ABILITY_LIUYIFENGGU;
		local tempAbilityLevel = AbilityLevel + 1;
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(tempAbilityId, tempAbilityLevel);
		if ret and ret == 1 then
			DispatchAbilityInfo(sceneId, selfId, targetId,tempScriptId, tempAbilityId, demandMoney, demandExp, limitAbilityExpShow, limitLevel);
		end
	end
end

--**********************************
--列举事件
--**********************************
function x713596_OnEnumerate( sceneId, selfId, targetId )
		--如果不到等c则不显示选项
		if 1 then
			AddNumText(sceneId,x713596_g_ScriptId,"Th錸g c k� n錸g l鴆 ngh� phong c痶", 12, 1)
		end
		return
end

--**********************************
--检测Ti猵 th跫�
--**********************************
function x713596_CheckAccept( sceneId, selfId )
end

--**********************************
--Ti猵 th�
--**********************************
function x713596_OnAccept( sceneId, selfId, ABILITY_LIUYIFENGGU )
end
