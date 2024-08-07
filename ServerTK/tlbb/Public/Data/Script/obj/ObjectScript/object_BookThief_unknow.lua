--新玄武岛入口对话脚本
--

x807003_g_scriptId = 807003

x807003_tipinbox = 1
x807003_g_limitMembers = 3        --人数限制
x807003_g_Low_Level = 85           --等级限制
x807003_g_Low_Level_xinfa = 50           --心法限制
x807003_g_NoUserTime = 3              --副本中没有人后可以继续保存的时间（单位: 秒）,不知道这个值对不对？
x807003_g_tickDiffTime = 1              --回调脚本的时钟时间（单位: 秒/次）
x807003_g_CopySceneType = FUBEN_XINSHENGSHOUSHAN        --副本类型，定义在ScriptGlobal.lua里面

x807003_g_FubenTbl =
{
	FubenName = "T鈔 Huy玭 V� 袖o",
	MapFile = "petisland_3.nav",
	monsterId = 22130,
	bossId = 22190,  --H� 袖o Th Th�
	AreaFile = "petisland_3_area.ini", 
	MonsterFile = "petisland_3_monster.ini",
	Fuben_start_x = 94,
	Fuben_start_z = 77,
}

x807003_monster_chufeng = {ID = 22270, Aitype = 0, AiscriptId = 0, scriptId = 807003, name = "L鬷 L鈔 Tr叻ng Th鄋h"}     --雏凤
x807003_monster_leilin = {ID = 222480, Aitype = 0, AiscriptId = 0, scriptId = 807003, name = "S� Ph鴑g Tr叻ng Th鄋h"}      --雷麟
x807003_monster_xudaoshenshou = {ID = 22648, Aitype = 0, AiscriptId = 136, scriptId = 807003, name = "H� 袖o Th Th�"}   --H� 袖o Th Th�
x807003_monster_feitianmao = {ID = 222718, Aitype = 0, AiscriptId = 270, scriptId = 807003, name = "V� 懈ch Thi阯 Mi陁"}   --V� 懈ch Thi阯 Mi陁
x807003_monster_xiaozhuzhu = {ID = 22788, Aitype = 0, AiscriptId = 212, scriptId = 807003, name = "Ti瑄 Tr� Tr�"}   --小猪猪
x807003_monster_xiaohuhu = {ID = 22858, Aitype = 0, AiscriptId = 215, scriptId = 807003, name = "Ti瑄 Tr� Tr�"}   --Ti瑄 Tr� Tr�
x807003_monster_xiaoyingying = {ID = 22928, Aitype = 0, AiscriptId = 214, scriptId = 807003, name = "Ti瑄 H� H�"}   --Ti瑄 H� H�
x807003_monster_xiaogougou = {ID = 23108, Aitype = 0, AiscriptId = 213, scriptId = 807003, name = "Ti瑄 縩g 縩g"}   --Ti瑄 縩g 縩g
x807003_monster_groupId = 1

x807003_monster_First_num = 15
x807003_monster_Second_num = 15
x807003_monster_Third_num = 15
x807003_monster_Fourth_num = 15
x807003_monster_boss_num = 6
 
x807003_gFirst_MonstersTbl =   --第一批怪坐标
{
{x = 127, z = 85}, {x = 126, z = 90}, {x = 130, z = 90}, {x = 137, z = 77}, {x = 137, z = 81}, {x = 141, z = 80}, {x = 149, z = 86}, {x = 152, z = 82}, {x = 140, z = 101}, 
{x = 157, z = 101}, {x = 134, z = 107}, {x = 145, z = 103}, {x = 154, z = 106}, {x = 147, z = 108}, {x = 160, z = 88}
}
x807003_gSecond_MonstersTbl =   --第二批怪坐标
{
{x = 179, z = 86}, {x = 176, z = 89}, {x = 183, z = 100}, {x = 177, z = 95}, {x = 183, z = 92}, {x = 191, z = 122}, {x = 194, z = 128}, {x = 161, z = 108}, {x = 176, z = 116}, 
{x = 152, z = 119}, {x = 162, z = 124}, {x = 163, z = 132}, {x = 175, z = 135}, {x = 178, z = 128}, {x = 170, z = 127}
}
x807003_gThird_MonstersTbl =    --第三批怪坐标
{
{x = 193, z = 153}, {x = 188, z = 163}, {x = 195, z = 163}, {x = 201, z = 163}, {x = 200, z = 170}, {x = 194, z = 171}, {x = 171, z = 146}, {x = 174, z = 150}, {x = 159, z = 156}, 
{x = 162, z = 159}, {x = 157, z = 162}, {x = 149, z = 153}, {x = 147, z = 147}, {x = 152, z = 157}, {x = 161, z = 145}
}
x807003_gFourth_MonstersTbl =    --第四批怪坐标
{
{x = 137, z = 157}, {x = 130, z = 158}, {x = 140, z = 163}, {x = 124, z = 144}, {x = 121, z = 137}, {x = 126, z = 129}, {x = 141, z = 137}, {x = 138, z = 141}, {x = 101, z = 155}, 
{x = 108, z = 161}, {x = 111, z = 163}, {x = 109, z = 173}, {x = 107, z = 169}, {x = 133, z = 146}, {x = 128, z = 136}
}
x807003_gFourth_hudaoshenshouTbl =
{startx = 153, startz = 182, PatrolId = 0}

