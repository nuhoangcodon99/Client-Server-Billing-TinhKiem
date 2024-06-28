-- ����ϴ��

-- �ű���
x800107_g_ScriptId = 800107;

x800107_g_resetptItemDataID = 30503021;	--���޵�

--**********************************
-- ������ں���
--**********************************
function x800107_OnDefaultEvent(sceneId, selfId, targetId)
	--����ϴ��
	BeginUICommand(sceneId);
		UICommand_AddInt(sceneId, targetId);
	EndUICommand(sceneId);
	DispatchUICommand(sceneId, selfId, 800107);
end

--**********************************
-- �о��¼�
--**********************************
function x800107_OnEnumerate(sceneId, selfId, targetId)
	AddNumText(sceneId, x800107_g_ScriptId, "T�y �i�m tr�n th�" , 6, -1);
end

--**********************************
-- ����ϴ��
--**********************************
function x800107_ResetPetAttrPt(sceneId, selfId, petGUID_H, petGUID_L, itemPos)
	if not sceneId or not selfId or not petGUID_H or not petGUID_L or not itemPos then
		return 0;
	end
	
	local checkPet = LuaFnIsPetAvailableByGUID(sceneId, selfId, petGUID_H, petGUID_L);
	if not checkPet or checkPet ~= 1 then
		x800107_ShowTips(sceneId, selfId, "Kh�ng th� ti�n h�nh thao t�c v�i tr�n th� xu�t chi�n v� tr�n th� kh�a �nh.");
		return 0;
	end

	local checkRet = LuaFnCheckResetPetAttrPt(sceneId, selfId, petGUID_H, petGUID_L);
	if not checkRet or checkRet ~= 1 then
		return 0;
	end

	--�� ������������С����޵���	��Ҫ�����޵���
	local itemDataID = GetItemTableIndexByIndex(sceneId, selfId, itemPos);
	if not itemDataID or itemDataID ~= x800107_g_resetptItemDataID then
		x800107_ShowTips(sceneId, selfId, "C�n Luy�n Th� �an");
		return 0;
	end
	
	local itemAvailable = LuaFnIsItemAvailable(sceneId, selfId, itemPos);
	if not itemAvailable or itemAvailable ~= 1 then
		x800107_ShowTips(sceneId, selfId, "Kh�ng th� thao t�c v�i Luy�n Th� �an b� kh�a �nh");
		return 0;
	end
	
	local eraseRet = LuaFnEraseItem(sceneId, selfId, itemPos);
	if not eraseRet or eraseRet ~= 1 then
		x800107_ShowTips(sceneId, selfId, "Thao t�c Luy�n Th� �an th�t b�i.");
		return 0;
	end

	local ret = LuaFnResetPetAttrPt(sceneId, selfId, petGUID_H, petGUID_L);
	if not ret or ret ~= 1 then
		return 0;
	end
	x800107_ShowTips(sceneId, selfId, "T�y �i�m tr�n th� th�nh c�ng!");
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0);
	return 1;
end

--**********************************
-- ��ʾ��Ϣ
--**********************************
function x800107_ShowTips(sceneId, selfId, tipMsg)
	BeginEvent(sceneId);
		AddText(sceneId, tipMsg);
	EndEvent(sceneId);
	DispatchMissionTips(sceneId, selfId);
end
