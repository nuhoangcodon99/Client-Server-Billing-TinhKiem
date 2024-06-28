-- 连环副本任务
-- 野外匪寨

--************************************************************************
--MisDescBegin
--hd add 16/7/2014
x050102_active_drop_longwen =1; --k韈h ho誸 drop item long v錸 li阯 quan
x050102_rate_drop_longwen =40; -- ty le drop item long v錸 li阯 quan 40 -> 40%
x050102_drop_longwen_item = {
	--30900016,--cao c h䅟 th鄋h ph�
	
	20310180,-- T竎h V鈔 Th鼀
	20310180,-- T竎h V鈔 Th鼀
	20310180,-- T竎h V鈔 Th鼀
	20310180,-- T竎h V鈔 Th鼀
	30008014,--x 2.5
	
	30505107,-- Ti瑄 L誸 B�
	
	--yq bt 8
	

	30308121,
	30308122,
	30308123,
	30308124,
	30308125,
	30308126,
	30308127,
	30308128,
	30308129,
	
	
	20310183,--Xuy猼 Long Th誧h_Th呓ng
	38000184,--chu van tinh ngoc +5 khong co dinh
	
	20503062,--Ly H鯽
	20503062,--Ly H鯽
	20503062,--Ly H鯽
	20503062,--Ly H鯽
	20503062,--Ly H鯽
	20503062,--Ly H鯽
	20503062,--Ly H鯽
	20503062,--Ly H鯽
	20503062,--Ly H鯽
	20503062,--Ly H鯽
	20503062,--Ly H鯽
	20503062,--Ly H鯽
	20503062,--Ly H鯽
	20503062,--Ly H鯽
	20503062,--Ly H鯽
	20503062,--Ly H鯽
	
	20503061, --Trang b� Tinh th鬾g ph�
	20503061, --Trang b� Tinh th鬾g ph�
	20503061, --Trang b� Tinh th鬾g ph�
}
--end hd add 16/7/2014


-- 脚本号
x050102_g_ScriptId = 050102

-- 任务号
x050102_g_MissionId = 1262					-- 1260 - 1269

-- 上一个任务的 ID
-- g_MissionIdPre = 1260

-- 任务目标 NPC
x050102_g_Name = "Ti玭 H皀g V� "

--任务归类
x050102_g_MissionKind = 8

--任务等级
x050102_g_MissionLevel = 10000

-- 任务文本描述
x050102_g_MissionName = "S鄌 huy畉 c黙 ph�"
x050102_g_MissionInfo = "    Cu痠 c鵱g 疸 t靘 疬㧟 s鄌 huy畉 c黙 ph� 鸢, %s, sau 疴y c騨 nhi甿 v� quan tr鱪g h絥 giao cho c醕 h�. V� qu� h呓ng c黙 ch鷑g t鬷 h銀 餴 gi猼 ch猼 Ph� 邪 Th� L頽h C醫 Vinh. "	-- 任务描述
x050102_g_MissionTarget = "    Ti玭 H皀g V� � T� Ch鈛 #{_INFOAIM62,162,1, Ti玭 H皀g V鹽 y陁 c c醕 h� gi猼 ch猼 ph� 鸨 馥u l頽h C醫 Vinh."									-- 任务目标
x050102_g_ContinueInfo = "    衖 皙n s鄌 huy畉 ph� 鸢 kh� kh錸 v� c鵱g, %s, c醕 h� 疸 chu b� ch遖 ?"			-- 未完成任务的npc对话
x050102_g_SubmitInfo = "    Nhi甿 v� l鄊 th� n鄌 r癷?"										-- 提交时的答复
x050102_g_MissionComplete = "    V� c醕 h� hoan h�, t鬾 k韓h c黙 %s, c醡 絥 c醕 h�, v� ch鷑g t鬷 餰m l読 ho� b靚h. Xin h銀 gi� l nh鎛g m髇 qu� n鄖. "	--完成任务npc说的话

x050102_g_IsMissionOkFail = 0														-- 0 号：当前任务是否完成(0未完成；1完成；2失败)
x050102_g_DemandKill = { { id = 4130, num = 1 } }									-- 1 号，怪物信息
x050102_g_Param_sceneid = 2															-- 2 号：当前副本任务的场景号

-- 任务奖励
-- 奖励经验 = 玩家等级 * x050102_g_k - x050102_g_b
x050102_g_k = 3323
x050102_g_b = 45613

--MisDescEnd
--************************************************************************

x050102_g_DemandKillGroup = { 0 }			-- 1 号怪物对应的 GroupID 号，与 x050102_g_DemandKill 一一对应
x050102_g_BossGroup = 0						-- Boss Group ID
x050102_g_Mail = 40004316					-- 书信

x050102_g_NumText_Main = 1					-- 接任务的选项
x050102_g_NumText_EnterCopyScene = 2		-- 要求进入副本的选项

x050102_g_CopySceneMap = "yewai.nav"
x050102_g_CopySceneArea = "yewai_area.ini"
x050102_g_CopySceneMonsterIni = "yewai_monster_%d.ini"

