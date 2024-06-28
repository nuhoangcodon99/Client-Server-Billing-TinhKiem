--����NPC
--����
--��ͨ

x000128_g_ScriptId	= 000128

--������Ϣ(�������ƣ�SceneID��PosX��PosY������ID)
x000128_g_mpInfo		= {}
x000128_g_mpInfo[0]	= { "Tinh T�c", 16,  96, 152, MP_XINGSU }
x000128_g_mpInfo[1]	= { "Ti�u Dao", 14,  67, 145, MP_XIAOYAO }
x000128_g_mpInfo[2]	= { "Thi�u L�m",  9,  96, 127, MP_SHAOLIN }
x000128_g_mpInfo[3]	= { "Thi�n S�n", 17,  95, 120, MP_TIANSHAN }
x000128_g_mpInfo[4]	= { "Thi�n Long", 13,  96, 120, MP_DALI }
x000128_g_mpInfo[5]	= { "Nga My", 15,  89, 139, MP_EMEI }
x000128_g_mpInfo[6]	= { "V� �ang", 12, 103, 140, MP_WUDANG }
x000128_g_mpInfo[7]	= { "Minh Gi�o", 11,  98, 167, MP_MINGJIAO }
x000128_g_mpInfo[8]	= { "C�i Bang", 10,  91, 116, MP_GAIBANG }
--x000128_g_mpInfo[9]	= { "M� Dung", 435,  29, 137, 9}

x000128_g_Yinpiao = 40002000 

x000128_g_Impact_NotTransportList = { 5929, 5944 } -- ��ֹ���͵�Impact
x000128_g_TalkInfo_NotTransportList = { "#{GodFire_Info_062}", "#{XSHCD_20080418_099}" } -- ��ֹ���͵�Impact��ʾ��Ϣ

