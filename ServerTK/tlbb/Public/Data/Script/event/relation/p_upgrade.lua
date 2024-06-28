--ʦ�µȼ���������

--�ű���
x806015_g_ScriptId = 806015

--�¼�
x806015_g_Update					= {}
x806015_g_Update["id"]		= 1000
x806015_g_Update["wu"]		= 1001
x806015_g_Update["uw"]		= 1002

--��ʾ��Ϣ
x806015_g_msg					= {}
x806015_g_msg["up"]	= "C�n n�ng cao ��ng c�p s� ��c"
x806015_g_msg["un"]	= "   ��ng c�p s� ��c c�a c�c h� �� � m�c cao nh�t, kh�ng th� n�ng cao h�n"
x806015_g_msg["nv"]	= "   Tr� gi� thi�n �c c�a ng߽i kh�ng ��, kh�ng th� n�ng cao"
x806015_g_msg["uc"]	= "  Th�ng c�p t�i A c�n d�ng B �i�m tr� gi� thi�n �c"
x806015_g_msg["wu"]	= "C�n n�ng cao ��ng c�p s� ��c"
x806015_g_msg["uw"]	= "Ta v�n kh�ng mu�n th�ng c�p"
x806015_g_msg["ul"]	= "  Ch� c� ��ng c�p ph�i l�n h�n 20 m�i �� t� c�ch xin s� ph� danh x�ng,"

x806015_g_Title		={}
x806015_g_Title[1] = "S� Ph� S� C�p "
x806015_g_Title[2] = "S� Ph� Trung C�p "
x806015_g_Title[3] = "S� Ph� Cao C�p "
x806015_g_Title[4] = "Nh�t ��i Danh S� "


--**********************************
--������ں��� ������ͽ
--**********************************
function x806015_OnDefaultEvent( sceneId, selfId, targetId )
	local	key	= GetNumText()
	
	--����ȷ��
	if key == x806015_g_Update["id"] then
		x806015_Upgrade( sceneId, selfId, targetId )
		return 0
	end
	

	--ͬ������
	if key == x806015_g_Update["wu"] then
		if x806015_DoUpgrade( sceneId, selfId, targetId ) == 0 then
			return 0
		end
		
		--BeginUICommand( sceneId )
		--UICommand_AddInt( sceneId, targetId )
		--EndUICommand( sceneId )
		--DispatchUICommand( sceneId, selfId, 1000 )

		local msg = "��ng c�p s� ��c c�a c�c h� ���c th�ng c�p t�i" .. tostring( LuaFnGetmasterLevel( sceneId, selfId ) .. "c�p." )
		x806015_MessageBox( sceneId, selfId, targetId, "  "..msg )
		Msg2Player( sceneId, selfId, msg, MSG2PLAYER_PARA )
		return 0
	end
	
	--��ͬ������
	if key == x806015_g_Update["uw"] then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
	end
end

--**********************************
--�о��¼�
--**********************************
function x806015_OnEnumerate( sceneId, selfId, targetId )

	AddNumText( sceneId, x806015_g_ScriptId, x806015_g_msg["up"], 6, x806015_g_Update["id"] )
end

--**********************************
--����������
--**********************************
function x806015_CheckAccept( sceneId, selfId, targetId )
end

--**********************************
--����
--**********************************
function x806015_OnAccept( sceneId, selfId, targetId )
	x806015_OnConfirm( sceneId, selfId, targetId )
end

--**********************************
--�ύ
--**********************************
function x806015_OnSubmit( sceneId, selfId, targetId, tId )
end

--**********************************
--�ܾ�
--**********************************
function x806015_OnCancel( sceneId, selfId, targetId )
end

--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x806015_MessageBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--����ʦ�µȼ�ȷ�϶Ի���
--**********************************
function x806015_Upgrade( sceneId, selfId, targetId )
	local HumanLevel = LuaFnGetLevel( sceneId, selfId )
	local level = LuaFnGetmasterLevel( sceneId, selfId )
	
	if HumanLevel < 20 then
		x806015_MessageBox( sceneId, selfId, targetId, x806015_g_msg["ul"] )
		return 0
	end
	
	--����Ƿ��Ѿ������������
	if level >= 4 then
		x806015_MessageBox( sceneId, selfId, targetId, x806015_g_msg["un"] )
		return 0
	end
	
	--������Ҫ���ƶ�ֵ
	local exp = 0
	
	if level == 0 and HumanLevel < 60 then
		exp = 500
	elseif level == 1 then
		exp = 5000
	elseif level == 2 then
		exp = 25000
	elseif level == 3 then
		exp = 50000
	end
	
	local text = "   ��ng c�p s� ��c s� ���c th�ng c�p t�i" .. tostring( level + 1 ) .. "c�p, s� ti�u hao tr� gi� thi�n �c" .. tostring( exp ) .. "�i�m."
	BeginEvent( sceneId )
		AddText( sceneId, text )
		AddNumText( sceneId, x806015_g_ScriptId, x806015_g_msg["wu"], 6, x806015_g_Update["wu"] )
		AddNumText( sceneId, x806015_g_ScriptId, x806015_g_msg["uw"], 8, x806015_g_Update["uw"] )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	
	return 1
end

function x806015_DoUpgrade( sceneId, selfId, targetId )

	local HumanLevel = LuaFnGetLevel( sceneId, selfId )
	local level = LuaFnGetmasterLevel( sceneId, selfId )
	if level >= 4 then
--	x806015_MessageBox( sceneId, selfId, targetId, msg )
		return 0
	end
	
	--������Ҫ���ƶ�ֵ
	local exp = 0
	if level == 0 and HumanLevel < 60 then
		exp = 500
	elseif level == 1 then
		exp = 5000
	elseif level == 2 then
		exp = 25000
	elseif level == 3 then
		exp = 50000
	end
	
	--����ƶ�ֵ
	local gbvalue = LuaFnGetHumanGoodBadValue( sceneId, selfId )
	if gbvalue < exp then
		local msg = "  Tr� gi� thi�n �c c�a c�c h� kh�ng ��. Tr� gi� thi�n �c c�a c�c h� hi�n l�" .. tostring( gbvalue ) .. "."
		x806015_MessageBox( sceneId, selfId, targetId, msg )
		return 0
	end
	
	--����ʦ�µȼ�
	level = level + 1
	LuaFnSetmasterLevel( sceneId, selfId, level )
	
	--�۳��ƶ�ֵ
	gbvalue = gbvalue - exp
	LuaFnSetHumanGoodBadValue( sceneId, selfId, gbvalue )
	
	--�޸�ʦ�µȼ���سƺ�
	AwardMasterTitle( sceneId, selfId, x806015_g_Title[level] )
	DispatchAllTitle( sceneId, selfId )
	SetCurTitle( sceneId, selfId, 27, 0 )

	--ȫ�򹫸�
	local	nam	= GetName( sceneId, selfId )
	local	str	= format( "#cffffccXin ch�c m�ng#W#{_INFOUSR%s}#cffffcc th�nh c�ng ��t ���c #G%s#cffffcc danh x�ng, c� th� thu nh�n nh�ng ng߶i ch�i kh�c l�m � �.", nam, x806015_g_Title[level] )
	AddGlobalCountNews( sceneId, str )
	
	--��Ч����Ч
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )

	return level
end
