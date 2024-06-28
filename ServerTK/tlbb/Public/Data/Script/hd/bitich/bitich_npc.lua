
x000582_g_ScriptId = 000582
x000582_g_eventList={583}
x000582_g_BookList={	

{n=1000,id=30311001},
{n=1000,id=30311002},
{n=1000,id=30311003},
{n=1000,id=30311004},
{n=1000,id=30311005},


{n=2000,id=30311006},
{n=2000,id=30311007},
{n=2000,id=30311008},
{n=2000,id=30311009},
{n=2000,id=30311010},
}
x000582_g_Times_LLTB = 3
x000582_g_StoneList={

{n=1,id=38000529,num=50,str="B� T�ch T�n Di�p"},

{n=2,id=38000529,num=100,str="B� T�ch T�n Di�p"},
}

function x000582_UpdateEventList( sceneId, selfId,targetId )
	if GetMissionData(sceneId,selfId,MD_MJ_TAMDAC) >999999 then
			SetMissionData(sceneId,selfId,MD_MJ_TAMDAC,999999)
	end
	BeginEvent(sceneId)
		AddText(sceneId,"#{DRFB_130111_06}")
		if GetName( sceneId, targetId ) ~= "Ph߽ng D߽ng V� " then
			--AddNumText( sceneId, x000582_g_ScriptId, "Nh�n �i�m T�m Сc V� H�c", 6, 200 )
			--AddNumText( sceneId, x000582_g_ScriptId, "Nh�n B� T�ch T�n Di�p", 6, 300 )
			AddNumText( sceneId, x000582_g_ScriptId, "Khi�u chi�n H� Kh�ng L�u Lan T�m B�o", 1, 500 )
			for i, eventId in x000582_g_eventList do
				CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
			end
			AddNumText( sceneId, x000582_g_ScriptId, "#{DRFB_130111_196}", 6, 100 )
			AddNumText( sceneId, x000582_g_ScriptId, "#{DRFB_130111_252}", 6, 800 )
		else
			AddNumText( sceneId, x000582_g_ScriptId, "#{DRFB_130111_78}", 6, 600 )
		end
		AddNumText( sceneId, x000582_g_ScriptId, "#{DRFB_130111_09}", 11, 700 )
		AddNumText( sceneId, x000582_g_ScriptId, "#{DRFB_130111_208}", 11, 400 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000582_OnDefaultEvent( sceneId, selfId,targetId )
	x000582_UpdateEventList( sceneId, selfId, targetId )
end


function x000582_OnEventRequest( sceneId, selfId, targetId, eventId )
	local nNumText = GetNumText()
	if nNumText == 600  then
		local sc = LuaFnGetCopySceneData_Param( sceneId, 3 )
		local x = LuaFnGetCopySceneData_Param( sceneId, 4 )
		local z = LuaFnGetCopySceneData_Param( sceneId, 5 )
		NewWorld( sceneId, selfId, sc, x, z )
	end
	if nNumText == 100  then
		BeginEvent(sceneId)
			AddText(sceneId, "  #{DRFB_130111_197}")
			AddNumText( sceneId, x000582_g_ScriptId, "#{DRFB_130111_198}", 6, 1000 )
			AddNumText( sceneId, x000582_g_ScriptId, "#{DRFB_130111_199}", 6, 2000 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	if nNumText == 200  then
		if GetMissionData(sceneId,selfId,MD_MJ_TAMDAC) >=999999 then
			SetMissionData(sceneId,selfId,MD_MJ_TAMDAC,999999)
			BeginEvent(sceneId)
				AddText(sceneId, "T�m Сc V� H�c �� v��t qu� gi�i h�n.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		else
			BeginEvent(sceneId)
				AddText(sceneId, "Nh�n ���c 100000 �i�m T�m Сc V� H�c. Ch�c n�ng ch� c� � phi�n b�n th� nghi�m.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			--SetMissionData(sceneId,selfId,MD_MJ_TAMDAC,GetMissionData(sceneId,selfId,MD_MJ_TAMDAC)+100000)
			return
		end
	end
	if nNumText == 300  then
		if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
			x000582_Notify( sceneId, selfId, targetId, " Thi�u kh�ng gian t�i �.")
			return
		end
		for i =1,100 do
		--	TryRecieveItem( sceneId, selfId, 38000529, QUALITY_MUST_BE_CHANGE )
		end
		BeginEvent(sceneId)
			AddText(sceneId, "  Nh�n v�t ph�m th�nh c�ng, ch�c n�ng ch� c� � phi�n b�n th� nghi�m")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	if nNumText == 800  then
		if GetLevel( sceneId, selfId ) < 75 then
			x000582_NotifyFailTips( sceneId, selfId, "C�p � kh�ng �� 75, h�y quay l�i sau.")
			return
		end
		local lastTime = GetMissionData( sceneId, selfId, MD_HUKHONG_LASTTIME )		--c-ddddd-xx
		local Card = floor( lastTime / 10000000 )
		local lastDayTime = floor( lastTime / 100 )-Card*100000
		local lastDayCount = mod( lastTime, 100 )
		local CurDayTime = GetDayTime()
		if CurDayTime ~= lastDayTime then
			lastDayTime = CurDayTime
			lastDayCount = 0
			Card = 0
		end
		
		if Card > 0 then
			x000582_NotifyFailTips( sceneId, selfId, "#{DRFB_130111_254}")
			return
		end
		if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
			x000582_NotifyFailTips( sceneId, selfId, "#{DRFB_130111_255}")
			return
		end
		for i =1,50 do
			TryRecieveItem( sceneId, selfId, x000583_g_Item1 , QUALITY_MUST_BE_CHANGE )
		end
		lastTime = 10000000+lastDayTime * 100 + lastDayCount
		SetMissionData( sceneId, selfId, MD_HUKHONG_LASTTIME, lastTime )
		x000582_Notify( sceneId, selfId, targetId, "  Nh�n th�nh c�ng 50 Ng� H�nh Ph�p Thi�p")
		return
	end
	if nNumText >= 1000 and nNumText < 3000  then
		BeginEvent(sceneId)
			AddText(sceneId, "#{DRFB_130111_202}")
			for i, item in x000582_g_BookList do
				if item.n == nNumText  then
					AddRadioItemBonus( sceneId, item.id, 4 )
				end
			end
    		EndEvent(sceneId)
    		DispatchMissionContinueInfo(sceneId,selfId,targetId, x000582_g_ScriptId, 0)
	end
	if nNumText == 400  then
		BeginEvent(sceneId)
			AddText( sceneId,"#{WLMJ_130121_73}" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	if nNumText == 700  then
		BeginEvent(sceneId)
			AddText( sceneId,"#{DRFB_130111_23}" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	if nNumText == 500 then
		local lastTimes = GetMissionData(sceneId,selfId,MD_HUKHONG_LLTB)	-- C�u tr�c: Ng�y x 100+S� l�n*10+Cho ph�p
		local lastDay = floor(lastTimes/100)
		local Active = mod(lastTimes,10)
		local lastCount = floor(lastTimes -lastDay*100-Active)/10
		local nowDay = GetDayTime()
		if nowDay ~= lastDay then
			lastCount = 0
		end
		if Active >= 2 then
			Active = 0
		end
		if Active == 1 then
			x000582_Notify( sceneId, selfId, targetId, "Thi�u hi�p ch�a ho�n th�nh nhi�m v� #Ykhi�u chi�n H� Kh�ng L�u Lan T�m B�o#W, c�c h� c� th� �n #GL�u Lan (162, 75)#RKim C�u Linh#W tham gia #Gkhi�u chi�n H� Kh�ng L�u Lan T�m B�o#W ��nh b�i #RTr�n B�o Long V߽ng#W ho�n th�nh nhi�m v�." )
			return
		end
		if lastCount >= x000582_g_Times_LLTB then
			x000582_Notify( sceneId, selfId, targetId, "Thi�u hi�p �� tham gia #Ykhi�u chi�n H� Kh�ng L�u Lan T�m B�o#W �� "..x000582_g_Times_LLTB.." l�n trong ng�y." )
			return
		end
		local SetTimes = nowDay*100+(lastCount+1)*10+1
		SetMissionData(sceneId,selfId,MD_HUKHONG_LLTB,SetTimes)
		x000582_Notify( sceneId, selfId, targetId, "Nh�n nhi�m v� #Ykhi�u chi�n H� Kh�ng L�u Lan T�m B�o#W th�nh c�ng, c�c h� c� th� �n #GL�u Lan (162, 75)#RKim C�u Linh#W tham gia #Gkhi�u chi�n H� Kh�ng L�u Lan T�m B�o#W ��nh b�i #RTr�n B�o Long V߽ng#W ho�n th�nh nhi�m v�." )
		return
	end
	for i, findId in x000582_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x000582_g_ScriptId )
		return
		end
	end
end

function x000582_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )

end

function x000582_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )

end


function x000582_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )

end

function x000582_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	local nItemIndex = -1
	for i, item in x000582_g_BookList do
		if item.id == selectRadioId  then
			nItemIndex = i
		end
	end
	if nItemIndex == -1  then
		return
	end

	local nLevel = 0
	if x000582_g_BookList[nItemIndex].n >= 1000 then
		nLevel = 1
	end
	if x000582_g_BookList[nItemIndex].n >= 2000 then
		nLevel = 2
	end
	local bStoneOk = 0
	if GetItemCount(sceneId, selfId, x000582_g_StoneList[nLevel].id) >= x000582_g_StoneList[nLevel].num  then
		bStoneOk = 1
	end
	if  bStoneOk == 0 then
		BeginEvent(sceneId)
				strText = "H�y ��m b�o trong H�nh Nang c� "..x000582_g_StoneList[nLevel].num.." B� T�ch T�n Di�p ch�a kh�a"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	local StoneCount = LuaFnGetAvailableItemCount(sceneId, selfId, x000582_g_StoneList[nLevel].id)
	BeginAddItem(sceneId)
		AddItem(sceneId, selectRadioId, 1)
	local bBagOk = EndAddItem(sceneId, selfId)
	if bBagOk < 1 then
		BeginEvent(sceneId)
			strText = "#{DRFB_130111_205}"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	local bDelOk = 0
	bDelOk = LuaFnDelAvailableItem(sceneId,selfId, x000582_g_StoneList[nLevel].id, x000582_g_StoneList[nLevel].num)
	if bDelOk < 1  then
		BeginEvent(sceneId)
			strText = "#{JPZB_0610_12}"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	else
		TryRecieveItem( sceneId, selfId, x000582_g_BookList[nItemIndex].id, 1 );
		BeginEvent(sceneId)
			strText = "C�c h� nh�n ���c 1 V� L�m B� T�ch"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
		return
	end
end

function x000582_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
function x000582_Notify( sceneId, selfId, targetId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchEventList(sceneId,selfId,targetId)
end