--**********************************
--�¼��������
--**********************************
function x000128_OnDefaultEvent( sceneId, selfId,targetId )
	
	-- �����������ǲ����С���Ʊ������������оͲ���ʹ������Ĺ���
	if GetItemCount(sceneId, selfId, x000128_g_Yinpiao)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "  Tr�n ng߶i c�c h� c� ng�n phi�u, �ang ch�y tr�n n�! Ta kh�ng th� gi�p c�c h�" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	local	mp
	local	i		= 0
	BeginEvent( sceneId )
		AddText( sceneId, "#{XIYU_20071228_01}")
		AddNumText( sceneId, x000128_g_ScriptId, "Quay v� m�n ph�i", 9, 1000 )
		AddNumText( sceneId, x000128_g_ScriptId, "Th�nh th� - T� Ch�u", 9, 1001 )
		AddNumText( sceneId, x000128_g_ScriptId, "Th�nh th� - T� Ch�u - Thi�t t߶ng ph�", 9, 1007 )
		AddNumText( sceneId, x000128_g_ScriptId, "Th�nh th� - ��i L�", 9, 1002 )
		AddNumText( sceneId, x000128_g_ScriptId, "Th�nh th� - L�u Lan", 9, 1011 )
		AddNumText( sceneId, x000128_g_ScriptId, "Th�nh th� - Th�c H� C� Tr�n", 9, 1010 )
		--AddNumText( sceneId, x000128_g_ScriptId, "���� - ����", 9, 1006 )
		AddNumText( sceneId, x000128_g_ScriptId, "�i �n c�c m�n ph�i", 9, 1012 )
		--for i, mp in x000128_g_mpInfo do
			--AddNumText( sceneId, x000128_g_ScriptId, "���� - "..mp[1], 9, i )
		--end

		
		
		-- ����������ȥ�ػͺ���ɽ
		AddNumText( sceneId, x000128_g_ScriptId, "Ъn ��n Ho�ng v� Tung S�n?", 11, 2000 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x000128_OnEventRequest( sceneId, selfId, targetId, eventId )
	--�������
	if GetTeamId(sceneId,selfId)>=0 and 
		IsTeamFollow(sceneId, selfId)==1 and
		LuaFnIsTeamLeader(sceneId,selfId)==1 then
		num=LuaFnGetFollowedMembersCount( sceneId, selfId)
		local mems = {}
		for	i=0,num-1 do
			mems[i] = GetFollowedMember(sceneId, selfId, i)
			if mems[i] == -1 then
				return
			end
			if IsHaveMission(sceneId,mems[i],4021) > 0 then
				x000128_MsgBox( sceneId, selfId, targetId, "  Th�nh vi�n trong nh�m ng߽i c� ng߶i c� nhi�m v� ch� h�ng b�ng �߶ng thu�, d�ch tr�m ch�ng ta kh�ng th� cung c�p d�ch v� cho ng߽i" )
				return
			end
		end
	end

	--�������
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		x000128_MsgBox( sceneId, selfId, targetId, "  Ng߽i c� nhi�m v� ch� h�ng b�ng �߶ng thu�, d�ch tr�m ch�ng ta kh�ng th� cung c�p d�ch v� cho ng߽i" )
		return
	end

	--���Impact״̬פ��Ч��
	for i, ImpactId in x000128_g_Impact_NotTransportList do
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactId) ~= 0 then
			x000128_MsgBox( sceneId, selfId, targetId, x000128_g_TalkInfo_NotTransportList[i] )			
			return 0
		end
	end

	--˳������
	local	arg	= GetNumText()
	local	mp
	local	i		= 0
	local	id	= LuaFnGetMenPai( sceneId, selfId )
	if arg == 1000 then		--��������
		if id == 9 and  GetHumanMenpaiPoint(sceneId, selfId) == 0 then
			x000128_MsgBox( sceneId, selfId, targetId, "  Ng߽i v�n ch�a gia nh�p b�t k� m�n ph�i n�o!" )
		else
			mp	= x000128_GetMPInfo( id )
			if mp ~= nil then
				CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4] )
			end
		end
		return
	end
	if arg == 1001 then		--����
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1,  202,258 )
		return
	end
	if arg == 1007 then		--����������
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 332, 225 )
		return
	end
	if arg == 1002 then		--����
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 2, 252, 126 )
		return
	end
	if arg == 1006 then		--����
		SetPos(sceneId, selfId, 132,183)
		return
	end
  	if arg == 1011 then		--¥��
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 186, 288, 136, 75 )
		return
	end
	for i, mp in x000128_g_mpInfo do
		if arg == i then
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4] )
			return
		end
	end

	if GetNumText()== 1010 then		--���ӹ���
	-- modify by zchw
			-- add by zchw
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, x000128_g_ScriptId);
			-- zchw fix Transfer bug
			UICommand_AddInt(sceneId, targetId);
			UICommand_AddString(sceneId, "GotoShuHeGuZhen");
			UICommand_AddString(sceneId, "Th�c H� C� Tr�n l� n�i PK kh�ng b� s�t kh�, c�c h� c� mu�n �n kh�ng?");
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 24)
		return
	end
	
	if arg == 1012 then		
		BeginEvent( sceneId )
			for i, mp in x000128_g_mpInfo do
				AddNumText( sceneId, x000128_g_ScriptId, "M�n ph�i - "..mp[1], 9, i )
			end
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
		return
	end
	
	if GetNumText() == 2000 then		--
		BeginEvent( sceneId )
			AddText( sceneId, "#{GOTO_DUNHUANF_SONGSHAN}" ) 
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
		return
	end
end
--  add by zchw
function x000128_GotoShuHeGuZhen( sceneId, selfId, targetId )
	CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 420, 200, 211, 20 );
	return
end
--**********************************
--��������ID��ȡ������Ϣ
--**********************************
function x000128_GetMPInfo( mpID )
	local	mp
	local	i		= 0
	for i, mp in x000128_g_mpInfo do
		if mp[5] == mpID then
			return mp
		end
	end
	return nil
end

--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x000128_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
