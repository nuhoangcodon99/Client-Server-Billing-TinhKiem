--破贪

--脚本号
x002044_g_scriptId = 002044


--所拥有的事件ID列表
x002044_g_eventList={210209,210287}

--**********************************
--事件列表
--**********************************
function x002044_UpdateEventList( sceneId, selfId,targetId )
	
	local  Menpai=LuaFnGetMenPai(sceneId,selfId)
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = "S� mu礽"
	else
		PlayerSex = "S� 甬"
	end
	
	BeginEvent(sceneId)	
	if Menpai == 9 then
		AddText(sceneId,"#{OBJ_dali_0023}")
	elseif Menpai == 6 then
		AddText(sceneId,"  "..PlayerSex..", v� c鬾g c黙 ng呓i ti猲 b� rnhanh, kh鬾g h� m ta 疸 ch鱪 ng叨i")
	else
		AddText(sceneId,"  L鈛 l kh鬾g g ng呓i, v緄 thi阯 ch nh� ng呓i, th 疳ng ti猚 l読 kh鬾g � Thi阯 Long T� � 姓i L� v緄 ta m� l読 l遳 l誧 tr阯 giang h�")
	end
	
	if	GetLevel( sceneId, selfId)<=10	then
		AddNumText(sceneId,x002044_g_scriptId,"衖 Thi阯 Long T� xem xem",9,0)
	end
	misIndex = GetMissionIndexByID(sceneId,selfId,1060)			--得到任务的序列号
	if	IsHaveMission(sceneId,selfId,1060) > 0	 then
		if	GetMissionParam( sceneId, selfId, misIndex,0) < 1  and	 GetMissionParam( sceneId, selfId, misIndex,2) == 1   then
			AddNumText(sceneId,x002044_g_scriptId,"锈y l� th� s� huynh ta g豬 cho huynh",4,1)
		end
	end
	for i, eventId in x002044_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件交互入口
--**********************************
function x002044_OnDefaultEvent( sceneId, selfId,targetId )
	x002044_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--事件列表选中一项
--**********************************
function x002044_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
		if IsHaveMission(sceneId,selfId,4021) > 0 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ng呓i c� nhi甿 v� ch� h鄋g bg 疬秐g thu�, d竎h tr誱 ch鷑g ta kh鬾g th� cung c d竎h v� cho ng呓i");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else	
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 13,96,139)
		end
	elseif	GetNumText()==1	then
		misIndex = GetMissionIndexByID(sceneId,selfId,1060)			--得到任务的序列号
		DelItem (  sceneId, selfId, 40002115, 1)	
		SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
		BeginEvent(sceneId)
			AddText(sceneId,"Quay v� b鋙 v緄 Hu� Ph呓ng s� huynh rg, th� c黙 huynh  ta 疸 nh 疬㧟, c鋗 絥 ng呓i")
		EndEvent( )
		DispatchEventList(sceneId,selfId,targetId)
		BeginEvent(sceneId)
			AddText(sceneId,"Ho鄋 t nhi甿 v�!")
		EndEvent( )
		DispatchMissionTips(sceneId,selfId)

	elseif   GetNumText()==10	then
		BeginEvent(sceneId)
			AddText(sceneId,"#{MnepaiDesc_dali_1}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif   GetNumText()==11	then
		BeginEvent(sceneId)
			AddText(sceneId,"#{MnepaiDesc_dali_2}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif   GetNumText()==12	then
		BeginEvent(sceneId)
			AddText(sceneId,"#{MnepaiDesc_dali_3}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif   GetNumText()==13	then
		BeginEvent(sceneId)
			AddText(sceneId,"#{MnepaiDesc_dali_4}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	else
		for i, findId in x002044_g_eventList do
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
function x002044_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002044_g_eventList do
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
function x002044_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--拒绝之后，要返回NPC的事件列表
	for i, findId in x002044_g_eventList do
		if missionScriptId == findId then
			x002044_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--继续（已经接了任务）
--**********************************
function x002044_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002044_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--提交已做完的任务
--**********************************
function x002044_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x002044_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--死亡事件
--**********************************
function x002044_OnDie( sceneId, selfId, killerId )
end
