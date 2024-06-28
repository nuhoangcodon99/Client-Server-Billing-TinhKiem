--副本任务
--消灭在矿场捣乱的小贼

--************************************************************************
--MisDescBegin

--脚本号
x600004_g_ScriptId = 600004

--任务号
x600004_g_MissionId = 1105

--目标NPC
x600004_g_Name = "M� 簄g H鵱g "

--任务等级
x600004_g_MissionLevel = 10000

--任务归类
x600004_g_MissionKind = 50

--是否是精英任务
x600004_g_IfMissionElite = 0

--********下面几项是动态显示的内容，用于在任务列表中动态显示任务情况******
--角色Mission变量说明
x600004_g_IsMissionOkFail			=0	--0 任务完成标记
x600004_g_MissionParam_SubId		=1	--1 子任务脚本号存放位置
x600004_g_MissionParam_KillNumber	=2	--2 需要消灭的怪物数量
x600004_g_Param_sceneid				=3	--3号：当前副本任务的场景号
x600004_g_Param_teamid				=4	--4号：接副本任务时候的队伍号
x600004_g_Param_killcount			=5	--5号：杀死任务怪的数量
x600004_g_Param_time				=6	--6号：完成副本所用时间(单位：秒)
--6号：未用
--7号：未用

--循环任务的数据索引，里面存着已做的环数
x600004_g_MissionRound = 38
--**********************************以上是动态****************************

--任务文本描述
x600004_g_MissionName = "Nhi甿 v� c鬾g tr靚h"
x600004_g_MissionInfo = ""													--任务描述
x600004_g_MissionTarget = "    Di畉 b� t c� tr祄 c n眎 lo課. "						--任务目标
x600004_g_ContinueInfo = "    Nhi甿 v� c黙 c醕 h� v鏽 ch遖 ho鄋 th鄋h �?"						--未完成任务的npc对话
x600004_g_SubmitInfo = "    S� t靚h ti猲 tri琻 nh� th� n鄌 r癷?"								--完成未提交时的npc对话
x600004_g_MissionComplete = "    L鄊 t痶 l, r t痶 r t痶. "						--完成任务npc说话的话

x600004_g_Parameter_Kill_CountRandom = { { id = 300473, numNeeded = 2, numKilled = 5 } }

-- 通用城市任务脚本
x600004_g_CityMissionScript = 600001
x600004_g_EngineeringScript = 600002

--任务奖励

--MisDescEnd
--************************************************************************

--副本名称
x600004_g_CopySceneName = "Kho醤g tr叨ng"

x600004_g_CopySceneType = FUBEN_MINE	--副本类型，定义在ScriptGlobal.lua里面

x600004_g_CopySceneMap = "kuangchang.nav"
x600004_g_Exit = "kuangchang_area.ini"
x600004_g_LimitMembers = 1				--可以进副本的最小队伍人数
x600004_g_TickTime = 5					--回调脚本的时钟时间（单位：秒/次）
x600004_g_LimitTotalHoldTime = 360		--副本可以存活的时间（单位：次数）,如果此时间到了，则任务将会失败
x600004_g_LimitTimeSuccess = 500		--副本时间限制（单位：次数），如果此时间到了，任务完成
x600004_g_CloseTick = 3					--副本关闭前倒计时（单位：次数）
x600004_g_NoUserTime = 300				--副本中没有人后可以继续保存的时间（单位：秒）
x600004_g_DeadTrans = 0					--死亡转移模式，0：死亡后还可以继续在副本，1：死亡后被强制移出副本
x600004_g_Fuben_X = 17					--进入副本的位置X
x600004_g_Fuben_Z = 15					--进入副本的位置Z
x600004_g_Back_X = 66					--源场景位置X
x600004_g_Back_Z = 56					--源场景位置Z

