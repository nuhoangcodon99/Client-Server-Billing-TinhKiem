--石宝

--脚本号
x002040_g_scriptId = 002040


--所拥有的事件ID列表
x002040_g_eventList={210209,210287}

--**********************************
--事件列表
--**********************************
function x002040_UpdateEventList( sceneId, selfId,targetId )
	
	local  Menpai=LuaFnGetMenPai(sceneId,selfId)
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = "S� mu礽"
	else
		PlayerSex = "S� 甬"
	end
	
	BeginEvent(sceneId)	
	if Menpai == 9 then
		AddText(sceneId,"#{OBJ_dali_0019}")
	elseif Menpai == 1 then
		AddText(sceneId,"  "..PlayerSex..", v� c鬾g c黙 ng呓i ti猲 b� r nhanh, #r#rTh醤h h鯽 r譶g r馽 ph� h� cho Minh Gi醥 c黙 ta, quang minh v課 tr唼ng chi猽 kh thi阯 h�")
	else
		AddText(sceneId,"  L鈛 l kh鬾g g ng呓i, v緄 thi阯 ch nh� v c黙 ng呓i, th 疳ng ti猚 ng呓i kh鬾g ph鋓 l� ng叨i c黙 Minh Gi醥 ta, cu痠 c鵱g ch� tr� th鄋h k� t th叨ng m� th鬷")
	end
	
	if	GetLevel( sceneId, selfId)<=10	then
		AddNumText(sceneId,x002040_g_scriptId,"L阯 痫nh Quang Minh xem xem",9,0)
	end
	for i, eventId in x002040_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件交互入口
--**********************************
function x002040_OnDefaultEvent( sceneId, selfId,targetId )
	x002040_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中一项
--**********************************
function x002040_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
		if IsHaveMission(sceneId,selfId,4021) > 0 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ng呓i c� nhi甿 v� ch� h鄋g bg 疬秐g thu�, d竎h tr誱 ch鷑g ta kh鬾g th� cung c d竎h v� cho ng呓i");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else	
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 11, 98, 149)
		end

	elseif   GetNumText()==10	then
		BeginEvent(sceneId)
			AddText(sceneId,"#{MnepaiDesc_mingjiao_1}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif   GetNumText()==11	then
		BeginEvent(sceneId)
			AddText(sceneId,"#{MnepaiDesc_mingjiao_2}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif   GetNumText()==12	then
		BeginEvent(sceneId)
			AddText(sceneId,"#{MnepaiDesc_mingjiao_3}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif   GetNumText()==13	then
		BeginEvent(sceneId)
			AddText(sceneId,"#{MnepaiDesc_mingjiao_4}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	else
		for i, findId in x002040_g_eventList do
			if eventId == findId then
				CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
				return
			end
		end
	end
end

--**********************************
--接受此NPC的任务
--**********************************
function x002040_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002040_g_eventList do
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
function x002040_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--拒绝之后，要返回NPC的事件列表
	for i, findId in x002040_g_eventList do
		if missionScriptId == findId then
			x002040_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--继续（已经接了任务）
--**********************************
function x002040_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002040_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--提交已做完的任务
--**********************************
function x002040_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x002040_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--死亡事件
--**********************************
function x002040_OnDie( sceneId, selfId, killerId )
end
