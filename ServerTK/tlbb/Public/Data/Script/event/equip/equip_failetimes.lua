--װ����������ʧ�ܴ���
--�ű���
x809265_g_ScriptId = 809265

--��������ʧ�ܴ���UI 1005

--**********************************
--�о��¼�
--**********************************
function x809265_OnEnumerate( sceneId, selfId, targetId )

end


--**********************************
--��������ʧ�ܴ���
--**********************************
function x809265_EquipFaileTimes( sceneId, selfId, nItemIndex1, nItemIndex2)

	local ret = LuaFnIsItemLocked( sceneId, selfId, nItemIndex1 )
	if ret ~= 0 then
		BeginEvent(sceneId)
		AddText(sceneId,"Kh�ng d�ng ���c trang b� n�y");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	
	ret = LuaFnIsItemAvailable( sceneId, selfId, nItemIndex2 )
	if ret ~= 1 then
		BeginEvent(sceneId)
		AddText(sceneId,"Kh�ng th� s� d�ng nhu�n v�t l�");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	local szTransfer = GetBagItemTransfer(sceneId,selfId, nItemIndex2);


	local sy_index = LuaFnGetItemTableIndexByIndex( sceneId, selfId, nItemIndex2 )
	if sy_index ~= 30900007 and sy_index ~= 30900000   then
		BeginEvent(sceneId)
		AddText(sceneId,"Gi�m s� l�n s�a ch�a th�t b�i c�n c� nhu�n v�t l�");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	local	text	= "S�a ch�a th�nh c�ng"
	local money = GetMoney( sceneId, selfId )
	local jiaozi = GetMoneyJZ(sceneId, selfId);
	local need_money = GetBagItemLevel( sceneId, selfId, nItemIndex1 ) * 200
	if money+jiaozi < need_money then
		text="H� s� l�n s�a ch�a trang b� th�t b�i c�n c� #{_EXCHG%d}, ng�n l��ng tr�n ng߶i c�c h� kh�ng ��"
		text=format( text, need_money )
		BeginEvent(sceneId)
		AddText(sceneId,text);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	local szMsg;
	local szName;
	szName = GetName( sceneId, selfId );		
	
	if sy_index == 30900007  then
		ret = LuaFnFaileTimes( sceneId, selfId, nItemIndex1, nItemIndex2, 1 )
		szMsg = format( "#W#{_INFOUSR%s}#H sau khi �� s� d�ng #W#{_INFOMSG%s}#H, h�i ph�c th�nh c�ng s� l�n s�a ch�a c�a trang b� l� 1 l�n, tr�nh g�y v� sau 3 l�n s�a ch�a trang b� th�t b�i. ", szName, szTransfer );
	elseif sy_index == 30900000  then
		ret = LuaFnFaileTimes( sceneId, selfId, nItemIndex1, nItemIndex2, 0 )
		szMsg = format( "#W#{_INFOUSR%s}#H sau khi �� s� d�ng #W#{_INFOMSG%s}#H, h�i ph�c th�nh c�ng s� l�n s�a ch�a c�a trang b� l� 3 l�n, tr�nh g�y v� sau 3 l�n s�a ch�a trang b� th�t b�i. ", szName, szTransfer );
	end

	if ret == 0 then
		LuaFnCostMoneyWithPriority( sceneId, selfId, need_money ) --zchw
		LuaFnEraseItem( sceneId, selfId, nItemIndex2 )
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 49, 0);

		
		--AddGlobalCountNews( sceneId, szMsg )
		
	end
	
	if ret == -1 then
		text="Kh�ng bi�t l�i"
	end

	if ret == -2 then
		text="Kh�ng d�ng ���c trang b� n�y"
	end
	
	if ret == -3 then
		text="Kh�ng th� s� d�ng nhu�n v�t l�"
	end

	if ret == -4 then
		text="S� l�n s�a ch�a th�t b�i �� th�p nh�t"
	end

	BeginEvent(sceneId)
		AddText(sceneId,text)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end
