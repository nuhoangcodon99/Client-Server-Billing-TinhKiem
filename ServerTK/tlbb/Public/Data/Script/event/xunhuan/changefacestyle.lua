--��������
--�ű���
x805029_g_ScriptId = 805029

--��������UI 21

--**********************************
--�о��¼�
--**********************************
function x805029_OnEnumerate( sceneId, selfId, targetId )
	-- ������Ϣ
	--BeginEvent(sceneId)
	--	AddText(sceneId, "����������ͽű�");
	--EndEvent(sceneId)
	--DispatchMissionTips(sceneId,selfId)	
	
	-- ΪʲôҪ NPC ���֣�
	local TransportNPCName=GetName(sceneId,targetId);

	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,targetId)
		UICommand_AddString(sceneId,TransportNPCName)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 928)
	return
end

--**********************************
--��������
--**********************************
function x805029_FinishAdjust( sceneId, selfId, styleId)

	-- �õ���������������Ʒ��id��������
	local ItemId, ItemCount = GetChangeFaceItemIdAndItemCount(styleId)
		
	-- ����ֵ�Ƿ�
	if ItemId < 0 or ItemCount < 0 then
		return
	end
	
	local nItemNum = LuaFnGetAvailableItemCount( sceneId, selfId, ItemId )

	-- ��Ʒ�Ƿ��û�����
	if ItemCount > nItemNum then
		BeginEvent(sceneId)
			AddText(sceneId, "Kh�ng c� иnh Nhan Ch�u ho�c иnh Nhan Ch�u b� kho�");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
		-- ��ö������ڱ����е�λ�ã���������ڸı����͵Ĺ����б�ɾ����������Ҫ�ȱ���������Ϣ��
	local ItemPos = LuaFnGetItemPosByItemDataID(sceneId, selfId, ItemId, 0)
	local szItemTransfer = GetBagItemTransfer(sceneId, selfId, ItemPos)
	
	-- ��Ʒ���ͨ�����ټ����ҽ�Ǯ
	local moneyJZ = GetMoneyJZ (sceneId, selfId)
	local money = GetMoney (sceneId, selfId)
	
	-- ��Ʒ�ͽ�Ǯ��ⶼͨ��
	if (moneyJZ + money >= 50000)	then	
		-- ������������ͣ��������������������Ʒ�ͽ�Ǯ��
		local ret = ChangeHumanFaceModel( sceneId, selfId, styleId )
		if ret == 0  then
			BeginEvent(sceneId)
				AddText(sceneId,"Bi�n h�nh th�nh c�ng");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		
		-- �ı�����ʧ��
		elseif ret == 1 then
			BeginEvent(sceneId)
				AddText(sceneId,"H�y ch�n khu�n m�t m�i");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		elseif ret == 3 then
			BeginEvent(sceneId)
				AddText(sceneId, "Kh�ng c� иnh Nhan Ch�u ho�c иnh Nhan Ch�u b� kho�");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		elseif ret == 4 then	
			BeginEvent(sceneId)
				AddText(sceneId, "Kh�ng �� ng�n l��ng");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		else
			return
		end

	-- ��Ǯ����
	else
		BeginEvent(sceneId)
			AddText(sceneId, "C�c h� kh�ng c� �� ng�n l��ng");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end	
	
	-- ���͹㲥
	local message;	
	local randMessage = random(3);
	local nsex = LuaFnGetSex(sceneId, selfId)
	local str1,str2
	if nsex == 0  then
		str1 = "mu�i �y "
		str2 = "Щp"
	else
		str1 = "huynh �y "
		str2 = "�p trai"
	end
	
		if randMessage == 1 then	
			message = format("#c00FFFFCon ng߶i mu�n khu�n m�t, c�y mu�n v� c�y, #W#{_INFOUSR%s}#c00FFFF r�t hi�u ��o l� n�y n�n h�m nay d�ng #W#{_INFOMSG%s}#c00FFFF � thay �i dung m�o, l�m cho Phan An ph�i t�c ch�t, �i�u Thuy�n c�ng ph�i h� th�n!", LuaFnGetName(sceneId, selfId), szItemTransfer);
		elseif randMessage == 2 then
			message = format("#c00FFFFMa K�nh n�i tr�n th� gi�i n�y" .. str2 .. "�� sinh ra r�i! Ch�nh l� #W#{_INFOUSR%s}#c00FFFF l�c n�y con Nh�n l�n l�m r�i t� tr�n tr�i xu�ng, mau �i xem" .. str1 .. "�i, c�i#W#{_INFOMSG%s}#c00FFFF n�y sau khi s� d�ng qu� nhi�n hi�u qu� v� c�ng!", LuaFnGetName(sceneId, selfId), szItemTransfer);
		else
			message = format("#c00FFFFA! Sao c� trong d�ng su�i n�y �u ng�a b�ng l�n h�t ? Kh�ng l� b� tr�ng �c m� ch�t ? Kh�ng ph�i, th� ra l� do #W#{_INFOUSR%s}#c00FFFF m�i v�a �i ngang qua, l� c� m�c c�. Tr�i �!" .. str1 .. "D�ng #W#{_INFOMSG%s}#c00FFFF th� sau n�y s� c� 1 dung m�o tuy�t th� nh� th� n�y!", LuaFnGetName(sceneId, selfId), szItemTransfer);
		end

	BroadMsgByChatPipe(sceneId, selfId, message, 4);
end