x050102_g_CopySceneType = FUBEN_FEIZHAI		-- 副本类型，定义在ScriptGlobal.lua里面
x050102_g_LimitMembers = 3					-- 可以进副本的最小队伍人数
x050102_g_LevelLimit = 30					-- 可以进入副本的最低级别
x050102_g_TickTime = 5						-- 回调脚本的时钟时间（单位：秒/次）
x050102_g_LimitTotalHoldTime = 360			-- 副本可以存活的时间（单位：次数）,如果此时间到了，则任务将会失败
x050102_g_CloseTick = 6						-- 副本关闭前倒计时（单位：次数）
x050102_g_NoUserTime = 30					-- 副本中没有人后可以继续保存的时间（单位：秒）

x050102_g_Fuben_X = 11
x050102_g_Fuben_Z = 24
x050102_g_Back_X = 60
x050102_g_Back_Z = 161

x050102_g_Fuben_Relive_X = 11
x050102_g_Fuben_Relive_Z = 24

-- 广播消息
x050102_g_BroadcastMsg = {
	"#Y"..x050102_g_Name .. ":  #cff99cc B醥 cho m鱥 ng叨i 1 th鬾g tin t痶 l鄋h, t阯 th� l頽h danh ti猲g x xa c黙 ph� 鸢 l� #GC醫 Vinh #cff0000, h鬽 nay cu痠 c鵱g c鹡g 疸 ph鋓 皤n t礽, ng叨i gi猼 ch猼 h ch韓h l�-- #{_INFOUSR$N} #cff0000! m鱥 ng叨i c鵱g v� tay nh�!",
	"#Y"..x050102_g_Name .. ": #cff99cc ch鷑g ta h銀 nhi畉 li畉 ch鷆 m譶g, C醫 Vinh #Gth� l頽h#cff0000 c黙 ph� 鸢 #cff0000 疸 kh鬾g th� l鄊 h読 m鱥 ng叨i n鎍 r癷, h 疸 ch猼 trong tay c黙 #{_INFOUSR$N} #cff0000, m鱥 ng叨i h銀 c鵱g hoan h� nh�!",
	"#Y"..x050102_g_Name .. ": #GC醫 Vinh #cff0000 ch猼 r癷! B 馥u t� h鬽 nay, ch鷑g ta kh鬾g c ph鋓 s痭g trong tr課g th醝 th th鰉 lo s� n鎍! H銀 ca ng㱮 v� anh h鵱g c黙 ch鷑g ta: #{_INFOUSR$N} #cff0000, c醕 h� qu� th r t鄆 gi鰅!"
}

x050102_g_TakeTimes = 15											-- 每天最多领取次数
x050102_g_RelationReward = 10									-- 关系值奖励
x050102_g_MaxRelation = 9999									-- 关系最大值

--**********************************
-- 任务入口函数
--**********************************
function x050102_OnDefaultEvent( sceneId, selfId, targetId )	-- 点击该任务后执行此脚本
	if GetName( sceneId, targetId ) ~= x050102_g_Name then		-- 判断该npc是否是对应任务的npc
		return
	end

	local numText = GetNumText()

	if IsHaveMission( sceneId, selfId, x050102_g_MissionId ) == 0 then
		if numText == x050102_g_NumText_Main then
			if x050102_CheckAccept( sceneId, selfId ) > 0 then
				--发送任务接受时显示的信息
				BeginEvent( sceneId )
					AddText( sceneId, x050102_g_MissionName )
					AddText( sceneId, format( x050102_g_MissionInfo, GetName( sceneId, selfId ) ) )
					AddText( sceneId, "#{M_MUBIAO}" )
					AddText( sceneId, x050102_g_MissionTarget )
				EndEvent( )
				DispatchMissionInfo( sceneId, selfId, targetId, x050102_g_ScriptId, x050102_g_MissionId )
			end
		end
	else
		if numText == x050102_g_NumText_Main then
			local bDone = x050102_CheckSubmit( sceneId, selfId )

			BeginEvent( sceneId )
				AddText( sceneId, x050102_g_MissionName )

				if bDone == 1 then
					AddText( sceneId, x050102_g_SubmitInfo )
				else
					AddText( sceneId, format( x050102_g_ContinueInfo, GetName( sceneId, selfId ) ) )
					x050102_AskEnterCopyScene( sceneId, selfId, targetId )
					DispatchEventList( sceneId, selfId, targetId )
					return
				end
			EndEvent( )
			DispatchMissionDemandInfo( sceneId, selfId, targetId, x050102_g_ScriptId, x050102_g_MissionId, bDone )
		elseif numText == x050102_g_NumText_EnterCopyScene then
			x050102_AcceptEnterCopyScene( sceneId, selfId, targetId )
		end
	end
end

--**********************************
-- 不能有其他的任务，没有返回 0，有返回 1
--**********************************
function x050102_CheckConflictMission( sceneId, selfId )
	local missionId = 0

	for missionId = 1260, x050102_g_MissionId - 1 do
		if IsHaveMission( sceneId, selfId, missionId ) > 0 then
			return 1
		end
	end

	for missionId = x050102_g_MissionId + 1, 1269 do
		if IsHaveMission( sceneId, selfId, missionId ) > 0 then
			return 1
		end
	end

	return 0
