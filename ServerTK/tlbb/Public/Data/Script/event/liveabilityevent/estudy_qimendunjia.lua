--���Ŷݼ׼���ѧϰ

--�ű���
x713520_g_ScriptId = 713520

--��npc��������to� � ��ߵ�c�p
x713520_g_nMaxLevel = 5

--ѧϰ����Ҫ˵to� � ��
x713520_g_MessageStudy = "N�u c�c h� ��t t�i c�p %d v� ph�i ti�u t�n #{_MONEY%d} m�i c� th� h�c ���c k� n�ng k� m�n �n gi�p. C�c h� c� quy�t �nh h�c kh�ng?"


--**********************************
--������ں���
--**********************************
function x713520_OnDefaultEvent( sceneId, selfId, targetId, ButtomNum,g_Npc_ScriptId )
	--��Ҽ���to� � ��c�p
	AbilityLevel = QueryHumanAbilityLevel(sceneId, selfId, ABILITY_QIMENDUNJIA)
	--������Ŷݼ׼���to� � ������
	ExpPoint = GetAbilityExp(sceneId, selfId, ABILITY_QIMENDUNJIA)
	--�����ж�

	--�ж���ng����ngTi�u Dao�ɵ���,����ngTi�u Dao���Ӳ���ѧϰ
		if GetMenPai(sceneId,selfId) ~= MP_XIAOYAO then
			BeginEvent(sceneId)
        		AddText(sceneId,"Ng߽i kh�ng ph�i l� � t� b�n bang, ta kh�ng th� d�y ng߽i");
        	EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
	--�ж���ng���Ѿ�ѧ�������Ŷݼ�,���ѧ����,����ʾ�Ѿ�ѧ����
	if AbilityLevel >= 1 then
		BeginEvent(sceneId)
        	AddText(sceneId,"C�c h� �� h�c xong k� n�ng k� m�n �n gi�p");
        	EndEvent(sceneId)
        DispatchMissionTips(sceneId,selfId)
		return
	end

	--��� �i�m��to� � ��ng��K� n�ng h�c t�p��(������=0)
	if ButtomNum == 0 then
		
		local tempAbilityId = ABILITY_QIMENDUNJIA;
		local tempAbilityLevel = 1;
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(tempAbilityId, tempAbilityLevel);
		if ret and ret == 1 then
			BeginEvent(sceneId)
			--AddText(sceneId,x713520_g_MessageStudy)
			local addText = format(x713520_g_MessageStudy, limitLevel, demandMoney);
			AddText(sceneId,addText)
			--X�c nh�nѧϰ��ť
					AddNumText(sceneId,x713520_g_ScriptId,"T�i h� x�c �nh mu�n h�c", 6, 2)
			--Hu� b�ѧϰ��ť
					AddNumText(sceneId,x713520_g_ScriptId,"T�i h� ch� mu�n coi", 8, 3)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	elseif ButtomNum == 2 then			--��� �i�m��to� � ��ng����X�c nh�nҪѧϰ��
		local tempAbilityId = ABILITY_QIMENDUNJIA;
		local tempAbilityLevel = 1;
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(tempAbilityId, tempAbilityLevel);
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
			SetHumanAbilityLevel(sceneId,selfId,ABILITY_QIMENDUNJIA,1)
			--T�i npc���촰��֪ͨ����Ѿ�ѧ����
			BeginEvent(sceneId)
				AddText(sceneId,"C�c h� �� h�c xong k� n�ng k� m�n �n gi�p")
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
function x713520_OnEnumerate( sceneId, selfId, targetId )
		--���������c�p����ʾѡ��
		--if GetLevel(sceneId,selfId) >= 10 then
			AddNumText(sceneId,x713520_g_ScriptId,"H�c k� n�ng k� m�n �n gi�p", 12, 0)
		--end
		return
end

--**********************************
--���Ti�p th�����
--**********************************
function x713520_CheckAccept( sceneId, selfId )
end

--**********************************
--Ti�p th�
--**********************************
function x713520_OnAccept( sceneId, selfId, ABILITY_CAIKUANG )
end
