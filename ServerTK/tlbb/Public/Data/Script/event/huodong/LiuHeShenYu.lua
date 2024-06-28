-- ��������
-- czf,2009.08.19

x889062_g_ScriptId = 889062;

--��Ŀ�ʼ�ͽ������� 8��26��00��00����9��23��23��59
x889062_g_BeginTime	= 20090826
x889062_g_EndTime	= 20090923

-- �һ��������ƷID
x889062_g_NeedItemID		= {
														30504101,		-- ��������(�|)
														30504102,		-- ��������(��)
														30504103,		-- ��������(��)
														30504104,		-- ��������(��)
														30504106,		-- ��������(��)
														30504105,		-- ��������(��)
													}

-- �������
x889062_g_AwradInfo		=	{
	{ItemId = 30504121, LackItemMsg = "#{LHSY_090819_06}", Notice = "#{LHSY_090819_09}"},	-- �����
}


--**********************************
--�о��¼�
--**********************************
function x889062_OnEnumerate( sceneId, selfId, targetId )
	
	if x889062_IsInActTime() == 1 then	
			AddNumText( sceneId, x889062_g_ScriptId, "#{LHSY_090819_01}", 6, 100 )	-- ��ť�� ��������
			AddNumText( sceneId, x889062_g_ScriptId, "#{LHSY_090819_02}", 11, 101 )	-- ��ť�� ������������
	end
	
end

--**********************************
--������ں���
--**********************************
function x889062_OnDefaultEvent( sceneId, selfId, targetId )

	local nNumText = GetNumText( )
	
	if( nNumText == 100 ) then
		-- ��� ����������
		BeginEvent( sceneId )
			AddText( sceneId, "#{LHSY_090819_03}" )
			AddNumText( sceneId, x889062_g_ScriptId, "#{LHSY_090819_04}", 6, 102 )	-- ��ť����Ҫ�һ�
			AddNumText( sceneId, x889062_g_ScriptId, "#{LHSY_090819_05}", 6, 103 )	-- ��ť����������
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	
	elseif( nNumText == 101 ) then
		-- ��� ����������������
		BeginEvent( sceneId )	
			AddText( sceneId, "#{LHSY_090819_13}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
	elseif( nNumText == 103 ) then
		x889062_CloseDlg(sceneId, selfId, targetId)
		return
	
	elseif( nNumText == 102 ) then
		x889062_CheckGiveGift( sceneId, selfId, targetId, 30504121)
	end
		
end


--**********************************
--���ضԻ�
--**********************************
function x889062_ReturnDlg(sceneId, selfId, targetId, msg)
	BeginEvent(sceneId)
		AddText(sceneId, msg);
	EndEvent()
	DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--ReturnTips
--**********************************
function x889062_Tips(sceneId, selfId, msg)
	BeginEvent(sceneId)
		AddText(sceneId, msg);
	EndEvent()
	DispatchMissionTips(sceneId, selfId)
end

--**********************************
--�رնԻ���
--**********************************
function x889062_CloseDlg(sceneId, selfId, targetId)
	BeginUICommand( sceneId )
	UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 1000 )	
end

--**********************************
--����
--**********************************
function x889062_OnAccept( sceneId, selfId )
	
end

--**********************************
--����
--**********************************
function x889062_OnAbandon( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x889062_OnContinue( sceneId, selfId, targetId )

end

--**********************************
--����Ƿ�����ύ
--**********************************
function x889062_CheckSubmit( sceneId, selfId )

end

--�Ƿ��ڻʱ��
function x889062_IsInActTime( )	

	local curDate = GetTime2Day( )
	if curDate >= x889062_g_BeginTime and curDate <= x889062_g_EndTime then
		return 1
	end
	return 0
	
end

--**********************************
--�ύ
--**********************************
function x889062_GiveGift( sceneId, selfId, targetId, selectRadioId )
	
	local LackItemMsg, Notice
	for i, ItemInfo in x889062_g_AwradInfo do
		if( ItemInfo.ItemId == selectRadioId ) then
			LackItemMsg		= ItemInfo.LackItemMsg
			Notice 				= ItemInfo.Notice
			break
		end
	end
	
	-- �ж���Ʒ�Ƿ�
	local bLackFlag = 1 --��ʼ����������
	local iItemDel = 0
	for i, itemId in x889062_g_NeedItemID do
		if( LuaFnGetAvailableItemCount( sceneId, selfId, itemId ) >= 1 ) then --�ҵ����Զһ��ģ�����
			bLackFlag = 0
			iItemDel = itemId
			break
		end
	end
	
	if bLackFlag == 1 then --�������
			x889062_ReturnDlg( sceneId, selfId, targetId, LackItemMsg )
			return
	else
			-- ��鱳���ռ�
			--local bBagOk = 1
			local addItemIndex = 0
			local deleteItemTransInfo;
			
			--�۳�֮ǰ�ȱ���
			local BagIndex = GetBagPosByItemSn(sceneId, selfId, iItemDel);
			deleteItemTransInfo = GetBagItemTransfer( sceneId, selfId, BagIndex )
			if LuaFnDelAvailableItem( sceneId, selfId, iItemDel, 1) < 0 then --�۳�
					return
			end
			
			--����Ʒ
			BeginAddItem(sceneId)
			addItemIndex = AddItem(sceneId, selectRadioId, 1)
			local bRet = EndAddItem(sceneId,selfId)
			if bRet <= 0 then
				return
			end
			AddItemListToHuman(sceneId,selfId)
			local itemTransInfo = GetItemTransfer( sceneId, selfId, addItemIndex )
			-- ֪ͨ
			x889062_Tips( sceneId, selfId, Notice )
			--��Ч
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
			-- ����
			local playerName = GetName(sceneId,selfId)
			broadcastMsg = format("#{_INFOUSR%s}#{LHSY_090819_10}#{_INFOMSG%s}#{LHSY_090819_11}#{_INFOMSG%s}#{LHSY_090819_12}", playerName, deleteItemTransInfo, itemTransInfo)
			BroadMsgByChatPipe( sceneId, selfId, broadcastMsg, 4 )
			x889062_CloseDlg(sceneId, selfId, targetId)
			--ͳ��
			local guid = LuaFnObjId2Guid(sceneId,selfId)
			ScriptGlobal_AuditGeneralLog(LUAAUDIT_LHSY, guid)
			return		
	end
end
	
function x889062_CheckGiveGift( sceneId, selfId, targetId, selectRadioId )

		local bLackFlag = 1 --��ʼ����������
		local iItemDel = 0
		local LackItemMsg = "#{LHSY_090819_06}";
		
		for i, itemId in x889062_g_NeedItemID do
			if( LuaFnGetAvailableItemCount( sceneId, selfId, itemId ) >= 1 ) then --�ҵ����Զһ��ģ�����
				bLackFlag = 0
				iItemDel = itemId
				break
			end
		end
	
		if bLackFlag == 1 then --�������
			x889062_ReturnDlg( sceneId, selfId, targetId, LackItemMsg )
			return
		end
		
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,x889062_g_ScriptId);
			UICommand_AddInt(sceneId,targetId);
			UICommand_AddInt(sceneId,selectRadioId)
			UICommand_AddString(sceneId,"GiveGift");	
			UICommand_AddString(sceneId,"#{LHSY_090819_07}".."#{_ITEM"..(iItemDel).."}".."#{LHSY_090819_08}")
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,24)
				
end

--**********************************
--ɱ����������
--**********************************
function x889062_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x889062_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x889062_OnItemChanged( sceneId, selfId, itemdataId )
end