x807003_gFourth_feitianmaoTbl =
{startx = 155, startz = 150, PatrolId = 1}

x807003_gFourth_xiaozuzuTbl =
{startx = 155, startz = 150, PatrolId = 2}
x807003_gFourth_xiaohuhuTbl =
{startx = 155, startz = 150, PatrolId = 3}
x807003_gFourth_xiaoyingyingTbl =
{startx = 155, startz = 150, PatrolId = 4}
x807003_gFourth_xiaogougouTbl =
{startx = 155, startz = 150, PatrolId = 5}

--掉落
 -- 随机因子
x807003_g_RandNum = 10000

 -- 宠物的存活时间，3分钟
x807003_g_Lifecycle = 180000

--**********************************
--任务入口函数....
--**********************************
function x807003_OnDefaultEvent( sceneId, selfId, targetId )

--**********************************
--NPC对话
--**********************************
	BeginEvent( sceneId )
		AddText(sceneId, "R nhi玼 th th� 疸 鸶nh c� t読 Huy玭 V� 袖o. C醕 h� c� mu痭 餴 xem qua?")
		AddNumText( sceneId, x807003_g_scriptId, "Thi阯 H鄋g K� Th�", 6, 1 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end


function x807003_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	
	if GetNumText() == 1 then
		local nCheckRet = x807003_CheckCanEnterScene(sceneId, selfId, targetId, eventId)
		local strOutmsg = "";
		if (nCheckRet == 1) then
			strOutmsg = "Khi陁 chi猲 k� th�, ng呓i c t� 鸬i 韙 nh 3 ng叨i.";
		elseif (nCheckRet == 2) then
			strOutmsg = "C醕 h� kh鬾g ph鋓 鸬i tr叻ng. Vui l騨g g鱥 鸬i tr叻ng g ta.";
		elseif (nCheckRet == 3) then
			strOutmsg = "Khi陁 chi猲 k� th�, ng呓i c t� 鸬i 韙 nh 3 ng叨i."           --不够三人
		elseif (nCheckRet == 4) then
			strOutmsg = "械i ng� c� th鄋h vi阯 kh鬾g � g 疴y.";
		elseif (nCheckRet == 5 or nCheckRet == 6) then
			strOutmsg = "械i ng� c� th鄋h vi阯 kh鬾g 瘘 餴玼 ki畁.\n"           --5,6一定是框显示
			
			local nearMemberCount = GetNearTeamCount(sceneId, selfId);
			local sceneMemId = 0;
			local memName = "";
			
			local strOutMsgTemp = {}
			for i = 0, nearMemberCount - 1 do
				sceneMemId = GetNearTeamMember(sceneId, selfId, i)
				memName = GetName(sceneId, sceneMemId);
				strOutMsgTemp[i] = "#c3c3cff"..memName.."#W"
				if sceneMemId and sceneMemId >= 0 then			
					if (GetLevel(sceneId, sceneMemId) < x807003_g_Low_Level) then
						strOutMsgTemp[i] = strOutMsgTemp[i]..":\n  C 鸬 y陁 c "..tostring(x807003_g_Low_Level).."    #cff0000, ch遖 瘘 y陁 c.#W\n"
					else
						strOutMsgTemp[i] = strOutMsgTemp[i]..":\n  C 鸬 y陁 c "..tostring(x807003_g_Low_Level).."    #c00ff00, th鯽 m鉵 y陁 c.#W\n"
					end
					if (0 == x807003_CheckAllXinfaLevel(sceneId, sceneMemId)) then
						strOutMsgTemp[i] = strOutMsgTemp[i].."  T鈓 ph醦 y陁 c "..tostring(x807003_g_Low_Level_xinfa).."    #cff0000, ch遖 瘘 y陁 c.#W\n"
					else
						strOutMsgTemp[i] = strOutMsgTemp[i].."  T鈓 ph醦 y陁 c "..tostring(x807003_g_Low_Level_xinfa).."    #c00ff00, th鯽 m鉵 y陁 c.#W\n"
					end
				else
					strOutMsgTemp[i] = strOutMsgTemp[i]..memName..": 械i ng� c� th鄋h vi阯 ch遖 鹫t y陁 c."
				end
			end
			
			BeginEvent( sceneId )
				AddText(sceneId, strOutmsg)
				for i = 0, nearMemberCount - 1 do
					AddText(sceneId, strOutMsgTemp[i])
				end
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )	
			
			return
		end			

		if (nCheckRet > 0 and nCheckRet < 5) then
			if (x807003_tipinbox == 1) then
				BeginEvent( sceneId )
		   			AddText(sceneId, strOutmsg)
		   		EndEvent( sceneId )
		  		DispatchEventList( sceneId, selfId, targetId )	
			else
				x807003_NotifyFailTips(sceneId, selfId, strOutmsg);
			end
			return
		end
		
		--可以进入副本了
		local nearMemberCount = GetNearTeamCount(sceneId, selfId);
		x807003_MakeCopyScene(sceneId, selfId, targetId, nearMemberCount)	

	end

