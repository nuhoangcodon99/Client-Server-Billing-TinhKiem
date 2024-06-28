--petmanger.lua
------------------------------------------------------------------------------------------
--һ����Ʒ��Ĭ�Ͻű�
--����
--�ű���
x335805_g_ScriptId	= 335805

--Ч����ID
x335805_g_Impact		= -1	--ʹ��һ���ض�����Ч���

--Ӧ�õ�Ԫ
x335805_g_UseMax		= 4
x335805_g_UseUnit		=
{
	[30509500]				= 1,	--����1��
	[30509501]				= 2,	--����2��
	[30509502]				= 3,	--����3��
	[30509503]				= 4,	--����4��
}

--**********************************
--�¼��������
--**********************************
function x335805_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ����Ҫ����ӿڣ���Ҫ�����պ���
end

--**********************************
--�����Ʒ��ʹ�ù����Ƿ������ڼ��ܣ�
--ϵͳ����ִ�п�ʼʱ�����������ķ���ֵ���������ʧ������Ժ�������Ƽ��ܵ�ִ�С�
--����1���������Ƶ���Ʒ�����Լ������Ƽ��ܵ�ִ�У�����0�����Ժ���Ĳ�����
--**********************************
function x335805_IsSkillLikeScript( sceneId, selfId )
	return 1	 --����ű���Ҫ����֧��
end

--**********************************
--ֱ��ȡ��Ч����
--ϵͳ��ֱ�ӵ�������ӿڣ���������������ķ���ֵȷ���Ժ�������Ƿ�ִ�С�
--����1���Ѿ�ȡ����ӦЧ��������ִ�к�������������0��û�м�⵽���Ч��������ִ�С�
--**********************************
function x335805_CancelImpacts( sceneId, selfId )
	return 0	 --����Ҫ����ӿڣ���Ҫ�����պ���,����ʼ�շ���0��
end

--**********************************
--���������ڣ�
--ϵͳ���ڼ��ܼ���ʱ����������ӿڣ���������������ķ���ֵȷ���Ժ�������Ƿ�ִ�С�
--����1���������ͨ�������Լ���ִ�У�����0���������ʧ�ܣ��жϺ���ִ�С�
--**********************************
function x335805_OnConditionCheck( sceneId, selfId )
	--�����е�λ��
	local	bagId			= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	local	numExtra	= x335805_g_UseUnit[ GetItemTableIndexByIndex( sceneId, selfId, bagId ) ]
	if numExtra == nil then
		return 0
	end

	--�����Ʒ�Ƿ����
	if LuaFnLockCheck( sceneId, selfId, bagId, 0 ) < 0 then
		x335805_MsgBox( sceneId, selfId, "V�t ph�m �� b� kho�" )
		return 0
	end

	--У��ʹ�õ���Ʒ
	if( 1 ~= LuaFnVerifyUsedItem( sceneId, selfId ) ) then
		return 0
	end

	--�ж��������ʹ�����������
	if GetPetNumExtra( sceneId, selfId ) >= x335805_g_UseMax then
		x335805_MsgBox( sceneId, selfId, "�� ��t s� l��ng t�i �a tr�n th� c� th� mang theo, kh�ng th� t�ng th�m kh�ng gian" )
		return 0
	end
	
	--modify by xindefeng
	--modify by dun.liu 2008-04-11
	local curShouLanLevel = GetPetNumExtra( sceneId, selfId )
	if curShouLanLevel ~= (numExtra - 1) then
		local szMsg = format("Ь s� d�ng ���c Th� Lan c�p %d , c�c h� c�n s� d�ng Th� Lan c�p %d tr߾c ti�n", curShouLanLevel, curShouLanLevel+1)
		x335805_MsgBox( sceneId, selfId, szMsg)
		return 0
	end
	
	return 1
end

--**********************************
--���ļ�⼰������ڣ�
--ϵͳ���ڼ������ĵ�ʱ����������ӿڣ���������������ķ���ֵȷ���Ժ�������Ƿ�ִ�С�
--����1�����Ĵ���ͨ�������Լ���ִ�У�����0�����ļ��ʧ�ܣ��жϺ���ִ�С�
--ע�⣺�ⲻ�⸺�����ĵļ��Ҳ�������ĵ�ִ�С�
--**********************************
function x335805_OnDeplete( sceneId, selfId )
--if( 0 < LuaFnDepletingUsedItem( sceneId, selfId ) ) then
--	return 1
--end
--return 0

	return 1
