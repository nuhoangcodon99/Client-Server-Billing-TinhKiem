-- 019033
-- 穆岛

--脚本号
x019033_g_scriptId = 019033

--所拥有的事件ID列表
x019033_g_eventList={212220}



--**********************************
--事件列表
--**********************************
function x019033_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"C醕 h� mu痭 鸨i b鋙 v c黙 ta �? E rg c醕 h� ph鋓 chu b� 1 t鷌 Y猲 Huy玭 Ng鱟, th� 痼 trong C� M� c� r nhi玼, nh遪g ph鋓 xem c醕 h� c騨 m課g 瓞 l ra kh鬾g.");
		for i, eventId in x019033_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件交互入口
--**********************************
function x019033_OnDefaultEvent( sceneId, selfId,targetId )
	x019033_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中一项
--**********************************
function x019033_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x019033_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--接受此NPC的任务
--**********************************
function x019033_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x019033_g_eventList do
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
function x019033_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--拒绝之后，要返回NPC的事件列表
	for i, findId in x019033_g_eventList do
		if missionScriptId == findId then
			x019033_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--继续（已经接了任务）
--**********************************
function x019033_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x019033_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--提交已做完的任务
--**********************************
function x019033_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )

	for i, findId in x019033_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--死亡事件
--**********************************
function x019033_OnDie( sceneId, selfId, killerId )
end

