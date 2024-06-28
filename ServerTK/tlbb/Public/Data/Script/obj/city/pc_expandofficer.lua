--����NPC
--У��

x805013_g_scriptId = 805013
x805013_g_BuildingID7 = 15

x805013_g_eventList = {600046, 600023}-- zchw add 600046 �����ռ�

--��ӵ�е��¼�ID�б�2 Ϊ�����ռ����� zchw 
x805013_g_eventList2 = {600047, 600048, 600049}

-- �����¼� ID �б������¼��������¼�
x805013_g_eventSetList = { 600023 } 
--**********************************
--�¼��б�
--**********************************
function x805013_UpdateEventList( sceneId, selfId, targetId )
	local i = 1
	local eventId = 0

	local Humanguildid 	= GetHumanGuildID(sceneId,selfId)
	local cityguildid 	= GetCityGuildID(sceneId, selfId, sceneId)

	BeginEvent( sceneId )
		if Humanguildid == cityguildid then
			AddText( sceneId, "    иa v� v� danh ti�ng c�a bang ta tr�n giang h� do ta ��m nhi�m, c� � ki�n g� hay c� n�u ra" )
			for i, eventId in x805013_g_eventList do
				CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
			end
			AddNumText( sceneId, x805013_g_scriptId, "V� nhi�m v� khu�ch tr߽ng", 11, 1 )
			AddNumText( sceneId, x805013_g_scriptId, "Gi�i thi�u v� tr߶ng", 11, 2 )
			AddNumText( sceneId, x805013_g_scriptId, "Ph߽ng ph�p ch� t�o c�ng tr�nh", 7, 3 )
			AddNumText( sceneId, x805013_g_scriptId, "T�o ��i c� cho bang h�i", 6, 4 )
			AddNumText( sceneId, x805013_g_scriptId, "Tu luy�n ph�ng ng�", 6, 5 )
			AddNumText( sceneId, x805013_g_scriptId, "X�y d�ng th�p ki�m cao c�p", 6, 6 )
			AddNumText( sceneId, x805013_g_scriptId, "#G#b��ng g�p 100 �i�m #Ykhuy�ch tr߽ng#G cho Bang", 6, 100 )
		else
			AddText( sceneId, "    ��y l� �a �i�m quan tr�ng c�a tr߶ng, tr� � t� b�n bang, kh�ng ai ���c xem tr�m � ��y" )
		end
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��������
--**********************************
function x805013_OnDefaultEvent( sceneId, selfId, targetId )
	x805013_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
-- �ж�ĳ���¼��Ƿ����ͨ���� NPC ִ��
--**********************************
function x805013_IsValidEvent( sceneId, selfId, eventId )
	local i = 1
	local findId = 0
	local bValid = 0

	for i, findId in x805013_g_eventList do
		if eventId == findId then
			bValid = 1
			break
		end
	end

	if bValid == 0 then
		for i, findId in x805013_g_eventSetList do
			if CallScriptFunction( findId, "IsInEventList", sceneId, selfId, eventId ) == 1 then
				bValid = 1
				break
			end
		end
	end

	return bValid
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x805013_OnEventRequest( sceneId, selfId, targetId, eventId )

	if x805013_IsValidEvent( sceneId, selfId, eventId ) == 1 then
		CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
		return
	end

	if GetNumText() == 1 then
		BeginEvent(sceneId)
		AddText( sceneId, "#{City_Expand_Mission_Help}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 2 then
		BeginEvent(sceneId)
		AddText( sceneId, "#{City_Intro_JiaoChang}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 3 then
		BeginEvent(sceneId)
		AddText( sceneId, "Ch�c n�ng n�y s�p ���c th�c hi�n" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 4 then
		BeginEvent(sceneId)
		AddText( sceneId, "Ch�c n�ng n�y s�p ���c th�c hi�n" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 5 then
		BeginEvent(sceneId)
		AddText( sceneId, "Ch�c n�ng n�y s�p ���c th�c hi�n" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 6 then
		BeginEvent(sceneId)
		AddText( sceneId, "Ch�c n�ng n�y s�p ���c th�c hi�n" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	--@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	elseif GetNumText() == 100 then
		
		-- check item
		local item_khuyechtruong = 30505205
		number = LuaFnGetAvailableItemCount(sceneId, selfId, item_khuyechtruong)
		if number == 0  then
			BeginEvent(sceneId)
				AddText(sceneId, "  #WC�c h� c�n mang theo #G#{_ITEM30505205} #Wm�i c� th� s� d�ng ch�c n�ng n�y." );
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		-- ## end check item
		-- begin xoa
		local reply = LuaFnDelAvailableItem(sceneId,selfId,item_khuyechtruong,1)
		-- end xoa
		--hieu ung
		CityChangeAttr( sceneId, selfId, 6, 100 )
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
		--add �i�m khuy�ch tr߽ng
		CityChangeAttr( sceneId, selfId, GUILD_AMBI_LEVEL, 100 )
		local  PlayerName=GetName(sceneId,selfId);
		local sMessage = format("@*;SrvMsg;GLD:#{_INFOUSR%s}#cffff00 t�i #c00FFFF��ng Ph� Dung#cffff00, �� c�ng hi�n cho Bang ph�i 100 �i�m khuy�ch tr߽ng! C�c bang ch�ng kh�c n�n h�c t�p!", PlayerName);	
		BroadMsgByChatPipe(sceneId, selfId, sMessage, 6);
		
		BeginEvent(sceneId)
		AddText( sceneId, "#W�� ��ng g�p th�nh c�ng #Y100 #W�i�m khuy�n tr߽ng cho #GBang H�i" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	
end

--**********************************
--���ܴ�NPC������
--**********************************
function x805013_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, eventId in x805013_g_eventList2 do
		if missionScriptId == eventId then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
			return
		end
	end

	if x805013_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		local ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
		if ret > 0 then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
		elseif ret == -1 then
			x805013_NotifyFailTips( sceneId, selfId, "Ng߽i hi�n kh�ng th� nh�n nhi�m v� n�y" )
		elseif ret == -2 then
			x805013_NotifyFailTips( sceneId, selfId, "Kh�ng th� ti�p nh�n nhi�u nhi�m v�" )
		end

		return
	end
end

--**********************************
--�ܾ���NPC������
--**********************************
function x805013_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	if x805013_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		x805013_UpdateEventList( sceneId, selfId, targetId )
		return
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x805013_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	if x805013_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
		return
	end
end

--**********************************
--�ύ�����������
--**********************************
function x805013_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, eventId in x805013_g_eventList2 do	
		if missionScriptId == eventId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
		end
	end
	if x805013_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
		return
	end
end

--**********************************
--�����¼�
--**********************************
function x805013_OnDie( sceneId, selfId, killerId )
end

function x805013_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
