--ȫ������

--�ű���
x808007_g_ScriptId	= 808007

--������
x808007_g_Key	=
{
	["hlp"]			= 1,		--����
	["lck_s"]		= 11,		--ȫ������
	["lck_sY"]	= 111,	--ȫ��������ȷ��
	["lck_1"]		= 10,		--��������
	["unl_s"]		= 21,		--������ʱ����
	["unl_1"]		= 20,		--���뵥������

	["lck_set"]	= 31,		--���ö�������
	["lck_res"]	= 30,		--�޸Ķ�������
}

x808007_g_Msg	=
{
	["lck"]		= "#{JSJS_090206_01}",
	["ask_l"]	= "    #{PBSD_20080103_01}",
	["unl"]		= "     Sau khi m� kh�a t�m th�i c�c h� c� th� ti�n h�nh thao t�c t߽ng �ng, sau khi r�i m�ng s� t� �ng kh�a l�i; m� kh�a t�ng m�n c� th� m� v�t ph�m �� kh�a, c�c h� c� mu�n m� kh�a kh�ng ?",
	["ask_2"]   = "#r   #{FDH_090227_1}"
}
--�ʺ�  to  �˺�

--**********************************
--�ű���ں���
--**********************************
function x808007_OnDefaultEvent( sceneId, selfId, op )

	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) == 0 then
		return
	end
	if GetLevel( sceneId, selfId ) <= 15 then
		x808007_MyNotifyTip( sceneId, selfId, "Sau c�p 15 ch�c n�ng n�y s� m�" )
		return
	end
	if LuaFnIsStalling( sceneId, selfId ) == 1 then
		x808007_MyNotifyTip( sceneId, selfId, "Trong tr�ng th�i bu�n b�n kh�ng th� th�c hi�n thao t�c n�y" )
		return
	end

	--�ͻ��˿���
	if op == x808007_g_ScriptId then
		--�Ƿ������ö�������
		if LuaFnIsPasswordSetup( sceneId, selfId, 0 ) ~= 1 then
			x808007_OnLockUI( sceneId, selfId )
		else
			--�Ƿ������������
			if LuaFnIsPasswordUnlocked( sceneId, selfId, 0 ) == 1 then
				x808007_OnLockUI( sceneId, selfId )
			else
				x808007_OnUnlockUI( sceneId, selfId )
			end
		end
		return
	end
	
	local	key	= GetNumText()

	if key == x808007_g_Key["hlp"] then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_090}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, -1 )
		return
	elseif key == x808007_g_Key["lck_s"] then
		BeginEvent( sceneId )
			AddText( sceneId, x808007_g_Msg["ask_l"] )
			AddNumText( sceneId, x808007_g_ScriptId, "Duy�t", 2, x808007_g_Key["lck_sY"] )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, -1 )
		return
	elseif key == x808007_g_Key["lck_1"] then
		BeginUICommand( sceneId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 5421 )
	elseif key == x808007_g_Key["unl_s"] then
		LuaFnSendOpResult( sceneId, selfId, OR_NEED_UNLOCKMINORPASSWORD )
	elseif key == x808007_g_Key["unl_1"] then
		BeginUICommand( sceneId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 5421 )
	elseif key == x808007_g_Key["lck_sY"] then
		x808007_OnLockAllObj( sceneId, selfId )
		return
	elseif key == x808007_g_Key["lck_set"] then
		--���ö�������
		LuaFnSendOpResult( sceneId, selfId, OR_EXE_SETPASSWORD )
	elseif key == x808007_g_Key["lck_res"] then
		--�޸Ķ�������
		LuaFnSendOpResult( sceneId, selfId, OR_EXE_CHANGEPASSWORD )
	end
	
	BeginUICommand( sceneId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 1000 )

end

--**********************************
--��������
--**********************************
function x808007_OnLockUI( sceneId, selfId )

	BeginEvent( sceneId )
		AddText( sceneId, x808007_g_Msg["lck"] )
		AddNumText( sceneId, x808007_g_ScriptId, "Kh�a to�n b�", 2, x808007_g_Key["lck_s"] )
		AddNumText( sceneId, x808007_g_ScriptId, "Kh�a �n l�", 2, x808007_g_Key["lck_1"] )
		if LuaFnIsPasswordSetup( sceneId, selfId, 0 ) ~= 1 then
			AddNumText( sceneId, x808007_g_ScriptId, "Thi�t l�p m�t m�", 2, x808007_g_Key["lck_set"] )
		else
			AddNumText( sceneId, x808007_g_ScriptId, "бi m�t m�", 2, x808007_g_Key["lck_res"] )
		end
		AddNumText( sceneId, x808007_g_ScriptId, "Li�n quan kh�a to�n b�", 11, x808007_g_Key["hlp"] )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, -1 )

end

--**********************************
--��������
--**********************************
function x808007_OnUnlockUI( sceneId, selfId )

	BeginEvent( sceneId )
		AddText( sceneId, x808007_g_Msg["unl"] )
		AddNumText( sceneId, x808007_g_ScriptId, "Ta mu�n m� kh�a tr߾c khi thao t�c", 2, x808007_g_Key["unl_s"] )
		AddNumText( sceneId, x808007_g_ScriptId, "Ta mu�n m� kh�a 1 v�t ph�m", 2, x808007_g_Key["unl_1"] )
		if LuaFnIsPasswordSetup( sceneId, selfId, 0 ) ~= 1 then
			AddNumText( sceneId, x808007_g_ScriptId, "Thi�t l�p m�t m�", 2, x808007_g_Key["lck_set"] )
		else
			AddNumText( sceneId, x808007_g_ScriptId, "бi m�t m�", 2, x808007_g_Key["lck_res"] )
		end
		AddNumText( sceneId, x808007_g_ScriptId, "Li�n quan kh�a to�n b�", 11, x808007_g_Key["hlp"] )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, -1 )

end

--**********************************
--������������������Ʒ������
--**********************************
function x808007_OnLockAllObj( sceneId, selfId )

	--�Ƿ������ö�������
	if LuaFnIsPasswordSetup( sceneId, selfId, 0 ) ~= 1 then
		LuaFnSendOpResult( sceneId, selfId, OR_NEED_SETMINORPASSWORD )
	else
		SetAllItemPWLock( sceneId, selfId, 1 )
		SetAllPetPWLock( sceneId, selfId, 1 )
		x808007_MyNotifyTip( sceneId, selfId, "Kh�a th�nh c�ng" )
		BeginUICommand( sceneId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
	end

end

--**********************************
--��Ŀ��ʾ
--**********************************
function x808007_MyNotifyTip( sceneId, selfId, str )

	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