end

--**********************************
-- 列举事件
--**********************************
function x050102_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x050102_g_Name then		--判断该npc是否是对应任务的npc
		return
	end

	-- 不能有其他的任务
	if x050102_CheckConflictMission( sceneId, selfId ) == 1 then
		return
	end

	AddNumText( sceneId, x050102_g_ScriptId, x050102_g_MissionName, 4, x050102_g_NumText_Main )
end

--**********************************
-- 检测接受条件
--**********************************
function x050102_CheckAccept( sceneId, selfId )
	-- 已经接过则不符合条件
	if IsHaveMission( sceneId, selfId, x050102_g_MissionId ) > 0 then
		return 0
	end

	-- 不能有其他的任务
	if x050102_CheckConflictMission( sceneId, selfId ) == 1 then
		return 0
	end

	-- 检测玩家是否符合刚放弃任务
	local iTime = GetMissionData( sceneId, selfId, MD_ROUNDMISSION3 )			-- 上一次放弃任务的时间(单位：一刻钟)
	--begin modified by zhangguoxin 090208
	--local CurTime = GetHourTime()												-- 当前时间(单位：一刻钟)
	local CurTime = GetQuarterTime()												-- 当前时间(单位：一刻钟)
	--end modified by zhangguoxin 090208
	if iTime+1 >= CurTime then
		x050102_NotifyFailTips( sceneId, selfId, "Sau khi t� b� nhi甿 v� 30 ph鷗, m緄 c� th� nh l n鎍." )
		return 0
	end

	-- 如果没有信则提示
	if LuaFnGetAvailableItemCount( sceneId, selfId, x050102_g_Mail ) < 1 then
		x050102_NotifyFailTips( sceneId, selfId, "    C ph鋓 #{_ITEM" .. x050102_g_Mail .."}" )
		return 0
	end

	-- 一天只能领 x050102_g_TakeTimes 次
	local DayTimes, oldDate, nowDate, takenTimes

	DayTimes = GetMissionData( sceneId, selfId, MD_ROUNDMISSION3_TIMES )
	oldDate = mod( DayTimes, 100000 )
	takenTimes = floor( DayTimes/100000 )

	nowDate = GetDayTime()
	if nowDate ~= oldDate then
		takenTimes = 0
	end

	if takenTimes >= x050102_g_TakeTimes then
		x050102_NotifyFailTips( sceneId, selfId, "S� l nh nhi甿 v� c黙 c醕 h� h鬽 nay 疸 v唼t qu�" .. x050102_g_TakeTimes .. " l, xin ng鄖 mai quay l読 nh" )
		return 0
	else
		DayTimes = nowDate + takenTimes * 100000
		SetMissionData( sceneId, selfId, MD_ROUNDMISSION3_TIMES, DayTimes )
	end

	return 1
end

--**********************************
-- 请求进入副本场景
--**********************************
function x050102_AskEnterCopyScene( sceneId, selfId, targetId )
	AddNumText( sceneId, x050102_g_ScriptId, "歇n s絥 tr読 ph� t", 10, x050102_g_NumText_EnterCopyScene )
end

--**********************************
--接受
--**********************************
function x050102_OnAccept( sceneId, selfId, targetId )
	if IsHaveMission( sceneId, selfId, x050102_g_MissionId ) == 0 then					-- 没有任务才可以走这里
		if GetMissionCount( sceneId, selfId ) >= 20 then						-- 身上任务数量是否达到上限20个
			x050102_NotifyFailBox( sceneId, selfId, targetId, "    Nhi甿 v� ghi ch閜 疸 馥y, kh鬾g th� nh th阭 nhi甿 v�" )
			return
		end

		if GetLevel( sceneId, selfId ) < x050102_g_LevelLimit then
			x050102_NotifyFailBox( sceneId, selfId, targetId, "    衅ng c c黙 ng呓i qu� th, nhi甿 v� n鄖 鸠i v緄 ng呓i qu� nguy hi琺, h銀 luy畁 t tr呔c khi t緄" )
			return
		end

		-- 不能有其他的任务
		if x050102_CheckConflictMission( sceneId, selfId ) == 1 then
			return
		end

		-- 如果玩家身上具有一块以上的道具”花剑雨的信”,可以在此接受新任务,接任务的同时消耗一个”花剑雨的信”。
		if LuaFnDelAvailableItem( sceneId, selfId, x050102_g_Mail, 1 ) == 0 then
			-- 否则显示：需要“花剑雨的信”
			x050102_NotifyFailBox( sceneId, selfId, targetId, "    C ph鋓 #{_ITEM" .. x050102_g_Mail .."}" )
			return
		end

		-- 加入任务到玩家列表
		AddMission( sceneId, selfId, x050102_g_MissionId, x050102_g_ScriptId, 1, 0, 0 )			-- kill、area、item
		if IsHaveMission( sceneId, selfId, x050102_g_MissionId ) <= 0 then
			return
		end

		-- 一天只能领 x050102_g_TakeTimes 次
		local DayTimes

		DayTimes = GetMissionData( sceneId, selfId, MD_ROUNDMISSION3_TIMES )
		DayTimes = DayTimes + 100000
		SetMissionData( sceneId, selfId, MD_ROUNDMISSION3_TIMES, DayTimes )

