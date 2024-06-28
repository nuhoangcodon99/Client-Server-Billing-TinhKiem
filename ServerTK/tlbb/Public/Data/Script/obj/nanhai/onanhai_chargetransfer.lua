-- created by ��ΰ

x400960_g_ScriptId = 400960; --�ű���
x400960_g_name	="Xa Truy�n T�n";

--����Ŀ��
x400960_g_transfer_target =
{
	[1] = {x = 217, z = 339, scene_num = 0}, 		--L�c D߽ng
	[2] = {x = 333, z = 249, scene_num = 1}, 		--T� Ch�u
	[3] = {x = 381, z = 186, scene_num = 2}, 		--��i L�
	[4] = {x = 294, z = 90, scene_num = 186}, 	--¥��
	[5] = {x = 186, z = 43, scene_num = 28},		--��گ
	[6] = {x = 158, z = 113, scene_num = 22}, 	--����ɽ
}

-- �շѽ��
x400960_g_transfer_cost = 5000; -- 50������

--**********************************
--�¼��������
--**********************************
function x400960_OnDefaultEvent( sceneId, selfId, targetId )
	x400960_UpdateEventList( sceneId, selfId, targetId );
end

--**********************************
--�¼��б�
--**********************************
function x400960_UpdateEventList( sceneId, selfId, targetId )
	BeginEvent(sceneId);
		AddText( sceneId, "#{SFCS_80828_02}" );
		AddNumText(sceneId, x400960_g_ScriptId, "L�c D߽ng", 9, 1);
		AddNumText(sceneId, x400960_g_ScriptId, "T� Ch�u", 9, 2);
		AddNumText(sceneId, x400960_g_ScriptId, "��i L�", 9, 3);
		AddNumText(sceneId, x400960_g_ScriptId, "L�u Lan", 9, 4);
		AddNumText(sceneId, x400960_g_ScriptId, "Nam Chi�u", 9, 5);
		AddNumText(sceneId, x400960_g_ScriptId, "Tr߶ng B�ch S�n", 9, 6);
	EndEvent()
	DispatchEventList(sceneId, selfId, targetId);
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x400960_OnEventRequest( sceneId, selfId, targetId, eventId )
	--�������
	if GetItemCount(sceneId, selfId, 40002000)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "Xin th� l�i tr�n ng߶i c�c h� �ang gi� ng�n phi�u ta kh�ng th� gi�p ���c." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	--�������
	if GetTeamId(sceneId,selfId)>=0 and 
		IsTeamFollow(sceneId, selfId)==1 and
		LuaFnIsTeamLeader(sceneId,selfId)==1 then
		BeginEvent( sceneId )
			AddText( sceneId, "Ng߽i �ang � trong tr�ng th�i T�o v�n, kh�ng th� ti�n v� c�nh tr߾c!" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	--�������
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		BeginEvent(sceneId)
			AddText(sceneId, "Ng߽i �ang � trong tr�ng th�i T�o v�n, kh�ng th� ti�n v� c�nh tr߾c.")
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
				AddNumText(sceneId, x400960_g_ScriptId, "X�c nh�n", 0, 11);
			elseif id == 2 then
				AddNumText(sceneId, x400960_g_ScriptId, "X�c nh�n", 0, 21);
			elseif id == 3 then
				AddNumText(sceneId, x400960_g_ScriptId, "X�c nh�n", 0, 31);
			elseif id == 4 then
				AddNumText(sceneId, x400960_g_ScriptId, "X�c nh�n", 0, 41);
			elseif id == 5 then
				AddNumText(sceneId, x400960_g_ScriptId, "X�c nh�n", 0, 51);
			elseif id == 6 then
				AddNumText(sceneId, x400960_g_ScriptId, "X�c nh�n", 0, 61);
			end
			AddNumText(sceneId, x400960_g_ScriptId, "H�y b�", 0, 100);
		EndEvent()
		DispatchEventList(sceneId, selfId, targetId);
	elseif id == 100 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )		
	else
		local index = floor(id/10);
		--¥��75������
		if index == 4 then
			if GetLevel(sceneId, selfId) < 75 then
				BeginEvent(sceneId)
					AddText(sceneId, "C�p � ch�a �� 75 kh�ng th� d�ch chuy�n.")
				EndEvent()
				DispatchEventList(sceneId, selfId, targetId)
				return
			end
			--ͬ���С������
			if LuaFnGetDRideFlag(sceneId, selfId) == 1 then
				local objId = LuaFnGetDRideTargetID(sceneId, selfId);
				if objId ~= -1 and GetLevel(sceneId, objId) < 75 then
					BeginEvent(sceneId)
						AddText(sceneId, "#{SRCS_090203_1}")
					EndEvent()
					DispatchEventList(sceneId, selfId, targetId)
					return					
				end
			end
		end
		--[tx44121]bug����û��������ͼ��𣬵��µͼ����ͨ��˫��˽��߼��𳡾�
		local minLevel = 10
		if index == 4 then
			minLevel = 75
		end
		if LuaFnGetDRideFlag(sceneId, selfId) == 1 then
			local objId = LuaFnGetDRideTargetID(sceneId, selfId);
			if objId ~= -1 and GetLevel(sceneId, objId) < minLevel then
				local Tip = format("#{CQTS_90227_1}%d#{CQTS_90227_2}", minLevel)
				x400960_NotifyFailTips( sceneId, selfId, targetId, Tip )
				return					
			end
		end	
		--[/tx44121]
				
		local pos_x = x400960_g_transfer_target[index]["x"];
		local pos_z = x400960_g_transfer_target[index]["z"];
		local scene_num = x400960_g_transfer_target[index]["scene_num"];			
			
		local nMoneyJZ = GetMoneyJZ (sceneId, selfId)
		local nMoney = GetMoney (sceneId, selfId)

		--Ǯ����
		if (nMoneyJZ + nMoney) >= x400960_g_transfer_cost then 
				
			-- �շ�
			-- ʹ�ô����ȼ��Ľ�Ǯ���ĺ���
			if LuaFnCostMoneyWithPriority (sceneId, selfId, x400960_g_transfer_cost) == -1 then
				BeginEvent(sceneId)
					AddText(sceneId, "Thu ph� th�t b�i!");
				EndEvent()
				DispatchMissionTips(sceneId, selfId)
				return
			else
				CallScriptFunction((400900), "TransferFunc",sceneId, selfId, scene_num, pos_x, pos_z, minLevel); 
			end

		-- Ǯ����
		else
			BeginEvent(sceneId)
				AddText(sceneId, "Kh�ng �� ng�n l��ng");
			EndEvent()
			DispatchEventList(sceneId, selfId, targetId)
			return
			
		end
	end	
end
--**********************************
-- ��Ļ�м���Ϣ��ʾ
--**********************************
function x400960_NotifyFailTips( sceneId, selfId, targetId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
