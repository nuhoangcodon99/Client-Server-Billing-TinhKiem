--武当NPC
--问路
--脚本号
x012034_g_scriptId = 012034

--所拥有的事件ID列表
x012034_g_eventList={500064}	

--**********************************
--事件列表
--**********************************
function x012034_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local  PlayerName=GetName(sceneId,selfId)
		local  PlayerSex=GetSex(sceneId,selfId)
		if PlayerSex == 0 then
			PlayerSex = " c� n呓ng "
		else
			PlayerSex = " thi猽 hi畃 "
		end
		AddText(sceneId,"B 鹫o tu h鄋h � V� 衋ng 疸 nhi玼 n錷, th鬾g th誳 鸶a h靚h 鸶a th�. N猽 c醕 h� c鋗 th kh� kh錸 c� th� 皙n t靘 ta 瓞 h鰅.")
		for i, eventId in x012034_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件交互入口
--**********************************
function x012034_OnDefaultEvent( sceneId, selfId,targetId )
	x012034_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中一项
--**********************************
function x012034_OnEventRequest( sceneId, selfId, targetId, eventId )
	CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
	return
end

--**********************************
--接受此NPC的任务
--**********************************
function x012034_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x012034_g_eventList do
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
function x012034_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--拒绝之后，要返回NPC的事件列表
	for i, findId in x012034_g_eventList do
		if missionScriptId == findId then
			x012034_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--继续（已经接了任务）
--**********************************
function x012034_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x012034_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--提交已做完的任务
--**********************************
function x012034_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x012034_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--死亡事件
--**********************************
function x012034_OnDie( sceneId, selfId, killerId )
end
