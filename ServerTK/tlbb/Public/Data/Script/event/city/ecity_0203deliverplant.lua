-- 送新鲜的种植品
--MisDescBegin
-- 脚本号
x600010_g_ScriptId = 600010

--任务号
x600010_g_MissionId = 1106

--任务目标npc
x600010_g_Name = "Chu Th� H鎢 "

--任务归类
x600010_g_MissionKind = 50

--任务等级
x600010_g_MissionLevel = 10000

--是否是精英任务
x600010_g_IfMissionElite = 0

--下面几项是动态显示的内容，用于在任务列表中动态显示任务情况**********************
x600010_g_IsMissionOkFail = 0							-- 任务完成标记

--以上是动态**************************************************************

--任务变量第一位用来存储随机得到的脚本号

--任务文本描述
x600010_g_MissionName = "Nhi甿 v� ph醫 tri琻"
x600010_g_MissionInfo = "    H鬽 nay ta mu痭 c� %s, t靘 l読 疴y gi鷓 ta!"			--任务描述
x600010_g_MissionTarget = "    衑m %i 疬a cho %n"							--任务目标
x600010_g_ContinueInfo = "    Nhi甿 v� c黙 c醕 h� v鏽 ch遖 ho鄋 th鄋h �?"					--未完成任务的npc对话
x600010_g_SubmitInfo = "    S� t靚h ti猲 tri琻 nh� th� n鄌 r癷?"							--完成未提交时的npc对话
x600010_g_MissionComplete = "    L鄊 t痶 l, r t痶 r t痶. "					--完成任务npc说话的话

x600010_g_StrForePart = 5
x600010_g_ItemOffset = 19												-- Suppose to 19, 表里第几个物品列的偏移量
x600010_g_NPCOffset = 12												-- Suppose to 12, 表里第几列 NPC 的偏移量
x600010_g_NPCOffsetEx = 247											-- Suppose to 12, 表里第几列 NPC 的偏移量

x600010_g_MissionRound = 40

-- 通用城市任务脚本
x600010_g_CityMissionScript = 600001
x600010_g_DevelopmentScript = 600007

--任务奖励

--MisDescEnd

x600010_g_Pronoun = {}
x600010_g_Pronoun[0] = "mu礽  "
x600010_g_Pronoun[1] = "huynh  "

--**********************************
--任务入口函数
--**********************************
function x600010_OnDefaultEvent( sceneId, selfId, targetId )	--点击该任务后执行此脚本
	if GetName( sceneId, targetId ) ~= x600010_g_Name then		--判断该npc是否是对应任务的npc
		return
	end

	--如果已接此任务
	if IsHaveMission( sceneId, selfId, x600010_g_MissionId ) > 0 then
		--发送任务需求的信息
		local bDone = x600010_CheckSubmit( sceneId, selfId )
		local strText

		if bDone == 1 then
			strText = x600010_g_SubmitInfo
		else
			strText = x600010_g_ContinueInfo
		end

		--发送任务需求的信息
		BeginEvent( sceneId )
			AddText( sceneId, x600010_g_MissionName )
			AddText( sceneId, strText )
		EndEvent( )
		DispatchMissionDemandInfo( sceneId, selfId, targetId, x600010_g_ScriptId, x600010_g_MissionId, bDone )
	--满足任务接收条件
	elseif x600010_CheckAccept( sceneId, selfId ) > 0 then
		local nTemp = CallScriptFunction( x600010_g_CityMissionScript, "CanDoMisToDay", sceneId, selfId )
		if nTemp == 1   then
			x600010_OnAccept( sceneId, selfId, targetId )
		end
	end
end

--**********************************
--列举事件
--**********************************
function x600010_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600010_g_Name then		--判断该npc是否是对应任务的npc
		return
	end

   --如果已接此任务
	if IsHaveMission( sceneId, selfId, x600010_g_MissionId ) > 0 then
		AddNumText( sceneId, x600010_g_ScriptId, x600010_g_MissionName,3,-1 )
	end
end

--**********************************
--检测接受条件
--**********************************
function x600010_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600010_g_DevelopmentScript, "CheckAccept", sceneId, selfId )
	return ret
end

--**********************************
--根据玩家等级得到对应MissionItem_HashTable.txt中的单元索引
--**********************************
function x600010_GetMissionItemIndex( sceneId, selfId )
	return x600010_g_ItemOffset
end

--**********************************
--根据玩家等级得到对应MissionNPC_HashTable.txt中的选择信息
--**********************************
function x600010_GetMissionNPCKey( sceneId, selfId )
	local nPlayerLevel = GetLevel( sceneId, selfId )
	local nPos

	if nPlayerLevel < 45 then								-- 30 ~ 44
		nPos = 0
	elseif nPlayerLevel < 60 then							-- 45 ~ 59
		nPos = 1
	elseif nPlayerLevel < 75 then							-- 60 ~ 74
		nPos = 2
	--else													-- 75 ~ 100
	--	nPos = 3
	--end

	--return nPos + x600010_g_NPCOffset
	elseif	nPlayerLevel < 100 then		-- 70 ~ 100 Level
		nPos = 3
	elseif nPlayerLevel < 125 then		-- 100 ~ 125 Level	modi:lby20071126
		nPos = 0
	else 															-- >=120 Level
		nPos = 1
		
	end
	
	if nPlayerLevel < 100 then
		return nPos + x600010_g_NPCOffset
	else
		return nPos + x600010_g_NPCOffsetEx
	end
end

