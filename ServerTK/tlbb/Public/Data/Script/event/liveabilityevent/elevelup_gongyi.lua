--���� k� n�ngTh�ng c�p 

--�ű���
x713566_g_ScriptId = 713566

--��npc��������to� � ��ߵ�c�p
x713566_g_MaxLevel = 5

---- k� n�ng���
x713566_g_AbilityID = ABILITY_GONGYI

-- k� n�ng����
x713566_g_AbilityName = "C�ng ngh�"

x713566_g_Name1 = "Nguy�n Tinh Tr�c"
--**********************************
--������ں���
--**********************************
function x713566_OnDefaultEvent( sceneId, selfId, targetId, nNum, npcScriptId, bid )
	--��� k� n�ngto� � ��c�p
	AbilityLevel = QueryHumanAbilityLevel(sceneId, selfId, x713566_g_AbilityID)
	--��Ҽӹ� k� n�ngto� � ������
	ExpPoint = GetAbilityExp(sceneId, selfId, x713566_g_AbilityID)
	--�����ж�

	--�����û��ѧ������� k� n�ng
	if AbilityLevel < 1	then
		BeginEvent(sceneId)
			strText = "Ng߽i v�n ch�a th� h�c "..x713566_g_AbilityName.." k� n�ng!"
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
		local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, x713566_g_AbilityID, bid, 2)
		if ret > 0 then
			CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityAction",sceneId, selfId, targetId, x713566_g_AbilityID, bid, 2)
		end
		return
	end
	
	local MaxLevel = x713566_g_MaxLevel;
	if GetName(sceneId, targetId) == x713566_g_Name1   then
		MaxLevel = 10;
	end
	
	--������� k� n�ng��c�p�Ѿ�������npc���ܽ�to� � ��Χ
	if AbilityLevel >= MaxLevel then
		BeginEvent(sceneId)
			if GetName(sceneId, targetId) == x713566_g_Name1   then
				strText = "Ta c� th� d�y ng߽i t� c�p 1-10 "..x713566_g_AbilityName.." k� n�ng."
			else
			strText = "Ta ch� c� th� d�y ng߽i t� c�p 1-5 "..x713566_g_AbilityName.." k� n�ng, xin t�i bang h�i � h�c cao h�n!"..x713566_g_AbilityName.."."
			end
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	else
		--DispatchAbilityInfo(sceneId, selfId, targetId,x713566_g_ScriptId, x713566_g_AbilityID, LEVELUP_ABILITY_GONGYI[AbilityLevel+1].Money, LEVELUP_ABILITY_GONGYI[AbilityLevel+1].HumanExp, LEVELUP_ABILITY_GONGYI[AbilityLevel+1].AbilityExpLimitShow,LEVELUP_ABILITY_GONGYI[AbilityLevel+1].HumanLevelLimit)
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel, extraMoney, extraExp = LuaFnGetAbilityLevelUpConfig2(ABILITY_GONGYI, AbilityLevel + 1);
		
		if GetName(sceneId, targetId) == x713566_g_Name1   then
			demandMoney = extraMoney;
			demandExp		=	extraExp;
		end
		
		if ret and ret == 1 then
			DispatchAbilityInfo(sceneId, selfId, targetId,x713566_g_ScriptId, x713566_g_AbilityID, demandMoney, demandExp, limitAbilityExpShow, limitLevel);
		end
	end
end

--**********************************
--�о��¼�
--**********************************
function x713566_OnEnumerate( sceneId, selfId, targetId, bid )
		if bid then
			local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, x713566_g_AbilityID, bid, 6)
			if ret > 0 then AddNumText(sceneId,x713566_g_ScriptId,"Th�ng c�p "..x713566_g_AbilityName.." k� n�ng", 12, 1) end
			return
		end
		--���������c�p����ʾѡ��
		--if GetLevel(sceneId,selfId) >= LEVELUP_ABILITY_GONGYI[1].HumanLevelLimit then
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel, extraMoney, extraExp = LuaFnGetAbilityLevelUpConfig2(ABILITY_GONGYI, 1);
		if ret and ret == 1 and 1 then
			AddNumText(sceneId,x713566_g_ScriptId,"Th�ng c�p "..x713566_g_AbilityName.." k� n�ng", 12, 1)
		end
		return
end

--**********************************
--���Ti�p th�����
--**********************************
function x713566_CheckAccept( sceneId, selfId )
end

--**********************************
--Ti�p th�
--**********************************
function x713566_OnAccept( sceneId, selfId, x713566_g_AbilityID )
end
