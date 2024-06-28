--城市NPC
--校场

x805013_g_scriptId = 805013
x805013_g_BuildingID7 = 15

x805013_g_eventList = {600046, 600023}-- zchw add 600046 帮派收集

--所拥有的事件ID列表2 为帮派收集特设 zchw 
x805013_g_eventList2 = {600047, 600048, 600049}

-- 任务集事件 ID 列表，这类事件包含子事件
x805013_g_eventSetList = { 600023 } 
--**********************************
--事件列表
--**********************************
function x805013_UpdateEventList( sceneId, selfId, targetId )
	local i = 1
	local eventId = 0

	local Humanguildid 	= GetHumanGuildID(sceneId,selfId)
	local cityguildid 	= GetCityGuildID(sceneId, selfId, sceneId)

	BeginEvent( sceneId )
		if Humanguildid == cityguildid then
			AddText( sceneId, "    懈a v� v� danh ti猲g c黙 bang ta tr阯 giang h� do ta 痄m nhi甿, c� � ki猲 g� hay c� n陁 ra" )
			for i, eventId in x805013_g_eventList do
				CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
			end
			AddNumText( sceneId, x805013_g_scriptId, "V� nhi甿 v� khu猚h tr呓ng", 11, 1 )
			AddNumText( sceneId, x805013_g_scriptId, "Gi緄 thi畊 v� tr叨ng", 11, 2 )
			AddNumText( sceneId, x805013_g_scriptId, "Ph呓ng ph醦 ch� t誳 c鬾g tr靚h", 7, 3 )
			AddNumText( sceneId, x805013_g_scriptId, "T誳 鹫i c� cho bang h礽", 6, 4 )
			AddNumText( sceneId, x805013_g_scriptId, "Tu luy畁 ph騨g ng�", 6, 5 )
			AddNumText( sceneId, x805013_g_scriptId, "X鈟 d駈g th醦 ki猰 cao c", 6, 6 )
			AddNumText( sceneId, x805013_g_scriptId, "#G#b畜ng g髉 100 餴琺 #Ykhuy猚h tr呓ng#G cho Bang", 6, 100 )
		else
			AddText( sceneId, "    锈y l� 鸶a 餴琺 quan tr鱪g c黙 tr叨ng, tr� 甬 t� b眓 bang, kh鬾g ai 疬㧟 xem tr祄 � 疴y" )
		end
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--事件交互入口
--**********************************
function x805013_OnDefaultEvent( sceneId, selfId, targetId )
	x805013_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
-- 判断某个事件是否可以通过此 NPC 执行
--**********************************
function x805013_IsValidEvent( sceneId, selfId, eventId )
	local i = 1
	local findId = 0
	local bValid = 0

	for i, findId in x805013_g_eventList do
		if eventId == findId then
			bValid = 1
			break
		end
	end

	if bValid == 0 then
		for i, findId in x805013_g_eventSetList do
			if CallScriptFunction( findId, "IsInEventList", sceneId, selfId, eventId ) == 1 then
				bValid = 1
				break
			end
		end
	end

	return bValid
end

--**********************************
--事件列表选中一项
--**********************************
function x805013_OnEventRequest( sceneId, selfId, targetId, eventId )

	if x805013_IsValidEvent( sceneId, selfId, eventId ) == 1 then
		CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
		return
	end

	if GetNumText() == 1 then
		BeginEvent(sceneId)
		AddText( sceneId, "#{City_Expand_Mission_Help}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 2 then
		BeginEvent(sceneId)
		AddText( sceneId, "#{City_Intro_JiaoChang}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 3 then
		BeginEvent(sceneId)
		AddText( sceneId, "Ch裞 n錸g n鄖 s 疬㧟 th馽 hi畁" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 4 then
		BeginEvent(sceneId)
		AddText( sceneId, "Ch裞 n錸g n鄖 s 疬㧟 th馽 hi畁" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 5 then
		BeginEvent(sceneId)
		AddText( sceneId, "Ch裞 n錸g n鄖 s 疬㧟 th馽 hi畁" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 6 then
		BeginEvent(sceneId)
		AddText( sceneId, "Ch裞 n錸g n鄖 s 疬㧟 th馽 hi畁" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	elseif GetNumText() == 100 then
		
		-- check item
		local item_khuyechtruong = 30505205
		number = LuaFnGetAvailableItemCount(sceneId, selfId, item_khuyechtruong)
		if number == 0  then
			BeginEvent(sceneId)
				AddText(sceneId, "  #WC醕 h� c mang theo #G#{_ITEM30505205} #Wm緄 c� th� s� d鴑g ch裞 n錸g n鄖." );
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		-- ## end check item
		-- begin xoa
		local reply = LuaFnDelAvailableItem(sceneId,selfId,item_khuyechtruong,1)
		-- end xoa
		--hieu ung
		CityChangeAttr( sceneId, selfId, 6, 100 )
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
		--add 餴琺 khuy猚h tr呓ng
		CityChangeAttr( sceneId, selfId, GUILD_AMBI_LEVEL, 100 )
		local  PlayerName=GetName(sceneId,selfId);
		local sMessage = format("@*;SrvMsg;GLD:#{_INFOUSR%s}#cffff00 t読 #c00FFFF恤ng Ph� Dung#cffff00, 疸 c痭g hi猲 cho Bang ph醝 100 餴琺 khuy猚h tr呓ng! C醕 bang ch鷑g kh醕 n阯 h鱟 t!", PlayerName);	
		BroadMsgByChatPipe(sceneId, selfId, sMessage, 6);
		
		BeginEvent(sceneId)
		AddText( sceneId, "#W秀 痼ng g髉 th鄋h c鬾g #Y100 #W餴琺 khuy猲 tr呓ng cho #GBang H礽" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	
end

--**********************************
--接受此NPC的任务
--**********************************
function x805013_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, eventId in x805013_g_eventList2 do
		if missionScriptId == eventId then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
			return
		end
	end

	if x805013_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		local ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
		if ret > 0 then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
		elseif ret == -1 then
			x805013_NotifyFailTips( sceneId, selfId, "Ng呓i hi畁 kh鬾g th� nh nhi甿 v� n鄖" )
		elseif ret == -2 then
			x805013_NotifyFailTips( sceneId, selfId, "Kh鬾g th� ti猵 nh nhi玼 nhi甿 v�" )
		end

		return
	end
end

--**********************************
--拒绝此NPC的任务
--**********************************
function x805013_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	if x805013_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		x805013_UpdateEventList( sceneId, selfId, targetId )
		return
	end
end

--**********************************
--继续（已经接了任务）
--**********************************
function x805013_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	if x805013_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
		return
	end
end

--**********************************
--提交已做完的任务
--**********************************
function x805013_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, eventId in x805013_g_eventList2 do	
		if missionScriptId == eventId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
		end
	end
	if x805013_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
		return
	end
end

--**********************************
--死亡事件
--**********************************
function x805013_OnDie( sceneId, selfId, killerId )
end

function x805013_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