--**********************************
--接受
--**********************************
function x600010_OnAccept( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600010_g_Name then		--判断该npc是否是对应任务的npc
		return
	end

	if GetLevel( sceneId, selfId ) < 30 then
		CallScriptFunction( x600010_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, "Kh鬾g 瘘 鹌ng c" )
		return
	end

	local nitemId, strItemName, _ = GetOneMissionItem( x600010_GetMissionItemIndex( sceneId, selfId ) )
	local pos = LuaFnTryRecieveItem( sceneId, selfId, nitemId, QUALITY_MUST_BE_CHANGE )
	if pos == -1 then
		CallScriptFunction( x600010_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, "Ch� tr痭g trong t鷌 x醕h kh鬾g 瘘" )
		return
	end

	--加入任务到玩家列表
	AddMission( sceneId, selfId, x600010_g_MissionId, x600010_g_ScriptId, 0, 0, 0 )	-- kill、area、item
	if IsHaveMission( sceneId, selfId, x600010_g_MissionId ) <= 0 then
		return
	end

	SetMissionEvent( sceneId, selfId, x600010_g_MissionId, 4 ) -- 注册 x600010_OnLockedTarget 事件

	CallScriptFunction( x600010_g_DevelopmentScript, "OnAccept", sceneId, selfId, targetId, x600010_g_ScriptId )

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600010_g_MissionId )
	local nNpcId, strNpcName, strNpcScene, _, nPosX, nPosZ, _, nGender = GetOneMissionNpc( x600010_GetMissionNPCKey( sceneId, selfId ) )

	SetMissionByIndex( sceneId, selfId, misIndex, x600010_g_StrForePart, nitemId )
	SetMissionByIndex( sceneId, selfId, misIndex, x600010_g_StrForePart + 1, nNpcId )

	--显示内容告诉玩家已经接受了任务
	BeginEvent( sceneId )
		local missionInfo
		local rand = random(2)

		if rand == 1 then
			missionInfo = format( "    锈y l� #Y%s#W do %s %s (%d, %d) m ng鄖 tr呔c 疸 穑t h鄋g � ch� ch鷑g ta 疴y, c醕 h� ph鋓 v v� 餴 m祎 chuy猲 r癷 ",
				strItemName, strNpcScene, strNpcName, nPosX, nPosZ )
		else
			missionInfo = format( "    %s %s (%d, %d) 疸 穑t mua #Y%s#W � ch� ch鷑g ta, phi玭 c醕 h� chuy琻 gi鷓 cho ta",
				strNpcScene, strNpcName, nPosX, nPosZ, strItemName )
		end

		AddText( sceneId, missionInfo )
		AddText( sceneId, "#r    C醕 h� 疸 nh : " .. x600010_g_MissionName )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--放弃
--**********************************
function x600010_OnAbandon( sceneId, selfId )
	--删除玩家任务列表中对应的任务
	CallScriptFunction( x600010_g_DevelopmentScript, "OnAbandon", sceneId, selfId )
end

--**********************************
--继续
--**********************************
function x600010_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x600010_g_MissionName )
		AddText( sceneId, x600010_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600010_g_ScriptId, x600010_g_MissionId )
end

--**********************************
--检测是否可以提交
--**********************************
function x600010_CheckSubmit( sceneId, selfId )
	local ret = CallScriptFunction( x600010_g_DevelopmentScript, "CheckSubmit", sceneId, selfId )
	return ret
end

--**********************************
--提交
--**********************************
function x600010_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x600010_g_Name then		--判断该npc是否是对应任务的npc
		return
	end

	if x600010_CheckSubmit( sceneId, selfId ) == 1 then
		CallScriptFunction( x600010_g_DevelopmentScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
	end
end

--**********************************
--杀死怪物或玩家
--**********************************
function x600010_OnKillObject( sceneId, selfId, objdataId, objId )	--参数意思：场景号、玩家objId、怪物表位置号、怪物objId
end

--**********************************
--进入区域事件
--**********************************
function x600010_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--道具改变
--**********************************
function x600010_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--当锁定一个对象
--**********************************
function x600010_OnLockedTarget( sceneId, selfId, objId )
	if IsHaveMission( sceneId, selfId, x600010_g_MissionId ) < 1 then
		return		-- 没有该任务
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600010_g_MissionId )		--得到任务在20个任务中的序列号
	if GetMissionParam( sceneId, selfId, misIndex, x600010_g_IsMissionOkFail ) > 0 then
		return		-- 该任务已完成
	end

	local nNpcId
	local strNpcName
	local PosX
	local PosZ

	nNpcId = GetMissionParam( sceneId, selfId, misIndex, x600010_g_StrForePart + 1 )
	_, strNpcName, _, PosX, PosZ = GetNpcInfoByNpcId(sceneId, nNpcId )

	-- 暂时不比较位置
	if GetName( sceneId, objId ) == strNpcName then
		local nItemId
		nItemId = GetMissionParam( sceneId, selfId, misIndex, x600010_g_StrForePart )

		if DelItem( sceneId, selfId, nItemId, 1 ) == 1 then
			-- 设置任务已经完成
			SetMissionByIndex( sceneId, selfId, misIndex, x600010_g_IsMissionOkFail, 1 )
			-- 将该任务从 x600010_OnLockedTarget 事件列表中清除，该任务不再关心此类事件
			ResetMissionEvent( sceneId, selfId, x600010_g_MissionId, 4 )
			TAddText( sceneId, "     T痶 qu�, ch� t韓 c黙 qu� bang l� nh, mong ch� c� s� h䅟 t醕 l sau" )
		end
	end
end


function x600010_OnTimer( sceneId, selfId )

	--祝凯 2008-03-06
	--不应该出现这种情况....
	ResetMissionEvent( sceneId, selfId, x600010_g_MissionId, 5 )
	local msg = format( "CityMission_OnTimer_Error x600010_OnTimer %0X,%d,%d", LuaFnObjId2Guid( sceneId, selfId ), sceneId, selfId )
	MissionLog( sceneId, msg )

end