--**********************************
--任务入口函数
--**********************************
function x600004_OnDefaultEvent( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600004_g_Name then		--判断该npc是否是对应任务的npc
		return
	end

	--如果已接此任务
	if IsHaveMission( sceneId, selfId, x600004_g_MissionId ) > 0 then
		local bDone = x600004_CheckSubmit( sceneId, selfId )
		local strText

		if bDone == 1 then
			strText = x600004_g_SubmitInfo
		else
			strText = x600004_g_ContinueInfo
		end

		if bDone == 0 then												--任务未完成
			if GetNumText() == 1 then
				x600004_AcceptEnterCopyScene( sceneId, selfId )
			else
				BeginEvent( sceneId )
					AddText( sceneId, x600004_g_MissionName )
					x600004_AskEnterCopyScene( sceneId, selfId )
				EndEvent( )
				DispatchEventList( sceneId, selfId, targetId )
			end
		elseif bDone == 1 then											--任务已经完成
			BeginEvent( sceneId )
				AddText( sceneId, x600004_g_MissionName )
				AddText( sceneId, strText )
			EndEvent( )
			DispatchMissionDemandInfo( sceneId, selfId, targetId, x600004_g_ScriptId, x600004_g_MissionId, bDone )
		end
	--满足任务接收条件
	elseif x600004_CheckAccept( sceneId, selfId ) > 0 then
		local nTemp = CallScriptFunction( x600004_g_CityMissionScript, "CanDoMisToDay", sceneId, selfId )
		if nTemp == 1   then
			x600004_OnAccept( sceneId, selfId, targetId )
		end
	end
end

--**********************************
--列举事件
--**********************************
function x600004_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600004_g_Name then		--判断该npc是否是对应任务的npc
		return
	end

   --如果已接此任务
	if IsHaveMission( sceneId, selfId, x600004_g_MissionId ) > 0 then
		AddNumText( sceneId, x600004_g_ScriptId, x600004_g_MissionName,3,-1 )
	end
end

--**********************************
--检测接受条件
--**********************************
function x600004_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600004_g_EngineeringScript, "CheckAccept", sceneId, selfId )
	return ret
end

--**********************************
--询问玩家是否要进入副本
--**********************************
function x600004_AskEnterCopyScene( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600004_g_MissionId ) <= 0 then	-- 没有任务
		return
	end

	local missionInfo
	if random(2) == 1 then
		missionInfo = format( "    Trong h m� � th鄋h ph�, c� m祎 nh髆 c呔p 餫ng 皙n n眎 lo課, c c醕 h� 餴 皙n 痼 饀眎 ch鷑g" )
	else
		missionInfo = format( "    C� m祎 nh髆 c呔p v� duy阯 v� c� 皙n g鈟 r痠 � h m�, tr鬾g ch� v鄌 c醕 h� c� 黏y" )
	end

	AddText( sceneId, missionInfo )
	AddText( sceneId, "#{M_MUBIAO}" )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600004_g_MissionId )
	local KillNumber = GetMissionParam( sceneId, selfId, misIndex, x600004_g_MissionParam_KillNumber )
	AddText( sceneId, "    Trong h m� gi猼 ch猼  " .. KillNumber .. "  t阯 c呔p n眎 lo課" )
	AddNumText( sceneId, x600004_g_ScriptId, "Ra v鄌 h m�", 10, 1 )
end

--**********************************
--接受
--**********************************
function x600004_OnAccept( sceneId, selfId, targetId )
	if IsHaveMission( sceneId, selfId, x600004_g_MissionId ) == 0 then					--没有任务才可以走这里
		if GetLevel( sceneId, selfId ) < 20 then
			CallScriptFunction( x600004_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, "Kh鬾g 瘘 鹌ng c" )
			return
		end

		--加入任务到玩家列表
		AddMission( sceneId, selfId, x600004_g_MissionId, x600004_g_ScriptId, 1, 0, 0 )	-- kill、area、item
		if IsHaveMission( sceneId, selfId, x600004_g_MissionId ) <= 0 then
			return
		end

		CallScriptFunction( x600004_g_EngineeringScript, "OnAccept", sceneId, selfId, targetId, x600004_g_ScriptId )
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600004_g_MissionId )
		local KillNumber = 9 + random(11)
		SetMissionByIndex( sceneId, selfId, misIndex, x600004_g_MissionParam_KillNumber, KillNumber )

		--显示内容告诉玩家已经接受了任务
		BeginEvent( sceneId )
			AddText( sceneId, x600004_g_MissionName )
			x600004_AskEnterCopyScene( sceneId, selfId )
			AddText( sceneId, "#rC醕 h� 疸 nh " .. x600004_g_MissionName )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