--		SetMissionEvent( sceneId, selfId, x050102_g_MissionId, 4 ) -- 注册 OnLockedTarget 事件

		local misIndex = GetMissionIndexByID( sceneId, selfId, x050102_g_MissionId )

		SetMissionByIndex( sceneId, selfId, misIndex, x050102_g_IsMissionOkFail, 0 )	-- 任务完成情况置为未完成
		SetMissionByIndex( sceneId, selfId, misIndex, x050102_g_Param_sceneid, -1 )		-- 副本号置为 -1

		--显示内容告诉玩家已经接受了任务
		BeginEvent( sceneId )
			AddText( sceneId, x050102_g_MissionName )
			AddText( sceneId, format( x050102_g_ContinueInfo, GetName( sceneId, selfId ) ) )
			AddText( sceneId, "#r    C醕 h� 疸 nh " .. x050102_g_MissionName )

			x050102_AskEnterCopyScene( sceneId, selfId, targetId )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
end

--**********************************
-- 请求进入副本场景
--**********************************
function x050102_AcceptEnterCopyScene( sceneId, selfId, targetId )
	if IsHaveMission( sceneId, selfId, x050102_g_MissionId ) > 0 then					-- 有任务才可以走这里
		local misIndex = GetMissionIndexByID( sceneId, selfId, x050102_g_MissionId )
		local copysceneid = GetMissionParam( sceneId, selfId, misIndex, x050102_g_Param_sceneid )
		if copysceneid >= 0 then												-- 进过副本
			-- 将自己传送到副本场景
			if IsCanEnterCopyScene( copysceneid, GetHumanGUID( sceneId, selfId ) ) == 1 then
				NewWorld( sceneId, selfId, copysceneid, x050102_g_Fuben_X, x050102_g_Fuben_Z )
			else
				x050102_NotifyFailBox( sceneId, selfId, targetId, "    R ti猚, nhi甿 v� c黙 ng呓i 疸 th b読" )
			end

			return
		end

		if LuaFnHasTeam( sceneId, selfId ) == 0 then
			x050102_NotifyFailBox( sceneId, selfId, targetId, "    M祎 m靚h ng呓i th馽 l馽 m鰊g, h銀 g鱥 th阭 m ng叨i t緄 gi鷓 餴" )
			return
		end

		if LuaFnIsTeamLeader( sceneId, selfId ) == 0 then
			x050102_NotifyFailBox( sceneId, selfId, targetId, "    Ta c ph鋓 疬㧟 鸬i tr叻ng x醕 nh m緄 c� th� y阯 t鈓 瓞 c醕 ng呓i 皙n s絥 tr読 c黙 ph� 疬㧟" )
			return
		end
		
		--bug27726，2007.11.15 by alan，因为sceneMemberCount不一定准确，改用附近队员数与队伍人数的比较判断
		--并不再提示具体不在附近的队员名称
				
		local teamMemberCount = GetTeamMemberCount(sceneId, selfId);	
		local nearMemberCount = GetNearTeamCount(sceneId, selfId);		
		if not teamMemberCount or not nearMemberCount or teamMemberCount ~= nearMemberCount then
			x050102_NotifyFailBox( sceneId, selfId, targetId, "    Anh c騨 c� nh髆 vi阯 � g 疴y" )
			return
		end
		
		--bug27726 end

		-- 取得玩家附近的队友数量（包括自己）
		--local teamMemberCount = GetTeamMemberCount(sceneId, selfId);
		--local sceneMemberCount = GetTeamSceneMemberCount(sceneId, selfId);
		--if not teamMemberCount or not sceneMemberCount or teamMemberCount ~= sceneMemberCount + 1 then
		--	x050102_NotifyFailBox( sceneId, selfId, targetId, "    你还有队员不在附近。" )
		--	return
		--end
		
		--local nearMemberCount = GetNearTeamCount(sceneId, selfId)
		--if nearMemberCount ~= sceneMemberCount + 1 then
		--	local strOutmsg = "您队伍中有成员（";
		--	local checkNearCount = 0;
		--	for	i = 0, sceneMemberCount - 1 do
		--		local sceneMemId = LuaFnGetTeamSceneMember(sceneId, selfId, i);
		--		if sceneMemId and sceneMemId >= 0 then
		--			local findFlag = 0;
		--			for	j = 0, nearMemberCount - 1 do
		--				local nearMemId = GetNearTeamMember(sceneId, selfId, j);
		--				if nearMemId and nearMemId == sceneMemId then
		--					findFlag = 1;
		--					break;
		--				end
		--			end
					
		--			if findFlag == 0 then
		--				memName = GetName(sceneId, sceneMemId);
		--				if checkNearCount == 0 then
		--					strOutmsg = strOutmsg..memName;
		--				else
		--					strOutmsg = strOutmsg.."、"..memName;
		--				end
		--				checkNearCount = checkNearCount + 1;
		--			end
		--		end
		--	end
		--	if checkNearCount  > 0 then
		--		strOutmsg = strOutmsg.."）不在附近，请集合后再找我进入活动。";
		--		x050102_NotifyFailBox( sceneId, selfId, targetId, strOutmsg)
		--	end
		--	return 
		--end

		if nearMemberCount < x050102_g_LimitMembers then
			x050102_NotifyFailBox( sceneId, selfId, targetId, "    L� 鹫o t n鄖 kh鬾g ph鋓 v譨 疴u, ng呓i c ph鋓 c� 1 s� b鋘 l頽h v� 1 s� tr� th�, ta m緄 y阯 t鈓. (trong nh髆 t痠 thi璾 c ph鋓 c� 3 nh鈔 v t� c 30 tr� l阯)" )
			return
		end
		
		-- 如果队伍处于组队跟随，那么提示队长需要解除这个状态
		if IsTeamFollow(sceneId, selfId) == 1  then
			x050102_NotifyFailBox( sceneId, selfId, targetId, "    Ng呓i c� 鸬i vi阯 kh鬾g nh nhi甿 v� n鄖" )
			return
		end

		-- 检测小队中是否有人任务记录已满, 队友是否已经接过此任务
		local member, mylevel, numerator, denominator = 0, 0, 0, 0
		local outNotAcceptMissionStr = "Ng呓i c� 鸬i vi阯 kh鬾g nh nhi甿 v� n鄖";
		local notAcceptMissionCount = 0;
		local outDoingMissionStr = "Ng呓i c� 鸬i vi阯 疸 l鄊 nhi甿 v�";
		local doingMissionCount = 0;

		for	i = 0, nearMemberCount - 1 do
			member = GetNearTeamMember( sceneId, selfId, i )

			if IsHaveMission( sceneId, member, x050102_g_MissionId ) <= 0 then
				if notAcceptMissionCount == 0 then
					outNotAcceptMissionStr = outNotAcceptMissionStr..GetName(sceneId, member);
				else
					outNotAcceptMissionStr = outNotAcceptMissionStr..", "..GetName(sceneId, member);
				end
				notAcceptMissionCount = notAcceptMissionCount + 1;
			end

			if notAcceptMissionCount == 0 then
				misIndex = GetMissionIndexByID( sceneId, member, x050102_g_MissionId )
				if GetMissionParam( sceneId, member, misIndex, x050102_g_Param_sceneid ) >= 0 then
					if doingMissionCount == 0 then
						outDoingMissionStr = outDoingMissionStr..GetName(sceneId, member);
					else
						outDoingMissionStr = outDoingMissionStr..", "..GetName(sceneId, member);
					end
					doingMissionCount = doingMissionCount + 1;
				end
			end

			numerator = numerator + GetLevel( sceneId, member ) ^ 4
			denominator = denominator + GetLevel( sceneId, member ) ^ 3
		end
		
		if notAcceptMissionCount > 0 then
			outNotAcceptMissionStr = outNotAcceptMissionStr.." Ng呓i c� 鸬i vi阯 kh鬾g nh nhi甿 v� n鄖";
			x050102_NotifyFailBox( sceneId, selfId, targetId, outNotAcceptMissionStr);
			return
		end
		
		if doingMissionCount > 0 then
			outDoingMissionStr = outDoingMissionStr.." Ng呓i c� 鸬i vi阯 疸 l鄊 nhi甿 v�";
			x050102_NotifyFailBox( sceneId, selfId, targetId, outDoingMissionStr);
			return
		end

		if denominator <= 0 then
			mylevel = 0
		else
			mylevel = numerator / denominator
		end

    local PlayerMaxLevel = GetHumanMaxLevelLimit()
		local iniLevel
		if mylevel < 10 then
			iniLevel = 10
		elseif mylevel < PlayerMaxLevel then
			iniLevel = floor( mylevel/10 ) * 10
		else
			iniLevel = PlayerMaxLevel
		end

		local leaderguid = LuaFnObjId2Guid( sceneId, selfId )
		LuaFnSetSceneLoad_Map( sceneId, x050102_g_CopySceneMap )						-- 地图是必须选取的，而且必须在Config/SceneInfo.ini里配置好
		LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
		LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x050102_g_NoUserTime * 1000 )
		LuaFnSetCopySceneData_Timer( sceneId, x050102_g_TickTime * 1000 )
		LuaFnSetCopySceneData_Param( sceneId, 0, x050102_g_CopySceneType )				-- 设置副本数据，这里将0号索引的数据设置为999，用于表示副本号999(数字自定义)
		LuaFnSetCopySceneData_Param( sceneId, 1, x050102_g_ScriptId )					-- 将1号数据设置为副本场景事件脚本号
		LuaFnSetCopySceneData_Param( sceneId, 2, 0 )							-- 设置定时器调用次数
		LuaFnSetCopySceneData_Param( sceneId, 3, -1 )							-- 设置副本入口场景号, 初始化
		LuaFnSetCopySceneData_Param( sceneId, 4, 0 )							-- 设置副本关闭标志, 0开放，1关闭
		LuaFnSetCopySceneData_Param( sceneId, 5, 0 )							-- 设置离开倒计时次数
		LuaFnSetCopySceneData_Param( sceneId, 6, GetTeamId( sceneId, selfId ) )	-- 保存队伍号
		LuaFnSetCopySceneData_Param( sceneId, 7, 0 )							-- 杀死Boss1的数量
		LuaFnSetCopySceneData_Param( sceneId, 12, 0 )							-- 是否杀死匪首
		LuaFnSetCopySceneData_Param( sceneId, 13, iniLevel / 10 )				-- 存储玩家们的级别档次

		LuaFnSetSceneLoad_Area( sceneId, x050102_g_CopySceneArea )

		local monsterINI = format( x050102_g_CopySceneMonsterIni, iniLevel )
		LuaFnSetSceneLoad_Monster( sceneId, monsterINI )

		LuaFnSetCopySceneData_Param(sceneId, CopyScene_LevelGap, mylevel - iniLevel) -- 级别差，CopyScene_LevelGap 在 scene.lua 中赋值

		local bRetSceneID = LuaFnCreateCopyScene( sceneId )						-- 初始化完成后调用创建副本函数
		if bRetSceneID > 0 then
			x050100_NotifyFailTips( sceneId, selfId, "D竎h chuy琻 th鄋h c鬾g!" )
		else
			x050100_NotifyFailTips( sceneId, selfId, "S� l唼ng b鋘 sao 疸 皙n gi緄 h課, 皤 ngh� l醫 n鎍 th� l読!" )
		end
	end
