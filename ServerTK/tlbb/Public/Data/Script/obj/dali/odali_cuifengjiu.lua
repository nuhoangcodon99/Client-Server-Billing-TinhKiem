--大理NPC
--崔逢九
--普通

x002026_g_ScriptId	= 002026

--门派信息(门派名称，SceneID，PosX，PosY，门派ID)
x002026_g_mpInfo		= {}
x002026_g_mpInfo[0]	= { "Tinh T鷆", 16,  96, 152, MP_XINGSU }
x002026_g_mpInfo[1]	= { "Ti陁 Dao", 14,  67, 145, MP_XIAOYAO }
x002026_g_mpInfo[2]	= { "Thi猽 L鈓",  9,  96, 127, MP_SHAOLIN }
x002026_g_mpInfo[3]	= { "Thi阯 S絥", 17,  95, 120, MP_TIANSHAN }
x002026_g_mpInfo[4]	= { "Thi阯 Long", 13,  96, 120, MP_DALI }
x002026_g_mpInfo[5]	= { "Nga My", 15,  89, 139, MP_EMEI }
x002026_g_mpInfo[6]	= { "V� 衋ng", 12, 103, 140, MP_WUDANG }
x002026_g_mpInfo[7]	= { "Minh Gi醥", 11,  98, 167, MP_MINGJIAO }
x002026_g_mpInfo[8]	= { "C醝 Bang", 10,  91, 116, MP_GAIBANG }
--x002026_g_mpInfo[9]	= { "M� Dung", 435,  29, 137, 9}

x002026_g_Yinpiao = 40002000

x002026_g_Impact_NotTransportList = { 5929, 5944 } -- 禁止传送的Impact
x002026_g_TalkInfo_NotTransportList = { "#{GodFire_Info_062}", "#{XSHCD_20080418_099}" } -- 禁止传送的Impact提示信息

--**********************************
--事件交互入口
--**********************************
function x002026_OnDefaultEvent( sceneId, selfId, targetId )

	-- 检测玩家身上是不是有“银票”这个东西，有就不能使用这里的功能
	if GetItemCount(sceneId, selfId, x002026_g_Yinpiao)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "  Tr阯 ng叨i c醕 h� c� ng鈔 phi猽, 餫ng ch誽 tr痭 n�! Ta kh鬾g th� gi鷓 c醕 h�" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	local	mp
	local	i		= 0
	BeginEvent( sceneId )
		if GetLevel( sceneId, selfId ) >= 10 then
			AddText( sceneId, "#{XIYU_20071228_01}" )
			AddNumText( sceneId, x002026_g_ScriptId, "Quay v� m鬾 ph醝", 9, 1000 )
			AddNumText( sceneId, x002026_g_ScriptId, "Th鄋h th� - L誧 D呓ng", 9, 1001 )
			AddNumText( sceneId, x002026_g_ScriptId, "Th鄋h th� - T� Ch鈛", 9, 1002 )
			AddNumText( sceneId, x002026_g_ScriptId, "Th鄋h th� - L誧 D呓ng - C豼 Ch鈛 th呓ng h礽", 9, 1006 )
			AddNumText( sceneId, x002026_g_ScriptId, "Th鄋h th� - T� Ch鈛 - Thi猼 t叨ng ph�", 9, 1007 )
			if GetLevel( sceneId, selfId ) >= 75 then
				AddNumText( sceneId, x002026_g_ScriptId, "Th鄋h th�  - L鈛 Lan", 9, 1011 )
			end
			AddNumText( sceneId, x002026_g_ScriptId, "Th鄋h th� - Th鷆 H� C� Tr", 9, 1010 )
			
			AddNumText( sceneId, x002026_g_ScriptId, "衖 皙n c醕 m鬾 ph醝", 9, 1012 )
			--for i, mp in x002026_g_mpInfo do
			--	AddNumText( sceneId, x002026_g_ScriptId, "门派 - "..mp[1], 9, i )
			--end
		else
			AddText( sceneId, "  Ng呓i c 鹌ng c 鹫t tr阯 10 m緄 c� th� t緄 疬㧟 c醕 th鄋h th� kh醕" )
			AddNumText( sceneId, x002026_g_ScriptId, "Th鄋h th� - 姓i L�",  9, 1003 )
			AddNumText( sceneId, x002026_g_ScriptId, "Th鄋h th� - 姓i L� 2", 9, 1004 )
			AddNumText( sceneId, x002026_g_ScriptId, "Th鄋h th� - 姓i L� 3", 9, 1005 )
		end
		
		
		
		-- 我怎样才能去敦煌和嵩山
		AddNumText( sceneId, x002026_g_ScriptId, "歇n 恤n Ho鄋g v� Tung S絥?", 11, 2000 )
		
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--传送检查，解决低等级玩家带高等级玩家到大理2，3的问题
--**********************************
function x002026_EnterConditionCheck(sceneId, selfId)
	local teamSize = GetNearTeamCount(sceneId, selfId); 
	if teamSize > 1 then
		for i=0, teamSize-1 do
	  	local objId = GetNearTeamMember(sceneId, selfId, i);
	  	if GetLevel(sceneId, objId) > 9 and IsTeamFollow(sceneId, objId) == 1 then
	  		local name = GetName(sceneId, objId);
	  		local msg = format("  隊員%s等級過高，不能進入！", name);
	  		return 0, msg;
	  	end  	
	  end
  end
	return 1, "ok";
