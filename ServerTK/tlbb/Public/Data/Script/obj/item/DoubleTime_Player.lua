-- ˫������ʱ��ҩˮ
-- ����һ��ҩˮ��

--�ű���
x300039_g_scriptId = 300039
x300039_g_ItemId = 30008002
x300039_g_ItemId_1 = 30008027
x300039_g_ItemId_2 = 30505214

x300039_g_BuffPalyer_25 = 60
x300039_g_BuffAll_15 = 62
x300039_g_BuffPet_25 = 61
x300039_g_BuffPet_2 = 53

--**********************************
--�¼��������
--**********************************
function x300039_OnDefaultEvent( sceneId, selfId, nItemIndex)

	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x300039_g_BuffPalyer_25) == 1   then
		BeginEvent(sceneId)
			AddText(sceneId,"Tr�n ng߶i c�c h� �� t�n t�i th�i gian nh�n ��i kinh nghi�m qu� cao!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x300039_g_BuffAll_15) == 1   then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,x300039_g_scriptId);
			UICommand_AddInt(sceneId,nItemIndex)
			UICommand_AddString(sceneId,"EatMe");
			UICommand_AddString(sceneId,"Tr�n ng߶i c�c h� �� t�n t�i th�i gian nh�n ��i kinh nghi�m, mu�n x�c nh�n s� d�ng ch�ng?");
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 24)

		return
	end
	
	x300039_UseItem( sceneId, selfId, nItemIndex)
	
end

function x300039_IsSkillLikeScript( sceneId, selfId)
	return 0
end

--**********************************
--
--**********************************
function x300039_EatMe( sceneId, selfId, nItemIndex)
	x300039_UseItem( sceneId, selfId, nItemIndex)
end

--**********************************
-- 
--**********************************
function x300039_UseItem( sceneId, selfId, nItemIndex)
	-- �ȼ����� nItemIndex ����Ʒ�ǲ��Ǻ͵�ǰ�Ķ�Ӧ��
	local nItemId = GetItemTableIndexByIndex(sceneId, selfId, nItemIndex)
	if nItemId ~= x300039_g_ItemId and nItemId ~= x300039_g_ItemId_1 and nItemId ~= x300039_g_ItemId_2 then
		BeginEvent(sceneId)
			AddText(sceneId,"  Sai s�t trong tay n�i")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	--1��������ǲ��ǵ�ǰ�����ϵ�˫������ʱ���Ƕ��٣�����ﵽ���ޣ��Ͳ���ʹ��
	local nCurHaveTime = DEGetMoneyTime(sceneId, selfId)
	
	if nCurHaveTime >= 99*60*60   then
		BeginEvent(sceneId)
			AddText(sceneId,"  Tr߾c m�t, th�i gian kinh nghi�m g�p ��i m� c�c h� s� d�ng Thi�n linh �an c� ���c �� �n m�c gi�i h�n.")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	--����ʹ�������Ʒ��������
	local ret = EraseItem(sceneId, selfId, nItemIndex)
		
	-- ����ʱ��
	local nCurTime = LuaFnGetCurrentTime()

	if ret == 1    then
		DESetMoneyTime(sceneId, selfId, nCurHaveTime + 3600 )
		
		-- �����ҵ�ǰ��˫������ʱ���Ǳ�����ģ������һ����ʾ
		if 1 == DEIsLock(sceneId, selfId)  then
			DESetLock( sceneId, selfId, 0 )
			BeginEvent(sceneId)
				AddText(sceneId,"Th�i gian nh�n ��i kinh nghi�m m� c�c h� ��ng b�ng �� ���c gi�i ��ng, v� ���c t�ng th�m 1 gi� th�i gian nh�n ��i kinh nghi�m.")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			
		else
			BeginEvent(sceneId)
				AddText(sceneId,"S� d�ng nh�n ��i kinh nghi�m trong 1 gi�.")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			
		end
		
	else
		BeginEvent(sceneId)
			AddText(sceneId,"V�t ph�m kh�ng th� s� d�ng")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
	end
	
	-- ͬ�����ݵ��ͻ���
	SendDoubleExpToClient(sceneId,selfId)
end