end

--**********************************
--副本事件
--**********************************
function x050102_OnCopySceneReady( sceneId, destsceneId )
	LuaFnSetCopySceneData_Param( destsceneId, 3, sceneId )				-- 设置副本入口场景号
	local leaderguid = LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local leaderObjId = LuaFnGuid2ObjId( sceneId, leaderguid )

	if leaderObjId == -1 then											-- 找不到该玩家
		return
	end

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then		-- 处于无法执行逻辑的状态
		return
	end

	--取得玩家附近的队友数量（包括自己）
	local i, nearMemberCount, member
	local members = {}
	local validmembercount = 0

	nearMemberCount = GetNearTeamCount( sceneId, leaderObjId )
	for i = 0, nearMemberCount - 1 do
		member = GetNearTeamMember( sceneId, leaderObjId, i )
		if IsHaveMission( sceneId, member, x050102_g_MissionId ) > 0 then		-- 有任务
			validmembercount = validmembercount + 1
			members[validmembercount] = member
		end
	end

	if validmembercount < x050102_g_LimitMembers then
		x050102_NotifyFailTips( sceneId, leaderObjId, "    L� 鹫o t n鄖 kh鬾g ph鋓 v譨 疴u, ng呓i c ph鋓 c� 1 s� b鋘 l頽h v� 1 s� tr� th�, ta m緄 y阯 t鈓. (trong nh髆 t痠 thi璾 c ph鋓 c� 3 nh鈔 v t� c 30 tr� l阯)" )
		return
	end

	local misIndex
	for i = 1, validmembercount do
		misIndex = GetMissionIndexByID( sceneId, members[i], x050102_g_MissionId )

		if LuaFnIsCanDoScriptLogic( sceneId, members[i] ) == 1 then			-- 处于可以执行逻辑的状态
			--将任务的第1号数据设置为副本的场景号
			SetMissionByIndex( sceneId, members[i], misIndex, x050102_g_Param_sceneid, destsceneId )
	--		SetMissionEvent( sceneId, members[i], x050102_g_MissionId, 0 )			-- 关心杀怪事件
			NewWorld( sceneId, members[i], destsceneId, x050102_g_Fuben_X, x050102_g_Fuben_Z )
		end
	end
