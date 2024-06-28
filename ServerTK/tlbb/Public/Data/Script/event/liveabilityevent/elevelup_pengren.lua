--��⿼�����c�p

--�ű���
x713561_g_ScriptId = 713561

--��npc��������to� � ��ߵ�c�p
x713561_g_MaxLevel = 5

----���ܱ��
x713561_g_AbilityID = ABILITY_PENGREN

--��������
x713561_g_AbilityName = "N�u n߾ng"

--**********************************
--������ں���
--**********************************
function x713561_OnDefaultEvent( sceneId, selfId, targetId, nNum, npcScriptId, bid )
	--��Ҽ���to� � ��c�p
	AbilityLevel = QueryHumanAbilityLevel(sceneId, selfId, x713561_g_AbilityID)
	--��Ҽӹ�����to� � ������
	ExpPoint = GetAbilityExp(sceneId, selfId, x713561_g_AbilityID)
	--�����ж�
	--�����ngT�i Th�nh ph� ����c�p
	if bid then
		local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, x713561_g_AbilityID, bid, 2)
		if ret > 0 then
			CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityAction",sceneId, selfId, targetId, x713561_g_AbilityID, bid, 2)
		end
		return
	end
	--�����û��ѧ��������
	if AbilityLevel < 1	then
		BeginEvent(sceneId)
			strText = "Ng߽i v�n ch�a th� h�c"..x713561_g_AbilityName.." k� n�ng!"
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--�������ܵ�c�p�Ѿ�������npc���ܽ�to� � ��Χ
	if AbilityLevel >= x713561_g_MaxLevel then
		BeginEvent(sceneId)
			strText = "Ta ch� c� th� d�y ng߽i t� c�p 1-5"..x713561_g_AbilityName.." k� n�ng, xin t�i bang h�i � h�c cao h�n!"..x713561_g_AbilityName.."."
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	else
		--old
		--DispatchAbilityInfo(sceneId, selfId, targetId,x713561_g_ScriptId, x713561_g_AbilityID, LEVELUP_ABILITY_PENGREN[AbilityLevel+1].Money, LEVELUP_ABILITY_PENGREN[AbilityLevel+1].HumanExp, LEVELUP_ABILITY_PENGREN[AbilityLevel+1].AbilityExpLimitShow,LEVELUP_ABILITY_PENGREN[AbilityLevel+1].HumanLevelLimit)
		--new
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(ABILITY_PENGREN, AbilityLevel + 1);
		if ret and ret == 1 then
			DispatchAbilityInfo(sceneId, selfId, targetId,x713561_g_ScriptId, x713561_g_AbilityID, demandMoney, demandExp, limitAbilityExpShow, limitLevel);
		end
	end
end

--**********************************
--�о��¼�
--**********************************
function x713561_OnEnumerate( sceneId, selfId, targetId, bid )
		if bid then
			local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, x713561_g_AbilityID, bid, 6)
			if ret > 0 then AddNumText(sceneId,x713561_g_ScriptId,"Th�ng c�p"..x713561_g_AbilityName.." k� n�ng", 12, 1) end
			return
		end
		--���������c�p����ʾѡ��
		--old
		--if GetLevel(sceneId,selfId) >= LEVELUP_ABILITY_PENGREN[1].HumanLevelLimit then
		--new
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(ABILITY_PENGREN, 1);
		if ret and ret == 1 and 1 then
			AddNumText(sceneId,x713561_g_ScriptId,"Th�ng c�p"..x713561_g_AbilityName.." k� n�ng", 12, 1)
		end
		return
end

--**********************************
--���Ti�p th�����
--**********************************
function x713561_CheckAccept( sceneId, selfId )
end

--**********************************
--Ti�p th�
--**********************************
function x713561_OnAccept( sceneId, selfId, x713561_g_AbilityID )
end
