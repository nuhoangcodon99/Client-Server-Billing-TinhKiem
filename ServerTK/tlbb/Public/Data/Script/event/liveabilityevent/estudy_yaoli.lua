--ҩ�� k� n�ngH�c 

--�ű���
x713527_g_ScriptId = 713527

--��npc��������to� � ��ߵ�c�p
x713527_g_nMaxLevel = 30

--H�c ����Ҫ˵to� � ��
x713527_g_MessageStudy = "Ch� c�n c�c h� ch�u b� #{_MONEY%d} m�i c� th� h�c ���c k� n�ng d��c l�. C�c h� c� quy�t �nh h�c kh�ng?"

x713527_g_AbilityName = "D��c l�"

x713527_g_AbilityID = ABILITY_YAOLI

--**********************************
--������ں���
--**********************************
function x713527_OnDefaultEvent( sceneId, selfId, targetId, ButtomNum,g_Npc_ScriptId,bid )
	--��� k� n�ngto� � ��c�p
	AbilityLevel = QueryHumanAbilityLevel(sceneId, selfId, ABILITY_YAOLI)
	--��Ҽӹ� k� n�ngto� � ������
	ExpPoint = GetAbilityExp(sceneId, selfId, ABILITY_YAOLI)
	--�����ж�

	--�ж���ng���Ѿ�ѧ����ҩ��,���ѧ����,����ʾ�Ѿ�ѧ����
	if AbilityLevel >= 1 then
		BeginEvent(sceneId)
        	AddText(sceneId,"C�c h� �� h�c k� n�ng d��c l� r�i");
        	EndEvent(sceneId)
        DispatchMissionTips(sceneId,selfId)
		return
	end

	--T�i Th�nh ph� ��H�c C�i n�y  k� n�ng
	if bid then
		x713527_StudyInCity(sceneId, selfId, targetId, ButtomNum,g_Npc_ScriptId,bid)
		return
	end

	--��� �i�m��to� � ��ng��H�c  k� n�ng��(������=0)
	if ButtomNum == 0 then
		
		local tempAbilityId = ABILITY_YAOLI;
		local tempAbilityLevel = 1;
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(tempAbilityId, tempAbilityLevel);
		if ret and ret == 1 then
			BeginEvent(sceneId)
			--AddText(sceneId,x713527_g_MessageStudy)
			local addText = format(x713527_g_MessageStudy, demandMoney);
			AddText(sceneId,addText)
			--X�c nh�nH�c ��ť
					AddNumText(sceneId,x713527_g_ScriptId,"T�i h� x�c �nh mu�n h�c", 6, 2)
			--Hu� b�H�c ��ť
					AddNumText(sceneId,x713527_g_ScriptId,"T�i h� ch� mu�n coi", 8, 3)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	elseif ButtomNum == 2 then			--��� �i�m��to� � ��ng����X�c nh�nҪH�c ��
		local tempAbilityId = ABILITY_YAOLI;
		local tempAbilityLevel = 1;
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(tempAbilityId, tempAbilityLevel);
		if ret and ret == 1 then
			--��������ng����m�t c�i����to� � �ֽ�
			if GetMoney(sceneId,selfId)+GetMoneyJZ(sceneId,selfId) < demandMoney then			
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
			LuaFnCostMoneyWithPriority(sceneId,selfId,demandMoney)
			-- k� n�ng�Linh���1
			SetHumanAbilityLevel(sceneId,selfId,ABILITY_YAOLI,1)
			--T�i npc���촰��֪ͨ����Ѿ�ѧ����
			BeginEvent(sceneId)
				AddText(sceneId,"C�c h� �� h�c xong k� n�ng d��c l�")
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
function x713527_OnEnumerate( sceneId, selfId, targetId, bid )
		if bid then
			local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, ABILITY_YAOLI, bid, 5)
			if ret > 0 then AddNumText(sceneId,x713527_g_ScriptId,"H�c "..x713527_g_AbilityName.." k� n�ng", 12, 0) end
			return
		end
		--���������c�p����ʾѡ��
		--if GetLevel(sceneId,selfId) >= 10 then
			AddNumText(sceneId,x713527_g_ScriptId,"H�c k� n�ng d��c l�", 12, 0)
		--end
		return
end

--**********************************
--���Ti�p th�����
--**********************************
function x713527_CheckAccept( sceneId, selfId )
end

--**********************************
--Ti�p th�
--**********************************
function x713527_OnAccept( sceneId, selfId, ABILITY_YAOLI )
end

--T�i Th�nh ph� ��H�c ������ k� n�ngʱC�n ִ��to� � ����
function x713527_StudyInCity(sceneId, selfId, targetId, ButtomNum,g_Npc_ScriptId,bid)
	if bid then
		if 0 == ButtomNum then
			--���Th�nh ph� ��ng���ڵ�ά��״̬
			if CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "CheckCityStatus",sceneId, selfId,targetId) < 0 then
				return
			end
			--���������ʾ����
			BeginEvent(sceneId)
			local lv,money,con
			lv,money,con = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityAction",sceneId, selfId, targetId, ABILITY_YAOLI, bid, 4)
			local studyMsg = format("N�u c�c h� ��t t�i c�p %d, ph�i ti�u t�n #{_MONEY%d} v� %d �i�m bang h�i s� c� th� h�c ���c "..x713527_g_AbilityName.." k� n�ng. Ng߽i quy�t �nh h�c c�i g�?", lv, money, con)
			AddText(sceneId,studyMsg)
			--X�c nh�nH�c ��ť
					AddNumText(sceneId,x713527_g_ScriptId,"T�i h� x�c �nh mu�n h�c", 6, 2)
			--Hu� b�H�c ��ť
					AddNumText(sceneId,x713527_g_ScriptId,"T�i h� ch� mu�n coi", 8, 3)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		elseif 2 == ButtomNum then
			local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, x713527_g_AbilityID, bid, 1)
			if ret > 0 then
				CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityAction",sceneId, selfId, targetId, x713527_g_AbilityID, bid, 1)
			end
		else
			CallScriptFunction( g_Npc_ScriptId, "OnDefaultEvent",sceneId, selfId, targetId )
		end
	end
end