end


--**********************************
--检查是否, th鯽 m鉵 y陁 c.进入副本的要求

--检查是否, th鯽 m鉵 y陁 c.进入副本的要求
--返回值说明: 1     没组队
--            2     不是队长
--            3     不够三人
--            4     队员不在附近
--            5     队长等级心法不够
--            6     队员等级心法不够
--            7
--            0       , th鯽 m鉵 y陁 c.
--**********************************
function x807003_CheckCanEnterScene(sceneId, selfId, targetId, eventId)
	
	if LuaFnHasTeam(sceneId, selfId) == 0 then
		return 1
	end
	
	if LuaFnIsTeamLeader(sceneId, selfId) == 0 then
		return  2
	end
	
	local teamMemberCount = GetTeamMemberCount(sceneId, selfId);
	if not teamMemberCount or teamMemberCount < x807003_g_limitMembers then
		return  3
	end
	
	local nearMemberCount = GetNearTeamCount(sceneId, selfId);
	if not nearMemberCount or teamMemberCount ~= nearMemberCount then
		return 4
	end
	
	
	-- 检测队长的等级是否, th鯽 m鉵 y陁 c.要求
	if (GetLevel(sceneId, selfId) < x807003_g_Low_Level or 0 == x807003_CheckAllXinfaLevel(sceneId, selfId)) then
		return 5
	end
	
	-- 统计是否有队员, ch遖 瘘 y陁 c.等级T鈓 ph醦 y陁 c 
	local bHave = 0
	for i = 0, nearMemberCount - 1 do
		local sceneMemId = GetNearTeamMember(sceneId, selfId, i)
		if sceneMemId and sceneMemId >= 0 then			
			if (GetLevel(sceneId, sceneMemId) < x807003_g_Low_Level) then
				bHave = 1
			end
			if (0 == x807003_CheckAllXinfaLevel(sceneId, sceneMemId)) then
				bHave = 1
			end
		end
	end
	
	if(bHave == 1)then
		return 6;
	end
	 
--终于, th鯽 m鉵 y陁 c.了~~~
	return 0;
end



--**********************************
--创建副本
--nearmembercount: 队员个数
--**********************************
function x807003_MakeCopyScene(sceneId, selfId, targetId, nearmembercount)

	local x
	local z
	x,z = LuaFnGetWorldPos(sceneId,selfId)
	local leaderguid = LuaFnObjId2Guid(sceneId, selfId);
	LuaFnSetSceneLoad_Map(sceneId, x807003_g_FubenTbl.MapFile);										--地图是必须选取的，而且必须在Config/SceneInfo.ini里配置好
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x807003_g_NoUserTime * 1000);
	LuaFnSetCopySceneData_Timer(sceneId, x807003_g_tickDiffTime * 1000);
	
	--初始化所有副本参数
	for i=0, 31 do
		LuaFnSetCopySceneData_Param(sceneId, i, 0)
	end
	
	LuaFnSetCopySceneData_Param(sceneId, 0, x807003_g_CopySceneType);					--设置副本数据，这里将0号索引的数据设置为999，用于表示副本号999(数字自定义)
	LuaFnSetCopySceneData_Param(sceneId, 1, x807003_g_scriptId);						--将1号数据设置为副本场景事件脚本号
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);											--设置定时器调用次数
	LuaFnSetCopySceneData_Param(sceneId, 3, -1);										--设置副本入口场景号, 初始化
	LuaFnSetCopySceneData_Param(sceneId, 4, x);											--入口地址
	LuaFnSetCopySceneData_Param(sceneId, 5, z);											
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId, selfId));				--保存队伍号
	LuaFnSetCopySceneData_Param(sceneId, 7, 0);											--杀死龙麟的数量
	LuaFnSetCopySceneData_Param(sceneId, 8, x807003_g_FubenTbl.monsterId )	--小怪ID....
	LuaFnSetCopySceneData_Param(sceneId, 9, x807003_g_FubenTbl.bossId )		--BOSSID....
	LuaFnSetCopySceneData_Param(sceneId, 11, 0 )				--杀凤雏怪数....
	LuaFnSetCopySceneData_Param(sceneId, 12, 0 )				--step....
	LuaFnSetCopySceneData_Param(sceneId, 13, 0 )				--杀boss数量
	
	LuaFnSetSceneLoad_Area( sceneId, x807003_g_FubenTbl.AreaFile )
	LuaFnSetSceneLoad_Monster( sceneId, x807003_g_FubenTbl.MonsterFile )

	local bRetSceneID = LuaFnCreateCopyScene(sceneId)
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"M� ph� b鋘 th鄋h c鬾g.");
			--删除NPC
			LuaFnDeleteMonster(sceneId, targetId)
		else
			AddText(sceneId,"S� l唼ng ph� b鋘 鹫t th唼ng h課, h銀 瘙i th阭 m祎 l鷆.");
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end

