-- ����2.5����ʱ��ҩˮ

--�ű���
x300046_g_scriptId = 300046
x300046_g_ItemId = 30008014
x300046_g_BuffId = 60

x300046_g_BuffPalyer_25 = 60
x300046_g_BuffAll_15 = 62
x300046_g_BuffPet_25 = 61
x300046_g_BuffPet_2 = 53

--**********************************
--�¼��������
--**********************************
function x300046_OnDefaultEvent( sceneId, selfId, nItemIndex )

	-- ������Լ����Ͳ����ٳ�
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x300046_g_BuffPalyer_25) == 1   then
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� �ang s� d�ng d��c li�u nh�n ��i kinh nghi�m, vui l�ng sau khi m�t hi�u qu� h�y s� d�ng ti�p.")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	-- ������������ ˫������ʱ��  ����ʾ���Ҫ��Ҫ��
	local nCurHaveTime = DEGetMoneyTime(sceneId, selfId)
	if nCurHaveTime > 0  and  DEIsLock(sceneId, selfId)~=1  then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,x300046_g_scriptId);
			UICommand_AddInt(sceneId,nItemIndex)
			UICommand_AddString(sceneId,"EatMe");
			UICommand_AddString(sceneId,"Tr�n ng߶i c�c h� �� t�n t�i th�i gian nh�n ��i kinh nghi�m, mu�n x�c nh�n s� d�ng ch�ng?");
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 24)
		return
	end
	
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x300046_g_BuffAll_15) == 1   then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,x300046_g_scriptId);
			UICommand_AddInt(sceneId,nItemIndex)
			UICommand_AddString(sceneId,"EatMe");
			UICommand_AddString(sceneId,"Tr�n ng߶i c�c h� �� t�n t�i th�i gian nh�n ��i kinh nghi�m, mu�n x�c nh�n thay �i ch�ng?");
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 24)
		return
	end
	x300046_UseItem( sceneId, selfId, nItemIndex)
end

function x300046_IsSkillLikeScript( sceneId, selfId)
	return 0
end

--**********************************
--
--**********************************
function x300046_EatMe( sceneId, selfId, nItemIndex)
	x300046_UseItem( sceneId, selfId, nItemIndex)
end

--**********************************
-- 
--**********************************
function x300046_UseItem( sceneId, selfId, nItemIndex)
	-- �ȼ����� nItemIndex ����Ʒ�ǲ��Ǻ͵�ǰ�Ķ�Ӧ��
	if GetItemTableIndexByIndex(sceneId, selfId, nItemIndex) ~= x300046_g_ItemId  then
		BeginEvent(sceneId)
			AddText(sceneId,"  Sai s�t trong tay n�i")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	-- ��һ��ҩ
	local ret = EraseItem(sceneId, selfId, nItemIndex)

	if ret == 1   then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x300046_g_BuffId, 100 )
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� t�ng 2.5 kinh nghi�m nh�n v�t trong 1 gi� ")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
	else
		BeginEvent(sceneId)
			AddText(sceneId,"V�t ph�m kh�ng th� s� d�ng")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
	end
end