end

--**********************************
--有玩家进入副本事件
--**********************************
function x050102_OnPlayerEnter( sceneId, selfId )
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x050102_g_Fuben_Relive_X, x050102_g_Fuben_Relive_Z )
end

--**********************************
--杀死怪物或玩家
--**********************************
function x050102_OnKillObject( sceneId, selfId, objdataId, objId )						-- 参数意思：场景号、玩家objId、怪物表位置号、怪物objId
	if IsHaveMission( sceneId, selfId, x050102_g_MissionId ) == 0 then
		return
	end

	--是否是副本
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	--是否是所需要的副本
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x050102_g_CopySceneType then
		return
	end

	--副本关闭标志
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
	if leaveFlag == 1 then														-- 如果副本已经被置成关闭状态，则杀怪无效
		return
	end

	--取得杀死怪物的GroupID
	local GroupID = GetMonsterGroupID( sceneId, objId )
	if GroupID == x050102_g_BossGroup then
		LuaFnSetCopySceneData_Param( sceneId, 12, 1 )							-- 是否杀死匪首

		local BroadcastMsg = x050102_g_BroadcastMsg[ random( getn(x050102_g_BroadcastMsg) ) ]
		BroadcastMsg = gsub( BroadcastMsg, "%$N", GetName( sceneId, selfId ) )
		BroadMsgByChatPipe( sceneId, selfId, BroadcastMsg, 4 )
		
		--===================================================
		--hd add 16/7/2014: add drop list khi giet boss
		if x050102_active_drop_longwen==1 then
		
			local num = LuaFnGetCopyScene_HumanCount( sceneId )
			local mems = {}
			for i = 0, num - 1 do
				mems[i + 1] = LuaFnGetCopyScene_HumanObjId( sceneId, i )		
				if LuaFnIsObjValid( sceneId, mems[i + 1] ) == 1 then						
					if random(100) <= x050102_rate_drop_longwen then
						AddMonsterDropItem( sceneId, objId, mems[i + 1], x050102_drop_longwen_item[random(getn(x050102_drop_longwen_item))] )
					end					
				end
			end
		end
		--===================================================
		--end hd add 16/7/2014
		
	end

	local killedMonsterIndex, killedCount = 0, 0
	for i = 1, getn( x050102_g_DemandKillGroup ) do
		if GroupID == x050102_g_DemandKillGroup[i] then
			killedMonsterIndex = i
			killedCount = LuaFnGetCopySceneData_Param( sceneId, 7 + i - 1 ) + 1
			LuaFnSetCopySceneData_Param( sceneId, 7 + i - 1, killedCount )		-- 杀死Bossi的数量
			break
		end
	end

	if killedMonsterIndex == 0 then													-- 杀死了一个不相关怪
		return
	end

	local maxKilledCount = x050102_g_DemandKill[killedMonsterIndex].num

	--取得当前场景里的人数
	local num = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	local misIndex
	local strText = format( "秀 gi猼 %s: %d/%d", GetName( sceneId, objId ), killedCount, maxKilledCount )
	for i = 0, num - 1 do
		mems[i + 1] = LuaFnGetCopyScene_HumanObjId( sceneId, i )					-- 取得当前场景里人的objId

		if LuaFnIsObjValid( sceneId, mems[i + 1] ) == 1 then						-- 不在场景的不做此操作
			x050102_NotifyFailTips( sceneId, mems[i + 1], strText )
			Msg2Player( sceneId, mems[i + 1], strText, MSG2PLAYER_PARA )
			misIndex = GetMissionIndexByID( sceneId, mems[i + 1], x050102_g_MissionId )
			SetMissionByIndex( sceneId, mems[i + 1], misIndex, killedMonsterIndex, killedCount )	-- 刷新杀怪数量
			if Q123_ACTIVE == 1 then
				if random(100) <= DROP_RATE then
					AddMonsterDropItem( sceneId, objId, mems[i + 1], DROP_ITEM[random(getn(DROP_ITEM))] )
				end
			end
		end
	end

	local leaveFlag = 1
	for i = 1, getn( x050102_g_DemandKillGroup ) do
		if LuaFnGetCopySceneData_Param( sceneId, 7 + i - 1 ) < x050102_g_DemandKill[i].num then
			leaveFlag = 0
			break
		end
	end

	-- 杀死所有怪则通知任务完成
	if leaveFlag == 1 then
		local misIndex

		for i = 1, num do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then						-- 不在场景的不做此操作
				x050102_NotifyFailTips( sceneId, mems[i], "M鴆 ti陁 nhi甿 v� ho鄋 th鄋h" )
				misIndex = GetMissionIndexByID( sceneId, mems[i], x050102_g_MissionId )
				SetMissionByIndex( sceneId, mems[i], misIndex, x050102_g_IsMissionOkFail, 1 )	-- 任务完成
			end
		end
	end
