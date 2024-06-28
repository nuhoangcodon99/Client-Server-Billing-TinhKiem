--��ʯ����

--�ű���
x800118_g_ScriptId	= 800118


function x800118_OnGemMelting( sceneId, selfId, GemItemPos1, GemItemPos2, GemItemPos3, NeedItemPos )

	if GemItemPos1 == -1 or GemItemPos2 == -1 or GemItemPos3 == -1 or NeedItemPos == -1 then
		return
	end

	--�Ƿ��ڰ�ȫʱ����....����жϺ��������Լ�����ʾ��Ϣ....
	if IsPilferLockFlag(sceneId, selfId) <= 0 then
		return
	end
	
	-- ���������ظ���bagIndexList���� added by dun.liu 2009.2.5
	if ScriptGlobal_IsUniqueNumberTable({GemItemPos1, GemItemPos2, GemItemPos3}) == 0 then
		return
	end

	local GemItemID1 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, GemItemPos1 )
	local GemItemID2 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, GemItemPos2 )
	local GemItemID3 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, GemItemPos3 )
	local NeedItemID = LuaFnGetItemTableIndexByIndex( sceneId, selfId, NeedItemPos )

	--����Ƿ�����ͬ���ı�ʯ....
	if GemItemID1 ~= GemItemID2 or GemItemID1 ~= GemItemID3 then
		x800118_NotifyTip( sceneId, selfId, "B�o th�ch kh�ng �ng nh�t, dung luy�n th�t b�i" )
		return
	end

	--����Ƿ��������....
	local ProductID, NeedID, NeedMoney = LuaFnGetGemMeltingInfo( GemItemID1 )
	if  -1 == ProductID then
		x800118_NotifyTip( sceneId, selfId, "B�o th�ch kh�ng th� dung luy�n, dung luy�n th�t b�i !" )
		return
	end

	--����Ƿ���������Ʒ....
	if NeedID ~= NeedItemID then
		x800118_NotifyTip( sceneId, selfId, "V�t ph�m dung luy�n c�n thi�t th�t b�i, dung luy�n th�t b�i" )
		return
	end

	--����Ǯ�Ƿ��㹻....
	local PlayerMoney = GetMoney( sceneId, selfId ) +  GetMoneyJZ(sceneId, selfId)  --�����ռ� Vega
	if PlayerMoney < NeedMoney then
		x800118_NotifyTip( sceneId, selfId, "Kh�ng �� ng�n l��ng, dung luy�n th�t b�i" )
		return
	end

	--�������Ƿ���Ҫ��....
	local bNeedBind = 0
	if LuaFnGetItemBindStatus(sceneId, selfId, GemItemPos1) == 1 then
	  bNeedBind = 1
	end
	if LuaFnGetItemBindStatus(sceneId, selfId, GemItemPos2) == 1 then
	  bNeedBind = 1
	end
	if LuaFnGetItemBindStatus(sceneId, selfId, GemItemPos3) == 1 then
	  bNeedBind = 1
	end
	if LuaFnGetItemBindStatus(sceneId, selfId, NeedItemPos) == 1 then
	  bNeedBind = 1
	end

	--�۳���ʯ��������Ʒ....
	--local GemItemInfo = GetBagItemTransfer( sceneId, selfId, GemItemPos1 )
	local NeedItemInfo = GetBagItemTransfer( sceneId, selfId, NeedItemPos )

	local ret = -1
	ret = LuaFnIsItemAvailable( sceneId, selfId, GemItemPos1 )
	if ret ~= 1 then
		x800118_NotifyTip( sceneId, selfId, "B�o th�ch kh�ng th� s� d�ng, dung luy�n th�t b�i !" )
		return
	end
	ret = LuaFnIsItemAvailable( sceneId, selfId, GemItemPos2 )
	if ret ~= 1 then
		x800118_NotifyTip( sceneId, selfId, "B�o th�ch kh�ng th� s� d�ng, dung luy�n th�t b�i !" )
		return
	end
	ret = LuaFnIsItemAvailable( sceneId, selfId, GemItemPos3 )
	if ret ~= 1 then
		x800118_NotifyTip( sceneId, selfId, "B�o th�ch kh�ng th� s� d�ng, dung luy�n th�t b�i !" )
		return
	end
	ret = LuaFnIsItemAvailable( sceneId, selfId, NeedItemPos )
	if ret ~= 1 then
		x800118_NotifyTip( sceneId, selfId, "S� d�ng nguy�n li�u th�t b�i, dung luy�n th�t b�i !" )
		return
	end


	-- ���뱣֤�۳���Ʒȫ���ɹ����κ�һ��ʧ�ܶ������޷��ϳɱ�ʯ�������Ѿ��۳��ı�ʯ���黹��added by dun.liu 2009.2.5
	if LuaFnEraseItem( sceneId, selfId, GemItemPos1 ) == 0 then
		x800118_NotifyTip( sceneId, selfId, "Kh�u tr� v�t ph�m th�t b�i, dung luy�n th�t b�i !" )
		return
	end
	
	if LuaFnEraseItem( sceneId, selfId, GemItemPos2 ) == 0 then
		x800118_NotifyTip( sceneId, selfId, "Kh�u tr� v�t ph�m th�t b�i, dung luy�n th�t b�i !" )
		return
	end
	
	if LuaFnEraseItem( sceneId, selfId, GemItemPos3 ) == 0 then
		x800118_NotifyTip( sceneId, selfId, "Kh�u tr� v�t ph�m th�t b�i, dung luy�n th�t b�i !" )
		return
	end
	
	if LuaFnEraseItem( sceneId, selfId, NeedItemPos ) == 0 then
		x800118_NotifyTip( sceneId, selfId, "Kh�u tr� v�t ph�m th�t b�i, dung luy�n th�t b�i !" )
		return
	end


	--��Ǯ....
	ret = LuaFnCostMoneyWithPriority( sceneId, selfId, NeedMoney )      --�����ռ� Vega
	if ret < 0 then
		x800118_NotifyTip( sceneId, selfId, "Kh�ng �� ng�n l��ng, dung luy�n th�t b�i" )
		return
	end

	--�����������ı�ʯ....���ü�ⱳ���Ƿ��еط�....û�ط�ǰ��Ҳdel���ط���....
	local BagIndex = TryRecieveItem( sceneId, selfId, ProductID, QUALITY_MUST_BE_CHANGE )
	if BagIndex == -1 then
		x800118_NotifyTip( sceneId, selfId, "Tai n�i �� �y, dung luy�n th�t b�i" )
		return
	end
	if bNeedBind == 1 then
		LuaFnItemBind(sceneId, selfId, BagIndex)
	end
	local ProductItemInfo = GetBagItemTransfer( sceneId, selfId, BagIndex )

	--ͳ��....
	LuaFnAuditGemMelting( sceneId, selfId, GemItemID1, GemItemID2, GemItemID3, NeedItemID, ProductID )

	--��Ŀ��ʾ....
	x800118_NotifyTip( sceneId, selfId, "3 vi�n #{_ITEM"..GemItemID1.."}, dung luy�n th�nh c�ng th�nh #{_ITEM"..ProductID.."}." )

	--����....
	if LuaFnGetItemQuality(ProductID) >= 3 then
		local MeltingNPCTbl =
		{
			[0]   = "L�c D߽ng (178,185) B�nh Ho�i Ng�c",
			[420] = "Th�c H� C� Tr�n (134,84) Kim Kh�m Th�c",
			[186] = "L�u Lan (74,161) Kh�c L� M�c",
		}
		local NPCInfo = MeltingNPCTbl[sceneId]
		local PlayerName = GetName(sceneId, selfId)
		local strText = format("#{JKBS_081021_016}#{_INFOUSR%s}#{JKBS_081021_017}#{_ITEM%s}#{JKBS_081021_018}#{_INFOMSG%s}#{JKBS_081021_019}%s#{JKBS_081021_020}#{_INFOMSG%s}#{JKBS_081021_021}", PlayerName, GemItemID1, NeedItemInfo, NPCInfo, ProductItemInfo )
		BroadMsgByChatPipe(sceneId,selfId, strText, 4)
	end

	--�����ɹ���Ч....
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 49, 0)

end

--**********************************
--��Ŀ��ʾ
--**********************************
function x800118_NotifyTip( sceneId, selfId, Msg )

	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
