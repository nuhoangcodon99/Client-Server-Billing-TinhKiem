-- ����˫������ʱ��ҩˮ
-- ����һ��ҩˮ��Ϊ�����ṩһ��Сʱ˫������ʱ��

--�ű���
x300040_g_scriptId = 300040
x300040_g_ItemId = 30008003
x300040_g_ItemId_1 = 30008028

x300040_g_BuffId = 53

x300040_g_BuffPalyer_25 = 60
x300040_g_BuffAll_15 = 62
x300040_g_BuffPet_25 = 61
x300040_g_BuffPet_2 = 53

--**********************************
--�¼��������
--**********************************
function x300040_OnDefaultEvent( sceneId, selfId, nItemIndex )

	-- ���������2.5�ģ��Ͳ��ó�
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x300040_g_BuffPet_25) == 1   then
		BeginEvent(sceneId)
			AddText(sceneId,"Tr�n ng߶i c�c h� �� t�n t�i th�i gian nh�n ��i kinh nghi�m qu� cao!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	-- ����ͬ�ģ�Ҳ�����ٳ�
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x300040_g_BuffPet_2) == 1   then
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� �ang s� d�ng d��c li�u nh�n ��i kinh nghi�m, vui l�ng sau khi m�t hi�u qu� h�y s� d�ng ti�p.")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	x300040_UseItem( sceneId, selfId, nItemIndex)
end

function x300040_IsSkillLikeScript( sceneId, selfId)
	return 0
end

--**********************************
--
--**********************************
function x300040_EatMe( sceneId, selfId, nItemIndex)
	x300040_UseItem( sceneId, selfId, nItemIndex)
end

--**********************************
-- 
--**********************************
function x300040_UseItem( sceneId, selfId, nItemIndex)
	
	-- �ȼ����� nItemIndex ����Ʒ�ǲ��Ǻ͵�ǰ�Ķ�Ӧ��
	local nItemId = GetItemTableIndexByIndex(sceneId, selfId, nItemIndex)
	if nItemId ~= x300040_g_ItemId and nItemId ~= x300040_g_ItemId_1   then
		BeginEvent(sceneId)
			AddText(sceneId,"  Sai s�t trong tay n�i")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	-- ��һ��ҩ
	local ret = EraseItem(sceneId, selfId, nItemIndex)

	if ret == 1   then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x300040_g_BuffId, 100 )
		BeginEvent(sceneId)
			AddText(sceneId,"S� d�ng nh�n ��i kinh nghi�m cho th� nu�i trong 1 gi�.")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
	else
		BeginEvent(sceneId)
			AddText(sceneId,"V�t ph�m kh�ng th� s� d�ng")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
	end
end

