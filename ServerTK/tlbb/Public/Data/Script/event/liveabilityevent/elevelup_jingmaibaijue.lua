--�����پ�������c�p

--�ű���
x713592_g_ScriptId = 713592

--��npc��������to� � ��ߵ�c�p
x713592_g_nMaxLevel = 100

--**********************************
--������ں���
--**********************************
function x713592_OnDefaultEvent( sceneId, selfId, targetId )
	--��Ҽ���to� � ��c�p
	AbilityLevel = QueryHumanAbilityLevel(sceneId, selfId, ABILITY_JINGMAIBAIJUE)
	--��Ҿ����پ�����to� � ������
	ExpPoint = GetAbilityExp(sceneId, selfId, ABILITY_JINGMAIBAIJUE)
	--�����ж�

	--�ж���ng����ng��i L��ɵ���,����ng��i L��ɵ��Ӳ���ѧϰ
		if GetMenPai(sceneId,selfId) ~= MP_DALI then
			BeginEvent(sceneId)
        		AddText(sceneId,"Ng߽i kh�ng ph�i l� � t� b�n bang, ta kh�ng th� d�y ng߽i");
        	EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
	--�����û��ѧ��������
	if AbilityLevel < 1	then
		BeginEvent(sceneId)
			strText = "Ng߽i v�n ch�a h�c k� n�ng Kinh m�ch b�ch quy�t"
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--�������ܵ�c�p�Ѿ�������npc���ܽ�to� � ��Χ
	if AbilityLevel >= x713592_g_nMaxLevel then
		BeginEvent(sceneId)
			--[ QUFEI 2007-07-17 15:29 �޸� ]
			strText = "Tr߾c m�t k� n�ng n�y ch� c� th� h�c �n c�p 100"
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	else
		--DispatchAbilityInfo(sceneId, selfId, targetId,x713592_g_ScriptId, ABILITY_JINGMAIBAIJUE, LEVELUP_ABILITY_ASSISTANT[AbilityLevel+1].Money, LEVELUP_ABILITY_ASSISTANT[AbilityLevel+1].HumanExp, LEVELUP_ABILITY_ASSISTANT[AbilityLevel+1].AbilityExpLimitShow,LEVELUP_ABILITY_ASSISTANT[AbilityLevel+1].HumanLevelLimit)
		local tempScriptId = x713592_g_ScriptId;
		local tempAbilityId = ABILITY_JINGMAIBAIJUE;
		local tempAbilityLevel = AbilityLevel + 1;
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(tempAbilityId, tempAbilityLevel);
		if ret and ret == 1 then
			DispatchAbilityInfo(sceneId, selfId, targetId,tempScriptId, tempAbilityId, demandMoney, demandExp, limitAbilityExpShow, limitLevel);
		end
	end
end

--**********************************
--�о��¼�
--**********************************
function x713592_OnEnumerate( sceneId, selfId, targetId )
		--���������c�p����ʾѡ��
		if 1 then
			AddNumText(sceneId,x713592_g_ScriptId,"Ng߽i v�n ch�a h�c k� n�ng Kinh m�ch b�ch quy�t", 12, 1)
		end
		return
end

--**********************************
--���Ti�p th�����
--**********************************
function x713592_CheckAccept( sceneId, selfId )
end

--**********************************
--Ti�p th�
--**********************************
function x713592_OnAccept( sceneId, selfId, ABILITY_JINGMAIBAIJUE )
end
