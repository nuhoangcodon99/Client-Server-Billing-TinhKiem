--ע�⣺

--��Ʒ���ܵ��߼�ֻ��ʹ�û������ܺͽű���ʵ��

--�ű�:

--�����ǽű�����:


--GuiHuaPie.lua
------------------------------------------------------------------------------------------
--һ����Ʒ��Ĭ�Ͻű�

--�ű���
x300059_g_scriptId = 300059 --��ʱд���,�����õ�ʱ��һ��Ҫ��.

--buff���б�
x300059_g_Impact = {

		8020,
		8021,
		8022,
		8023,
		8024,
		8025,
		8026,
		8027,
		8028,
		8029,
		30161,
		30162,
		30163,
		30164,
		30165,
		30166,
		30167,
		30168,
		30169,
		30170,
}


--�Ե��ö����Ĺ���
x300059_g_strGetItem1 = {

	"#W#{_INFOUSR%s}#P m� bao b�nh Trung Thu v�t �i, kh�ng ng� c� � r�i ra, #W#{_INFOUSR%s}#P l�m l�n xem th�, th� ra l� #W#{_INFOMSG%s}#P th� m�  th�n ti�n c�ng kh�ng c� cho n�n kh�ng k�m n�i ni�m vui m� c߶i th�t to",
	"#W#{_INFOUSR%s}#P �i �߶ng v� t�nh v�p ph�i c�c �� kh�ng may b� ng�, l�m b�nh Trung Thu Qu� Hoa b� �� nh�o, #W#{_INFOUSR%s}#P trong l�ng ti�c nu�i, b�n �n 1 mi�ng, b�ng nhi�n ph�t hi�n 1 vi�n #W#{_INFOMSG%s}#P �n ch�a trong b�nh Trung Thu!",
	"B�nh Trung Thu ngon, ti�n �an kh� c�u, #W#{_INFOUSR%s}#P v�a �n v�a m� t߷ng Duy�n Ni�n Gi�m Th�, k�t qu� tr�n tr�i gi�ng xu�ng 1 vi�n #W#{_INFOMSG%s}#P b�ng nhi�n r�i v�o tay #W#{_INFOUSR%s}#P.",
}

x300059_g_strGetItem2 = {

	"#W#{_INFOUSR%s}#P vui m�ng c�m l�y B�nh Trung Thu, h� h�ng m� ra, ai ng� kh�ng c�n th�n ��nh r�i � d߾i b�n, #W#{_INFOUSR%s}#P b�n cu�i xu�ng t�m, th� b�ng nhi�n ph�t hi�n 1 c�i #W#{_INFOMSG%s}#P.",
	"#P ��m �o�n vi�n, c�ng th߷ng Nguy�t, #W#{_INFOUSR%s}#P suy ngh� nhi�u th� trong �u, mang theo b�nh Trung Thu kh�ng n� nu�t, �nh tr�ng ph�n chi�u, ch� th�y trong b�nh Trung Thu c� �nh s�ng v�ng nh�p nh�y, #W#{_INFOUSR%s}#P m� bao b�nh Trung Thu nh�n qua th� ra tr�n m�t c� 1 c�i #W#{_INFOMSG%s}#P.",
	"#W#{_INFOUSR%s}#P u�ng r��u 1 m�nh d߾i tr�ng, m�i v�a �nh  l�y b�nh Trung Thu Qu� Hoa ra �n t� nhi�n ph�t hi�n trong h�p b�nh Trung Thu c� 1 c�i #W#{_INFOMSG%s}#P, v� vui m�ng li�n l� h�n ra m�t mang b� v�o trong t�i c�a m�nh.",
}
--**********************************
--�¼��������
--**********************************
function x300059_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ����Ҫ����ӿڣ���Ҫ�����պ���
end

--**********************************
--�����Ʒ��ʹ�ù����Ƿ������ڼ��ܣ�
--ϵͳ����ִ�п�ʼʱ�����������ķ���ֵ���������ʧ������Ժ�������Ƽ��ܵ�ִ�С�
--����1���������Ƶ���Ʒ�����Լ������Ƽ��ܵ�ִ�У�����0�����Ժ���Ĳ�����
--**********************************
function x300059_IsSkillLikeScript( sceneId, selfId)
	return 1; --����ű���Ҫ����֧��
end

--**********************************
--ֱ��ȡ��Ч����
--ϵͳ��ֱ�ӵ�������ӿڣ���������������ķ���ֵȷ���Ժ�������Ƿ�ִ�С�
--����1���Ѿ�ȡ����ӦЧ��������ִ�к�������������0��û�м�⵽���Ч��������ִ�С�
--**********************************
function x300059_CancelImpacts( sceneId, selfId )
	return 0; --����Ҫ����ӿڣ���Ҫ�����պ���,����ʼ�շ���0��
end

--**********************************
--���������ڣ�
--ϵͳ���ڼ��ܼ���ʱ����������ӿڣ���������������ķ���ֵȷ���Ժ�������Ƿ�ִ�С�
--����1���������ͨ�������Լ���ִ�У�����0���������ʧ�ܣ��жϺ���ִ�С�
--**********************************
function x300059_OnConditionCheck( sceneId, selfId )
	--У��ʹ�õ���Ʒ
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	return 1;
end

--**********************************
--���ļ�⼰������ڣ�
--ϵͳ���ڼ������ĵ�ʱ����������ӿڣ���������������ķ���ֵȷ���Ժ�������Ƿ�ִ�С�
--����1�����Ĵ���ͨ�������Լ���ִ�У�����0�����ļ��ʧ�ܣ��жϺ���ִ�С�
--ע�⣺�ⲻ�⸺�����ĵļ��Ҳ�������ĵ�ִ�С�
--**********************************
function x300059_OnDeplete( sceneId, selfId )
	--������....��߻�Ҫʹ�ô浽��Ʒ�ϵ���Ϣ��....
	return 1;
