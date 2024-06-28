--杜子腾

--脚本号
x002028_g_scriptId = 002028

x002028_g_shoptableindex=5

--所拥有的事件ID列表
x002028_g_eventList = { 210201, 210202, 210203 }

x002028_g_ControlScript = 050009
x002028_g_ExchangeList = { id = 40004305, name = "M韆 th唼ng ph", cost = 55 }

--**********************************
--事件列表
--**********************************
function x002028_UpdateEventList( sceneId, selfId, targetId )
    local PlayerName = GetName( sceneId, selfId )
	local PlayerSex = GetSex( sceneId, selfId )

	if PlayerSex == 0 then
		PlayerSex = " c� n呓ng "
	else
		PlayerSex = " c醕 h�"
	end

	BeginEvent( sceneId )
		AddText( sceneId, "  " .. PlayerName .. PlayerSex .. ", c� mu痭 n猰 th� m髇 餴琺 t鈓 n眎 ti猲g c黙 姓i L� kh鬾g? B鋙 痄m ng呓i 錸 h猼 8 b醫 l読 mu痭 錸 ti猵 8 b醫 n鎍, ch苙g mu痭 b� 餴")
		AddNumText( sceneId, x002028_g_scriptId, "Mua th馽 ph", 7, 0 )

		for i, eventId in x002028_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end

		if CallScriptFunction( x002028_g_ControlScript, "IsMidAutumnPeriod", sceneId, selfId ) > 0 then
			--AddNumText( sceneId, x002028_g_scriptId, "换取食材", 6, 1 )
			--AddNumText( sceneId, x002028_g_scriptId, "食材有什么用", 11, 2 )
		end
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--事件交互入口
--**********************************
function x002028_OnDefaultEvent( sceneId, selfId, targetId )
	x002028_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中一项
--**********************************
function x002028_OnEventRequest( sceneId, selfId, targetId, eventId )
	local i, findId

	for i, findId in x002028_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
			return
		end
	end

	if GetNumText() == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x002028_g_shoptableindex )
	end

	if CallScriptFunction( x002028_g_ControlScript, "IsMidAutumnPeriod", sceneId, selfId ) > 0 then
		if GetNumText() == 1 then
			local score = GetMissionData( sceneId, selfId, MD_MIDAUTUMN_SCORE )
			if score < x002028_g_ExchangeList.cost then
				x002028_NotifyFailBox( sceneId, selfId, targetId, "    C ph鋓 鸨i 1 ph" .. x002028_g_ExchangeList.name ..
				", c t韈h 餴琺" .. x002028_g_ExchangeList.cost .. "衖琺, hi畁 gi� ng呓i ch� c�" .. score .. "衖琺, h靚h nh� kh鬾g 瘘" )
				return
			end

			BeginEvent( sceneId )
				AddText( sceneId, "  衖琺 t韈h l鹹 trung thu c黙 ng呓i hi畁" .. score .. "衖琺, 鸨i l m祎 ph" ..
					x002028_g_ExchangeList.name .. ", c t韈h 餴琺" .. x002028_g_ExchangeList.cost .. "衖琺, ng呓i x醕 鸶nh 鸨i kh鬾g?" )

				AddNumText( sceneId, x002028_g_scriptId, "X醕 鸶nh mu痭 鸨i", -1, 3 )
				AddNumText( sceneId, x002028_g_scriptId, "Ta ch� 餴 qua", -1, 4 )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		elseif GetNumText() == 2 then
			x002028_NotifyFailBox( sceneId, selfId, targetId, "    Kh呓ng L� � L誧 D呓ng [127, " ..
				"154], Bao Th� Vinh � T� Ch鈛 [190,168], 胁 T� 孝ng � 姓i L� [109,170] 瓞 鸨i" ..
				"Sau khi 疸 c� 3 lo読 nguy阯 li畊 鸢 錸 kh醕 nhau, h銀 t靘 Nh誧 Th叨ng Vi阯 � T� Ch鈛 [193,148] 疬a t緄 T鈟 H� 鸨i l B醤h Trung thu" ..
				"V ph 穑c bi畉" )
			return
		elseif GetNumText() == 3 then
			local score = GetMissionData( sceneId, selfId, MD_MIDAUTUMN_SCORE )
			if score < x002028_g_ExchangeList.cost then
				return
			end

			if LuaFnTryRecieveItem( sceneId, selfId, x002028_g_ExchangeList.id, QUALITY_MUST_BE_CHANGE ) < 0 then
				x002028_NotifyFailBox( sceneId, selfId, targetId, "    Kh鬾g gian trong tay n鋓 疸 馥y" )
			end

			score = score - x002028_g_ExchangeList.cost
			SetMissionData( sceneId, selfId, MD_MIDAUTUMN_SCORE, score )
			x002028_NotifyFailBox( sceneId, selfId, targetId, "    衖琺 t韈h l鹹 d� th譨: " .. score .. "." )
			return
		elseif GetNumText() == 4 then
			BeginUICommand( sceneId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 1000 )
		end
		return
	end
end

--**********************************
--接受此NPC的任务
--**********************************
function x002028_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	local i, findId
	for i, findId in x002028_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			end
			return
		end
	end
end

--**********************************
--拒绝此NPC的任务
--**********************************
function x002028_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--拒绝之后，要返回NPC的事件列表
	local i, findId
	for i, findId in x002028_g_eventList do
		if missionScriptId == findId then
			x002028_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--继续（已经接了任务）
--**********************************
function x002028_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	local i, findId
	for i, findId in x002028_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--提交已做完的任务
--**********************************
function x002028_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	local i, findId
	for i, findId in x002028_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--死亡事件
--**********************************
function x002028_OnDie( sceneId, selfId, killerId )
end

--**********************************
--对话窗口信息提示
--**********************************
function x002028_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
