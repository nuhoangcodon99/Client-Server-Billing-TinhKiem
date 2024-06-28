-- 中秋NPC
-- 苏轼

x050002_g_scriptId = 050002

--所拥有的事件ID列表
x050002_g_eventList = { }

x050002_g_ItemList = { 40004303, 40004304, 40004305 }
x050002_g_MoonCakes = { 30103026, 30103027, 30103028, 30103029, 30103030, 30103031, 30103032, 30103033, 30103034, 30103035, 30103036, 30103037, }
x050002_g_MoonCakeName = { "豆沙餡月餅", "玫瑰餡月餅", "棗泥餡月餅", "五仁餡月餅", "百果餡月餅", "上素餡月餅", "火腿餡月餅", "精美松子餡月餅", "精美茯苓餡月餅", "精美黃精餡月餅", "精美雪蓮餡月餅", "精美蜂蜜餡月餅", }
--**********************************
--事件列表
--**********************************
function x050002_UpdateEventList( sceneId, selfId, targetId )
	local i, eventId
	for i, eventId in x050002_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
	end

	AddNumText( sceneId, x050002_g_scriptId, "換取中秋佳食", -1, 1 )
end

--**********************************
--事件交互入口
--**********************************
function x050002_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local strText = "    明月幾時有，把酒問青天。不知天上宮闕，今夕是何年。我欲乘風歸去，又恐瓊樓玉宇，高處不勝寒。起舞弄清影，何似在人間。轉朱閣，低綺戶，照無眠。不應有恨，何事長向別時圓。人有悲歡離合，月有陰晴圓缺，此事古難全。但願人長久，千里共嬋娟。"
		AddText( sceneId, "水調歌頭" )
		AddText( sceneId, strText )
		x050002_UpdateEventList( sceneId, selfId, targetId )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中一项
--**********************************
function x050002_OnEventRequest( sceneId, selfId, targetId, eventId )
	local i, findId
	for i, findId in x050002_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
			return
		end
	end

	if GetNumText() == 1 then
		local idx, itemId
		for idx, itemId in x050002_g_ItemList do
			if LuaFnGetAvailableItemCount( sceneId, selfId, itemId ) < 1 then
				x050002_NotifyFailBox( sceneId, selfId, targetId, "    要換取中" ..
					"秋佳食，需要精質麵粉，優質香料、上好蔗糖各自一個，" ..
					"可到洛陽薑鯉（127，154），蘇州包世榮（190，168），" ..
					"大理杜子騰（109，170）處取得。" )
				return
			end
		end

		local moonCakeId = random( getn(x050002_g_MoonCakes) )
		if LuaFnTryRecieveItem( sceneId, selfId, x050002_g_MoonCakes[moonCakeId], QUALITY_MUST_BE_CHANGE ) < 0 then
			return
		end

		for idx, itemId in x050002_g_ItemList do
			LuaFnDelAvailableItem( sceneId, selfId, itemId, 1 )
		end

		x050002_NotifyFailBox( sceneId, selfId, targetId, "    甚好甚好，中秋良" ..
			"辰，當以此餅贈君，此餅如中秋明月形狀，竊以為稱之為月餅以為善也。" )

		local strText = "你獲得" .. x050002_g_MoonCakeName[moonCakeId]

		Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )
		x050002_NotifyFailTips( sceneId, selfId, strText )

		-- 当玩家获得精美的月饼，会在世界发系统消息。
		strText = GetName( sceneId, selfId ) .. "在換取月餅時，幸運\的得到了" ..
					x050002_g_MoonCakeName[moonCakeId] .. "。"
		BroadMsgByChatPipe( sceneId, selfId, strText, 4 )
		return
	end
end

--**********************************
--对话窗口信息提示
--**********************************
function x050002_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--醒目信息提示
--**********************************
function x050002_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
