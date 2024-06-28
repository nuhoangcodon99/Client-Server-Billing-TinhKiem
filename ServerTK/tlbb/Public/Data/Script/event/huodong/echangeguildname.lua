--������

--�ű���
x808009_g_ScriptId	= 808009

x808009_g_Key				=
{
	["ChgG"]					= 200,	--��Ҫ�İ������
	["ChgG_Y"]				= 201,	--��Ҫ�İ�����֣�ȷ��
}

--**********************************
--�¼��������
--**********************************
function x808009_OnDefaultEvent( sceneId, selfId, targetId )

	--�Ƿ����޷�ִ���߼���״̬
	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 then
		return 0
	end
	
	local	key	= GetNumText()
	if key == x808009_g_Key["ChgG"] then
		BeginEvent( sceneId )
			AddText( sceneId, "#{ChangeName_ChgG}" )
			AddNumText( sceneId, x808009_g_ScriptId, "Duy�t", 6, x808009_g_Key["ChgG_Y"] )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif key == x808009_g_Key["ChgG_Y"] then
		if x808009_IsCanChangeGuildName( sceneId, selfId ) == 1 then
			BeginUICommand( sceneId )
				UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 5424 )
		end
	end
	
end

--**********************************
--�¼��б�
--**********************************
function x808009_OnEnumerate( sceneId, selfId, targetId )
	
	AddNumText( sceneId, x808009_g_ScriptId, "Ta mu�n �i t�n bang h�i", 6, x808009_g_Key["ChgG"] )

end

--**********************************
--�Ƿ����ʸ����������
--**********************************
function x808009_IsCanChangeGuildName( sceneId, selfId )

	--�Ƿ����޷�ִ���߼���״̬
	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 then
		return 0
	end

	if GetGuildLevel( sceneId, selfId ) < 0 then
		x808009_MsgBox( sceneId, selfId, "C�c h� v�n ch�a m�i bang h�i" )
		return 0
	end
	if GetGuildPos( sceneId, selfId ) ~= GUILD_POSITION_CHIEFTAIN then
		x808009_MsgBox( sceneId, selfId, "Ch� c� bang ch� m�i c� th� �i t�n bang h�i" )
		return 0
	end
	local	GuildName	= LuaFnGetGuildName( sceneId, selfId )
	local	i, _			= strfind( GuildName, "*" )
	if i == nil then
		x808009_MsgBox( sceneId, selfId, "C�c h� kh�ng ph�i l� ng߶i di d�n, ho�c c�c h� �� t�ng s�a �i t�n" )
		return 0
	end
	
	return 1

end

--**********************************
--����������ǰ�������
--**********************************
function x808009_CallBackChangeGuildNameBefore( sceneId, selfId )

	if x808009_IsCanChangeGuildName( sceneId, selfId ) == 0 then
		return 0
	end

	return 1

end

--**********************************
--������������������
--**********************************
function x808009_CallBackChangeGuildNameAfter( sceneId, selfId, nRetType )

	--�Ƿ����޷�ִ���߼���״̬
	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 then
		return 0
	end

	--������Ϣ��������
	--enum	CHANGE_NAME_RESULT
	--{
	--	CHGNAME_RE_OK					= 0 ,	// �����ɹ�
	--	CHGNAME_RE_ERROR ,					// ����ʧ��
	--	CHGNAME_RE_DBBUSY ,					// DBѹ�����������³���
	--	CHGNAME_RE_NAMEERROR ,			// ���ɽ��ܵ�������
	--	CHGNAME_RE_REPEATED ,				// �����ظ�
	--};
	if nRetType == 1 then
		x808009_MsgBox( sceneId, selfId, "S�a �i th�t b�i" )
	elseif nRetType == 2 then
		x808009_MsgBox( sceneId, selfId, "DB �p l�c qu� cao, xin h�y th� l�i t� �u" )
	elseif nRetType == 3 then
		x808009_MsgBox( sceneId, selfId, "Kh�ng ch�p nh�n t�n m�i" )
	elseif nRetType == 4 then
		x808009_MsgBox( sceneId, selfId, "Tr� v� t�n c�" )
	else
		x808009_MsgBox( sceneId, selfId, "Xin ch�c m�ng, t�n bang h�i c�a c�c h� s�a �i th�nh c�ng!" )
	end
	return 1

end

--**********************************
--��Ŀ��ʾ
--**********************************
function x808009_MsgBox( sceneId, selfId, str )

	if str == nil then
		return
	end

	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