end

--**********************************
--事件列表选中一项
--**********************************
function x002026_OnEventRequest( sceneId, selfId, targetId, eventId )
	--队伍相关
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
				x002026_MsgBox( sceneId, selfId, targetId, "  Th鄋h vi阯 trong nh髆 ng呓i c� ng叨i c� nhi甿 v� ch� h鄋g bg 疬秐g thu�, d竎h tr誱 ch鷑g ta kh鬾g th� cung c d竎h v� cho ng呓i" )
				return
			end
		end
	end

	--漕运相关
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		x002026_MsgBox( sceneId, selfId, targetId, "  Ng呓i c� nhi甿 v� ch� h鄋g bg 疬秐g thu�, d竎h tr誱 ch鷑g ta kh鬾g th� cung c d竎h v� cho ng呓i" )
		return
	end
	
	--检测Impact状态驻留效果
	for i, ImpactId in x002026_g_Impact_NotTransportList do
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactId) ~= 0 then
			x002026_MsgBox( sceneId, selfId, targetId, x002026_g_TalkInfo_NotTransportList[i] )			
			return 0
		end
	end
	
	--顺利传送
	local	arg	= GetNumText()
	local	mp
	local	i		= 0
	local	id	= LuaFnGetMenPai( sceneId, selfId )
	if arg == 1000 then		--返回门派
		if id == 9 and  GetHumanMenpaiPoint(sceneId, selfId) == 0 then
			x002026_MsgBox( sceneId, selfId, targetId, "  Ng呓i v鏽 ch遖 gia nh b k� m鬾 ph醝 n鄌!" )
		else
			mp	= x002026_GetMPInfo( id )
			if mp ~= nil then
				CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4], 10 )
			end
		end
		return
	end
	if arg == 1001 then		--洛阳
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 234, 321, 10 )
		return
	end
	if arg == 1002 then		--苏州
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 202,258, 10 )
		return
	end
	if arg == 1006 then		--洛阳商会
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 328, 270, 10 )
		return
	end
	if arg == 1007 then		--苏州铁匠铺
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 332, 225, 10 )
		return
	end
	if arg == 1003 then		--大理1
		--如果玩家就在大理1则不传送
		if sceneId == 2 then
			x002026_MsgBox( sceneId, selfId, targetId, "  Ng呓i 疸 � 姓i L� r癷" )
		else
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 2, 241, 138 )
		end
		return
	end
	if arg == 1004 then		--大理2
		--如果玩家就在大理2则不传送
		if sceneId == 71 then
			x002026_MsgBox( sceneId, selfId, targetId, "  Ng呓i 疸 � 姓i L� 2 r癷" )
		else
			local ret, msg = x002026_EnterConditionCheck(sceneId, selfId);
			if ret == 0 then
				x002026_MsgBox(sceneId, selfId, targetId, msg);
				return
			end
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 71, 241, 138 )
		end
		return
	end
	if arg == 1005 then		--大理3
		--如果玩家就在大理3则不传送
		if sceneId == 72 then
			x002026_MsgBox( sceneId, selfId, targetId, "  Ng呓i 疸 � 姓i L� 3 r癷" )
		else
			local ret, msg = x002026_EnterConditionCheck(sceneId, selfId);
			if ret == 0 then
				x002026_MsgBox(sceneId, selfId, targetId, msg);
				return
			end
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 72, 241, 138 )
		end
		return
	end
	for i, mp in x002026_g_mpInfo do
		if arg == i then
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4], 10 )
			return
		end
	end
	
	if arg == 1010 then		--束河古镇
		-- add by zchw
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, x002026_g_ScriptId);
			-- zchw fix Transfer bug
			UICommand_AddInt(sceneId, targetId);
			UICommand_AddString(sceneId, "GotoShuHeGuZhen");
			UICommand_AddString(sceneId, "Ng呓i c� mu痭 皙n Th鷆 H� C� Tr kh鬾g? N絠 n鄖 PK kh鬾g b� s醫 kh� ");
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 24)
		return
	end
	
	if arg == 1011 then		--楼兰
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 186, 288, 136, 75 )
		return
	end
	


	if arg == 1012 then		
		BeginEvent( sceneId )
			for i, mp in x002026_g_mpInfo do
				AddNumText( sceneId, x002026_g_ScriptId, "M鬾 ph醝 - "..mp[1], 9, i )
			end
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
		return
	end


	if GetNumText() == 2000 then		--
		BeginEvent( sceneId )
			AddText( sceneId, "#{GOTO_DUNHUANF_SONGSHAN}" ) 
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
		return
	end
	
end
--  add by zchw
function x002026_GotoShuHeGuZhen( sceneId, selfId, targetId )
	CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 420, 200, 211, 20 );
	return
end
--**********************************
--根据门派ID获取门派信息
--**********************************
function x002026_GetMPInfo( mpID )
	local	mp
	local	i		= 0
	for i, mp in x002026_g_mpInfo do
		if mp[5] == mpID then
			return mp
		end
	end
	return nil
end

--**********************************
--对话窗口信息提示
--**********************************
function x002026_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
