--事件
--传送到珍兽岛

--脚本号
x400918_g_ScriptId = 400918

--任务文本描述
x400918_g_MissionName="衖 t緄 Huy玭 V� 袖o"
x400918_g_MissionInfo="D竎h chuy琻 t緄 Huy玭 V� 袖o"  --任务描述
x400918_g_MissionTarget="D竎h chuy琻 t緄 Huy玭 V� 袖o"		--任务目标
x400918_g_ContinueInfo="D竎h chuy琻 t緄 Huy玭 V� 袖o"		--未完成任务的npc对话
x400918_g_MissionComplete="D竎h chuy琻 t緄 Huy玭 V� 袖o"					--完成任务npc说话的话

--**********************************
--入口函数
--**********************************
function x400918_OnDefaultEvent( sceneId, selfId, targetId )	--点击该任务后执行此脚本

	-- 检测玩家身上是不是有“银票”这个东西，有就不能使用这里的功能
	if GetItemCount(sceneId, selfId, 40002000) >= 1 then
		BeginEvent( sceneId )
			AddText( sceneId, "  Tr阯 ng叨i ng呓i 餫ng c� ng鈔 phi猽. 懈nh tr痭 n� h� ?" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	--漕运相关
	if GetTeamId(sceneId,selfId)>=0 and 
		IsTeamFollow(sceneId, selfId)==1 and
		LuaFnIsTeamLeader(sceneId,selfId)==1 then
		num=LuaFnGetFollowedMembersCount( sceneId, selfId)
		local mems = {}
		for	i=0,num-1 do
			mems[i] = GetFollowedMember(sceneId, selfId, i)
			if mems[i] == -1 then
				return
			end
			if IsHaveMission(sceneId,mems[i],4021) > 0 then
				BeginEvent( sceneId )
					AddText( sceneId, "  衋ng trong nhi甿 v� v chuy琻, kh鬾g th� d鵱g ch裞 n錸g d竎h chuy琻 � c醕 NPC !" )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
				return
			end
		end
	end

	if IsHaveMission(sceneId,selfId,4021) > 0 then
		BeginEvent( sceneId )
			AddText( sceneId, "  衋ng trong nhi甿 v� v chuy琻, kh鬾g th� d鵱g ch裞 n錸g d竎h chuy琻 � c醕 NPC !" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 39, 109, 25)

end

--**********************************
--列举事件
--**********************************
function x400918_OnEnumerate( sceneId, selfId, targetId )
	--等级达到10级就显示传送选项
	if GetLevel( sceneId, selfId ) >= 10 then
		AddNumText(sceneId,x400918_g_ScriptId,x400918_g_MissionName, 9, -1)
	else
		return
	end
end
