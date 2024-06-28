--��ҩ����ѧϰ

--�ű���
x713509_g_ScriptId = 713509

--ѧϰ����Ҫ˵to� � ��
x713509_g_MessageStudy = "N�u c�c h� ��t t�i c�p %d v� ph�i ti�u t�n #{_MONEY%d} m�i c� th� h�c ���c k� n�ng h�i thu�c. C�c h� c� quy�t �nh h�c kh�ng?"

--���ܱ��
x713509_g_AbilityID = ABILITY_CAIYAO

--��������
x713509_g_AbilityName = " H�i d��c "

--**********************************
--������ں���
--**********************************
function x713509_OnDefaultEvent( sceneId, selfId, targetId, ButtomNum,g_Npc_ScriptId,bid )
	--��Ҽ���to� � ��c�p
	AbilityLevel = QueryHumanAbilityLevel(sceneId, selfId, x713509_g_AbilityID)
	--��Ҽӹ�����to� � ������
	ExpPoint = GetAbilityExp(sceneId, selfId, x713509_g_AbilityID)
	--�����ж�

	--�ж���ng���Ѿ�ѧ���˲�ҩ,���ѧ����,����ʾ�Ѿ�ѧ����
	if AbilityLevel >= 1 then
		BeginEvent(sceneId)
        	AddText(sceneId,"C�c h� �� h�c ���c"..x713509_g_AbilityName.." k� n�ng");
        	EndEvent(sceneId)
        DispatchMissionTips(sceneId,selfId)
		return
	end

	--T�i Th�nh ph� ��ѧϰC�i n�y ����
	if bid then
		x713509_StudyInCity(sceneId, selfId, targetId, ButtomNum,g_Npc_ScriptId,bid)
		return
	end

	--��� �i�m��to� � ��ng��K� n�ng h�c t�p��(������=0)
	if ButtomNum == 0 then
		
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(ABILITY_CAIYAO, 1);
		if ret and ret == 1 then
			BeginEvent(sceneId)
			local addText = format(x713509_g_MessageStudy, limitLevel, demandMoney);
			AddText(sceneId,addText)
			--X�c nh�nѧϰ��ť
					AddNumText(sceneId,x713509_g_ScriptId,"T�i h� x�c �nh mu�n h�c", 6, 2)
			--Hu� b�ѧϰ��ť
					AddNumText(sceneId,x713509_g_ScriptId,"T�i h� ch� mu�n coi", 8, 3)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	elseif ButtomNum == 2 then			--��� �i�m��to� � ��ng����X�c nh�nҪѧϰ��
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(ABILITY_CAIYAO, 1);
		if ret and ret == 1 then
			--��������ng����m�t c�i����to� � �ֽ�
			if GetMoney(sceneId,selfId) < demandMoney then			
				BeginEvent(sceneId)
					AddText(sceneId,"C�c h� kh�ng �� ng�n l��ng");
					EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
			end
			--�����ҵ�c�p��ng��ﵽҪ��
			if GetLevel(sceneId,selfId) < limitLevel then
				BeginEvent(sceneId)
					AddText(sceneId,"��ng c�p c�a ng߽i kh�ng ��");
					EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
			end
			--ɾ����Ǯ
			CostMoney(sceneId,selfId,demandMoney)
			--�����Linh���1
			SetHumanAbilityLevel(sceneId,selfId,x713509_g_AbilityID,1)
			--T�i npc���촰��֪ͨ����Ѿ�ѧ����
			BeginEvent(sceneId)
				AddText(sceneId,"C�c h� �� h�c ���c "..x713509_g_AbilityName.." k� n�ng")
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
function x713509_OnEnumerate( sceneId, selfId, targetId, bid )
		if bid then
			local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, x713509_g_AbilityID, bid, 5)
			if ret > 0 then AddNumText(sceneId,x713509_g_ScriptId,"H�c "..x713509_g_AbilityName.." k� n�ng", 12, 0) end
			return
		end
		--���������c�p����ʾѡ��
		--if GetLevel(sceneId,selfId) >= LEVELUP_ABILITY_CAIYAO[1].HumanLevelLimit then
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(ABILITY_CAIYAO, 1);
		--if ret and ret == 1 and GetLevel(sceneId,selfId) >= limitLevel then
		if ret and ret == 1 then
			AddNumText(sceneId,x713509_g_ScriptId,"H�c "..x713509_g_AbilityName.." k� n�ng", 12, 0)
		end
		return
end

--**********************************
--���Ti�p th�����
--**********************************
function x713509_CheckAccept( sceneId, selfId )
end

--**********************************
--Ti�p th�
--**********************************
function x713509_OnAccept( sceneId, selfId, x713509_g_AbilityID )
end

--T�i Th�nh ph� ��ѧϰ�������ʱC�n ִ��to� � ����
function x713509_StudyInCity(sceneId, selfId, targetId, ButtomNum,g_Npc_ScriptId,bid)
	if bid then
		if 0 == ButtomNum then
			--���Th�nh ph� ��ng���ڵ�ά��״̬
			if CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "CheckCityStatus",sceneId, selfId,targetId) < 0 then
				return
			end
			--���������ʾ����
			BeginEvent(sceneId)
			local lv,money,con
			lv,money,con = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityAction",sceneId, selfId, targetId, x713509_g_AbilityID, bid, 4)
			local studyMsg = format("N�u c�c h� ��t t�i c�p %d, ph�i ti�u t�n #{_MONEY%d} v� %d �i�m bang h�i s� c� th� h�c ���c"..x713509_g_AbilityName.."K� n�ng. Ng߽i quy�t �nh h�c c�i g�?", lv, money, con)
			AddText(sceneId,studyMsg)
			--X�c nh�nѧϰ��ť
					AddNumText(sceneId,x713509_g_ScriptId,"T�i h� x�c �nh mu�n h�c", 6, 2)
			--Hu� b�ѧϰ��ť
					AddNumText(sceneId,x713509_g_ScriptId,"T�i h� ch� mu�n coi", 8, 3)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		elseif 2 == ButtomNum then
			local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, x713509_g_AbilityID, bid, 1)
			if ret > 0 then
				CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityAction",sceneId, selfId, targetId, x713509_g_AbilityID, bid, 1)
			end
		else
			CallScriptFunction( g_Npc_ScriptId, "OnDefaultEvent",sceneId, selfId, targetId )
		end
	end
end
