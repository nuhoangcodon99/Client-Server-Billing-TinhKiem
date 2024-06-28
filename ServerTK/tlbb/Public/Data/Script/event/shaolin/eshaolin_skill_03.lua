-- 212142
-- 副本

-- 副本任务  回马枪
-- 玩家等级大于等于20级，完成“三人同行”，队长且队伍中至少三人。


--************************************************************************
--MisDescBegin
--脚本号
x212142_g_ScriptId = 212142

x212142_g_MissionId = 964

--MisDescEnd
--************************************************************************

--副本名称
x212142_g_CopySceneName = "bao v鈟 Nh課 M鬾 Quan"

x212142_g_CopySceneType = FUBEN_JUQING	--副本类型，定义在ScriptGlobal.lua里面

x212142_g_CopySceneMap = "gongdi.nav"
x212142_g_LimitMembers = 3				--可以进副本的最小队伍人数
x212142_g_TickTime = 5					--回调脚本的时钟时间（单位：秒/次）
x212142_g_LimitTotalHoldTime = 360		--副本可以存活的时间（单位：次数）,如果此时间到了，则任务将会失败
x212142_g_LimitTimeSuccess = 500		--副本时间限制（单位：次数），如果此时间到了，任务完成
x212142_g_CloseTick = 3					--副本关闭前倒计时（单位：次数）
x212142_g_NoUserTime = 300				--副本中没有人后可以继续保存的时间（单位：秒）
x212142_g_DeadTrans = 0					--死亡转移模式，0：死亡后还可以继续在副本，1：死亡后被强制移出副本
x212142_g_Fuben_X = 18					--进入副本的位置X
x212142_g_Fuben_Z = 47					--进入副本的位置Z
x212142_g_Back_X = 262					--源场景位置X
x212142_g_Back_Z = 46					--源场景位置Z

--**********************************
--任务入口函数
--**********************************
function x212142_OnDefaultEvent( sceneId, selfId, targetId )
	-- 进入条件，自己是队长，必须3人，
	--1，检测自己是不是在队伍中
	if GetTeamSize(sceneId,selfId) < 3  then
		BeginEvent(sceneId)
			AddText(sceneId,"  Mu痭 ti猲 v鄌 b鋘 sao n鄖, c醕 h� c m祎 nh髆 c� 韙 nh 3 ng叨i, h絥 n鎍 th鄋h vi阯 trong nh髆 c c� t眓g c祅g 韙 nh 3 ng叨i � g, c醕 h� c騨 c l� nh髆 tr叻ng.");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if GetNearTeamCount(sceneId,selfId) < 3 then
		BeginEvent(sceneId)
			AddText(sceneId,"  Mu痭 ti猲 v鄌 b鋘 sao n鄖, c醕 h� c m祎 nh髆 c� 韙 nh 3 ng叨i, h絥 n鎍 th鄋h vi阯 trong nh髆 c c� t眓g c祅g 韙 nh 3 ng叨i � g, c醕 h� c騨 c l� nh髆 tr叻ng.");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if GetNearTeamCount(sceneId,selfId) < 3 then
		BeginEvent(sceneId)
			AddText(sceneId,"  Mu痭 ti猲 v鄌 b鋘 sao n鄖, c醕 h� c m祎 nh髆 c� 韙 nh 3 ng叨i, h絥 n鎍 th鄋h vi阯 trong nh髆 c c� t眓g c祅g 韙 nh 3 ng叨i � g, c醕 h� c騨 c l� nh髆 tr叻ng.");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if GetTeamLeader(sceneId,selfId) ~= selfId    then
		BeginEvent(sceneId)
			AddText(sceneId,"  Mu痭 ti猲 v鄌 b鋘 sao n鄖, c醕 h� c m祎 nh髆 c� 韙 nh 3 ng叨i, h絥 n鎍 th鄋h vi阯 trong nh髆 c c� t眓g c祅g 韙 nh 3 ng叨i � g, c醕 h� c騨 c l� nh髆 tr叻ng.");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	x212142_MakeCopyScene(sceneId, selfId)
end

--**********************************
--列举事件
--**********************************
function x212142_OnEnumerate( sceneId, selfId, targetId )
	
	-- 进入副本的条件，玩家等级大于20，玩家完成了任务 
	if IsHaveMission( sceneId, selfId, x212142_g_MissionId ) > 0 then
		AddNumText( sceneId, x212142_g_ScriptId, "羞a ta 皙n bao v鈟 Nh課 M鬾 Quan", 10 ,-1 )
	end
	