end

--**********************************
--ֻ��ִ��һ����ڣ�
--������˲�����ܻ���������ɺ��������ӿڣ������������Ҹ��������������ʱ�򣩣�������
--����Ҳ����������ɺ��������ӿڣ����ܵ�һ��ʼ�����ĳɹ�ִ��֮�󣩡�
--����1�������ɹ�������0������ʧ�ܡ�
--ע�������Ǽ�����Чһ�ε����
--**********************************
function x335805_OnActivateOnce( sceneId, selfId )
	if( -1 ~= x335805_g_Impact ) then
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x335805_g_Impact, 0 )
	end

	local	nBagIndex	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	local	numExtra	= x335805_g_UseUnit[ GetItemTableIndexByIndex( sceneId, selfId, nBagIndex ) ]
	local	szTran		= GetBagItemTransfer( sceneId, selfId, nBagIndex )
	if numExtra ~= nil and EraseItem( sceneId, selfId, nBagIndex ) == 1 then
		if SetPetNumExtra( sceneId, selfId, numExtra ) == 1 then
			if numExtra == 1 then	--modify by xindefeng
				x335805_MsgBox( sceneId, selfId, "Kh�ng gian s� l��ng tr�n th� mang theo : "..GetPetNumMax(sceneId, selfId)..", n�u mu�n t�ng th�m n�a, c�c h� h�y d�ng Th� Lan c�p cao h�n." )	--modify by xindefeng
				strMsg = format("#W#{_INFOUSR%s}#H s� d�ng #W#{_INFOMSG%s}#H sau �� #H t�ng th�m s� l��ng tr�n th� mang theo#H. S� l��ng t�ng �n #W%d#H.", LuaFnGetName(sceneId, selfId), szTran, GetPetNumMax(sceneId, selfId))
			elseif numExtra == 2 then
				x335805_MsgBox( sceneId, selfId, "Kh�ng gian s� l��ng tr�n th� mang theo : "..GetPetNumMax(sceneId, selfId)..", n�u mu�n t�ng th�m n�a, c�c h� h�y d�ng Th� Lan c�p cao h�n." )	--modify by xindefeng
				strMsg = format("#W#{_INFOUSR%s}#H s� d�ng #W#{_INFOMSG%s}#H sau �� #H t�ng th�m s� l��ng tr�n th� mang theo#H. S� l��ng t�ng �n #W%d#H.", LuaFnGetName(sceneId, selfId), szTran, GetPetNumMax(sceneId, selfId))
			elseif numExtra == 3 then
				x335805_MsgBox( sceneId, selfId, "Kh�ng gian s� l��ng tr�n th� mang theo : "..GetPetNumMax(sceneId, selfId)..", n�u mu�n t�ng th�m n�a, c�c h� h�y d�ng Th� Lan c�p cao h�n." )	--modify by xindefeng
				strMsg = format("#W#{_INFOUSR%s}#H s� d�ng #W#{_INFOMSG%s}#H sau �� #H t�ng th�m s� l��ng tr�n th� mang theo#H. S� l��ng t�ng �n #W%d#H.", LuaFnGetName(sceneId, selfId), szTran, GetPetNumMax(sceneId, selfId))
			elseif numExtra == 4 then
				x335805_MsgBox( sceneId, selfId, "Kh�ng gian s� l��ng tr�n th� mang theo : "..GetPetNumMax(sceneId, selfId)..", �� ��t m�c t�i �a." )	--modify by xindefeng
				strMsg = format("#W#{_INFOUSR%s}#H s� d�ng #W#{_INFOMSG%s}#H sau �� #H t�ng th�m s� l��ng tr�n th� mang theo#H. S� l��ng t�ng �n #W%d#H.", LuaFnGetName(sceneId, selfId), szTran, GetPetNumMax(sceneId, selfId))
			end
			AddGlobalCountNews( sceneId, strMsg )	--��ϵͳ����
		end
	end
	
	return 1
end

--**********************************
--��������������ڣ�
--�������ܻ���ÿ����������ʱ��������ӿڡ�
--���أ�1�����´�������0���ж�������
--ע�������Ǽ�����Чһ�ε����
--**********************************
function x335805_OnActivateEachTick( sceneId, selfId )
	return 1	 --���������Խű�, ֻ�����պ�����
end

--**********************************
--��Ϣ��ʾ
--**********************************
function x335805_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end