end

--**********************************
--玩家同意进入副本
--**********************************
function x600004_AcceptEnterCopyScene( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600004_g_MissionId ) > 0 then					--有任务才可以走这里
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600004_g_MissionId )
		--local copysceneid = GetMissionParam( sceneId, selfId, misIndex, x600004_g_Param_sceneid )

		--if copysceneid >= 0 then												--进过副本
			--将自己传送到副本场景
			--if IsCanEnterCopyScene( copysceneid, GetHumanGUID( sceneId, selfId ) ) == 1 then
				--NewWorld( sceneId, selfId, copysceneid, x600004_g_Fuben_X, x600004_g_Fuben_Z )
				--return
			--end
		--end

		SetMissionByIndex( sceneId, selfId, misIndex, x600004_g_IsMissionOkFail, 0 )	--将任务的第0号数据设置为0,表示未完成的任务
		SetMissionByIndex( sceneId, selfId, misIndex, x600004_g_Param_sceneid, -1 )		--将任务的第3号数据设置为-1, 用于保存副本的场景号
		
		--add by xindefeng
		SetMissionByIndex( sceneId, selfId, misIndex, x600004_g_Param_killcount, 0 )	--将任务的第2号数据设置为-1, 用于保存副本的场景号
		x600004_MakeCopyScene( sceneId, selfId )
	end
end

--**********************************
--创建副本
--**********************************
function x600004_MakeCopyScene( sceneId, selfId )
	local mylevel = GetLevel( sceneId, selfId )

	local leaderguid = LuaFnObjId2Guid( sceneId, selfId )
	LuaFnSetSceneLoad_Map( sceneId, x600004_g_CopySceneMap )						--地图是必须选取的，而且必须在Config/SceneInfo.ini里配置好
	LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
	LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x600004_g_NoUserTime * 1000 )
	LuaFnSetCopySceneData_Timer( sceneId, x600004_g_TickTime * 1000 )
	LuaFnSetCopySceneData_Param( sceneId, 0, x600004_g_CopySceneType )				--设置副本数据，这里将0号索引的数据设置为999，用于表示副本号999(数字自定义)
	LuaFnSetCopySceneData_Param( sceneId, 1, x600004_g_ScriptId )					--将1号数据设置为副本场景事件脚本号
	LuaFnSetCopySceneData_Param( sceneId, 2, 0 )							--设置定时器调用次数
	LuaFnSetCopySceneData_Param( sceneId, 3, -1 )							--设置副本入口场景号, 初始化
	LuaFnSetCopySceneData_Param( sceneId, 4, 0 )							--设置副本关闭标志, 0开放，1关闭
	LuaFnSetCopySceneData_Param( sceneId, 5, 0 )							--设置离开倒计时次数
	LuaFnSetCopySceneData_Param( sceneId, 7, 0 )							--杀死Boss的数量

	local PlayerMaxLevel = GetHumanMaxLevelLimit() --modi:lby20071127
	local iniLevel
	
	if mylevel < 10 then
		iniLevel = 10
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor( mylevel/10 ) * 10
	else
		iniLevel = PlayerMaxLevel
	end
	
	LuaFnSetSceneLoad_Area( sceneId, x600004_g_Exit )
	LuaFnSetSceneLoad_Monster( sceneId, "kuangchang_monster_" .. iniLevel .. ".ini" )

	LuaFnSetCopySceneData_Param(sceneId, CopyScene_LevelGap, mylevel - iniLevel) --级别差，CopyScene_LevelGap 在 scene.lua 中赋值

	local bRetSceneID = LuaFnCreateCopyScene( sceneId )						--初始化完成后调用创建副本函数
	if bRetSceneID > 0 then
		x600004_NotifyFailTips( sceneId, selfId, "D竎h chuy琻 th鄋h c鬾g!" )
	else
		x600004_NotifyFailTips( sceneId, selfId, "S� l唼ng b鋘 sao 疸 皙n gi緄 h課, 皤 ngh� l醫 n鎍 th� l読!" )
	end

