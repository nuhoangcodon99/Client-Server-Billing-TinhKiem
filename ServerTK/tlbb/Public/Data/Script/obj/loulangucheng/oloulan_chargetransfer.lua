-- created by 左春伟

x400959_g_ScriptId = 400959; --脚本号
x400959_g_name	="Xa Truy玭 B靚h";

--传送目标
x400959_g_transfer_target =
{
	[1] = {x = 218, z = 338, scene_num = 0}, 		--洛阳
	[2] = {x = 332, z = 253, scene_num = 1}, 		--苏州
	[3] = {x = 259, z = 86, scene_num = 2}, 		--大理
	[4] = {x = 206, z = 266, scene_num = 34}, 	--南海
	[5] = {x = 186, z = 43, scene_num = 28},		--南诏
	[6] = {x = 158, z = 113, scene_num = 22}, 	--长白山
}

-- 收费金额
x400959_g_transfer_cost = 5000; -- 50银交子

--**********************************
--事件交互入口
--**********************************
function x400959_OnDefaultEvent( sceneId, selfId, targetId )
	x400959_UpdateEventList( sceneId, selfId, targetId );
end

--**********************************
--事件列表
--**********************************
function x400959_UpdateEventList( sceneId, selfId, targetId )
	BeginEvent(sceneId);
		AddText( sceneId, "#{SFCS_80828_01}" );
		AddNumText(sceneId, x400959_g_ScriptId, "L誧 D呓ng", 9, 1); --Lac duong
		AddNumText(sceneId, x400959_g_ScriptId, "T� Ch鈛", 9, 2); --To chau
		AddNumText(sceneId, x400959_g_ScriptId, "姓i L�", 9, 3); --Dai li
		AddNumText(sceneId, x400959_g_ScriptId, "Nam H鋓", 9, 4); --Nam Hai
		AddNumText(sceneId, x400959_g_ScriptId, "Nam Chi陁", 9, 5); --Nam chieu
		AddNumText(sceneId, x400959_g_ScriptId, "Tr叨ng B誧h S絥", 9, 6); --Truong bach son
	EndEvent()
	DispatchEventList(sceneId, selfId, targetId);
end

--**********************************
--事件列表选中一项
--**********************************
function x400959_OnEventRequest( sceneId, selfId, targetId, eventId )
	--跑商相关
	if GetItemCount(sceneId, selfId, 40002000)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "  C醕 h� 餫ng trong tr課g th醝 v chuy琻, kh鬾g th� d竎h chuy琻." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	--队伍相关
	if GetTeamId(sceneId,selfId)>=0 and 
		IsTeamFollow(sceneId, selfId)==1 and
		LuaFnIsTeamLeader(sceneId,selfId)==1 then
		BeginEvent( sceneId )
			AddText( sceneId, "  Do 疬秐g x� qu� xa x鬷, ta kh鬾g th� ti猵 nh c� t� 鸬i." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	--漕运相关
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		BeginEvent(sceneId)
			AddText(sceneId, "  C醕 h� 餫ng trong tr課g th醝 t鄌 v, kh鬾g th� d竎h chuy琻.")
		EndEvent()
		DispatchEventList(sceneId, selfId, targetId)
		return
	end
	--
	local id = GetNumText();
	if id >=1 and id <= 6 then
		BeginEvent(sceneId)
			--"本次传送收取50银交子，你要传送吗？"
			AddText(sceneId, "#{FFCS_081210_1}")
			if id == 1 then	
				AddNumText(sceneId, x400959_g_ScriptId, "X醕 鸶nh", 0, 11);
			elseif id == 2 then
				AddNumText(sceneId, x400959_g_ScriptId, "X醕 鸶nh", 0, 21);
			elseif id == 3 then
				AddNumText(sceneId, x400959_g_ScriptId, "X醕 鸶nh", 0, 31);
			elseif id == 4 then
				AddNumText(sceneId, x400959_g_ScriptId, "X醕 鸶nh", 0, 41);
			elseif id == 5 then
				AddNumText(sceneId, x400959_g_ScriptId, "X醕 鸶nh", 0, 51);
			elseif id == 6 then
				AddNumText(sceneId, x400959_g_ScriptId, "X醕 鸶nh", 0, 61);
			end
			AddNumText(sceneId, x400959_g_ScriptId, "H鼀 b�", 0, 100);
		EndEvent()
		DispatchEventList(sceneId, selfId, targetId);
	elseif id == 100 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )		
	else
		local index = floor(id/10);
		local pos_x = x400959_g_transfer_target[index]["x"];
		local pos_z = x400959_g_transfer_target[index]["z"];
		local scene_num = x400959_g_transfer_target[index]["scene_num"];
			
		local nMoneyJZ = GetMoneyJZ (sceneId, selfId)
		local nMoney = GetMoney (sceneId, selfId)

		--钱够吗？
		if (nMoneyJZ + nMoney) >= x400959_g_transfer_cost then 
				
			-- 收费
			-- 使用带优先级的金钱消耗函数
			if LuaFnCostMoneyWithPriority (sceneId, selfId, x400959_g_transfer_cost) == -1 then
				BeginEvent(sceneId)
					AddText(sceneId, "C醕 h� kh鬾g c� 瘘 ng鈔 l唼ng.");
				EndEvent()
				DispatchMissionTips(sceneId, selfId)
				return
			else
				-- 传送
				CallScriptFunction((400900), "TransferFunc",sceneId, selfId, scene_num, pos_x, pos_z); 
			end

		-- 钱不够
		else
			BeginEvent(sceneId)
				AddText(sceneId, "C醕 h� kh鬾g c� 瘘 ng鈔 l唼ng.");
			EndEvent()
			DispatchEventList(sceneId, selfId, targetId)
			return

		end
	end	
end
