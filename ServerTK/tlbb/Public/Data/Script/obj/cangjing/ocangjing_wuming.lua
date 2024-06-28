--�ؾ���NPC
--������ɮ
--��ͨ

x122001_g_ScriptId	= 122001



--**********************************
--�¼��������
--**********************************
function x122001_OnDefaultEvent( sceneId, selfId,targetId )

	BeginEvent( sceneId )
		AddText( sceneId, "  A Di �� Ph�t, thi�n tai thi�n tai. #r#rT�t c� �u tr� th�nh Ph�t ph�p, �u tr� th�nh bong b�ng m�ng �o m� th�i. #r#rNh� s߽ng c�ng nh� �i�n, c�ng ch� � nh�n nh� th� m� th�i. #r#rNh�ng n�i $N �� t�ng �i, �u l� h� �o c�, kh�ng b�ng � l�o t�ng ch� gi�o cho ng߽i th�y" )
		AddNumText( sceneId, x122001_g_ScriptId, "Th�nh th� - T� Ch�u", 9, 1001 )
		AddNumText( sceneId, x122001_g_ScriptId, "Th�nh th� - ��i L�", 9, 1002 )
		AddNumText( sceneId, x122001_g_ScriptId, "Th�nh th� - L�c D߽ng", 9, 1003 )

	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x122001_OnEventRequest( sceneId, selfId, targetId, eventId )
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
				x122001_MsgBox( sceneId, selfId, targetId, "  Th�nh vi�n trong nh�m ng߽i c� ng߶i c� nhi�m v� ch� h�ng b�ng �߶ng thu�, d�ch tr�m ch�ng ta kh�ng th� cung c�p d�ch v� cho ng߽i" )
				return
			end
		end
	end

	--�������
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		x122001_MsgBox( sceneId, selfId, targetId, "  Ng߽i c� nhi�m v� ch� h�ng b�ng �߶ng thu�, d�ch tr�m ch�ng ta kh�ng th� cung c�p d�ch v� cho ng߽i" )
		return
	end

	--˳������
	local	arg	= GetNumText()

	if arg == 1001 then		--����
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 114,162 )
		return
	end
	if arg == 1002 then		--����
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 2, 241, 141 )
		return
	end
	if arg == 1003 then		--����
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 132, 183 )
		return
	end

end

--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x122001_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