end

--**********************************
--副本事件
--**********************************
function x600004_OnCopySceneReady( sceneId, destsceneId )
	LuaFnSetCopySceneData_Param( destsceneId, 3, sceneId )					--设置副本入口场景号
	local leaderguid = LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local leaderObjId = LuaFnGuid2ObjId( sceneId, leaderguid )

	if leaderObjId == -1 then
		return
	end

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then			-- 处于无法执行逻辑的状态
		return
	end

	if IsHaveMission( sceneId, leaderObjId, x600004_g_MissionId ) > 0 then			--有任务才可以走这里
		local misIndex = GetMissionIndexByID( sceneId, leaderObjId, x600004_g_MissionId )

		--将任务的第2号数据设置为副本的场景号
		SetMissionByIndex( sceneId, leaderObjId, misIndex, x600004_g_Param_sceneid, destsceneId )
		NewWorld( sceneId, leaderObjId, destsceneId, x600004_g_Fuben_X, x600004_g_Fuben_Z )
	end
end

--**********************************
--有玩家进入副本事件
--**********************************
function x600004_OnPlayerEnter( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600004_g_MissionId ) == 0 then				--如果进入副本前删除任务，则直接传送回
		x600004_NotifyFailTips( sceneId, selfId, "C醕 h� 疸 kh鬾g nh nhi甿 v� n鄖 t� tr呔c" )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		--取得副本入口场景号
		NewWorld( sceneId, selfId, oldsceneId, x600004_g_Back_X, x600004_g_Back_Z )
		return
	end

	local monstercount = GetMonsterCount( sceneId )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600004_g_MissionId )
	local KillNumber = GetMissionParam( sceneId, selfId, misIndex, x600004_g_MissionParam_KillNumber )

	-- 干掉多余的怪
	if monstercount > KillNumber then
		local i
		for i = 0, monstercount - KillNumber - 1 do
			LuaFnDeleteMonster( sceneId, GetMonsterObjID( sceneId, i ) )
		end
	end
end

--**********************************
--有玩家在副本中死亡事件
--**********************************
function x600004_OnHumanDie( sceneId, selfId, killerId )
	if x600004_g_DeadTrans == 1 then														--死亡后需要被强制踢出场景
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )				--取得副本入口场景号
		NewWorld( sceneId, selfId, oldsceneId, x600004_g_Back_X, x600004_g_Back_Z )
	end
end

--**********************************
--放弃
--**********************************
function x600004_OnAbandon( sceneId, selfId )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600004_g_MissionId )
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, x600004_g_Param_sceneid )

	--删除玩家任务列表中对应的任务
	CallScriptFunction( x600004_g_EngineeringScript, "OnAbandon", sceneId, selfId )

	if sceneId == copyscene then											--如果在副本里删除任务，则直接传送回
		x600004_NotifyFailTips( sceneId, selfId, "Nhi甿 v� th b読!" )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		--取得副本入口场景号
		NewWorld( sceneId, selfId, oldsceneId, x600004_g_Back_X, x600004_g_Back_Z )
	end
end

--**********************************
-- 回城，只有城市任务副本可以调用此接口
--**********************************
function x600004_BackToCity( sceneId, selfId )
	--CallScriptFunction( x600004_g_CityMissionScript, "BackToCity", sceneId, selfId, x600004_g_MissionId, x600004_g_Back_X, x600004_g_Back_Z )
	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )					--取得进入副本时所在场景号
	CallScriptFunction( 400900, "TransferFunc", sceneId, selfId, oldsceneId, x600004_g_Back_X, x600004_g_Back_Z )
end

--**********************************
--继续
--**********************************
function x600004_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x600004_g_MissionName )
		AddText( sceneId, x600004_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600004_g_ScriptId, x600004_g_MissionId )
