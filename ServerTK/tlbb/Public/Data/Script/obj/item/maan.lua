--300044
-- V:\�߻��ĵ�\�߻��ĵ�Ŀ¼�ṹ\2 ����ĵ�\2.1 ��Ϸ��λ���\�ر���Ʒ\�������Ʒ������.docx
-- 
-- 

--�ű���
x300044_g_scriptId = 300044
x300044_g_ItemId = 30008006
x300044_g_ItemId01 = 30505215
x300044_g_BuffId = 56

--**********************************
--�¼��������
--**********************************
function x300044_OnDefaultEvent( sceneId, selfId, nBagIndex )
	--1�������������ǲ�����BUFF
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x300044_g_BuffId) == 1   then
		BeginEvent(sceneId)
			AddText(sceneId,"Ch� c� th� ��i sau khi hi�u qu� mau ch�ng m�t, m�i c� th� s� d�ng. ")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return 
		
	end
	
	local nCurCount = GetBagItemParam(sceneId, selfId, nBagIndex, 4, 2)
	SetBagItemParam(sceneId, selfId, nBagIndex, 8, 2, 5)
	-- ��ȫ���
	if LuaFnGetItemTableIndexByIndex(sceneId, selfId, nBagIndex) ~= x300044_g_ItemId
		 and LuaFnGetItemTableIndexByIndex(sceneId, selfId, nBagIndex) ~= x300044_g_ItemId01 then
		BeginEvent(sceneId)
			AddText(sceneId,"V�t ph�m kh�ng th� s� d�ng")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	local ret = 1
	if nCurCount >= 4  then
		-- �ж��������Ʒ��ID�ǲ�����ȷ��
		ret = EraseItem(sceneId, selfId, nBagIndex)
	else
		SetBagItemParam(sceneId, selfId, nBagIndex, 4, 2, nCurCount+1)
	end

	if ret == 1   then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x300044_g_BuffId, 100 )
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� nh�n ���c hi�u qu� gia t�c c�a y�n ng�a.")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
	else
		BeginEvent(sceneId)
			AddText(sceneId,"V�t ph�m kh�ng th� s� d�ng.")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
	end
	
	LuaFnRefreshItemInfo(sceneId, selfId, nBagIndex)
	
end

function x300044_IsSkillLikeScript( sceneId, selfId)
	return 0
end