end

--**********************************
--有玩家在副本中死亡事件
--**********************************
function x050102_OnHumanDie( sceneId, selfId, killerId )
end

--**********************************
--离开副本
--**********************************
function x050102_Exit( sceneId, selfId )
	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )				-- 取得副本入口场景号
	NewWorld( sceneId, selfId, oldsceneId, x050102_g_Back_X, x050102_g_Back_Z )
end

--**********************************
--继续
--**********************************
function x050102_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x050102_g_MissionName )
		AddText( sceneId, format( x050102_g_MissionComplete, GetName( sceneId, selfId ) ) )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x050102_g_ScriptId, x050102_g_MissionId )
end

--**********************************
--放弃
--**********************************
function x050102_OnAbandon( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x050102_g_MissionId ) == 0 then
		return
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x050102_g_MissionId )
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, x050102_g_Param_sceneid )

	-- 设置放弃连环任务的时间
	--begin modified by zhangguoxin 090208
	--local CurTime = GetHourTime()											-- 当前时间
	local CurTime = GetQuarterTime()											-- 当前时间
	SetMissionData( sceneId, selfId, MD_ROUNDMISSION3, CurTime )
	--ene modified by zhangguoxin 090208

	--删除玩家任务列表中对应的任务
	DelMission( sceneId, selfId, x050102_g_MissionId )
	
	--是否是所需要的副本
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )

	if sceneId == copyscene and fubentype == x050102_g_CopySceneType then											-- 如果在副本里删除任务，则直接传送回
		x050102_NotifyFailTips( sceneId, selfId, "Nhi甿 v� th b読!" )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		-- 取得副本入口场景号
		NewWorld( sceneId, selfId, oldsceneId, x050102_g_Back_X, x050102_g_Back_Z )
	end
end

