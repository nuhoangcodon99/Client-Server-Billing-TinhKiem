--�����
--��Ѫ

--2006-9-18 17:05 (����ļ����ڵ�������Ϊ�˼��ݡ�����չ�������������жϣ�����ecity_lifeskillstudy.lua��ʵ��)
x713622_g_ScriptId 		= 713622
x713622_g_AbilityName	= "Ho�t huy�t"
x713622_g_AbilityID		= ABILITY_HUOXUE

-- �������������ѡ��
function x713622_OnDefaultEvent( sceneId, selfId, targetId, nNum, npcScriptId, bid )
	if bid then
		if 0 == nNum then	--ѧϰ
			if CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "CheckCityStatus",sceneId, selfId,targetId) < 0 then
				return
			end
			BeginEvent(sceneId)
			local lv,money,con
			lv,money,con = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityAction",sceneId, selfId, targetId, x713622_g_AbilityID, bid, 4)
			local studyMsg = format("N�u c�c h� ��t t�i c�p %d, ph�i ti�u t�n #{_MONEY%d} v� %d �i�m bang h�i m�i c� th� h�c k� n�ng huy�t h�c. C�c h� c� quy�t �nh h�c kh�ng?", lv, money, con)
			AddText(sceneId,studyMsg)
			--ȷ��ѧϰ��ť
					AddNumText(sceneId,x713622_g_ScriptId,"T�i h� x�c �nh mu�n h�c", 6, 3)
			--ȡ��ѧϰ��ť
					AddNumText(sceneId,x713622_g_ScriptId,"T�i h� ch� mu�n coi", 8, 4)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		elseif 1 == nNum then	--����
			if CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "CheckCityStatus",sceneId, selfId,targetId) < 0 then
				return
			end
			local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, x713622_g_AbilityID, bid, 2)
			if ret > 0 then
				CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityAction",sceneId, selfId, targetId, x713622_g_AbilityID, bid, 2)
			end
		elseif 2 == nNum then	--�˽�
			local dialog = "#{event_liveabilityevent_0031}"
			BeginEvent(sceneId)
				AddText(sceneId, dialog)
			EndEvent(sceneId)
			DispatchEventList(sceneId, selfId, targetId)
		elseif 3 == nNum then	--ȷ��ѧϰ
			local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, x713622_g_AbilityID, bid, 1)
			if ret > 0 then
				CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityAction",sceneId, selfId, targetId, x713622_g_AbilityID, bid, 1)
			end
		elseif 4 <= nNum then	--ֻ������
			CallScriptFunction( npcScriptId, "OnDefaultEvent",sceneId, selfId, targetId )
		end
	else
		-- Ŀǰ��Ѫ���ܱ����ڳ��������ѧϰ���������˽�
	end
end

-- �о�ѡ��
-- nNum == 1 ѧϰ
-- nNum == 2 ����
-- nNum == 3 �˽�
function x713622_OnEnumerate( sceneId, selfId, targetId, bid, nNum)
	if bid then
		if 1 == nNum then
			local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, x713622_g_AbilityID, bid, 5)
			if ret > 0 then AddNumText(sceneId,x713622_g_ScriptId,"H�c "..x713622_g_AbilityName.." k� n�ng", 12, 0) end
			return
		elseif 2 == nNum then
			local ret = CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnCityCheck",sceneId, selfId, x713622_g_AbilityID, bid, 6)
			if ret > 0 then AddNumText(sceneId,x713622_g_ScriptId,"Th�ng c�p "..x713622_g_AbilityName.." k� n�ng", 12, 1) end
			return
		elseif 3 == nNum then
			AddNumText(sceneId,x713622_g_ScriptId,"T�i h� mu�n t�m hi�u huy�t h�c",11,2)
			AddNumText(sceneId,x713622_g_ScriptId,"Quay l�i",8,5)
		end
	else
		-- Ŀǰ��Ѫ���ܱ����ڳ��������ѧϰ���������˽�
	end
end
