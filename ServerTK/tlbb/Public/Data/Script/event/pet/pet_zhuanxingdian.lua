-- ת�Ե�

-- �ű���
x800108_g_ScriptId = 800108;

x800108_zhuanXingdian_ItemDataID = 30502003;	--ת�Ե�

--**********************************
-- ������ں���
--**********************************
function x800108_OnDefaultEvent(sceneId, selfId, targetId)
	--����ϴ��
	BeginUICommand(sceneId);
		UICommand_AddInt(sceneId, targetId);
	EndUICommand(sceneId);
	DispatchUICommand(sceneId, selfId, 800108);
end

--**********************************
-- �о��¼�
--**********************************
function x800108_OnEnumerate(sceneId, selfId, targetId)
	AddNumText(sceneId, x800108_g_ScriptId, "Thay �i t�nh c�ch tr�n th�" , 6, -1);
end

--**********************************
-- ת�Ե�����
-- 0 - ��С
-- 1 - ����	
-- 2 - �ҳ�
-- 3 - ����
-- 4 - ����
--**********************************
function x800108_ZhuanXingdian(sceneId, selfId, petGUID_H, petGUID_L)

	if not sceneId or not selfId or not petGUID_H or not petGUID_L then
		x800108_ShowTips(sceneId, selfId, "Thao t�c sai.");
		return 0;
	end
	
	local zhuanXingdianItemName = GetItemName(sceneId, x800108_zhuanXingdian_ItemDataID);
	if not zhuanXingdianItemName then
		x800108_ShowTips(sceneId, selfId, "Ch�a m� v�t ph�m");
		return 0;
	end

	local curAIType = LuaFnGetPetAITypeByGUID(sceneId, selfId, petGUID_H, petGUID_L);
	if not curAIType or curAIType == -1 then
		x800108_ShowTips(sceneId, selfId, "Tr�n th� m� c�c h� ch� �nh kh�ng t�n t�i.");
		return 0;
	end

	local petAvailableFlag = LuaFnIsPetAvailableByGUID(sceneId, selfId, petGUID_H, petGUID_L);
	if not petAvailableFlag or petAvailableFlag ~= 1 then
		x800108_ShowTips(sceneId, selfId, "Kh�ng th� ti�n h�nh thao t�c v�i tr�n th� b� kh�a");
		return 0;
	end
	
	local availableItemCount = LuaFnGetAvailableItemCount(sceneId, selfId, x800108_zhuanXingdian_ItemDataID);
	if not availableItemCount or availableItemCount < 1 then
		x800108_ShowTips(sceneId, selfId, "C�n "..zhuanXingdianItemName..".");
		return 0;
	end
	
	local delRet = LuaFnDelAvailableItem(sceneId, selfId, x800108_zhuanXingdian_ItemDataID, 1);
	if not delRet or delRet ~= 1 then
		x800108_ShowTips(sceneId, selfId, "Kh�u tr�"..zhuanXingdianItemName.."Th�t b�i.");
		return 0;
	end

	--AI���ͱظı䣬����ÿ�ֻ�����һ����
	local toAIType = random(4) - 1;
	if toAIType >= curAIType then
		toAIType = toAIType + 1;
	end

	local ret = LuaFnSetPetAITypeByGUID(sceneId, selfId, petGUID_H, petGUID_L, toAIType);
	if not ret or ret ~= 1 then
		x800108_ShowTips(sceneId, selfId, "Tr�n th� m� c�c h� ch� �nh kh�ng t�n t�i.");
		return 0;
	end

	x800108_ShowTips(sceneId, selfId, "T�nh c�ch tr�n th� c�a c�c h� �� bi�n �i th�nh c�ng.");
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0);
	return 1;
end

--**********************************
-- ��ʾ��Ϣ
--**********************************
function x800108_ShowTips(sceneId, selfId, tipMsg)
	BeginEvent(sceneId);
		AddText(sceneId, tipMsg);
	EndEvent(sceneId);
	DispatchMissionTips(sceneId, selfId);
end