end

--**********************************
--ֻ��ִ��һ����ڣ�
--������˲�����ܻ���������ɺ��������ӿڣ������������Ҹ��������������ʱ�򣩣�������
--����Ҳ����������ɺ��������ӿڣ����ܵ�һ��ʼ�����ĳɹ�ִ��֮�󣩡�
--����1������ɹ�������0������ʧ�ܡ�
--ע�������Ǽ�����Чһ�ε����
--**********************************
function x300059_OnActivateOnce( sceneId, selfId )

	--�Լ�����ʹ��....
	local	bagId	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	if bagId < 0 then
		return
	end
	local OwnGUID	= GetBagItemParam( sceneId, selfId, bagId, 4, 2 )
	OwnGUID = OwnGUID + 2147483648
	local SelfGUID = LuaFnGetGUID( sceneId, selfId )
	if OwnGUID == SelfGUID then
		BeginEvent( sceneId )
			AddText( sceneId, "L� ph�m b�nh Trung Thu ch� c� th� giao d�ch cho ng߶i kh�c s� d�ng." )
		EndEvent( sceneId )
		DispatchMissionTips( sceneId, selfId )
		return
	end

	--����Ʒ....
	if LuaFnDepletingUsedItem(sceneId, selfId) <= 0 then
		return
	end

	--��buff....
	local myLevel = GetLevel(sceneId, selfId)
	local impactID = x300059_g_Impact[1]
	local PlayerMaxLevel = GetHumanMaxLevelLimit()

  if myLevel > PlayerMaxLevel then
		impactID = x300059_g_Impact[16]
	elseif myLevel > 140 then
		impactID = x300059_g_Impact[15]
	elseif myLevel > 130 then
		impactID = x300059_g_Impact[14]
	elseif myLevel > 120 then
		impactID = x300059_g_Impact[13]
	elseif myLevel > 110 then
		impactID = x300059_g_Impact[12]
	elseif myLevel > 100 then
		impactID = x300059_g_Impact[11]
	elseif myLevel > 90 then
		impactID = x300059_g_Impact[10]
	elseif myLevel > 80 then
		impactID = x300059_g_Impact[9]
	elseif myLevel > 70 then
		impactID = x300059_g_Impact[8]
	elseif myLevel > 60 then
		impactID = x300059_g_Impact[7]
	elseif myLevel > 50 then
		impactID = x300059_g_Impact[6]
	elseif myLevel > 40 then
		impactID = x300059_g_Impact[5]
	elseif myLevel > 30 then
		impactID = x300059_g_Impact[4]
	elseif myLevel > 20 then
		impactID = x300059_g_Impact[3]
	elseif myLevel > 10 then
		impactID = x300059_g_Impact[2]
	else
		impactID = x300059_g_Impact[1]
	end

	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, impactID, 0);
	
	if myLevel < 35 then
		return 1
	end

	--35������....��1/500�Գ�ǿ�ư����ٵ�....
	local GoodLuck = random(5000)
	if GoodLuck < 10 then
		local BagIndex = TryRecieveItem( sceneId, selfId, 30606001, QUALITY_MUST_BE_CHANGE )
		if BagIndex ~= -1 then
			--ǿ�ư�....
			LuaFnItemBind( sceneId, selfId, BagIndex )
			--������....
			local ItemTransfer = GetBagItemTransfer(sceneId,selfId,BagIndex)
			local PlayerName = GetName(sceneId, selfId)
			local nMsgIndex = random(3)
			local str
			if nMsgIndex == 1 then
				str = format( x300059_g_strGetItem1[1], PlayerName, PlayerName, ItemTransfer )
			elseif nMsgIndex == 2 then
				str = format( x300059_g_strGetItem1[2], PlayerName, PlayerName, ItemTransfer )
			else
				str = format( x300059_g_strGetItem1[3], PlayerName, ItemTransfer, PlayerName )
			end
			BroadMsgByChatPipe( sceneId, selfId, str, 4 )
		end
		return	--�Ե�����Ͳ����ٳԳ��±ߵ���....
	end

	--35������....��1/1000�Գ�ǿ�ư󶨰���Կ��....
	GoodLuck = random(10000)
	if GoodLuck < 10 then
		local BagIndex = TryRecieveItem( sceneId, selfId, 30008011, QUALITY_MUST_BE_CHANGE )
		if BagIndex ~= -1 then
			--ǿ�ư�....
			LuaFnItemBind( sceneId, selfId, BagIndex )
			--������....
			local ItemTransfer = GetBagItemTransfer(sceneId,selfId,BagIndex)
			local PlayerName = GetName(sceneId, selfId)
			local nMsgIndex = random(3)
			local str
			if nMsgIndex == 1 then
				str = format( x300059_g_strGetItem2[1], PlayerName, PlayerName, ItemTransfer )
			elseif nMsgIndex == 2 then
				str = format( x300059_g_strGetItem2[2], PlayerName, PlayerName, ItemTransfer )
			else
				str = format( x300059_g_strGetItem2[3], PlayerName, ItemTransfer )
			end
			BroadMsgByChatPipe( sceneId, selfId, str, 4 )
		end
	end

	return 1;
end

--**********************************
--��������������ڣ�
--�������ܻ���ÿ����������ʱ��������ӿڡ�
--���أ�1�����´�������0���ж�������
--ע�������Ǽ�����Чһ�ε����
--**********************************
function x300059_OnActivateEachTick( sceneId, selfId)
	return 1; --���������Խű�, ֻ�����պ���.
end
