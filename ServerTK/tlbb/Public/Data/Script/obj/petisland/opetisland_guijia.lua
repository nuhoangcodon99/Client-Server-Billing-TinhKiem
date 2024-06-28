--���䵺
--���
--��ͨ

x112001_g_ScriptId	= 112001

--������Ϣ(�������ƣ�SceneID��PosX��PosY������ID)
x112001_g_mpInfo		= {}
x112001_g_mpInfo[0]	= { "Tinh T�c", 16,  96, 152, MP_XINGSU }
x112001_g_mpInfo[1]	= { "Ti�u Dao", 14,  67, 145, MP_XIAOYAO }
x112001_g_mpInfo[2]	= { "Thi�u L�m",  9,  96, 127, MP_SHAOLIN }
x112001_g_mpInfo[3]	= { "Thi�n S�n", 17,  95, 120, MP_TIANSHAN }
x112001_g_mpInfo[4]	= { "Thi�n Long", 13,  96, 120, MP_DALI }
x112001_g_mpInfo[5]	= { "Nga My", 15,  89, 139, MP_EMEI }
x112001_g_mpInfo[6]	= { "V� �ang", 12, 103, 140, MP_WUDANG }
x112001_g_mpInfo[7]	= { "Minh Gi�o", 11,  98, 167, MP_MINGJIAO }
x112001_g_mpInfo[8]	= { "C�i Bang", 10,  91, 116, MP_GAIBANG }

x112001_g_Yinpiao = 40002000 
--**********************************
--�¼��������
--**********************************
function x112001_OnDefaultEvent( sceneId, selfId,targetId )
	
	-- �����������ǲ����С���Ʊ������������оͲ���ʹ������Ĺ���
	if GetItemCount(sceneId, selfId, x112001_g_Yinpiao)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "Xin th� l�i tr�n ng߶i c�c h� �ang gi� ng�n phi�u ta kh�ng th� gi�p ���c." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	local	mp
	local	i		= 0
	BeginEvent( sceneId )
		AddText( sceneId, "Hoan ngh�nh ng߽i �� t�i Huy�n V� ��o!")
		AddNumText( sceneId, x112001_g_ScriptId, "Quay v� m�n ph�i", 9, 1000 )
		AddNumText( sceneId, x112001_g_ScriptId, "Th�nh th� - L�c D߽ng", 9, 1003 )
		AddNumText( sceneId, x112001_g_ScriptId, "Th�nh th� - T� Ch�u", 9, 1001 )
		AddNumText( sceneId, x112001_g_ScriptId, "Th�nh th� - ��i L�", 9, 1002 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x112001_OnEventRequest( sceneId, selfId, targetId, eventId )
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
				x112001_MsgBox( sceneId, selfId, targetId, "Ng߽i �ang � trong tr�ng th�i T�o v�n, kh�ng th� ti�n v� c�nh tr߾c." )
				return
			end
		end
	end

	--�������
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		x112001_MsgBox( sceneId, selfId, targetId, "Ng߽i �ang � trong tr�ng th�i kinh doanh, kh�ng th� ti�n v� c�nh tr߾c." )
		return
	end

	--˳������
	local	arg	= GetNumText()
	local	mp
	local	i		= 0
	local	id	= LuaFnGetMenPai( sceneId, selfId )
	if arg == 1000 then		--��������
		if id < 0 or (id == 9 and LuaFnGetXinFaLevel(sceneId,selfId,64) <= 0) then --Add by S�i
			x112001_MsgBox( sceneId, selfId, targetId, "Ng߽i v�n ch�a gia nh�p m�n ph�i." )
		elseif id == 9 and LuaFnGetXinFaLevel(sceneId,selfId,64) > 0 then --Add by S�i
			CallScriptFunction((400900),"TransferFunc",sceneId,selfId,435,91,116)
		else
			mp	= x112001_GetMPInfo( id )
			if mp ~= nil then
				CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4] )
			end
		end
		return
	end
	if arg == 1001 then		--����
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 175,241 )
		return
	end
	if arg == 1002 then		--����
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 2, 400, 217 )
		return
	end
	if arg == 1003 then		--����
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 275, 294 )
		return
	end
	for i, mp in x112001_g_mpInfo do
		if arg == i then
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4] )
			return
		end
	end

	if GetNumText() == 2000 then		--
		BeginEvent( sceneId )
			AddText( sceneId, "#{GOTO_DUNHUANF_SONGSHAN}" ) 
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
		return
	end
end

--**********************************
--��������ID��ȡ������Ϣ
--**********************************
function x112001_GetMPInfo( mpID )
	local	mp
	local	i		= 0
	for i, mp in x112001_g_mpInfo do
		if mp[5] == mpID then
			return mp
		end
	end
	return nil
end

--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x112001_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
