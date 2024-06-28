--���ϼӹ�����ѧϰ

--�ű���
x713538_g_ScriptId = 713538

--ѧϰ����Ҫ˵to� � ��
x713538_g_MessageStudy = "N�u c�c h� ��t �n c�p %d �ng th�i ch�u b� ra #{_MONEY%d} l� c� th� h�c k� n�ng gia c�ng nguy�n li�u. C�c h� quy�t �nh h�c kh�ng ?"

--���ܱ��
x713538_g_AbilityID = ABILITY_CAILIAOHECHENG

--��������
x713538_g_AbilityName = "Gia c�ng nguy�n li�u"

--ѧϰ������to� � ��c�p����
x713538_g_LimitLevel = 10

--Ҫ�����ѧ��to� � �䷽�б�
x713538_g_PeiFangID = { 399, 400, 401, 402, 403, 404, 405, 406, 407 }


--**********************************
--������ں���
--**********************************
function x713538_OnDefaultEvent( sceneId, selfId, targetId, ButtomNum,g_Npc_ScriptId )
	--��Ҽ���to� � ��c�p
	AbilityLevel = QueryHumanAbilityLevel(sceneId, selfId, x713538_g_AbilityID)

	--�����ж�

	--�ж���ng���Ѿ�ѧ���˲��ϼӹ�,���ѧ����,����ʾ�Ѿ�ѧ����
	if AbilityLevel >= 1 then
		BeginEvent(sceneId)
        	AddText(sceneId,"C�c h� �� h�c ���c"..x713538_g_AbilityName.." k� n�ng");
        	EndEvent(sceneId)
        DispatchMissionTips(sceneId,selfId)
		return
	end

	
	--��� �i�m��to� � ��ng��K� n�ng h�c t�p��(������=0)
	if ButtomNum == 0 then
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(x713538_g_AbilityID, 1);
		if ret and ret == 1 then
			BeginEvent(sceneId)
			local addText = format(x713538_g_MessageStudy, x713538_g_LimitLevel, demandMoney);
			AddText(sceneId, addText)
			--X�c nh�nѧϰ��ť
					AddNumText(sceneId,x713538_g_ScriptId,"T�i h� x�c �nh mu�n h�c", 6, 2)
			--Hu� b�ѧϰ��ť
					AddNumText(sceneId,x713538_g_ScriptId,"T�i h� ch� mu�n coi", 8, 3)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	elseif ButtomNum == 2 then			--��� �i�m��to� � ��ng����X�c nh�nҪѧϰ��
	--��������ng�����㹻to� � �ֽ�
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(x713538_g_AbilityID, 1);
		if ret and ret == 1 then
			if GetMoney(sceneId,selfId) < demandMoney then			
				BeginEvent(sceneId)
					local addText2 = format( "Xin l�i! S� ti�n c�c h� mang theo kh�ng ��, xin h�y mang theo#{_MONEY%d} r�i h�y �n ��y h�c.", demandMoney )
					AddText( sceneId, addText2 );
					EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
			end
			--�����ҵ�c�p��ng��ﵽҪ��
			if GetLevel(sceneId,selfId) < x713538_g_LimitLevel then
				BeginEvent(sceneId)
					AddText(sceneId,"��ng c�p c�a ng߽i kh�ng ��");
					EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
			end
			--ɾ����Ǯ
			CostMoney(sceneId, selfId, demandMoney)
			--�����Linh���1
			SetHumanAbilityLevel(sceneId,selfId,x713538_g_AbilityID,1)
			--�����ѧ������9c�i�䷽
			x713538_AddAllPeiFang( sceneId, selfId )
			--T�i npc���촰��֪ͨ����Ѿ�ѧ����
			BeginEvent(sceneId)
				AddText(sceneId,"C�c h� �� h�c ���c "..x713538_g_AbilityName.." k� n�ng")
			EndEvent( )
			DispatchEventList(sceneId,selfId,targetId)
		end
	else --��� �i�m������ֻ��ng��������
		CallScriptFunction( g_Npc_ScriptId, "OnDefaultEvent",sceneId, selfId, targetId )
	end
end

--**********************************
--�о��¼�
--**********************************
function x713538_OnEnumerate( sceneId, selfId, targetId )

		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(x713538_g_AbilityID, 1);
		if ret and ret == 1 then
			AddNumText(sceneId,x713538_g_ScriptId,"H�c "..x713538_g_AbilityName.." k� n�ng", 12, 0)
		end
		return

end

--**********************************
--���Ti�p th�����
--**********************************
function x713538_CheckAccept( sceneId, selfId )
end

--**********************************
--Ti�p th�
--**********************************
function x713538_OnAccept( sceneId, selfId, x713538_g_AbilityID )
end


function x713538_AddAllPeiFang( sceneId, selfId )

	for i, pfID in x713538_g_PeiFangID do
	
		if IsPrescrLearned( sceneId, selfId, pfID ) == 0 then
			SetPrescription( sceneId, selfId, pfID, 1 )
		end

	end

end
