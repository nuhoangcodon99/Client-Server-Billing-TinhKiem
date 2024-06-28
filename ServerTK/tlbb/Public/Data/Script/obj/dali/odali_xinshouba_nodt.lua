--Ëï°ËÒ¯

--½Å±¾ºÅ
x002032_g_scriptId = 002032


x002032_g_DuanWuJieDay	= {start = 20090528, stop1 = 20090604, level = 30}
--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x002032_g_eventList={210210,210211,210212,210246,808130,808124,889061,889062}--del 889050 ÇØ»ÊÕ½Éñ»î¶¯

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x002032_UpdateEventList( sceneId, selfId,targetId )
	
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002032_OnDefaultEvent( sceneId, selfId,targetId )
	--x002032_UpdateEventList( sceneId, selfId, targetId )
	
	BeginEvent(sceneId)
		AddText( sceneId, "ChÑc nång tÕm th¶i ðóng ð¬ bäo trì. Vui lòng quay lÕi sau !" )
		--AddNumText( sceneId, x002032_g_scriptId, "#PÐ±i #Yði¬m t£ng #Psang  #c00FFFF[Phiªu Ði¬m T£ng]",2 ,1000  )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x002032_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	if GetNumText() == 1000 then --doi diem tang sang phieu
		BeginEvent(sceneId)
			AddNumText( sceneId, x002032_g_scriptId, "#PÐ±i  #Y[Phiªu Ði¬m T£ng (5k)]",2 ,1001  )
			AddNumText( sceneId, x002032_g_scriptId, "#PÐ±i  #Y[Phiªu Ði¬m T£ng (100k)]",2 ,1002  )
			AddNumText( sceneId, x002032_g_scriptId, "#PÐ±i  #Y[Phiªu Ði¬m T£ng (500k)]",2 ,1003  )			
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
	--x002032_SubHelp_Duanwujie( sceneId, selfId, targetId )--¶ËÎç½Ú»î¶¯£¬ÒÔºóÈ¥µô	
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
	--check s¯ ði¬m t£ng ðang có
	if nZen < sodiemtang then
		x002032_NotifyFailBox( sceneId, selfId, targetId, "S¯ ði¬m t£ng t¯i thi¬u mang theo phäi nhi«u h½n #Y"..sodiemtang.." #Wði¬m t£ng và ít h½n #Y1.000.000 #Wði¬m t£ng m¾i có th¬ thñc hi®n chuy¬n ð±i." )
		return
	end
	--check id item
	local idtemzen = x002032_numzen2iditem(sodiemtang);
	if idtemzen ==0 then
		x002032_NotifyFailBox( sceneId, selfId, targetId, "Dæ li®u ðªn server không ð°ng bµ." )
		return
	end
	
	--add hµp tlbb
	
	local nBagIndex = TryRecieveItem( sceneId, selfId, idtemzen, 1 );
	if nBagIndex < 0 then
		BeginEvent(sceneId)
			strText = "Túi ðñng ð° ðã ð¥y"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	--tr× ði¬m t£ng
	ZengDian(sceneId,selfId,targetId,2,sodiemtang)
	local str = " #YCác hÕ ðã chuy¬n ð±i thành công "..sodiemtang.." ði¬m t£ng !"
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
--½ÓÊÜ´ËNPCµÄÈÎÎñ
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
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x002032_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x002032_g_eventList do
		if missionScriptId == findId then
			x002032_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
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
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
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
--ËÀÍöÊÂ¼þ
--**********************************
function x002032_OnDie( sceneId, selfId, killerId )
end
--¶ËÎç½Ú»î¶¯µÄ°ïÖú£¨»î¶¯¹ýºóÓ¦È¥µô£©
--**********************************
function x002032_Help_Duanwujie( sceneId, selfId, targetId )
	local curDayTime = GetTime2Day()
	if curDayTime >= x002032_g_DuanWuJieDay.start and curDayTime <= x002032_g_DuanWuJieDay.stop1 then
			AddNumText(sceneId, x002032_g_scriptId, "#{DWJ_090511_02}", 11, 5500)										
	end
end

--**********************************
--¶ËÎç½Ú»î¶¯×Ó»î¶¯µÄ°ïÖú£¨»î¶¯¹ýºóÓ¦È¥µô£©
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
