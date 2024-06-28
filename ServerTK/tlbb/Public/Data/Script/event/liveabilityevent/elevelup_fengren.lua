--���� k� n�ngTh�ng c�p 

--�ű���
x713565_g_ScriptId = 713565

--��npc��������to� � ��ߵ�c�p
x713565_g_MaxLevel = 5

---- k� n�ng���
x713565_g_AbilityID = ABILITY_FENGREN

-- k� n�ng����
x713565_g_AbilityName = " May m�c "

x713565_g_Name1 = "M�c Uy�n Thanh"

--**********************************
--������ں���
--**********************************
function x713565_OnDefaultEvent( sceneId, selfId, targetId, nNum, npcScriptId, bid )
	--��� k� n�ngto� � ��c�p
	AbilityLevel = QueryHumanAbilityLevel(sceneId, selfId, x713565_g_AbilityID)
	--��Ҽӹ� k� n�ngto� � ������
	ExpPoint = GetAbilityExp(sceneId, selfId, x713565_g_AbilityID)
	--�����ж�

	--�����û��ѧ������� k� n�ng
	if AbilityLevel < 1	then
		BeginEvent(sceneId)
			strText = "Ng߽i v�n ch�a th� h�c "..x713565_g_AbilityName.." k� n�ng!"
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
		local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, x713565_g_AbilityID, bid, 2)
		if ret > 0 then
			CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityAction",sceneId, selfId, targetId, x713565_g_AbilityID, bid, 2)
		end
		return
	end
	
	local MaxLevel = x713565_g_MaxLevel;
	if GetName(sceneId, targetId) == x713565_g_Name1   then
		MaxLevel = 10;
	end
	
	--������� k� n�ng��c�p�Ѿ�������npc���ܽ�to� � ��Χ
	if AbilityLevel >= MaxLevel then
		BeginEvent(sceneId)
			if GetName(sceneId, targetId) == x713565_g_Name1   then
				strText = "Ta ch� c� th� d�y ng߽i t� c�p 1-10"..x713565_g_AbilityName.." k� n�ng"
			else
			strText = "Ta ch� c� th� d�y ng߽i t� c�p 1-5"..x713565_g_AbilityName.." k� n�ng, xin t�i bang h�i � h�c cao h�n! #YM�c Uy�n Thanh #G(��i L�#{_INFOAIM107,135,2,M�c Uy�n Thanh}) #Wt�m hi�u th�m"..x713565_g_AbilityName..""
			end
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	else
		--DispatchAbilityInfo(sceneId, selfId, targetId,x713565_g_ScriptId, x713565_g_AbilityID, LEVELUP_ABILITY_FENGREN[AbilityLevel+1].Money, LEVELUP_ABILITY_FENGREN[AbilityLevel+1].HumanExp, LEVELUP_ABILITY_FENGREN[AbilityLevel+1].AbilityExpLimitShow,LEVELUP_ABILITY_FENGREN[AbilityLevel+1].HumanLevelLimit)
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel, extraMoney, extraExp = LuaFnGetAbilityLevelUpConfig2(ABILITY_FENGREN, AbilityLevel + 1);
		
		if GetName(sceneId, targetId) == x713565_g_Name1   then
			demandMoney = extraMoney;
			demandExp		=	extraExp;
		end
		
		if ret and ret == 1 then
			DispatchAbilityInfo(sceneId, selfId, targetId,x713565_g_ScriptId, x713565_g_AbilityID, demandMoney, demandExp, limitAbilityExpShow, limitLevel);
		end
	end
end

--**********************************
--�о��¼�
--**********************************
function x713565_OnEnumerate( sceneId, selfId, targetId, bid )
		if bid then
			local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, x713565_g_AbilityID, bid, 6)
			if ret > 0 then AddNumText(sceneId,x713565_g_ScriptId,"Th�ng c�p "..x713565_g_AbilityName.." k� n�ng", 12, 1) end
			return
		end
		--���������c�p����ʾѡ��
		--if GetLevel(sceneId,selfId) >= LEVELUP_ABILITY_FENGREN[1].HumanLevelLimit then
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel, extraMoney, extraExp = LuaFnGetAbilityLevelUpConfig2(ABILITY_FENGREN, 1);
		if ret and ret == 1 and 1 then
			AddNumText(sceneId,x713565_g_ScriptId,"Th�ng c�p "..x713565_g_AbilityName.." k� n�ng", 12, 1)
		end
		return
end

--**********************************
--���Ti�p th�����
--**********************************
function x713565_CheckAccept( sceneId, selfId )
end

--**********************************
--Ti�p th�
--**********************************
function x713565_OnAccept( sceneId, selfId, x713565_g_AbilityID )
end
