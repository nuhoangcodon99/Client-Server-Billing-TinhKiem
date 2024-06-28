--������

--�ű���
x002028_g_scriptId = 002028

x002028_g_shoptableindex=5

--��ӵ�е��¼�ID�б�
x002028_g_eventList = { 210201, 210202, 210203 }

x002028_g_ControlScript = 050009
x002028_g_ExchangeList = { id = 40004305, name = "M�a th��ng ph�m", cost = 55 }

--**********************************
--�¼��б�
--**********************************
function x002028_UpdateEventList( sceneId, selfId, targetId )
    local PlayerName = GetName( sceneId, selfId )
	local PlayerSex = GetSex( sceneId, selfId )

	if PlayerSex == 0 then
		PlayerSex = " c� n߽ng "
	else
		PlayerSex = " c�c h�"
	end

	BeginEvent( sceneId )
		AddText( sceneId, "  " .. PlayerName .. PlayerSex .. ", c� mu�n n�m th� m�n �i�m t�m n�i ti�ng c�a ��i L� kh�ng? B�o ��m ng߽i �n h�t 8 b�t l�i mu�n �n ti�p 8 b�t n�a, ch�ng mu�n b� �i")
		AddNumText( sceneId, x002028_g_scriptId, "Mua th�c ph�m", 7, 0 )

		for i, eventId in x002028_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end

		if CallScriptFunction( x002028_g_ControlScript, "IsMidAutumnPeriod", sceneId, selfId ) > 0 then
			--AddNumText( sceneId, x002028_g_scriptId, "��ȡʳ��", 6, 1 )
			--AddNumText( sceneId, x002028_g_scriptId, "ʳ����ʲô��", 11, 2 )
		end
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��������
--**********************************
function x002028_OnDefaultEvent( sceneId, selfId, targetId )
	x002028_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x002028_OnEventRequest( sceneId, selfId, targetId, eventId )
	local i, findId

	for i, findId in x002028_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
			return
		end
	end

	if GetNumText() == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x002028_g_shoptableindex )
	end

	if CallScriptFunction( x002028_g_ControlScript, "IsMidAutumnPeriod", sceneId, selfId ) > 0 then
		if GetNumText() == 1 then
			local score = GetMissionData( sceneId, selfId, MD_MIDAUTUMN_SCORE )
			if score < x002028_g_ExchangeList.cost then
				x002028_NotifyFailBox( sceneId, selfId, targetId, "    C�n ph�i �i 1 ph�n" .. x002028_g_ExchangeList.name ..
				", c�n t�ch �i�m" .. x002028_g_ExchangeList.cost .. "�i�m, hi�n gi� ng߽i ch� c�" .. score .. "�i�m, h�nh nh� kh�ng ��" )
				return
			end

			BeginEvent( sceneId )
				AddText( sceneId, "  �i�m t�ch l�y trung thu c�a ng߽i hi�n" .. score .. "�i�m, �i l�y m�t ph�n" ..
					x002028_g_ExchangeList.name .. ", c�n t�ch �i�m" .. x002028_g_ExchangeList.cost .. "�i�m, ng߽i x�c �nh �i kh�ng?" )

				AddNumText( sceneId, x002028_g_scriptId, "X�c �nh mu�n �i", -1, 3 )
				AddNumText( sceneId, x002028_g_scriptId, "Ta ch� �i qua", -1, 4 )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		elseif GetNumText() == 2 then
			x002028_NotifyFailBox( sceneId, selfId, targetId, "    Kh߽ng L� � L�c D߽ng [127, " ..
				"154], Bao Th� Vinh � T� Ch�u [190,168], в T� Тng � ��i L� [109,170] � �i" ..
				"Sau khi �� c� 3 lo�i nguy�n li�u � �n kh�c nhau, h�y t�m Nh�c Th߶ng Vi�n � T� Ch�u [193,148] ��a t�i T�y H� �i l�y B�nh Trung thu" ..
				"V�t ph�m �c bi�t" )
			return
		elseif GetNumText() == 3 then
			local score = GetMissionData( sceneId, selfId, MD_MIDAUTUMN_SCORE )
			if score < x002028_g_ExchangeList.cost then
				return
			end

			if LuaFnTryRecieveItem( sceneId, selfId, x002028_g_ExchangeList.id, QUALITY_MUST_BE_CHANGE ) < 0 then
				x002028_NotifyFailBox( sceneId, selfId, targetId, "    Kh�ng gian trong tay n�i �� �y" )
			end

			score = score - x002028_g_ExchangeList.cost
			SetMissionData( sceneId, selfId, MD_MIDAUTUMN_SCORE, score )
			x002028_NotifyFailBox( sceneId, selfId, targetId, "    �i�m t�ch l�y d� th�a: " .. score .. "." )
			return
		elseif GetNumText() == 4 then
			BeginUICommand( sceneId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 1000 )
		end
		return
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x002028_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	local i, findId
	for i, findId in x002028_g_eventList do
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
function x002028_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	local i, findId
	for i, findId in x002028_g_eventList do
		if missionScriptId == findId then
			x002028_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x002028_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	local i, findId
	for i, findId in x002028_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x002028_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	local i, findId
	for i, findId in x002028_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x002028_OnDie( sceneId, selfId, killerId )
end

--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x002028_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
