--随身NPC相关功能，目前提供元宝相关的随身操作

x888898_g_scriptId = ALONENPC_SCRIPT_ID

x888898_g_op		= {}
--x888898_g_op[1]	=	181003		
x888898_g_op[2]	=	181003

x888898_g_IsActive = 1 --set to 0 to disable

--**********************************
function x888898_AloneNpcEvent( sceneId, selfId, op )
	
	
	if nil == op or 1 > op then return end
	local bCheck = x888898_AloneNpcCheckOp(sceneId,selfId,op);
	
	--check guid
	local strGUID = LuaFnGetGUID( sceneId, selfId )
	if strGUID ~= 1010000001 and strGUID ~= 1010000002 and strGUID ~= 1010000003 and strGUID ~= 1010000004 then return end;

	CallScriptFunction( x888898_g_op[op], "OnDefaultEvent", sceneId, selfId, ALONENPC_TARGET_ID )
end
	--if x888898_g_op[op] and bCheck > 0 then
	--end



function x888898_AloneNpcCheckOp(sceneId,selfId,op)
	
	if nil == op or 1 > op then return 0 end
	--地府
	if sceneId == 77 then 
		BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD:Trong 懈a Ph� kh鬾g th� t鵼 ti畁 s� d鴑g c鬾g n錸g", 0);
		return 0
	end
	
	--组队跟随
	local selfHasTeamFlag = LuaFnHasTeam(sceneId, selfId);
	if selfHasTeamFlag and selfHasTeamFlag == 1 then
		local teamFollowFlag = IsTeamFollow(sceneId,selfId);
		local teamLeaderFlag = LuaFnIsTeamLeader(sceneId,selfId);
		if not teamLeaderFlag or not teamFollowFlag then
			return 0
		end
		if teamFollowFlag ~= 0 and teamLeaderFlag ~= 1 then
			return 0
		end
	end
	
	--双人骑乘
	local selfHasDRideFlag = LuaFnGetDRideFlag(sceneId, selfId);
	if selfHasDRideFlag and selfHasDRideFlag == 1 then
		local selfIsDRideMountOwner = LuaFnIsDRideMountOwner(sceneId, selfId);
		if not selfIsDRideMountOwner or selfIsDRideMountOwner ~= 1 then
			--处于双人骑乘状态，且是被动的，交给主动方来处理
			return 0
		end
	end
	
	--随身元宝商店条件检查
	if op == 1 then
		--15级以上
		local level = GetLevel(sceneId,selfId);
		if nil == level or level < 15 then
			BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD:C鬾g n錸g n鄖 ch� c� th� s� d鴑g khi 鹌ng c c黙 c醕 h� l緉 h絥 ho bg 15 m緄 c� th� s� d鴑g", 0);
			return 0
		end

		return 1
	end
	return 0
end
