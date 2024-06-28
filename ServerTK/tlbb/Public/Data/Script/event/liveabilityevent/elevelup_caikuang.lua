--Khai kho�ng k� n�ngTh�ng c�p 

--�ű���
x713567_g_ScriptId = 713567

--��npc��������to� � ��ߵ�c�p
x713567_g_MaxLevel = 5

---- k� n�ng���
x713567_g_AbilityID = ABILITY_CAIKUANG

-- k� n�ng����
x713567_g_AbilityName = "Khai kho�ng"

--**********************************
--������ں���
--**********************************
function x713567_OnDefaultEvent( sceneId, selfId, targetId, nNum, npcScriptId, bid )
	--��� k� n�ngto� � ��c�p
	AbilityLevel = QueryHumanAbilityLevel(sceneId, selfId, x713567_g_AbilityID)
	--��Ҽӹ� k� n�ngto� � ������
	ExpPoint = GetAbilityExp(sceneId, selfId, x713567_g_AbilityID)
	--�����ж�

	--�����û��ѧ������� k� n�ng
	if AbilityLevel < 1	then
		BeginEvent(sceneId)
			strText = "Ng߽i v�n ch�a th� h�c "..x713567_g_AbilityName.." k� n�ng!"
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	--�����ngT�i Th�nh ph� ��Th�ng c�p 
	if bid then
		--���Th�nh ph� ��ng���ڵ�ά��״̬
		if CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "CheckCityStatus",sceneId, selfId,targetId) < 0 then
			return
		end
		local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, x713567_g_AbilityID, bid, 2)
		if ret > 0 then
			CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityAction",sceneId, selfId, targetId, x713567_g_AbilityID, bid, 2)
		end
		return
	end
	--������� k� n�ng��c�p�Ѿ�������npc���ܽ�to� � ��Χ
	if AbilityLevel >= x713567_g_MaxLevel then
		BeginEvent(sceneId)
			strText = "Ta ch� c� th� d�y ng߽i t� c�p 1-5 "..x713567_g_AbilityName.." k� n�ng, xin t�i bang h�i � h�c cao h�n!"..x713567_g_AbilityName.."."
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	else
		--DispatchAbilityInfo(sceneId, selfId, targetId,x713567_g_ScriptId, x713567_g_AbilityID, LEVELUP_ABILITY_CAIKUANG[AbilityLevel+1].Money, LEVELUP_ABILITY_CAIKUANG[AbilityLevel+1].HumanExp, LEVELUP_ABILITY_CAIKUANG[AbilityLevel+1].AbilityExpLimitShow,LEVELUP_ABILITY_CAIKUANG[AbilityLevel+1].HumanLevelLimit)
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(ABILITY_CAIKUANG, AbilityLevel + 1);
		if ret and ret == 1 then
			DispatchAbilityInfo(sceneId, selfId, targetId,x713567_g_ScriptId, x713567_g_AbilityID, demandMoney, demandExp, limitAbilityExpShow, limitLevel);
		end
	end
end

--**********************************
--�о��¼�
--**********************************
function x713567_OnEnumerate( sceneId, selfId, targetId, bid )
		if bid then
			local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, x713567_g_AbilityID, bid, 6)
			if ret > 0 then AddNumText(sceneId,x713567_g_ScriptId,"Th�ng c�p "..x713567_g_AbilityName.." k� n�ng", 12, 1) end
			return
		end
		--���������c�p����ʾѡ��
		--if GetLevel(sceneId,selfId) >= LEVELUP_ABILITY_CAIKUANG[1].HumanLevelLimit then
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(ABILITY_CAIKUANG, 1);
		if ret and ret == 1 and 1 then
			AddNumText(sceneId,x713567_g_ScriptId,"Th�ng c�p "..x713567_g_AbilityName.." k� n�ng", 12, 1)
		end
		return
end

--**********************************
--���Ti�p th�����
--**********************************
function x713567_CheckAccept( sceneId, selfId )
end

--**********************************
--Ti�p th�
--**********************************
function x713567_OnAccept( sceneId, selfId, x713567_g_AbilityID )
end
