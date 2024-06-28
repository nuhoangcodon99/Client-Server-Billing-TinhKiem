--���ү

--�ű���
x002032_g_scriptId = 002032


x002032_g_DuanWuJieDay	= {start = 20090528, stop1 = 20090604, level = 30}
--��ӵ�е��¼�ID�б�
x002032_g_eventList={210210,210211,210212,210246,808130,808124,889061,889062}--del 889050 �ػ�ս��

--**********************************
--�¼��б�
--**********************************
function x002032_UpdateEventList( sceneId, selfId,targetId )
	
end

--**********************************
--�¼��������
--**********************************
function x002032_OnDefaultEvent( sceneId, selfId,targetId )
	--x002032_UpdateEventList( sceneId, selfId, targetId )
	
	BeginEvent(sceneId)
		AddText( sceneId, "Ch�c n�ng t�m th�i ��ng � b�o tr�. Vui l�ng quay l�i sau !" )
		--AddNumText( sceneId, x002032_g_scriptId, "#Pбi #Y�i�m t�ng #Psang  #c00FFFF[Phi�u �i�m T�ng]",2 ,1000  )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x002032_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	if GetNumText() == 1000 then --doi diem tang sang phieu
		BeginEvent(sceneId)
			AddNumText( sceneId, x002032_g_scriptId, "#Pбi  #Y[Phi�u �i�m T�ng (5k)]",2 ,1001  )
			AddNumText( sceneId, x002032_g_scriptId, "#Pбi  #Y[Phi�u �i�m T�ng (100k)]",2 ,1002  )
			AddNumText( sceneId, x002032_g_scriptId, "#Pбi  #Y[Phi�u �i�m T�ng (500k)]",2 ,1003  )			
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
	--x002032_SubHelp_Duanwujie( sceneId, selfId, targetId )--����ڻ���Ժ�ȥ��	
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
	--check s� �i�m t�ng �ang c�
	if nZen < sodiemtang then
		x002032_NotifyFailBox( sceneId, selfId, targetId, "S� �i�m t�ng t�i thi�u mang theo ph�i nhi�u h�n #Y"..sodiemtang.." #W�i�m t�ng v� �t h�n #Y1.000.000 #W�i�m t�ng m�i c� th� th�c hi�n chuy�n �i." )
		return
	end
	--check id item
	local idtemzen = x002032_numzen2iditem(sodiemtang);
	if idtemzen ==0 then
		x002032_NotifyFailBox( sceneId, selfId, targetId, "D� li�u �n server kh�ng �ng b�." )
		return
	end
	
	--add h�p tlbb
	
	local nBagIndex = TryRecieveItem( sceneId, selfId, idtemzen, 1 );
	if nBagIndex < 0 then
		BeginEvent(sceneId)
			strText = "T�i ��ng � �� �y"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	--tr� �i�m t�ng
	ZengDian(sceneId,selfId,targetId,2,sodiemtang)
	local str = " #YC�c h� �� chuy�n �i th�nh c�ng "..sodiemtang.." �i�m t�ng !"
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
--���ܴ�NPC������
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
--�ܾ���NPC������
--**********************************
function x002032_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x002032_g_eventList do
		if missionScriptId == findId then
			x002032_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
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
--�ύ�����������
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
--�����¼�
--**********************************
function x002032_OnDie( sceneId, selfId, killerId )
end
--����ڻ�İ����������Ӧȥ����
--**********************************
function x002032_Help_Duanwujie( sceneId, selfId, targetId )
	local curDayTime = GetTime2Day()
	if curDayTime >= x002032_g_DuanWuJieDay.start and curDayTime <= x002032_g_DuanWuJieDay.stop1 then
			AddNumText(sceneId, x002032_g_scriptId, "#{DWJ_090511_02}", 11, 5500)										
	end
end

--**********************************
--����ڻ�ӻ�İ����������Ӧȥ����
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