--**********************************
--玩家退出副本
--**********************************
function x807003_PlayerExit(sceneId, selfId)

	if selfId then
		local oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3);		--取得副本入口场景号
		local x = LuaFnGetCopySceneData_Param(sceneId, 4);
		local z = LuaFnGetCopySceneData_Param(sceneId, 5);
		
		--将当前副本场景里的所有人传送回原来进入时候的场景
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId);
		local memId;
		for	i = 0, membercount - 1 do
			memId = LuaFnGetCopyScene_HumanObjId(sceneId, i);
			if LuaFnIsObjValid(sceneId, memId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, memId) == 1 then
				if memId == selfId then
					NewWorld(sceneId, memId, oldsceneId, x, z);
				end
			end
		end
	end
end

--**********************************
--副本事件
--**********************************
function x807003_OnCopySceneReady(sceneId, destsceneId)
	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId);		--设置副本入口场景号
	local leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId);
	local leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid);
	local day = GetDayTime();

	if LuaFnIsCanDoScriptLogic(sceneId, leaderObjId) ~= 1 then
		return 
	end

	--取得玩家附近的队友数量（包括自己）
	local nearMemberCount = GetNearTeamCount(sceneId, leaderObjId) ;
	local memId;
	for	i = 0, nearMemberCount - 1 do
		memId = GetNearTeamMember(sceneId, leaderObjId, i);
		if LuaFnIsObjValid(sceneId, memId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, memId) == 1 then
			NewWorld(sceneId, memId, destsceneId, x807003_g_FubenTbl.Fuben_start_x, x807003_g_FubenTbl.Fuben_start_z);
		end
		--活动统计现在还不需要
	end
	
	--统计，队长带了多少人进去(人数中包括队长)
	CreateCopySceneAudit(sceneId, leaderObjId, nearMemberCount)
end

--**********************************
--有玩家进入副本事件
--**********************************
function x807003_OnPlayerEnter(sceneId, selfId)
	--设置死亡后复活点位置	
	SetPlayerDefaultReliveInfo(sceneId, selfId, "%10", -1, "0", sceneId, x807003_g_FubenTbl.Fuben_start_x, x807003_g_FubenTbl.Fuben_start_z);  --复活点设置在刚进入的地方
	local teamLeaderFlag = LuaFnIsTeamLeader(sceneId, selfId);
	if teamLeaderFlag and teamLeaderFlag == 1 then
		LuaFnSetTeamExpAllotMode(sceneId, selfId, 0);      --平均分配模式
	end
end

--**********************************
--有玩家在副本中死亡事件
--**********************************
function x807003_OnHumanDie(sceneId, selfId, killerId)
end

