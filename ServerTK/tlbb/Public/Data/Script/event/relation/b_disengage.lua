-- ǿ�ƽ���������

--�ű���
x806000_g_scriptId = 806000

--��ʾ��Ϣ
x806000_g_msg_swear					= {}
x806000_g_msg_swear["uns"]	= "Gi�i tr� k�t b�i"
x806000_g_msg_swear["cas"]	= " Ch�a t�ng k�t b�i n�n kh�ng th� gi�i tr� quan h� k�t b�i"
x806000_g_msg_swear["unc"]	= " Sau khi gi�i tr� quan h� k�t b�i, � h�u h�o v�i ng߶i ch�i k�t b�i s� t�t xu�ng 500. Xin h�i c� mu�n gi�i quan h� k�t b�i hay kh�ng?"

--Key for AddNumText
x806000_g_key					= {}
x806000_g_key["uns"]	= 10000	--������
x806000_g_key["all"]	= 20000	--ͬ�������
x806000_g_key["una"]	= 30000	--ȡ��������

--**********************************
--�о��¼�
--**********************************
function x806000_OnEnumerate( sceneId, selfId, targetId )
	AddNumText( sceneId, x806000_g_scriptId, x806000_g_msg_swear["uns"], 6, x806000_g_key["uns"] )
end


--**********************************
--������ں���
--**********************************
function x806000_OnDefaultEvent( sceneId, selfId, targetId )
	local	key	= GetNumText()

	--������
	if key == x806000_g_key["uns"] then
		if x806000_CheckAccept( sceneId, selfId, targetId ) == 0 then
			return 0
		end
		x806000_OnSubmit( sceneId, selfId, targetId )
		return 1
	end

	--ͬ����
	if key == x806000_g_key["all"] then
		x806000_DoUnswear( sceneId, selfId, targetId )

		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
		return 1
	end

	--ȡ�����
	if key == x806000_g_key["una"] then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
		return 1
	end
end

--**********************************
--����������
--**********************************
function x806000_CheckAccept( sceneId, selfId, targetId )
	local BrotherNum = LuaFnIsSweared(sceneId, selfId)
	if BrotherNum == 0 then
		x806000_MessageBox( sceneId, selfId, targetId, x806000_g_msg_swear["cas"] )
		return 0
	end
end

--**********************************
--ȷ�ϴ���
--**********************************
function x806000_OnSubmit( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x806000_g_msg_swear["unc"] )
		AddNumText( sceneId, x806000_g_scriptId, "Duy�t", 6, x806000_g_key["all"] )
		AddNumText( sceneId, x806000_g_scriptId, "Hu�", 8, x806000_g_key["una"] )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x806000_MessageBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end


--**********************************
--ǿ�ƽ�����
--**********************************
function x806000_DoUnswear( sceneId, selfId, targetId )
	local BrotherNum = LuaFnIsSweared(sceneId, selfId)
	local selfName = LuaFnGetName( sceneId, selfId )
	local selfGuid = LuaFnGetGUID( sceneId, selfId )
	local AllDismiss = 0
	
	--���������ֻ�������ˣ���ȫ����ɢ
	if BrotherNum == 1 then
		AllDismiss = 1
	end
	
	--ɾ���ƺ�
	AwardJieBaiTitle( sceneId, selfId, "" )
	DispatchAllTitle( sceneId, selfId )
	
	--������ѵ�GUID
	local i = 0
	local BrotherGuid = {}
	while i < BrotherNum do
		BrotherGuid[i] = LuaFnGetBrotherGuid(sceneId, selfId, i)
		i = i + 1
	end

	--��һ�Ľ����ݹ�ϵ	
	i = 0
	while i < BrotherNum do
		local theGUID = BrotherGuid[i]
		if theGUID ~= nil then

			--�����Ѻöȵ�500
			local FriendPoint = LuaFnGetFriendPointByGUID( sceneId, selfId, theGUID )
			if FriendPoint > 500 then
				LuaFnSetFriendPointByGUID( sceneId, selfId, theGUID, 500 )
			end

			--ȡ�����
			LuaFnUnswear( sceneId, selfId, theGUID )

			--������ͨ�ʼ�
			local FriendName = LuaFnGetFriendName( sceneId, selfId, theGUID )
			LuaFnSendSystemMail( sceneId, FriendName, selfName .. "�� x�a b� quan h� k�t b�i v�i c�c h�" )
			--LuaFnSendNormalMail( sceneId, selfId, FriendName, selfName .. "�Ѿ���������˽�ݹ�ϵ��" )

			--���Ϳ�ִ���ʼ�
			LuaFnSendScriptMail( sceneId, FriendName, MAIL_UNSWEAR, selfGuid, AllDismiss, 0 )

		end
		i = i + 1
	end
	
end
