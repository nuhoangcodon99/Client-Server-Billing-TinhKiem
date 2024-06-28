-- 125013
-- 传送人

--脚本号
x125013_g_scriptId = 125013

--所拥有的事件ID列表
x125013_g_eventList={}

x125013_g_Goto = {
			{name="Khu B靚h Nguy阯 ",scene=2,x=177,z=135,scname="姓i L�"},
			{name="朽o Th鼀 Ti玬 ",scene=0,x=250,z=250,scname="L誧 D呓ng"},
			{name="C� T� Ngh� ",scene=1,x=285,z=225,scname="T� Ch鈛"},
			{name="T痭g Tri Ng鱟 ",scene=420,x=155,z=130,scname="Th鷆 H� C� Tr"},
}

--**********************************
--事件列表
--**********************************
function x125013_UpdateEventList( sceneId, selfId, targetId )
	BeginEvent(sceneId)
		
		local szName = GetName(sceneId, targetId)
		
		local level = GetLevel( sceneId, targetId)
		
		if szName == "T痭g Tri Ng鱟 " and level < 20 then
			--str = "  十分抱歉，束河古镇目前尚未开放。等束河古镇正式开放之后我才能送你过去呢！"
			str = "  R xin l瞚, 鹌ng c c黙 b課 d呔i 20 kh鬾g th� 皙n Th鷆 H� C� Tr"
			AddText(sceneId, str);
		else
		
			for i, scene in x125013_g_Goto  do
				if scene.name == GetName(sceneId, targetId)  then
					local str = ""
					str = "  C醕 h� c� mu痭 皙n " .. scene.scname .. " kh鬾g ?"
					AddText(sceneId, str);
					AddNumText( sceneId, x125013_g_scriptId, "H銀 疬a t鬷 皙n " .. scene.scname ,9 ,1  )
				end
			end
		end
		
		for i, eventId in x125013_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件交互入口
--**********************************
function x125013_OnDefaultEvent( sceneId, selfId,targetId )
	x125013_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中一项
--**********************************
function x125013_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	if GetNumText()==1  then
		for i, Scene in x125013_g_Goto  do
			if Scene.name == GetName(sceneId, targetId)  then
				--add by Vega 2008-09-28
				if Scene.scname == "Th鷆 H� C� Tr" then
					BeginUICommand(sceneId)
						UICommand_AddInt(sceneId, x125013_g_scriptId);
						UICommand_AddInt(sceneId, targetId);
						UICommand_AddString(sceneId, "GotoShuHeGuZhen");
						UICommand_AddString(sceneId, "Th鷆 H� C� Tr l� n絠 nguy hi琺, b課 c� ch mu痭 v鄌?");
					EndUICommand(sceneId)
					DispatchUICommand(sceneId,selfId, 24)
					return				
				else

					CallScriptFunction((400900), "TransferFunc",sceneId, selfId, Scene.scene, Scene.x, Scene.z)
					return
				end
			end
		end
		return
	end

	for i, findId in x125013_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--接受此NPC的任务
--**********************************
function x125013_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x125013_g_eventList do
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
function x125013_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--拒绝之后，要返回NPC的事件列表
	for i, findId in x125013_g_eventList do
		if missionScriptId == findId then
			x125013_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--继续（已经接了任务）
--**********************************
function x125013_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x125013_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--提交已做完的任务
--**********************************
function x125013_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x125013_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--死亡事件
--**********************************
function x125013_OnDie( sceneId, selfId, killerId )
end

--add by Vega 2008-09-28
function x125013_GotoShuHeGuZhen( sceneId, selfId, targetId )
	CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 420, 155, 130, 20 );
	return
end