--**********************************
--副本场景定时器事件
--**********************************
function x807003_OnCopySceneTimer(sceneId, nowTime)

	--副本时钟读取及设置
	local nStep = LuaFnGetCopySceneData_Param(sceneId, 12 )
	local curTickCount = LuaFnGetCopySceneData_Param(sceneId, 2);		--取得已经执行的定时次数
	
	--阶段控制
	if (nStep == 0) then        --副本刚刚开始
		LuaFnSetCopySceneData_Param(sceneId, 12, 1 )	
		
		LuaFnSetSceneWeather(sceneId, 19, 39*60*1000 );   --下雨
		
		--提示信息
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId);
		local memId;
		for	i = 0, membercount - 1 do
			memId = LuaFnGetCopyScene_HumanObjId(sceneId, i);
			if LuaFnIsObjValid(sceneId, memId) == 1 then
 				x807003_NotifyFailTips(sceneId, memId, "Thi阯 Ni阯 K� Th�: L鬷 L鈔 th b� 疸 xu hi畁 t読 Huy玭 V� 袖o.");
 			end
		end		
		
		--出现第一批怪
		for i, MonsterPos in x807003_gFirst_MonstersTbl do
			objId = LuaFnCreateMonster( sceneId, x807003_monster_leilin.ID, MonsterPos.x, MonsterPos.z, x807003_monster_leilin.Aitype, x807003_monster_leilin.AiscriptId , x807003_monster_leilin.scriptId )			
		end
		
		--建立大boss，H� 袖o Th Th�
		objId = LuaFnCreateMonster( sceneId, x807003_monster_xudaoshenshou.ID, x807003_gFourth_hudaoshenshouTbl.startx, x807003_gFourth_hudaoshenshouTbl.startz, x807003_monster_xudaoshenshou.Aitype, x807003_monster_xudaoshenshou.AiscriptId , x807003_monster_xudaoshenshou.scriptId )			
		SetPatrolId(sceneId, objId, x807003_gFourth_hudaoshenshouTbl.PatrolId )
		--V� 懈ch Thi阯 Mi陁
		objId = LuaFnCreateMonster( sceneId, x807003_monster_feitianmao.ID, x807003_gFourth_feitianmaoTbl.startx, x807003_gFourth_feitianmaoTbl.startz, x807003_monster_feitianmao.Aitype, x807003_monster_feitianmao.AiscriptId , x807003_monster_feitianmao.scriptId )			
		SetCharacterTitle(sceneId, objId, "Huy璶 V� 袖o Trinh T 械i Tr叻ng")
		SetMonsterGroupID(sceneId, objId, x807003_monster_groupId);	--每组怪物属于同一个GroupID，这样怪物们可以互相增援
		SetPatrolId(sceneId, objId, x807003_gFourth_feitianmaoTbl.PatrolId )
		objId = LuaFnCreateMonster( sceneId, x807003_monster_xiaozhuzhu.ID, x807003_gFourth_xiaozuzuTbl.startx, x807003_gFourth_xiaozuzuTbl.startz, x807003_monster_xiaozhuzhu.Aitype, x807003_monster_xiaozhuzhu.AiscriptId , x807003_monster_xiaozhuzhu.scriptId )			
		SetMonsterGroupID(sceneId, objId, x807003_monster_groupId);
		SetPatrolId(sceneId, objId, x807003_gFourth_xiaozuzuTbl.PatrolId )
		objId = LuaFnCreateMonster( sceneId, x807003_monster_xiaohuhu.ID, x807003_gFourth_xiaohuhuTbl.startx, x807003_gFourth_xiaohuhuTbl.startz, x807003_monster_xiaohuhu.Aitype, x807003_monster_xiaohuhu.AiscriptId , x807003_monster_xiaohuhu.scriptId )			
		SetMonsterGroupID(sceneId, objId, x807003_monster_groupId);
		SetPatrolId(sceneId, objId, x807003_gFourth_xiaohuhuTbl.PatrolId )
		objId = LuaFnCreateMonster( sceneId, x807003_monster_xiaoyingying.ID, x807003_gFourth_xiaoyingyingTbl.startx, x807003_gFourth_xiaoyingyingTbl.startz, x807003_monster_xiaoyingying.Aitype, x807003_monster_xiaoyingying.AiscriptId , x807003_monster_xiaoyingying.scriptId )			
		SetMonsterGroupID(sceneId, objId, x807003_monster_groupId);
		SetPatrolId(sceneId, objId, x807003_gFourth_xiaoyingyingTbl.PatrolId )
		objId = LuaFnCreateMonster( sceneId, x807003_monster_xiaogougou.ID, x807003_gFourth_xiaogougouTbl.startx, x807003_gFourth_xiaogougouTbl.startz, x807003_monster_xiaogougou.Aitype, x807003_monster_xiaogougou.AiscriptId , x807003_monster_xiaogougou.scriptId )			
		SetMonsterGroupID(sceneId, objId, x807003_monster_groupId);
		SetPatrolId(sceneId, objId, x807003_gFourth_xiaogougouTbl.PatrolId )
		
	elseif (nStep == 4) then     --怪死光了
		curTickCount	= 2340
		LuaFnSetCopySceneData_Param(sceneId, 2, curTickCount);--设置新的定时器调用次数
		LuaFnSetCopySceneData_Param(sceneId, 12, 5 )   --进入倒计时了	
	end
	
	--时间控制
	local strOutMsg = ""
	--第二批怪逻辑
	if (curTickCount >=20 and curTickCount <= 30) then
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId);
		local memId;
		
		if(curTickCount == 20) then
			strOutMsg = "Thi阯 Ni阯 K� Th�: Linh th� S� Ph唼ng 60 gi鈟 sau s� gi醤g tr."
		elseif(curTickCount == 23) then
			strOutMsg = "Thi阯 Ni阯 K� Th�: Linh th� S� Ph唼ng 30 gi鈟 sau s� gi醤g tr."
		elseif(curTickCount == 25) then
			strOutMsg = "Thi阯 Ni阯 K� Th�: Linh th� S� Ph唼ng 10 gi鈟 sau s� gi醤g tr."
		elseif(curTickCount == 28) then
			strOutMsg = "Thi阯 Ni阯 K� Th�: Linh th� S� Ph唼ng 5 gi鈟 sau s� gi醤g tr."
		elseif(curTickCount == 30) then
			strOutMsg = "Thi阯 Ni阯 K� Th�: Linh th� S� Ph唼ng 疸 xu hi畁 t読 Huy玭 V� 袖o."
			--出现第二批怪
			for i, MonsterPos in x807003_gSecond_MonstersTbl do
				objId = LuaFnCreateMonster( sceneId, x807003_monster_chufeng.ID, MonsterPos.x, MonsterPos.z, x807003_monster_chufeng.Aitype, x807003_monster_chufeng.AiscriptId , x807003_monster_chufeng.scriptId )			
			end
		end
		
		for	i = 0, membercount - 1 do
			memId = LuaFnGetCopyScene_HumanObjId(sceneId, i);
			if LuaFnIsObjValid(sceneId, memId) == 1 then
 				x807003_NotifyFailTips(sceneId, memId, strOutMsg);
 			end
		end		
	
		--第三批怪逻辑
	elseif (curTickCount >=540 and curTickCount <= 600) then
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId);
		local memId;
		
		if(curTickCount == 54) then
			strOutMsg = "Thi阯 Ni阯 K� Th�: Th th� L鬷 L鈔 60 gi鈟 sau s� gi醤g tr."
		elseif(curTickCount == 57) then
			strOutMsg = "Thi阯 Ni阯 K� Th�: Th th� L鬷 L鈔 30 gi鈟 sau s� gi醤g tr."
		elseif(curTickCount == 59) then
			strOutMsg = "Thi阯 Ni阯 K� Th�: Th th� L鬷 L鈔 10 gi鈟 sau s� gi醤g tr."
		elseif(curTickCount == 59) then
			strOutMsg = "Thi阯 Ni阯 K� Th�: Th th� L鬷 L鈔 5 gi鈟 sau s� gi醤g tr."
		elseif(curTickCount == 60) then
			strOutMsg = "Thi阯 Ni阯 K� Th�: Th th� L鬷 L鈔 疸 xu hi畁 t読 Huy玭 V� 袖o"
			--出现第三批怪
			for i, MonsterPos in x807003_gThird_MonstersTbl do
				objId = LuaFnCreateMonster( sceneId, x807003_monster_leilin.ID, MonsterPos.x, MonsterPos.z, x807003_monster_leilin.Aitype, x807003_monster_leilin.AiscriptId , x807003_monster_leilin.scriptId )			
			end
		end
		
		for	i = 0, membercount - 1 do
			memId = LuaFnGetCopyScene_HumanObjId(sceneId, i);
			if LuaFnIsObjValid(sceneId, memId) == 1 then
 				x807003_NotifyFailTips(sceneId, memId, strOutMsg);
 			end
		end		

	
	--第四批怪逻辑
	elseif (curTickCount >=84 and curTickCount <= 90) then
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId);
		local memId;
		
		if(curTickCount == 84) then
			strOutMsg = "Thi阯 Ni阯 K� Th�: Linh th� S� Ph唼ng 60 gi鈟 sau s� gi醤g tr."
		elseif(curTickCount == 87) then
			strOutMsg = "Thi阯 Ni阯 K� Th�: Linh th� S� Ph唼ng 30 gi鈟 sau s� gi醤g tr."
		elseif(curTickCount == 89) then
			strOutMsg = "Thi阯 Ni阯 K� Th�: Linh th� S� Ph唼ng 10 gi鈟 sau s� gi醤g tr."
		elseif(curTickCount == 89) then
			strOutMsg = "Thi阯 Ni阯 K� Th�: Linh th� S� Ph唼ng 5 gi鈟 sau s� gi醤g tr."
		elseif(curTickCount == 90) then
			strOutMsg = "Thi阯 Ni阯 K� Th�: Linh th� S� Ph唼ng 疸 xu hi畁 t読 Huy玭 V� 袖o."
			--出现第四批怪
			for i, MonsterPos in x807003_gFourth_MonstersTbl do
				objId = LuaFnCreateMonster( sceneId, x807003_monster_chufeng.ID, MonsterPos.x, MonsterPos.z, x807003_monster_chufeng.Aitype, x807003_monster_chufeng.AiscriptId , x807003_monster_chufeng.scriptId )			
			end
		end
		
		for	i = 0, membercount - 1 do
			memId = LuaFnGetCopyScene_HumanObjId(sceneId, i);
			if LuaFnIsObjValid(sceneId, memId) == 1 then
 				x807003_NotifyFailTips(sceneId, memId, strOutMsg);
 			end
		end		

	--40分钟到了curTickCount == 2400)
	elseif (curTickCount >=2340) then
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId);
		local memId;
		if (curTickCount == 2340) then
			strOutMsg = "C醕 h� s� r秈 kh鰅 疴y sau 60 gi鈟."
		elseif(curTickCount == 2370) then
			strOutMsg = "C醕 h� s� r秈 kh鰅 疴y sau 30 gi鈟."
		elseif(curTickCount == 2380) then
			strOutMsg = "C醕 h� s� r秈 kh鰅 疴y sau 20 gi鈟."
		elseif(curTickCount == 2390) then
			strOutMsg = "C醕 h� s� r秈 kh鰅 疴y sau 10 gi鈟."
		elseif(curTickCount == 2395) then
			strOutMsg = "C醕 h� s� r秈 kh鰅 疴y sau 5 gi鈟."
		elseif(curTickCount >= 2400) then
			local oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3);		--取得副本入口场景号,准备把玩家传出去
			local x = LuaFnGetCopySceneData_Param(sceneId, 4);
			local z = LuaFnGetCopySceneData_Param(sceneId, 5);
		
			--将当前副本场景里的所有人传送回原来进入时候的场景
			local membercount = LuaFnGetCopyScene_HumanCount(sceneId);
			
			local memId;
			for	i = 0, membercount - 1 do
				memId = LuaFnGetCopyScene_HumanObjId(sceneId, i);
				if LuaFnIsObjValid(sceneId, memId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, memId) == 1 then
					NewWorld(sceneId, memId, oldsceneId, x, z);
				end
			end
			return
		end
		
		for	i = 0, membercount - 1 do
			memId = LuaFnGetCopyScene_HumanObjId(sceneId, i);
			if LuaFnIsObjValid(sceneId, memId) == 1 then
 				x807003_NotifyFailTips(sceneId, memId, strOutMsg);
 			end
		end		
	end
	
	curTickCount = curTickCount + 1;
	LuaFnSetCopySceneData_Param(sceneId, 2, curTickCount);--设置新的定时器调用次数
	
