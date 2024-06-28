--��ʦ����

--�ű���
x806006_g_ScriptId	= 806006

--��ʦ
x806006_g_BetrayMaster				= {}
x806006_g_BetrayMaster["Id"]	= 1005
x806006_g_BetrayMaster["Name"]= "Ta mu�n b� quan h� s�-�"	--modify by xindefeng

--��ʾ��Ϣ
x806006_g_msg				=
{
	["gld"]= "  B� quan h� s�-� c�n n�p #{_EXCHG%d}",
	["con"]= "  Ph�n s� ph� s� b� kh�u tr� #{_EXCHG%d}, ng߽i th�c s� mu�n ph�n s�?",
}

--��ʦ���۳���Ǯ
x806006_g_Gold			= 25000

--**********************************
--������ں���
--**********************************
function x806006_OnDefaultEvent( sceneId, selfId, targetId )
	local	key	= GetNumText()
	local	str

	if key == -1 then
		str	= format( x806006_g_msg["con"], x806006_g_Gold )
		BeginEvent( sceneId )
			if LuaFnHaveMaster( sceneId, selfId ) == 0 then
				--����Ƿ��Ѿ�����ʦ
				if GetMissionFlag(sceneId, selfId, MF_ShiTu_ChuShi_Flag) == 1 then --��ʾ�Ѿ���ʦ
					AddText( sceneId, "  C�c h� �� xu�t s� r�i, kh�ng th� xu�t s� n�a." )
				else
					AddText( sceneId, "  Ta mu�n xu�t s�" )
				end
			else
				AddText( sceneId, str )
				AddNumText( sceneId, x806006_g_ScriptId, "аng �", 6, 1 )
				AddNumText( sceneId, x806006_g_ScriptId, "B� qua", 6, 2 )	--add by xindefeng
			end
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif key == 1 then	--ȷ����ʦ�������ϵ
		if x806006_CheckAccept( sceneId, selfId, targetId ) > 0 then
			x806006_OnAccept( sceneId, selfId, targetId )
		end
	elseif key == 2 then	--ȡ����ʦ�������ϵ--add by xindefeng
		--�رս���
		DispatchUICommand( sceneId, selfId, 1000 )
	end
end

--**********************************
--�о��¼�
--**********************************
function x806006_OnEnumerate( sceneId, selfId, targetId )
	AddNumText( sceneId, x806006_g_ScriptId, x806006_g_BetrayMaster["Name"], 6, -1 )
end

--**********************************
--����������
--**********************************
function x806006_CheckAccept( sceneId, selfId, targetId )
	--���ͽ�����Ͻ�Ǯ
	--if LuaFnGetMoney( sceneId, selfId ) < x806006_g_Gold then
	--hzp 2008-12-9
	local nMoneyJZ = GetMoneyJZ(sceneId, selfId);
	local nMoneyJB = LuaFnGetMoney(sceneId, selfId);
	local nMoneySelf = nMoneyJZ + nMoneyJB;
	if nMoneySelf < x806006_g_Gold then
		str	= format( x806006_g_msg["gld"], x806006_g_Gold )
		x806006_MsgBox( sceneId, selfId, targetId, str )
		return 0
	end

	return 1
end

--**********************************
--����
--**********************************
function x806006_OnAccept( sceneId, selfId, targetId )
	local MasterGUID = LuaFnGetMasterGUID( sceneId, selfId )
	if MasterGUID == -1 then
		return
	end
	
	-- [ QUFEI 2007-08-16 16:53 UPDATE BugID 23624 ]
	if LuaFnHaveMaster( sceneId, selfId ) == 0 then
		BeginEvent( sceneId )
		AddText( sceneId, "  C�c h� �� xu�t s� !" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
		
	local MasterName = LuaFnGetFriendName( sceneId, selfId, MasterGUID )
	local selfName = LuaFnGetName( sceneId, selfId )

	--�۳����Ͻ�Ǯ
	--LuaFnCostMoney( sceneId, selfId, x806006_g_Gold )
	
	--hzp 2008-12-9
	local nMoneyJZ, nMoneyJB = LuaFnCostMoneyWithPriority( sceneId, selfId, x806006_g_Gold )
	--���ֻ�۳����
	if nMoneyJZ == 0 then
		str	= format( "Gi�i tr� quan h� s� �, c�n #{_MONEY%d}.", x806006_g_Gold )
		Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
	end
	--���ֻ�۳�����
	if nMoneyJB == 0 then
		str	= format( "Gi�i tr� quan h� s� �, c�n#{_EXCHG%d}.", x806006_g_Gold )
		Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
	end
	--������н������н��
	if nMoneyJB ~= 0 and nMoneyJZ ~= 0 then
		str	= format( "Gi�i tr� quan h� s� �, c�n#{_EXCHG%d}.".."#{_MONEY%d}.", nMoneyJZ, nMoneyJB )
		Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
	end
	x806006_MsgBox( sceneId, selfId, targetId, "  Gi�i tr� quan h� v�i "..MasterName.." ." )

	--����ͨ�ʼ���ʦ��
	LuaFnSendSystemMail( sceneId, MasterName, "а � c�a c�c h� " .. selfName .. " �� xu�t s�, gi�i tr� quan h� s� � v�i c�c h�" )
	--LuaFnSendNormalMail( sceneId, selfId, MasterName, "���ͽ��" .. selfName .. "�����ڼ����������£�������������ʦͽ��ϵ��" )
	local MyGUID = LuaFnGetGUID( sceneId, selfId )
	--����ִ���ʼ���ʦ��
	LuaFnSendScriptMail( sceneId, MasterName, MAIL_BETRAYMASTER, MyGUID, 0, 0 )

	--ɾ��ͽ�ܳƺ�
	AwardShiTuTitle( sceneId, selfId, "" )
	DispatchAllTitle( sceneId, selfId )

	--����ִ����ʦ
	LuaFnBetrayMaster( sceneId, selfId )
end

--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x806006_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
