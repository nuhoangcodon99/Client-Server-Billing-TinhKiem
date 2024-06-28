--苏州NPC
--邓茂
--普通

x001081_g_ScriptId	= 001081

--门派信息(门派名称，SceneID，PosX，PosY，门派ID)
x001081_g_mpInfo		= {}
x001081_g_mpInfo[0]	= { "Tinh T鷆", 16,  96, 152, MP_XINGSU }
x001081_g_mpInfo[1]	= { "Ti陁 Dao", 14,  67, 145, MP_XIAOYAO }
x001081_g_mpInfo[2]	= { "Thi猽 L鈓",  9,  96, 127, MP_SHAOLIN }
x001081_g_mpInfo[3]	= { "Thi阯 S絥", 17,  95, 120, MP_TIANSHAN }
x001081_g_mpInfo[4]	= { "Thi阯 Long", 13,  96, 120, MP_DALI }
x001081_g_mpInfo[5]	= { "Nga My", 15,  89, 139, MP_EMEI }
x001081_g_mpInfo[6]	= { "V� 衋ng", 12, 103, 140, MP_WUDANG }
x001081_g_mpInfo[7]	= { "Minh Gi醥", 11,  98, 167, MP_MINGJIAO }
x001081_g_mpInfo[8]	= { "C醝 Bang", 10,  91, 116, MP_GAIBANG }
--x001081_g_mpInfo[9]	= { "M� Dung", 435,  29, 137, 9}

x001081_g_Yinpiao = 40002000

x001081_g_Impact_NotTransportList = { 5929, 5944 } -- 禁止传送的Impact
x001081_g_TalkInfo_NotTransportList = { "#{GodFire_Info_062}", "#{XSHCD_20080418_099}" } -- 禁止传送的Impact提示信息

--**********************************
--事件交互入口
--**********************************
function x001081_OnDefaultEvent( sceneId, selfId,targetId )
	-- 检测玩家身上是不是有“银票”这个东西，有就不能使用这里的功能
	if GetItemCount(sceneId, selfId, x001081_g_Yinpiao)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "  Tr阯 ng叨i c醕 h� c� ng鈔 phi猽, 餫ng ch誽 tr痭 n�! Ta kh鬾g th� gi鷓 c醕 h�" )
		EndEvent( sceneId )

		-- 我怎样才能去敦煌和嵩山
		AddNumText( sceneId, x001081_g_ScriptId, "L鄊 th� n鄌 ta c� th� 餴 皙n 恤n Ho鄋g v� Tung S絥 ?", 11, 2000 )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	local	mp
	local	i		= 0
	BeginEvent( sceneId )
		AddText( sceneId, "#{XIYU_20071228_03}" )
		AddNumText( sceneId, x001081_g_ScriptId, "Quay v� m鬾 ph醝", 9, 1000 )
		AddNumText( sceneId, x001081_g_ScriptId, "Th鄋h th� - L誧 D呓ng", 9, 1001 )
		AddNumText( sceneId, x001081_g_ScriptId, "Th鄋h th� - 姓i L�", 9, 1002 )
		AddNumText( sceneId, x001081_g_ScriptId, "Th鄋h th� - L誧 D呓ng - C豼 Ch鈛 th呓ng h礽", 9, 1006 )
    		AddNumText( sceneId, x001081_g_ScriptId, "Th鄋h th� - L鈛 Lan", 9, 1007 )
    		AddNumText( sceneId, x001081_g_ScriptId, "Th鄋h th� - Th鷆 H� C� Tr", 9, 1010 )
    
		AddNumText( sceneId, x001081_g_ScriptId, "衖 皙n c醕 m鬾 ph醝", 9, 1012 )
    
		--for i, mp in x001081_g_mpInfo do
			--AddNumText( sceneId, x001081_g_ScriptId, "门派 - "..mp[1], 9, i )
		--end


		-- 我怎样才能去敦煌和嵩山
		AddNumText( sceneId, x001081_g_ScriptId, "L鄊 th� n鄌 ta c� th� 餴 皙n 恤n Ho鄋g v� Tung S絥 ?", 11, 2000 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中一项
--**********************************
function x001081_OnEventRequest( sceneId, selfId, targetId, eventId )
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
				x001081_MsgBox( sceneId, selfId, targetId, "  Th鄋h vi阯 trong nh髆 ng呓i c� ng叨i c� nhi甿 v� ch� h鄋g bg 疬秐g thu�, d竎h tr誱 ch鷑g ta kh鬾g th� cung c d竎h v� cho ng呓i" )
				return
			end
		end
	end

	--漕运相关
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		x001081_MsgBox( sceneId, selfId, targetId, "  Ng呓i c� nhi甿 v� ch� h鄋g bg 疬秐g thu�, d竎h tr誱 ch鷑g ta kh鬾g th� cung c d竎h v� cho ng呓i" )
		return
	end
	
	--检测Impact状态驻留效果
	for i, ImpactId in x001081_g_Impact_NotTransportList do
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactId) ~= 0 then
			x001081_MsgBox( sceneId, selfId, targetId, x001081_g_TalkInfo_NotTransportList[i] )			
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
			x001081_MsgBox( sceneId, selfId, targetId, "  Ng呓i v鏽 ch遖 gia nh b k� m鬾 ph醝 n鄌!" )
		else
			mp	= x001081_GetMPInfo( id )
			if mp ~= nil then
				CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4] )
			end
		end
		return
	end
	if arg == 1001 then		--洛阳
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 234, 321 )
		return
	end
	if arg == 1002 then		--大理
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 2, 252, 126 )
		return
	end
	if arg == 1006 then		--洛阳商会
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 328, 270 )
		return
	end
  if arg == 1007 then		--楼兰
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 186, 288, 136, 75 )
		return
	end
	for i, mp in x001081_g_mpInfo do
		if arg == i then
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4] )
			return
		end
	end

	if GetNumText()== 1010 then		--束河古镇
		-- add by zchw
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, x001081_g_ScriptId);
			-- zchw fix Transfer bug
			UICommand_AddInt(sceneId, targetId);
			UICommand_AddString(sceneId, "GotoShuHeGuZhen");
			UICommand_AddString(sceneId, "Th鷆 H� C� Tr l� n絠 PK kh鬾g t錸g s醫 kh�, c醕 h� c� mu痭 皙n kh鬾g?");
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 24)
		return
	end
	
	if arg == 1012 then		
		BeginEvent( sceneId )
			for i, mp in x001081_g_mpInfo do
				AddNumText( sceneId, x001081_g_ScriptId, "M鬾 ph醝 - "..mp[1], 9, i )
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
function x001081_GotoShuHeGuZhen( sceneId, selfId, targetId )
	CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 420, 200, 211, 20 );
	return
end
--**********************************
--根据门派ID获取门派信息
--**********************************
function x001081_GetMPInfo( mpID )
	local	mp
	local	i		= 0
	for i, mp in x001081_g_mpInfo do
		if mp[5] == mpID then
			return mp
		end
	end
	return nil
end

--**********************************
--对话窗口信息提示
--**********************************
function x001081_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
