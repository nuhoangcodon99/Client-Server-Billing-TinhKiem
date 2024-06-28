--ҩ������c�p

--�ű���
x713586_g_ScriptId = 713586

--��npc��������to� � ��ߵ�c�p
x713586_g_nMaxLevel = 30

--**********************************
--������ں���
--**********************************
function x713586_OnDefaultEvent( sceneId, selfId, targetId, nNum, npcScriptId, bid )
	--��Ҽ���to� � ��c�p
	AbilityLevel = QueryHumanAbilityLevel(sceneId, selfId, ABILITY_YAOLI)
	--��Ҽӹ�����to� � ������
	ExpPoint = GetAbilityExp(sceneId, selfId, ABILITY_YAOLI)
	--�����ж�

	--�����û��ѧ��������
	if AbilityLevel < 1	then
		BeginEvent(sceneId)
			strText = "Ng߽i v�n ch�a h�c k� n�ng d��c l�"
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	--�����ngT�i Th�nh ph� ����c�p
	if bid then
		--���Th�nh ph� ��ng���ڵ�ά��״̬
		if CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "CheckCityStatus",sceneId, selfId,targetId) < 0 then
			return
		end
		local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, ABILITY_YAOLI, bid, 2)
		if ret > 0 then
			CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityAction",sceneId, selfId, targetId, ABILITY_YAOLI, bid, 2)
		end
		return
	end
	--�������ܵ�c�p�Ѿ�������npc���ܽ�to� � ��Χ
	if AbilityLevel >= x713586_g_nMaxLevel then
		BeginEvent(sceneId)
			strText = "Ta ch� c� th� d�y ng߽i 1-"..x713586_g_nMaxLevel.." k� n�ng d��c l� cao c�p, xin t�i bang h�i � h�c"
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	else
		--DispatchAbilityInfo(sceneId, selfId, targetId,x713586_g_ScriptId, ABILITY_YAOLI, LEVELUP_ABILITY_ASSISTANT[AbilityLevel+1].Money, LEVELUP_ABILITY_ASSISTANT[AbilityLevel+1].HumanExp, LEVELUP_ABILITY_ASSISTANT[AbilityLevel+1].AbilityExpLimitShow,LEVELUP_ABILITY_ASSISTANT[AbilityLevel+1].HumanLevelLimit)
		local tempScriptId = x713586_g_ScriptId;
		local tempAbilityId = ABILITY_YAOLI;
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
function x713586_OnEnumerate( sceneId, selfId, targetId, bid )
		if bid then
			local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, ABILITY_YAOLI, bid, 6)
			if ret > 0 then AddNumText(sceneId,x713586_g_ScriptId,"Th�ng c�p k� n�ng d��c l�", 12, 1) end
			return
		end
		--���������c�p����ʾѡ��
		if 1 then
			AddNumText(sceneId,x713586_g_ScriptId,"Th�ng c�p k� n�ng d��c l�", 12, 1)
		end
		return
end

--**********************************
--���Ti�p th�����
--**********************************
function x713586_CheckAccept( sceneId, selfId )
end

--**********************************
--Ti�p th�
--**********************************
function x713586_OnAccept( sceneId, selfId, ABILITY_YAOLI )
end
