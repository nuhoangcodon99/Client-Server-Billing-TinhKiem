--�¼�
--���͵����޵�

--�ű���
x400918_g_ScriptId = 400918

--�����ı�����
x400918_g_MissionName="�i t�i Huy�n V� ��o"
x400918_g_MissionInfo="D�ch chuy�n t�i Huy�n V� ��o"  --��������
x400918_g_MissionTarget="D�ch chuy�n t�i Huy�n V� ��o"		--����Ŀ��
x400918_g_ContinueInfo="D�ch chuy�n t�i Huy�n V� ��o"		--δ��������npc�Ի�
x400918_g_MissionComplete="D�ch chuy�n t�i Huy�n V� ��o"					--�������npc˵���Ļ�

--**********************************
--��ں���
--**********************************
function x400918_OnDefaultEvent( sceneId, selfId, targetId )	--����������ִ�д˽ű�

	-- �����������ǲ����С���Ʊ������������оͲ���ʹ������Ĺ���
	if GetItemCount(sceneId, selfId, 40002000) >= 1 then
		BeginEvent( sceneId )
			AddText( sceneId, "  Tr�n ng߶i ng߽i �ang c� ng�n phi�u. иnh tr�n n� h� ?" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

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
				BeginEvent( sceneId )
					AddText( sceneId, "  �ang trong nhi�m v� v�n chuy�n, kh�ng th� d�ng ch�c n�ng d�ch chuy�n � c�c NPC !" )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
				return
			end
		end
	end

	if IsHaveMission(sceneId,selfId,4021) > 0 then
		BeginEvent( sceneId )
			AddText( sceneId, "  �ang trong nhi�m v� v�n chuy�n, kh�ng th� d�ng ch�c n�ng d�ch chuy�n � c�c NPC !" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 39, 109, 25)

end

--**********************************
--�о��¼�
--**********************************
function x400918_OnEnumerate( sceneId, selfId, targetId )
	--�ȼ��ﵽ10������ʾ����ѡ��
	if GetLevel( sceneId, selfId ) >= 10 then
		AddNumText(sceneId,x400918_g_ScriptId,x400918_g_MissionName, 9, -1)
	else
		return
	end
end
