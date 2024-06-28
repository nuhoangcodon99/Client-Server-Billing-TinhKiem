--凤朝阳

--脚本号
x002037_g_scriptId = 002037


--所拥有的事件ID列表
x002037_g_eventList={}

--**********************************
--事件列表
--**********************************
function x002037_UpdateEventList( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " c� n呓ng "
	else
		PlayerSex = " c醕 h�"
	end
	BeginEvent(sceneId)
			AddText(sceneId,"  "..PlayerName..PlayerSex..", n猽 ng呓i mu痭 h鱟 h鰅 v� c鬾g c黙 k� kh醕, xin m秈 l阯 疣i")
			AddNumText(sceneId,x002037_g_scriptId,"H鰅 v� L鬷 疣i",11,0)
	for i, eventId in x002037_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件交互入口
--**********************************
function x002037_OnDefaultEvent( sceneId, selfId,targetId )
	x002037_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中一项
--**********************************
function x002037_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText() == 0	then
		BeginEvent(sceneId)
			local  PlayerName=GetName(sceneId,selfId)
			AddText(sceneId,"#{OBJ_dali_0055}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	for i, findId in x002037_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--接受此NPC的任务
--**********************************
function x002037_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002037_g_eventList do
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
function x002037_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--拒绝之后，要返回NPC的事件列表
	for i, findId in x002037_g_eventList do
		if missionScriptId == findId then
			x002037_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--继续（已经接了任务）
--**********************************
function x002037_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002037_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--提交已做完的任务
--**********************************
function x002037_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x002037_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--死亡事件
--**********************************
function x002037_OnDie( sceneId, selfId, killerId )
end