end

--**********************************
--副本场景中杀了怪
--**********************************
function x807003_OnDie(sceneId, selfId, killerId)						-- 场景ID, 被杀的ObjId, 杀手ObjId

	CallScriptFunction(501000, "OnDie", sceneId, selfId, killerId) 
	
	--下面是统计功能
	local szName = GetName(sceneId, selfId)

	local AllMonsterNum = 0;
	--下面是第一批，第二批，第三批，第四批怪，和6个boss(两个大boss，四个小..)
--	AllMonsterNum = x807003_gFirst_MonstersTbl.size + x807003_gSecond_MonstersTbl.size + x807003_gThird_MonstersTbl.size + x807003_gFourth_MonstersTbl.size  
	AllMonsterNum = x807003_monster_First_num + x807003_monster_Second_num + x807003_monster_Third_num + x807003_monster_Fourth_num + x807003_monster_boss_num
	
	local nKilledMonsterNum_feng = LuaFnGetCopySceneData_Param(sceneId, 7);											--杀死凤的数量
	local nKilledMonsterNum_long = LuaFnGetCopySceneData_Param(sceneId, 11);											--杀死龙的数量
	local nKilledMonsterNum_boss = LuaFnGetCopySceneData_Param(sceneId, 13);											--杀死boss的数量
	
	local strOutMsg = ""
	local AuditType = 0
	if (szName == x807003_monster_chufeng.name) then
		nKilledMonsterNum_feng = nKilledMonsterNum_feng + 1
		LuaFnSetCopySceneData_Param(sceneId, 7, nKilledMonsterNum_feng);
		strOutMsg = strOutMsg.."秀 khi陁 chi猲 Thi阯 Ni阯 K� Th� S� Ph唼ng "..tostring(nKilledMonsterNum_feng).."/"..tostring(x807003_monster_Second_num + x807003_monster_Fourth_num)
		AuditType = 1
	elseif (szName == x807003_monster_leilin.name) then
		nKilledMonsterNum_long = nKilledMonsterNum_long + 1
		LuaFnSetCopySceneData_Param(sceneId, 11, nKilledMonsterNum_long);
		strOutMsg = strOutMsg.."秀 khi陁 chi猲 Thi阯 Ni阯 K� Th� L鬷 L鈔 "..tostring(nKilledMonsterNum_long).."/"..tostring(x807003_monster_Second_num + x807003_monster_Fourth_num)
		AuditType = 2
	elseif (szName == x807003_monster_xudaoshenshou.name) then
		nKilledMonsterNum_boss = nKilledMonsterNum_boss + 1
		LuaFnSetCopySceneData_Param(sceneId, 13, nKilledMonsterNum_boss);
		strOutMsg = strOutMsg.."秀 gi猼 ch猼 H� 袖o Th Th�: 1/1."
		AuditType = 3
	elseif (szName == x807003_monster_feitianmao.name) then
		nKilledMonsterNum_boss = nKilledMonsterNum_boss + 1
		LuaFnSetCopySceneData_Param(sceneId, 13, nKilledMonsterNum_boss);
		strOutMsg = strOutMsg.."秀 gi猼 ch猼 V� 懈ch Thi阯 Mi陁: 1/1."
		AuditType = 4
	elseif (szName == x807003_monster_xiaozhuzhu.name) then
		nKilledMonsterNum_boss = nKilledMonsterNum_boss + 1
		LuaFnSetCopySceneData_Param(sceneId, 13, nKilledMonsterNum_boss);
		strOutMsg = strOutMsg.."秀 gi猼 ch猼 小猪猪: 1/1."
		AuditType = 5
	elseif (szName == x807003_monster_xiaohuhu.name) then
		nKilledMonsterNum_boss = nKilledMonsterNum_boss + 1
		LuaFnSetCopySceneData_Param(sceneId, 13, nKilledMonsterNum_boss);
		strOutMsg = strOutMsg.."秀 gi猼 ch猼 Ti瑄 Tr� Tr�: 1/1."
		AuditType = 5
	elseif (szName == x807003_monster_xiaoyingying.name) then
		nKilledMonsterNum_boss = nKilledMonsterNum_boss + 1
		LuaFnSetCopySceneData_Param(sceneId, 13, nKilledMonsterNum_boss);
		strOutMsg = strOutMsg.."秀 gi猼 ch猼 Ti瑄 H� H�: 1/1."
		AuditType = 5
	elseif (szName == x807003_monster_xiaogougou.name) then
		nKilledMonsterNum_boss = nKilledMonsterNum_boss + 1
		LuaFnSetCopySceneData_Param(sceneId, 13, nKilledMonsterNum_boss);
		strOutMsg = strOutMsg.."秀 gi猼 ch猼 Ti瑄 縩g 縩g: 1/1."
		AuditType = 5
	end
	
	local nAllKilled = nKilledMonsterNum_feng + nKilledMonsterNum_long + nKilledMonsterNum_boss
	local membercount = LuaFnGetCopyScene_HumanCount(sceneId);
	for	i = 0, membercount - 1 do
		memId = LuaFnGetCopyScene_HumanObjId(sceneId, i);
		if LuaFnIsObjValid(sceneId, memId) == 1 then
 			x807003_NotifyFailTips(sceneId, memId, strOutMsg);
 		end
	end		

	if (nAllKilled >= AllMonsterNum) then
		LuaFnSetCopySceneData_Param(sceneId, 12, 4 )        --该走了
	end
end

--站在离开场景的光影里面，准备去往楼兰
function x807003_OnEnterArea( sceneId, selfId )
		local oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3);		--取得副本入口场景号
		local x = LuaFnGetCopySceneData_Param(sceneId, 4);
		local z = LuaFnGetCopySceneData_Param(sceneId, 5);
		NewWorld(sceneId, selfId, oldsceneId, x, z);
end

function x807003_OnLeaveArea( sceneId, selfId )
end

function x807003_NotifyFailTips(sceneId, selfId, Tip)
	BeginEvent(sceneId);
		AddText(sceneId, Tip);
	EndEvent(sceneId);
	DispatchMissionTips(sceneId, selfId);
end


function x807003_CheckAllXinfaLevel(sceneId, memId)
	local nMenpai = GetMenPai(sceneId, memId)
	if nMenpai<0 or nMenpai>8   then
		return 0
	end
	
	for i=1, 6 do
		local nXinfaLevel = LuaFnGetXinFaLevel(sceneId, memId, nMenpai*6 + i)
		if nXinfaLevel < x807003_g_Low_Level_xinfa    then
			return 0
		end
	end
	return 1
end
