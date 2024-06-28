--孙八爷

--脚本号
x002032_g_scriptId = 002032


x002032_g_DuanWuJieDay	= {start = 20090528, stop1 = 20090604, level = 30}
--所拥有的事件ID列表
x002032_g_eventList={210210,210211,210212,210246,808130,808124,889061,889062}--del 889050 秦皇战神活动

--**********************************
--事件列表
--**********************************
function x002032_UpdateEventList( sceneId, selfId,targetId )
	
end

--**********************************
--事件交互入口
--**********************************
function x002032_OnDefaultEvent( sceneId, selfId,targetId )
	--x002032_UpdateEventList( sceneId, selfId, targetId )
	
	BeginEvent(sceneId)
		AddText( sceneId, "Ch裞 n錸g t誱 th秈 痼ng 瓞 b鋙 tr�. Vui l騨g quay l読 sau !" )
		--AddNumText( sceneId, x002032_g_scriptId, "#P斜i #Y餴琺 tg #Psang  #c00FFFF[Phi猽 衖琺 Tg]",2 ,1000  )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件列表选中一项
--**********************************
function x002032_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	if GetNumText() == 1000 then --doi diem tang sang phieu
		BeginEvent(sceneId)
			AddNumText( sceneId, x002032_g_scriptId, "#P斜i  #Y[Phi猽 衖琺 Tg (5k)]",2 ,1001  )
			AddNumText( sceneId, x002032_g_scriptId, "#P斜i  #Y[Phi猽 衖琺 Tg (100k)]",2 ,1002  )
			AddNumText( sceneId, x002032_g_scriptId, "#P斜i  #Y[Phi猽 衖琺 Tg (500k)]",2 ,1003  )			
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if GetNumText() == 1001 then
		--x002032_zengdian2item(sceneId, selfId, targetId, 5000)
	end
	if GetNumText() == 1002 then
		--x002032_zengdian2item(sceneId, selfId, targetId, 100000)
	end
	if GetNumText() == 1003 then
		--x002032_zengdian2item(sceneId, selfId, targetId, 500000)
	end
	
	--for i, findId in x002032_g_eventList do
		--if eventId == findId then
			--CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
		--	return
		--end
	--end
	--x002032_SubHelp_Duanwujie( sceneId, selfId, targetId )--端午节活动，以后去掉	
end
function x002032_numzen2iditem(sodiemtang)

	local iditem =0
	if sodiemtang == 5000 then iditem = 39910001
	elseif sodiemtang == 100000 then iditem = 39910002
	elseif sodiemtang == 500000 then iditem = 39910003
	end
	return iditem;
end

function x002032_zengdian2item(sceneId, selfId, targetId, sodiemtang)
	local nZen = ZengDian(sceneId,selfId,targetId,3,_)
	--check s� 餴琺 tg 餫ng c�
	if nZen < sodiemtang then
		x002032_NotifyFailBox( sceneId, selfId, targetId, "S� 餴琺 tg t痠 thi瑄 mang theo ph鋓 nhi玼 h絥 #Y"..sodiemtang.." #W餴琺 tg v� 韙 h絥 #Y1.000.000 #W餴琺 tg m緄 c� th� th馽 hi畁 chuy琻 鸨i." )
		return
	end
	--check id item
	local idtemzen = x002032_numzen2iditem(sodiemtang);
	if idtemzen ==0 then
		x002032_NotifyFailBox( sceneId, selfId, targetId, "D� li畊 皙n server kh鬾g 鸢ng b�." )
		return
	end
	
	--add h祊 tlbb
	
	local nBagIndex = TryRecieveItem( sceneId, selfId, idtemzen, 1 );
	if nBagIndex < 0 then
		BeginEvent(sceneId)
			strText = "T鷌 瘃ng 鸢 疸 馥y"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	--tr� 餴琺 tg
	ZengDian(sceneId,selfId,targetId,2,sodiemtang)
	local str = " #YC醕 h� 疸 chuy琻 鸨i th鄋h c鬾g "..sodiemtang.." 餴琺 tg !"
	x002032_NotifyFailTips( sceneId, selfId, str )
	x002032_NotifyFailBox( sceneId, selfId, targetId, str )
	
end
function x002032_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
function x002032_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--接受此NPC的任务
--**********************************
function x002032_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002032_g_eventList do
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
function x002032_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--拒绝之后，要返回NPC的事件列表
	for i, findId in x002032_g_eventList do
		if missionScriptId == findId then
			x002032_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--继续（已经接了任务）
--**********************************
function x002032_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002032_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--提交已做完的任务
--**********************************
function x002032_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x002032_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--死亡事件
--**********************************
function x002032_OnDie( sceneId, selfId, killerId )
end
--端午节活动的帮助（活动过后应去掉）
--**********************************
function x002032_Help_Duanwujie( sceneId, selfId, targetId )
	local curDayTime = GetTime2Day()
	if curDayTime >= x002032_g_DuanWuJieDay.start and curDayTime <= x002032_g_DuanWuJieDay.stop1 then
			AddNumText(sceneId, x002032_g_scriptId, "#{DWJ_090511_02}", 11, 5500)										
	end
end

--**********************************
--端午节活动子活动的帮助（活动过后应去掉）
--**********************************
function x002032_SubHelp_Duanwujie( sceneId, selfId, targetId )
	local numText = GetNumText();
	
	if numText == 5500 then
	 	BeginEvent(sceneId)
			AddText(sceneId, "#{DWJ_090511_03}")
		EndEvent()
		DispatchEventList(sceneId, selfId, targetId)
	end
end