end

--**********************************
--检测是否可以提交
--**********************************
function x600004_CheckSubmit( sceneId, selfId, selectRadioId )
	--判断任务是否已经完成
	local ret = CallScriptFunction( x600004_g_EngineeringScript, "CheckSubmit", sceneId, selfId )
	return ret
end

--**********************************
--提交
--**********************************
function x600004_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x600004_g_Name then		--判断该npc是否是对应任务的npc
		return
	end

	if x600004_CheckSubmit( sceneId, selfId ) == 1 then
		CallScriptFunction( x600004_g_EngineeringScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
	end
end

--**********************************
--杀死怪物或玩家
--**********************************
function x600004_OnKillObject( sceneId, selfId, objdataId, objId )
	if IsHaveMission( sceneId, selfId, x600004_g_MissionId ) == 0 then
		return
	end

	--是否是副本
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	--是否是所需要的副本
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x600004_g_CopySceneType then
		return
	end

	--副本关闭标志
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
	if leaveFlag == 1 then														--如果副本已经被置成关闭状态，则杀怪无效
		return
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600004_g_MissionId )
	local killedbossnumber = GetMissionParam( sceneId, selfId, misIndex, x600004_g_Param_killcount )	--杀死Boss的数量

	killedbossnumber = killedbossnumber + 1
	SetMissionByIndex( sceneId, selfId, misIndex, x600004_g_Param_killcount, killedbossnumber )	--设置杀死Boss的数量

	local KillNumber = GetMissionParam( sceneId, selfId, misIndex, x600004_g_MissionParam_KillNumber )

	local strText = format( "秀 gi猼 ch猼 疳m c呔p n眎 lo課: %d/%d", killedbossnumber, KillNumber )
	x600004_NotifyFailTips( sceneId, selfId, strText )

	if killedbossnumber >= KillNumber then
		--设置任务完成标志
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )

		strText = format( "Ho鄋 t nhi甿 v�, trong v騨g %d gi鈟 n鎍 s� 疬a 皙n ch� ra v鄌", x600004_g_CloseTick * x600004_g_TickTime )
		x600004_NotifyFailTips( sceneId, selfId, strText )

		--将任务的第1号数据设置为1,表示完成的任务
		SetMissionByIndex( sceneId, selfId, misIndex, x600004_g_IsMissionOkFail, 1 )	--设置任务数据
	end
end

--**********************************
--进入区域事件
--**********************************
function x600004_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--道具改变
--**********************************
function x600004_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--副本场景定时器事件
--**********************************
function x600004_OnCopySceneTimer( sceneId, nowTime )

	--副本时钟读取及设置
	local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )						--取得已经执行的定时次数
	TickCount = TickCount + 1
	LuaFnSetCopySceneData_Param( sceneId, 2, TickCount )							--设置新的定时器调用次数

	--副本关闭标志
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )

	local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	local i

	for i=0, membercount-1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	if leaveFlag == 1 then															--需要离开
		--离开倒计时间的读取和设置
		local leaveTickCount = LuaFnGetCopySceneData_Param( sceneId, 5 )
		leaveTickCount = leaveTickCount + 1
		LuaFnSetCopySceneData_Param( sceneId, 5, leaveTickCount )

		if leaveTickCount >= x600004_g_CloseTick then										--倒计时间到，大家都出去吧
			local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )			--取得副本入口场景号

			--将当前副本场景里的所有人传送回原来进入时候的场景
			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					NewWorld( sceneId, mems[i], oldsceneId, x600004_g_Back_X, x600004_g_Back_Z )
				end
			end
		else
			--通知当前副本场景里的所有人，场景关闭倒计时间
			local strText = format( "C醕 h� s� r秈 kh鰅 n絠 n鄖 trong v騨g %d gi鈟 n鎍", ( x600004_g_CloseTick - leaveTickCount ) * x600004_g_TickTime )

			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x600004_NotifyFailTips( sceneId, mems[i], strText )
				end
			end
		end
	end
end

function x600004_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
