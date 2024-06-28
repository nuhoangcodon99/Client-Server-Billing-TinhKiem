--����NPC
--������
--��ͨ

x000132_g_ScriptId	= 000132

--������
x000132_g_Key				=
{
	["chg"]	=	1,			--����һ�ī��è
	["in1"]	= 2,			--���ڶһ�
	["in2"]	= 3,			--���ڰ�����
	["bak"]	= 4,			--������һҳ
}

--�¼�
x000132_g_eventList = { 808065 }

--�һ��б�
x000132_g_ChangeLst	=
{
	--��������ҿɵõ�����Ʒ��GetNumText���һ�������Ʒ���һ�������Ʒ����
	[1]	= { des = "бi M�c K�nh Mi�u ��ng c�p 5 c� th� mang theo",  id = 30505109, key = 101, NeedItm = 30008026, NeedNum = 30 },
	[2]	= { des = "бi L�u H�nh Mi�u ��ng c�p 45 c� th� mang theo", id = 30505110, key = 102, NeedItm = 30008026, NeedNum = 40 },
	[3]	= { des = "бi Th�i Th��ng Mi�u ��ng c�p 55 c� th� mang theo", id = 30505111, key = 103, NeedItm = 30008026, NeedNum = 43 },
	[4]	= { des = "бi Ng�u T��ng Mi�u ��ng c�p 65 c� th� mang theo", id = 30505112, key = 104, NeedItm = 30008026, NeedNum = 46 },
	[5]	= { des = "бi Qu�n Qu�n Mi�u ��ng c�p 75 c� th� mang theo", id = 30505113, key = 105, NeedItm = 30008026, NeedNum = 50 },
	[6]	= { des = "бi Qu�n Qu�n Mi�u ��ng c�p 85 c� th� mang theo", id = 30505154, key = 106, NeedItm = 30008026, NeedNum = 80 },
}

--**********************************
--�¼��������
--**********************************
function x000132_OnDefaultEvent( sceneId, selfId, targetId )

	BeginEvent( sceneId )
		AddText( sceneId, "#{ANXIANG_DLG}" )
		AddNumText( sceneId, x000132_g_ScriptId, "Ta mu�n �i M�c K�nh Mi�u", 6, x000132_g_Key["chg"] )
		AddNumText( sceneId, x000132_g_ScriptId, "Li�n quan ho�n �i", 11, x000132_g_Key["in1"] )
		AddNumText( sceneId, x000132_g_ScriptId, "Li�n quan �m Kim B�o S߽ng", 11, x000132_g_Key["in2"] )	
		
		local i, eventId
		for i, eventId in x000132_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
		end
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x000132_OnEventRequest( sceneId, selfId, targetId, eventId )

	local	key	= GetNumText()
	
	--�齱�
	local i, findId
	for i, findId in x000132_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
			return
		end
	end

	if key == x000132_g_Key["chg"] then
		BeginEvent( sceneId )
			AddText( sceneId, "    C�c h� mu�n �i lo�i Tr�n th� n�o?" )
			for i = 1, getn( x000132_g_ChangeLst ) do
				AddNumText( sceneId, x000132_g_ScriptId, x000132_g_ChangeLst[i].des, 6, x000132_g_ChangeLst[i].key )
			end
			AddNumText( sceneId, x000132_g_ScriptId, "Tr� v� trang tr߾c", -1, x000132_g_Key["bak"] )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
	elseif key == x000132_g_Key["in1"] then
		x000132_MsgBox( sceneId, selfId, targetId, "#{ANXIANG_CHG}" )

	elseif key == x000132_g_Key["in2"] then
		x000132_MsgBox( sceneId, selfId, targetId, "#{ANXIANG_INF}" )
	
	elseif key == x000132_g_Key["bak"] then
		x000132_OnDefaultEvent( sceneId, selfId, targetId )

	else
		for i = 1, getn( x000132_g_ChangeLst ) do
			if key == x000132_g_ChangeLst[i].key then
				x000132_OnMyChange( sceneId, selfId, targetId, x000132_g_ChangeLst[i] )
				break
			end
		end
	end

end

--**********************************
--�һ�
--**********************************
function x000132_OnMyChange( sceneId, selfId, targetId, unt )

	if unt == nil then
		return
	end
	
	if LuaFnGetAvailableItemCount( sceneId, selfId, unt.NeedItm ) < unt.NeedNum then
		x000132_MsgBox( sceneId, selfId, targetId, "    "..unt.des..", tr�n ng߶i c�c h� kh�ng �� m�nh v�n � s� c�"..unt.NeedNum.."c�i. (M�nh v�n � s� c� c� th� c� th�ng qua m� �m Kim B�o S߽ng)" )
		return
	end
	
	BeginAddItem( sceneId )
	AddItem( sceneId, unt.id, 1 )
	if EndAddItem( sceneId, selfId ) > 0 then
		if LuaFnDelAvailableItem( sceneId, selfId, unt.NeedItm, unt.NeedNum ) == 1 then
			AddItemListToHuman( sceneId, selfId )
		else
			x000132_MsgBox( sceneId, selfId, targetId, "    Kh�u tr� v�t ph�m th�t b�i!" )
			return
		end
	else
		x000132_MsgBox( sceneId, selfId, targetId, "    Xin l�i, tay n�i c�a c�c h� �� �y, kh�ng th� ho�n �i." )
		return
	end
	
	local	szTran	= GetItemTransfer( sceneId, selfId, 0 )
	local szUser	= "#{_INFOUSR"..GetName( sceneId, selfId ).."}"
	local szItem	= "#{_INFOMSG"..szTran.."}"
	local	szMsg		= format( "#W%s#cff99cc t�n t�m t�n l�c v�#G L�c D߽ng (111, 163) #YCung Th�i L�#cff99cc t�m �� #YC� t� to�i phi�n#cff99cc, Cung Th�i L� r�t vui m�ng, l�y %s ra l�m qu� t�ng.", szUser, szItem )
	x000132_MsgBox( sceneId, selfId, targetId, "    C�c h� ho�n �i th�nh c�ng r�i. "..GetItemName( sceneId, unt.id ).."." )
	BroadMsgByChatPipe( sceneId, selfId, szMsg, 4 )

end

--**********************************
--Message Box
--**********************************
function x000132_MsgBox( sceneId, selfId, targetId, str )

	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	
end
