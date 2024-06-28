--城市NPC
--米仓

x805014_g_scriptId = 805014
x805014_g_BuildingID8 = 7

--所拥有的事件ID列表
x805014_g_eventList = { 600007 }

-- 任务集事件 ID 列表，这类事件包含子事件
x805014_g_eventSetList = { 600007 }

--**********************************
--事件列表
--**********************************
function x805014_UpdateEventList( sceneId, selfId, targetId )
	local i = 1
	local eventId = 0

	local Humanguildid 	= GetHumanGuildID(sceneId,selfId)
	local cityguildid 	= GetCityGuildID(sceneId, selfId, sceneId)

	BeginEvent( sceneId )
		if Humanguildid == cityguildid then
			AddText( sceneId, "     Bang h礽 c叨ng m課h r ch� tr鱪g ngh� n鬾g, c� vi甤 g� c ta gi鷓 ng呓i kh鬾g?" )
			for i, eventId in x805014_g_eventList do
				CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
			end
			AddNumText( sceneId, x805014_g_scriptId, "Gi緄 thi畊 nhi甿 v� ph醫 tri琻", 11, 1 )
			AddNumText( sceneId, x805014_g_scriptId, "小p th阭 t叨ng", 6, 3 )
			AddNumText( sceneId, x805014_g_scriptId, "Gi緄 thi畊 kho g誳", 11, 2 )
			AddNumText( sceneId, x805014_g_scriptId, "斜i B錸g Tr D遖 H", 6, 4 )
			AddNumText( sceneId, x805014_g_scriptId, "Gi緄 thi畊 B錸g Tr D遖 H", 11, 5 )
			AddNumText( sceneId, x805014_g_scriptId, "#G#b畜ng g髉 100 餴琺 #Yn鬾g nghi畃#G cho Bang", 6, 100 )

			--life 添加这个建筑物的相应生活技能选项
			CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "AddCityLifeAbilityOpt",sceneId, selfId, x805014_g_scriptId,x805014_g_BuildingID8,888)
		else
			AddText( sceneId, "     C醕 h� kh鬾g ph鋓 l� th鄋h vi阯 b眓 bang, nh靚 m tr鬾g l� l!" )
		end
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--事件交互入口
--**********************************
function x805014_OnDefaultEvent( sceneId, selfId, targetId )
	x805014_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
