--敦煌 朱王礼

--脚本号
--g_scriptId = 008003

--所拥有的事件ID列表
x008003_g_eventList={}--210804,210805,210806}--//210801,210802,210803,210804}--212603,212606}	

--**********************************
--事件列表
--**********************************
function x008003_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	
	AddText(sceneId, "L鈛 l kh鬾g g, l� m祎 ng叨i H醤, ta bi猼 t靚h c鋘h hi畁 t読 r tr� tr陁. Nh遪g c騨 bao nhi陁 anh em ng叨i H醤 � 疴y, ta ph鋓 b鋙 v� h�! C騨 瘊ng, sai, vinh, nh鴆... N鄌 ai n骾 疬㧟 r� r鄋g?!")

	for i, eventId in x008003_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件交互入口
--**********************************
function x008003_OnDefaultEvent( sceneId, selfId,targetId )
	x008003_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中一项
--**********************************
function x008003_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x008003_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--接受此NPC的任务
--**********************************
function x008003_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x008003_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
			end
			return
		end
	end
end

--**********************************
--拒绝此NPC的任务
--**********************************
function x008003_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--拒绝之后，要返回NPC的事件列表
	for i, findId in x008003_g_eventList do
		if missionScriptId == findId then
			x008003_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--继续（已经接了任务）
--**********************************
function x008003_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x008003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--提交已做完的任务
--**********************************
function x008003_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x008003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--死亡事件
--**********************************
function x008003_OnDie( sceneId, selfId, killerId )
end
