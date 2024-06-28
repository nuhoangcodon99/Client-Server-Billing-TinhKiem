-- ����NPC
-- ����

x050002_g_scriptId = 050002

--��ӵ�е��¼�ID�б�
x050002_g_eventList = { }

x050002_g_ItemList = { 40004303, 40004304, 40004305 }
x050002_g_MoonCakes = { 30103026, 30103027, 30103028, 30103029, 30103030, 30103031, 30103032, 30103033, 30103034, 30103035, 30103036, 30103037, }
x050002_g_MoonCakeName = { "��ɳ�W���", "õ���W���", "�����W���", "�����W���", "�ٹ��W���", "�����W���", "�����W���", "���������W���", "���������W���", "�����S���W���", "����ѩɏ�W���", "���������W���", }
--**********************************
--�¼��б�
--**********************************
function x050002_UpdateEventList( sceneId, selfId, targetId )
	local i, eventId
	for i, eventId in x050002_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
	end

	AddNumText( sceneId, x050002_g_scriptId, "�Qȡ�����ʳ", -1, 1 )
end

--**********************************
--�¼��������
--**********************************
function x050002_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local strText = "    ���וr�У��ѾƆ����졣��֪���όm�I����Ϧ�Ǻ��ꡣ�������L�wȥ���ֿ֭��������̎���ٺ�������Ū��Ӱ�����������g���D���w���;_�����՟o�ߡ������кޣ������L��e�r�A�����б��g�x�ϣ��������Aȱ�����¹��yȫ��������L�ã�ǧ�ﹲ�Ⱦꡣ"
		AddText( sceneId, "ˮ�{���^" )
		AddText( sceneId, strText )
		x050002_UpdateEventList( sceneId, selfId, targetId )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x050002_OnEventRequest( sceneId, selfId, targetId, eventId )
	local i, findId
	for i, findId in x050002_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
			return
		end
	end

	if GetNumText() == 1 then
		local idx, itemId
		for idx, itemId in x050002_g_ItemList do
			if LuaFnGetAvailableItemCount( sceneId, selfId, itemId ) < 1 then
				x050002_NotifyFailBox( sceneId, selfId, targetId, "    Ҫ�Qȡ��" ..
					"���ʳ����Ҫ���|�I�ۣ����|���ϡ��Ϻ����Ǹ���һ����" ..
					"�ɵ�����K����127��154�����K�ݰ����s��190��168����" ..
					"���������v��109��170��̎ȡ�á�" )
				return
			end
		end

		local moonCakeId = random( getn(x050002_g_MoonCakes) )
		if LuaFnTryRecieveItem( sceneId, selfId, x050002_g_MoonCakes[moonCakeId], QUALITY_MUST_BE_CHANGE ) < 0 then
			return
		end

		for idx, itemId in x050002_g_ItemList do
			LuaFnDelAvailableItem( sceneId, selfId, itemId, 1 )
		end

		x050002_NotifyFailBox( sceneId, selfId, targetId, "    �������ã�������" ..
			"�������Դ��ٛ������������������Π�`�Ԟ�Q֮������Ԟ���Ҳ��" )

		local strText = "��@��" .. x050002_g_MoonCakeName[moonCakeId]

		Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )
		x050002_NotifyFailTips( sceneId, selfId, strText )

		-- ����һ�þ������±����������緢ϵͳ��Ϣ��
		strText = GetName( sceneId, selfId ) .. "�ړQȡ��r�����\\�ĵõ���" ..
					x050002_g_MoonCakeName[moonCakeId] .. "��"
		BroadMsgByChatPipe( sceneId, selfId, strText, 4 )
		return
	end
end

--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x050002_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--��Ŀ��Ϣ��ʾ
--**********************************
function x050002_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end