end

--**********************************
--检测接受条件
--**********************************
function x212142_CheckAccept( sceneId, selfId )
	
end

--**********************************
--询问玩家是否要进入副本
--**********************************
function x212142_AskEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--接受
--**********************************
function x212142_OnAccept( sceneId, selfId, targetId )
	
end

--**********************************
--玩家同意进入副本
--**********************************
function x212142_AcceptEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--创建副本
--**********************************
function x212142_MakeCopyScene( sceneId, selfId )

	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "gongdi.nav"); --地图是必须选取的，而且必须在Config/SceneInfo.ini里配置好
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x212142_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x212142_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x212142_g_CopySceneType);--设置副本数据，这里将0号索引的数据设置为999，用于表示副本号999(数字自定义)
	LuaFnSetCopySceneData_Param(sceneId, 1, x212142_g_ScriptId);--将1号数据设置为副本场景事件脚本号
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);--设置定时器调用次数
	LuaFnSetCopySceneData_Param(sceneId, 3, -1);--设置副本入口场景号, 初始化
	LuaFnSetCopySceneData_Param(sceneId, 4, 0);--设置副本关闭标志, 0开放，1关闭
	LuaFnSetCopySceneData_Param(sceneId, 5, 0);--设置离开倒计时次数
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId)); --保存队伍号
	LuaFnSetCopySceneData_Param(sceneId, 7, 0) ;--杀死Boss的数量
	
	-- 剧情用到的变量清空
	for i=8, 31 do
		LuaFnSetCopySceneData_Param(sceneId, i, 0)
	end
	
	--设置场景中的各种Npc和区域
	LuaFnSetSceneLoad_Area( sceneId, "gongdishaolinmis_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "gongdishaolinmis_monster.ini" )

	local bRetSceneID = LuaFnCreateCopyScene(sceneId); --初始化完成后调用创建副本函数
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"D竎h chuy琻 th鄋h c鬾g!");
		else
			AddText(sceneId,"S� l唼ng b鋘 sao 疸 皙n gi緄 h課, 皤 ngh� l醫 n鎍 th� l読!");
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

--**********************************
--副本事件
--**********************************
function x212142_OnCopySceneReady( sceneId, destsceneId )

	--进入副本的规则
	-- 1，如果这个文件没有组队，就传送这个文件自己进入副本
	-- 2, 如果玩家有队伍，但是玩家不是队长，就传送自己进入副本
	-- 3，如果玩家有队伍，并且这个晚间是队长，就传送自己和附近队友一起进去

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId) --设置副本入口场景号
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId)
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid)
	
	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then			-- 处于无法执行逻辑的状态
		return
	end

	-- 检测玩家是不是有队伍
	if LuaFnHasTeam( sceneId, leaderObjId ) == 0  then   -- 没有队伍
		return
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			NewWorld( sceneId, leaderObjId, destsceneId, x212142_g_Fuben_X, x212142_g_Fuben_Z) ;
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				NewWorld( sceneId, mems[i], destsceneId, x212142_g_Fuben_X, x212142_g_Fuben_Z) ;
			end
		end		
	end

end

--**********************************
--有玩家进入副本事件
--**********************************
function x212142_OnPlayerEnter( sceneId, selfId )
	
end

--**********************************
--有玩家在副本中死亡事件
--**********************************
function x212142_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--放弃
--**********************************
function x212142_OnAbandon( sceneId, selfId )
	
end

--**********************************
-- 回城，只有城市任务副本可以调用此接口
--**********************************
function x212142_BackToCity( sceneId, selfId )
	
end

--**********************************
--继续
--**********************************
function x212142_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--检测是否可以提交
--**********************************
function x212142_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--提交
--**********************************
function x212142_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--杀死怪物或玩家
--**********************************
function x212142_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--进入区域事件
--**********************************
function x212142_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--道具改变
--**********************************
function x212142_OnItemChanged( sceneId, selfId, itemdataId )
	
end

--**********************************
--副本场景定时器事件
--**********************************
function x212142_OnCopySceneTimer( sceneId, nowTime )
	--检测副本中的怪是不是杀光，杀光自动传玩家出副本
	
	
end




