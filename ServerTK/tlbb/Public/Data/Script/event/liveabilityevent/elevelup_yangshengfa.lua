--������������c�p

--�ű���
x713587_g_ScriptId = 713587

x713587_g_AbilityID = ABILITY_YANGSHENGFA
--��npc��������to� � ��ߵ�c�p
x713587_g_nMaxLevel = 30

x713587_g_AbilityName = "D��ng sinh ph�p"

--**********************************
--������ں���
--**********************************
function x713587_OnDefaultEvent( sceneId, selfId, targetId, nNum, npcScriptId, bid )
	--��Ҽ���to� � ��c�p
	AbilityLevel = QueryHumanAbilityLevel(sceneId, selfId, ABILITY_YANGSHENGFA)
	--��Ҽӹ�����to� � ������
	ExpPoint = GetAbilityExp(sceneId, selfId, ABILITY_YANGSHENGFA)
	--�����ж�

	--�����û��ѧ��������
	if AbilityLevel < 1	then
		BeginEvent(sceneId)
			strText = "Ng߽i v�n ch�a h�c k� n�ng d��ng sinh ph�p"
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
		local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, x713587_g_AbilityID, bid, 2)
		if ret > 0 then
			CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityAction",sceneId, selfId, targetId, x713587_g_AbilityID, bid, 2)
		end
		return
	end
	--�������ܵ�c�p�Ѿ�������npc���ܽ�to� � ��Χ
	if AbilityLevel >= x713587_g_nMaxLevel then
		BeginEvent(sceneId)
			strText = "Ta ch� c� th� d�y ng߽i 1-"..x713587_g_nMaxLevel.."K� n�ng d��ng sinh ph�p cao c�p, xin t�i bang h�i � h�c"
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	else
		--DispatchAbilityInfo(sceneId, selfId, targetId,x713587_g_ScriptId, ABILITY_YANGSHENGFA, LEVELUP_ABILITY_ASSISTANT[AbilityLevel+1].Money, LEVELUP_ABILITY_ASSISTANT[AbilityLevel+1].HumanExp, LEVELUP_ABILITY_ASSISTANT[AbilityLevel+1].AbilityExpLimitShow,LEVELUP_ABILITY_ASSISTANT[AbilityLevel+1].HumanLevelLimit)
		local tempScriptId = x713587_g_ScriptId;
		local tempAbilityId = ABILITY_YANGSHENGFA;
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
function x713587_OnEnumerate( sceneId, selfId, targetId, bid )
		if bid then
			local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, x713587_g_AbilityID, bid, 6)
			if ret > 0 then AddNumText(sceneId,x713587_g_ScriptId,"Th�ng c�p"..x713587_g_AbilityName.." k� n�ng", 12, 1) end
			return
		end
		--���������c�p����ʾѡ��
		if 1 then
			AddNumText(sceneId,x713587_g_ScriptId,"Th�ng c�p d��ng sinh ph�p", 12, 1)
		end
		return
end

--**********************************
--���Ti�p th�����
--**********************************
function x713587_CheckAccept( sceneId, selfId )
end

--**********************************
--Ti�p th�
--**********************************
function x713587_OnAccept( sceneId, selfId, ABILITY_YANGSHENGFA )
end
