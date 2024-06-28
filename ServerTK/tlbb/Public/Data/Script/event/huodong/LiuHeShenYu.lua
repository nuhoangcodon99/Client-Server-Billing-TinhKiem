-- 六合神玉
-- czf,2009.08.19

x889062_g_ScriptId = 889062;

--活动的开始和结束日期 8月26日00：00——9月23日23：59
x889062_g_BeginTime	= 20090826
x889062_g_EndTime	= 20090923

-- 兑换所需的物品ID
x889062_g_NeedItemID		= {
														30504101,		-- 六合令牌(東)
														30504102,		-- 六合令牌(北)
														30504103,		-- 六合令牌(西)
														30504104,		-- 六合令牌(南)
														30504106,		-- 六合令牌(下)
														30504105,		-- 六合令牌(上)
													}

-- 奖励相关
x889062_g_AwradInfo		=	{
	{ItemId = 30504121, LackItemMsg = "#{LHSY_090819_06}", Notice = "#{LHSY_090819_09}"},	-- 神玉盒
}


--**********************************
--列举事件
--**********************************
function x889062_OnEnumerate( sceneId, selfId, targetId )
	
	if x889062_IsInActTime() == 1 then	
			AddNumText( sceneId, x889062_g_ScriptId, "#{LHSY_090819_01}", 6, 100 )	-- 按钮： 六合神玉
			AddNumText( sceneId, x889062_g_ScriptId, "#{LHSY_090819_02}", 11, 101 )	-- 按钮： 关于六合神玉活动
	end
	
end

--**********************************
--任务入口函数
--**********************************
function x889062_OnDefaultEvent( sceneId, selfId, targetId )

	local nNumText = GetNumText( )
	
	if( nNumText == 100 ) then
		-- 点击 “六合神玉”
		BeginEvent( sceneId )
			AddText( sceneId, "#{LHSY_090819_03}" )
			AddNumText( sceneId, x889062_g_ScriptId, "#{LHSY_090819_04}", 6, 102 )	-- 按钮：我要兑换
			AddNumText( sceneId, x889062_g_ScriptId, "#{LHSY_090819_05}", 6, 103 )	-- 按钮：我再想想
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	
	elseif( nNumText == 101 ) then
		-- 点击 “关于六合神玉活动”
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
--返回对话
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
--关闭对话框
--**********************************
function x889062_CloseDlg(sceneId, selfId, targetId)
	BeginUICommand( sceneId )
	UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 1000 )	
end

--**********************************
--接受
--**********************************
function x889062_OnAccept( sceneId, selfId )
	
end

--**********************************
--放弃
--**********************************
function x889062_OnAbandon( sceneId, selfId )
end

--**********************************
--继续
--**********************************
function x889062_OnContinue( sceneId, selfId, targetId )

end

--**********************************
--检测是否可以提交
--**********************************
function x889062_CheckSubmit( sceneId, selfId )

end

--是否在活动时间
function x889062_IsInActTime( )	

	local curDate = GetTime2Day( )
	if curDate >= x889062_g_BeginTime and curDate <= x889062_g_EndTime then
		return 1
	end
	return 0
	
end

--**********************************
--提交
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
	
	-- 判断物品是否够
	local bLackFlag = 1 --初始化，不够。
	local iItemDel = 0
	for i, itemId in x889062_g_NeedItemID do
		if( LuaFnGetAvailableItemCount( sceneId, selfId, itemId ) >= 1 ) then --找到可以兑换的，够啦
			bLackFlag = 0
			iItemDel = itemId
			break
		end
	end
	
	if bLackFlag == 1 then --如果不够
			x889062_ReturnDlg( sceneId, selfId, targetId, LackItemMsg )
			return
	else
			-- 检查背包空间
			--local bBagOk = 1
			local addItemIndex = 0
			local deleteItemTransInfo;
			
			--扣除之前先保存
			local BagIndex = GetBagPosByItemSn(sceneId, selfId, iItemDel);
			deleteItemTransInfo = GetBagItemTransfer( sceneId, selfId, BagIndex )
			if LuaFnDelAvailableItem( sceneId, selfId, iItemDel, 1) < 0 then --扣除
					return
			end
			
			--给物品
			BeginAddItem(sceneId)
			addItemIndex = AddItem(sceneId, selectRadioId, 1)
			local bRet = EndAddItem(sceneId,selfId)
			if bRet <= 0 then
				return
			end
			AddItemListToHuman(sceneId,selfId)
			local itemTransInfo = GetItemTransfer( sceneId, selfId, addItemIndex )
			-- 通知
			x889062_Tips( sceneId, selfId, Notice )
			--特效
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
			-- 公告
			local playerName = GetName(sceneId,selfId)
			broadcastMsg = format("#{_INFOUSR%s}#{LHSY_090819_10}#{_INFOMSG%s}#{LHSY_090819_11}#{_INFOMSG%s}#{LHSY_090819_12}", playerName, deleteItemTransInfo, itemTransInfo)
			BroadMsgByChatPipe( sceneId, selfId, broadcastMsg, 4 )
			x889062_CloseDlg(sceneId, selfId, targetId)
			--统计
			local guid = LuaFnObjId2Guid(sceneId,selfId)
			ScriptGlobal_AuditGeneralLog(LUAAUDIT_LHSY, guid)
			return		
	end
end
	
function x889062_CheckGiveGift( sceneId, selfId, targetId, selectRadioId )

		local bLackFlag = 1 --初始化，不够。
		local iItemDel = 0
		local LackItemMsg = "#{LHSY_090819_06}";
		
		for i, itemId in x889062_g_NeedItemID do
			if( LuaFnGetAvailableItemCount( sceneId, selfId, itemId ) >= 1 ) then --找到可以兑换的，够啦
				bLackFlag = 0
				iItemDel = itemId
				break
			end
		end
	
		if bLackFlag == 1 then --如果不够
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
--杀死怪物或玩家
--**********************************
function x889062_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--进入区域事件
--**********************************
function x889062_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--道具改变
--**********************************
function x889062_OnItemChanged( sceneId, selfId, itemdataId )
end

