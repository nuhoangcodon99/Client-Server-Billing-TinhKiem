-- created by ��ΰ

x400959_g_ScriptId = 400959; --�ű���
x400959_g_name	="Xa Truy�n B�nh";

--����Ŀ��
x400959_g_transfer_target =
{
	[1] = {x = 218, z = 338, scene_num = 0}, 		--����
	[2] = {x = 332, z = 253, scene_num = 1}, 		--����
	[3] = {x = 259, z = 86, scene_num = 2}, 		--����
	[4] = {x = 206, z = 266, scene_num = 34}, 	--�Ϻ�
	[5] = {x = 186, z = 43, scene_num = 28},		--��گ
	[6] = {x = 158, z = 113, scene_num = 22}, 	--����ɽ
}

-- �շѽ��
x400959_g_transfer_cost = 5000; -- 50������

--**********************************
--�¼��������
--**********************************
function x400959_OnDefaultEvent( sceneId, selfId, targetId )
	x400959_UpdateEventList( sceneId, selfId, targetId );
end

--**********************************
--�¼��б�
--**********************************
function x400959_UpdateEventList( sceneId, selfId, targetId )
	BeginEvent(sceneId);
		AddText( sceneId, "#{SFCS_80828_01}" );
		AddNumText(sceneId, x400959_g_ScriptId, "L�c D߽ng", 9, 1); --Lac duong
		AddNumText(sceneId, x400959_g_ScriptId, "T� Ch�u", 9, 2); --To chau
		AddNumText(sceneId, x400959_g_ScriptId, "��i L�", 9, 3); --Dai li
		AddNumText(sceneId, x400959_g_ScriptId, "Nam H�i", 9, 4); --Nam Hai
		AddNumText(sceneId, x400959_g_ScriptId, "Nam Chi�u", 9, 5); --Nam chieu
		AddNumText(sceneId, x400959_g_ScriptId, "Tr߶ng B�ch S�n", 9, 6); --Truong bach son
	EndEvent()
	DispatchEventList(sceneId, selfId, targetId);
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x400959_OnEventRequest( sceneId, selfId, targetId, eventId )
	--�������
	if GetItemCount(sceneId, selfId, 40002000)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "  C�c h� �ang trong tr�ng th�i v�n chuy�n, kh�ng th� d�ch chuy�n." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	--�������
	if GetTeamId(sceneId,selfId)>=0 and 
		IsTeamFollow(sceneId, selfId)==1 and
		LuaFnIsTeamLeader(sceneId,selfId)==1 then
		BeginEvent( sceneId )
			AddText( sceneId, "  Do �߶ng x� qu� xa x�i, ta kh�ng th� ti�p nh�n c� t� �i." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	--�������
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		BeginEvent(sceneId)
			AddText(sceneId, "  C�c h� �ang trong tr�ng th�i t�o v�n, kh�ng th� d�ch chuy�n.")
		EndEvent()
		DispatchEventList(sceneId, selfId, targetId)
		return
	end
	--
	local id = GetNumText();
	if id >=1 and id <= 6 then
		BeginEvent(sceneId)
			--"���δ�����ȡ50�����ӣ���Ҫ������"
			AddText(sceneId, "#{FFCS_081210_1}")
			if id == 1 then	
				AddNumText(sceneId, x400959_g_ScriptId, "X�c �nh", 0, 11);
			elseif id == 2 then
				AddNumText(sceneId, x400959_g_ScriptId, "X�c �nh", 0, 21);
			elseif id == 3 then
				AddNumText(sceneId, x400959_g_ScriptId, "X�c �nh", 0, 31);
			elseif id == 4 then
				AddNumText(sceneId, x400959_g_ScriptId, "X�c �nh", 0, 41);
			elseif id == 5 then
				AddNumText(sceneId, x400959_g_ScriptId, "X�c �nh", 0, 51);
			elseif id == 6 then
				AddNumText(sceneId, x400959_g_ScriptId, "X�c �nh", 0, 61);
			end
			AddNumText(sceneId, x400959_g_ScriptId, "H�y b�", 0, 100);
		EndEvent()
		DispatchEventList(sceneId, selfId, targetId);
	elseif id == 100 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )		
	else
		local index = floor(id/10);
		local pos_x = x400959_g_transfer_target[index]["x"];
		local pos_z = x400959_g_transfer_target[index]["z"];
		local scene_num = x400959_g_transfer_target[index]["scene_num"];
			
		local nMoneyJZ = GetMoneyJZ (sceneId, selfId)
		local nMoney = GetMoney (sceneId, selfId)

		--Ǯ����
		if (nMoneyJZ + nMoney) >= x400959_g_transfer_cost then 
				
			-- �շ�
			-- ʹ�ô����ȼ��Ľ�Ǯ���ĺ���
			if LuaFnCostMoneyWithPriority (sceneId, selfId, x400959_g_transfer_cost) == -1 then
				BeginEvent(sceneId)
					AddText(sceneId, "C�c h� kh�ng c� �� ng�n l��ng.");
				EndEvent()
				DispatchMissionTips(sceneId, selfId)
				return
			else
				-- ����
				CallScriptFunction((400900), "TransferFunc",sceneId, selfId, scene_num, pos_x, pos_z); 
			end

		-- Ǯ����
		else
			BeginEvent(sceneId)
				AddText(sceneId, "C�c h� kh�ng c� �� ng�n l��ng.");
			EndEvent()
			DispatchEventList(sceneId, selfId, targetId)
			return

		end
	end	
end