-- 判断某个事件是否可以通过此 NPC 执行
--**********************************
function x805014_IsValidEvent( sceneId, selfId, eventId )
	local i = 1
	local findId = 0
	local bValid = 0

	for i, findId in x805014_g_eventList do
		if eventId == findId then
			bValid = 1
			break
		end
	end

	if bValid == 0 then
		for i, findId in x805014_g_eventSetList do
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
function x805014_OnEventRequest( sceneId, selfId, targetId, eventId )
	if x805014_IsValidEvent( sceneId, selfId, eventId ) == 1 then
		CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
		return
	--life 处理这个建筑物的相应生活技能选项
	elseif eventId ~= x805014_g_scriptId then
		CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnDefaultEvent",sceneId, selfId, targetId, eventId, x805014_g_scriptId, x805014_g_BuildingID8 )
		return
	end
	if GetNumText() == 1 then
		BeginEvent(sceneId)
		AddText( sceneId, "#{City_Dev_Mission_Help}" )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 2 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{City_Intro_MiCang}" )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 3 then
		BeginEvent(sceneId)
			AddText( sceneId, "Ch裞 n錸g n鄖 s 疬㧟 th馽 hi畁" )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 888 then
		BeginEvent(sceneId)
		--life 添加这个建筑物的相应生活技能选项
		CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnEnumerate",sceneId, selfId, targetId, x805014_g_BuildingID8 )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 4 then
		--确认是否换取冰镇西瓜
		BeginEvent(sceneId)
			AddText( sceneId, "#{BGHXG_JS}" )
			AddText( sceneId, "C醕 h� c� x醕 nh d鵱g 9 餴琺 c痭g hi猲 bang h礽 鸨i B錸g Tr D遖 H kh鬾g ?" )
			AddNumText( sceneId, x805014_g_scriptId, "Duy畉", 6, 16 )
			AddNumText( sceneId, x805014_g_scriptId, "Hu�", 8, 17 )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 5 then
		--冰镇西瓜介绍
		BeginEvent(sceneId)
			AddText( sceneId, "#{BGHXG_JS}" )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 16 then
		--确认换西瓜
		x805014_BingZhenXiGua(sceneId, selfId, targetId);
	elseif GetNumText() == 17 then
		--取消换西瓜
		x805014_OnDefaultEvent( sceneId, selfId, targetId )
	
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
		CityChangeAttr( sceneId, selfId, GUILD_AGR_LEVEL, 100 )
		local  PlayerName=GetName(sceneId,selfId);
		local sMessage = format("@*;SrvMsg;GLD:#{_INFOUSR%s}#cffff00 t読 #c00FFFFChu Th� H鎢#cffff00, 疸 c痭g hi猲 cho Bang ph醝 100 餴琺 n鬾g nghi畃! C醕 bang ch鷑g kh醕 n阯 h鱟 t!", PlayerName);	
		BroadMsgByChatPipe(sceneId, selfId, sMessage, 6);
		
		BeginEvent(sceneId)
		AddText( sceneId, "#W秀 痼ng g髉 th鄋h c鬾g #Y100 #W餴琺 n鬾g nghi畃 cho #GBang H礽" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
	--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
		
	end
end

--**********************************
--接受此NPC的任务
--**********************************
function x805014_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	if x805014_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		local ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
		if ret > 0 then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
		elseif ret == -1 then
			x805014_NotifyFailTips( sceneId, selfId, "Ng呓i hi畁 kh鬾g th� nh nhi甿 v� n鄖" )
		elseif ret == -2 then
			x805014_NotifyFailTips( sceneId, selfId, "Kh鬾g th� ti猵 nh nhi玼 nhi甿 v�" )
		end

		return
	end
end

--**********************************
--拒绝此NPC的任务
--**********************************
function x805014_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	if x805014_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		x805014_UpdateEventList( sceneId, selfId, targetId )
		return
	end
end

--**********************************
--继续（已经接了任务）
--**********************************
function x805014_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	if x805014_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
		return
	end
end

--**********************************
--提交已做完的任务
--**********************************
function x805014_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	if x805014_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
		return
	end
end

--**********************************
--死亡事件
--**********************************
function x805014_OnDie( sceneId, selfId, killerId )
end

function x805014_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--换取冰镇西瓜
--**********************************
function x805014_BingZhenXiGua(sceneId, selfId, targetId)
	local humanGuildId 	= GetHumanGuildID(sceneId,selfId)
	local cityGuildId 	= GetCityGuildID(sceneId, selfId, sceneId)
	if not humanGuildId or not cityGuildId or humanGuildId ~= cityGuildId then
		BeginEvent(sceneId)
			AddText( sceneId, "Ch� c� th鄋h vi阯 c黙 b眓 bang m緄 c� th� 鸨i" )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
		return 0;
	end
	
	local guildPoint = CityGetAttr(sceneId, selfId, 6);
	if not guildPoint or guildPoint < 9 then
		BeginEvent(sceneId)
			AddText( sceneId, "衖琺 c痭g hi猲 bang h礽 c黙 c醕 h� kh鬾g 瘘 9 餴琺, kh鬾g th� 鸨i." )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
		return 0;
	end

	LuaFnBeginAddItem(sceneId);
		LuaFnAddItem(sceneId, 30501103, 1);
	local ret = LuaFnEndAddItem(sceneId, selfId);
	if not ret or 1 ~= ret then
		BeginEvent(sceneId)
			AddText(sceneId, "Hi畁 c醕 h� kh鬾g th� thu 疬㧟 v ph, xin ki琺 tra l読 tay n鋓.");
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
		return 0;
	end
	
	ret = CityChangeAttr(sceneId, selfId, 6, -9);
	if not ret or ret ~= 1 then
		BeginEvent(sceneId)
			AddText(sceneId, "Thao t醕 th b読, xin h銀 th� l読.");
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
		return 0;
	end
	
	AddItemListToHuman(sceneId,selfId);
	x805014_NotifyFailTips(sceneId, selfId, "C醕 h� nh 疬㧟 1 mi猲g D遖 h 呔p l課h");
	
	local szTransferItem = GetItemTransfer(sceneId, selfId, 0);
	local selfName = LuaFnGetName(sceneId, selfId);
	local strChatMessage = "#{_INFOUSR"..selfName.."}#P h緉 h� t� trong tay#G Chu Th� h鎢[129, 100]#P l 1 mi猲g#Y#{_INFOMSG" .. szTransferItem .. "}#cff99cc, 錸 1 mi猲g v鄌 m醫 t� 馥u xu痭g 皙n b鄋 ch鈔!";
	BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;GLD:"..strChatMessage, 6);
	x805014_OnDefaultEvent( sceneId, selfId, targetId )
end