--**********************************
--副本场景定时器事件
--**********************************
function x050102_OnCopySceneTimer( sceneId, nowTime )
	--副本时钟读取及设置
	local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )						-- 取得已经执行的定时次数
	TickCount = TickCount + 1
	LuaFnSetCopySceneData_Param( sceneId, 2, TickCount )							-- 设置新的定时器调用次数

	--副本关闭标志
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )

	local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	local i

	for i = 0, membercount - 1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	local LevelGap = LuaFnGetCopySceneData_Param( sceneId, CopyScene_LevelGap )

	if leaveFlag == 1 then															-- 需要离开
		--离开倒计时间的读取和设置
		local leaveTickCount = LuaFnGetCopySceneData_Param( sceneId, 5 )
		leaveTickCount = leaveTickCount + 1
		LuaFnSetCopySceneData_Param( sceneId, 5, leaveTickCount )

		if leaveTickCount >= x050102_g_CloseTick then										-- 倒计时间到，大家都出去吧
			--将当前副本场景里的所有人传送回原来进入时候的场景
			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x050102_Exit( sceneId, mems[i] )
				end
			end
		else
			--通知当前副本场景里的所有人，场景关闭倒计时间
			local strText = format( "C醕 h� s� r秈 kh鰅 n絠 n鄖 trong v騨g %d gi鈟 n鎍", ( x050102_g_CloseTick - leaveTickCount ) * x050102_g_TickTime )

			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x050102_NotifyFailTips( sceneId, mems[i], strText )
				end
			end
		end
	elseif TickCount == x050102_g_LimitTotalHoldTime then									-- 副本总时间限制到了
		--此处设置副本任务有时间限制的情况，当时间到后处理...
		for	i = 0, membercount - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
				x050102_NotifyFailTips( sceneId, mems[i], "Th秈 gian nhi甿 v� 疸 h猼, r秈 c鋘h..." )
				x050102_Exit( sceneId, mems[i] )
			end
		end

		--设置副本关闭标志
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )
	else
		--定时检查队伍成员的队伍号，如果不符合，则踢出副本
		local oldteamid = LuaFnGetCopySceneData_Param( sceneId, 6 )					-- 取得保存的队伍号
		local oldsceneId

		for	i = 0, membercount - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and oldteamid ~= GetTeamId( sceneId, mems[i] ) then
				x050102_NotifyFailTips( sceneId, mems[i], "Ng呓i kh鬾g � trong 瘊ng 鸬i, r秈 c鋘h..." )
				x050102_Exit( sceneId, mems[i] )
			end
		end

		-- 每分钟提示玩家剩余时间
		if mod( x050102_g_TickTime * TickCount, 60 ) < x050102_g_TickTime and TickCount < x050102_g_LimitTotalHoldTime then
			local str = "C騨 th譨 " .. ( x050102_g_LimitTotalHoldTime - TickCount ) * x050102_g_TickTime / 60 .. " Ph鷗..."
			for	i = 0, membercount - 1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x050102_NotifyFailTips( sceneId, mems[i], str )
				end
			end
		end

	end
end

--**********************************
--检测是否可以提交
--**********************************
function x050102_CheckSubmit( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x050102_g_MissionId ) <= 0 then
		return 0
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x050102_g_MissionId )				-- 得到任务的序列号
	if GetMissionParam( sceneId, selfId, misIndex, x050102_g_IsMissionOkFail ) ~= 1 then
		return 0
	end

	if LuaFnGetTaskItemBagSpace( sceneId, selfId ) < 1 then
		x050102_NotifyFailTips( sceneId, selfId, "Thi猽 m祎 � v ph nhi甿 v�" )
		return 0
	end

	return 1
end

--**********************************
--提交
--**********************************
function x050102_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x050102_g_Name then		--判断该npc是否是对应任务的npc
		return
	end

	if x050102_CheckSubmit( sceneId, selfId ) == 1 then
		x050102_NotifyFailBox( sceneId, selfId, targetId, format( x050102_g_MissionComplete, GetName( sceneId, selfId ) ) )
		local exp = GetLevel( sceneId, selfId ) * x050102_g_k - x050102_g_b
		if exp < 1 then
			exp = 1
		end

		AddExp( sceneId, selfId, exp )

	--	TryRecieveItem( sceneId, selfId, x050102_g_Mail, 1 )
		DelMission( sceneId, selfId, x050102_g_MissionId )
		-- 任务或活动统计
		LuaFnAuditQuest(sceneId, selfId, "D� ngo読 tr読 ph�")
		local strText = x050102_g_MissionName .. "nhi甿 v� 疸 ho鄋 th鄋h"
		x050102_NotifyFailTips( sceneId, selfId, strText )
		Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )

		local newRelation = GetMissionData( sceneId, selfId, MD_RELATION_QIANHONGYU ) + x050102_g_RelationReward
		if x050102_g_MaxRelation < newRelation then
			newRelation = x050102_g_MaxRelation
		end

		SetMissionData( sceneId, selfId, MD_RELATION_QIANHONGYU, newRelation )

		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
		CallScriptFunction( SCENE_SCRIPT_ID, "PlaySoundEffect", sceneId, selfId, 66 )

	end
end

--**********************************
-- 对话窗口信息提示
--**********************************
function x050102_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- 屏幕中间信息提示
--**********************************
function x050102_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
