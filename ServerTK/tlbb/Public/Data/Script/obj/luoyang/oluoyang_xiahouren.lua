-- 000144
-- 夏侯仁

--脚本号
x000144_g_scriptId = 000144

--所拥有的事件ID列表
x000144_g_eventList={125020}

--**********************************
--事件列表
--**********************************
function x000144_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  #G$N#WAnh h鵱g! 歇n Tung S絥 phong thi玭 疣i c課h k� tr叨ng bi瑄 hi畁 th馽 l馽 c黙 c醕 h� 餴! #GC醕 h� tr呔c khi b呔c v鄌 phong thi玭 疣i nh thi猼 ph鋓 l 1 t� 鸬i, t c� ng叨i trong t� 鸬i l鷆 v鄌 phong thi玭 疣i s� thu礳 tr h靚h");
		for i, eventId in x000144_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件交互入口
--**********************************
function x000144_OnDefaultEvent( sceneId, selfId,targetId )
	x000144_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中一项
--**********************************
function x000144_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x000144_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--接受此NPC的任务
--**********************************
function x000144_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000144_g_eventList do
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
function x000144_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--拒绝之后，要返回NPC的事件列表
	for i, findId in x000144_g_eventList do
		if missionScriptId == findId then
			x000144_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--继续（已经接了任务）
--**********************************
function x000144_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000144_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--提交已做完的任务
--**********************************
function x000144_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000144_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--死亡事件
--**********************************
function x000144_OnDie( sceneId, selfId, killerId )
end
