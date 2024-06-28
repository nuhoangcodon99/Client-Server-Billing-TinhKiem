-- 125021
-- 竞技场 辅助功能，兑换腰带
x125021_g_ScriptId = 125021

--盟主之印		Buff6_1		30505143
--铜腰带		Girdle3_4		10421018
--银腰带		Girdle3_3		10421019
--金腰带		Girdle3_2		10421020
--七宝腰带	Girdle3_1		10421021

x125021_g_StoneId = 30505143

x125021_g_Item_1 = 10421018
x125021_g_Item_2 = 10421019
x125021_g_Item_3 = 10421020
x125021_g_Item_4 = 10421021

x125021_g_Exp = 50000

--**********************************
--列举事件
--**********************************
function x125021_OnEnumerate( sceneId, selfId, targetId )	
	AddNumText( sceneId, x125021_g_ScriptId, "Ho醤 鸨i Minh Ch� 邪ng Y陁 嗅i", 12, 1 )
	AddNumText( sceneId, x125021_g_ScriptId, "Ho醤 鸨i Minh Ch� Ng鈔 Y陁 嗅i", 12, 2 )
	AddNumText( sceneId, x125021_g_ScriptId, "Ho醤 鸨i Minh Ch� Kim Y陁 嗅i", 12, 3 )

	AddNumText( sceneId, x125021_g_ScriptId, "Th錸g c Minh Ch� 邪ng Y陁 嗅i", 6, 7 )
	AddNumText( sceneId, x125021_g_ScriptId, "Th錸g c Minh Ch� Ng鈔 Y陁 嗅i", 6, 4 )
	AddNumText( sceneId, x125021_g_ScriptId, "Th錸g c Minh Ch� Kim Y陁 嗅i", 6, 5 )
	AddNumText( sceneId, x125021_g_ScriptId, "Th錸g c Minh Ch� Th B鋙 Y陁 嗅i", 6, 6 )
end

--**********************************
--任务入口函数
--**********************************
function x125021_OnDefaultEvent( sceneId, selfId, targetId )
	local Num = GetNumText()
	if Num == 1  then
    BeginEvent(sceneId)
      AddText(sceneId,"#BHo醤 鸨i Minh Ch� 邪ng Y陁 嗅i");
      AddText(sceneId," 1 c醝 Minh Ch� 邪ng Y陁 嗅i ho醤 鸨i 1 c醝 minh ch� chi ");
      AddNumText( sceneId, x125021_g_ScriptId, "邪ng �", 8, 10 )
      AddNumText( sceneId, x125021_g_ScriptId, "B� qua", 8, 20 )
    EndEvent(sceneId)
    DispatchEventList(sceneId,selfId,targetId)
	
	elseif Num == 2  then
    BeginEvent(sceneId)
      AddText(sceneId,"#BHo醤 鸨i Minh Ch� Ng鈔 Y陁 嗅i");
      AddText(sceneId,"  1 c醝 Minh Ch� Ng鈔 Y陁 嗅i ho醤 鸨i 10 minh ch� chi ");
      AddNumText( sceneId, x125021_g_ScriptId, "邪ng �", 8, 11 )
      AddNumText( sceneId, x125021_g_ScriptId, "B� qua", 8, 20 )
    EndEvent(sceneId)
    DispatchEventList(sceneId,selfId,targetId)
		
	elseif Num == 3  then
    BeginEvent(sceneId)
      AddText(sceneId,"#BHo醤 鸨i Minh Ch� Kim Y陁 嗅i");
      AddText(sceneId,"  1 Minh Ch� Kim Y陁 嗅i ho醤 鸨i 100 minh ch� chi ");
      AddNumText( sceneId, x125021_g_ScriptId, "邪ng �", 8, 12 )
      AddNumText( sceneId, x125021_g_ScriptId, "B� qua", 8, 20 )
    EndEvent(sceneId)
    DispatchEventList(sceneId,selfId,targetId)

	elseif Num == 4  then
    BeginEvent(sceneId)
      AddText(sceneId,"#BTh錸g c v� Minh Ch� Ng鈔 Y陁 嗅i");
      AddText(sceneId,"  Th錸g c v� Minh Ch� Ng鈔 Y陁 嗅i ti陁 hao #r#G    1 Minh Ch� 邪ng Y陁 嗅i#r    9 Minh Ch� Chi #r    C醕 h� c� mu痭?");
      AddNumText( sceneId, x125021_g_ScriptId, "邪ng �", 8, 13 )
      AddNumText( sceneId, x125021_g_ScriptId, "B� qua", 8, 20 )
    EndEvent(sceneId)
    DispatchEventList(sceneId,selfId,targetId)

	elseif Num == 5  then
    BeginEvent(sceneId)
      AddText(sceneId,"#BTh錸g c v� Minh Ch� Kim Y陁 嗅i");
      AddText(sceneId,"  Th錸g c v� Minh Ch� Kim Y陁 嗅i ti陁 hao#r#G    1 Minh Ch� Ng鈔 Y陁 嗅i #r    90 Minh ch� chi  #r    #{_EXCHG"..tostring(500000).."}#W#r  C醕 h� c� mu痭 ?");
      AddNumText( sceneId, x125021_g_ScriptId, "邪ng �", 8, 14 )
      AddNumText( sceneId, x125021_g_ScriptId, "B� qua", 8, 20 )
    EndEvent(sceneId)
    DispatchEventList(sceneId,selfId,targetId)

	elseif Num == 6  then
    BeginEvent(sceneId)
      AddText(sceneId,"#BTh錸g c Minh Ch� Th B鋙 Y陁 嗅i");
      AddText(sceneId,"  Th錸g c Minh Ch� Th B鋙 Y陁 嗅i ti陁 hao #r#G    1 Minh Ch� Kim Y陁 嗅i#r    400 Minh ch� chi #r    #{_EXCHG"..tostring(1000000).."}#W#r  C醕 h� c� mu痭 ?");
      AddNumText( sceneId, x125021_g_ScriptId, "邪ng �", 8, 15 )
      AddNumText( sceneId, x125021_g_ScriptId, "B� qua", 8, 20 )
    EndEvent(sceneId)
    DispatchEventList(sceneId,selfId,targetId)

	elseif Num == 7  then
    BeginEvent(sceneId)
      AddText(sceneId,"#BTh錸g c Minh Ch� 邪ng Y陁 嗅i");
      AddText(sceneId,"  Th錸g c Minh Ch� 邪ng Y陁 嗅i ti陁 hao#r#G    40 c醝 Minh Ch� 邪ng Y陁 嗅i to醝 phi猲 #W#r  C醕 h� c� mu痭 ?");
      AddNumText( sceneId, x125021_g_ScriptId, "邪ng �", 8, 16 )
      AddNumText( sceneId, x125021_g_ScriptId, "B� qua", 8, 20 )
    EndEvent(sceneId)
    DispatchEventList(sceneId,selfId,targetId)
	end
		
	if Num == 10  then
    x125021_ChangeItem( sceneId, selfId, 1 )
	elseif Num == 11  then
    x125021_ChangeItem( sceneId, selfId, 2 )
	elseif Num == 12  then
		x125021_ChangeItem( sceneId, selfId, 3 )
	end
	
	if Num == 13  then
		x125021_UpdateItem( sceneId, selfId, 1 )
	elseif Num == 14  then
		x125021_UpdateItem( sceneId, selfId, 2 )
	elseif Num == 15  then
		x125021_UpdateItem( sceneId, selfId, 3 )
	end	
	
	if Num == 16  then
		x125021_StoneToItem(sceneId, selfId)
	end
	
	if Num == 20  then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
	end

end

--**********************************
-- 碎片换腰带
--**********************************
function x125021_StoneToItem(sceneId, selfId)
	
	BeginAddItem(sceneId)
		AddItem( sceneId, x125021_g_Item_1, 1 )
	local ret = EndAddItem(sceneId,selfId)
	
	-- 腰带碎片的ID
	local nStoneId = 40004434
	if ret > 0  then
		if LuaFnGetAvailableItemCount(sceneId, selfId, nStoneId)>=40 then
			LuaFnDelAvailableItem(sceneId,selfId,nStoneId,40)
			AddItemListToHuman(sceneId,selfId)
			x125021_DispatchTips(sceneId,selfId,1)
			-- 添加一个兑换日志
			LuaFnAuditPlayerBehavior(sceneId, selfId, "To醝 phi猲 鸨i Y陁 嗅i");
		else
			x125021_DispatchTips(sceneId,selfId,0)
		end
		
	else
		x125021_DispatchTips(sceneId,selfId,-2)
	end
	
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)
end

--**********************************
--x125021_UpdateItem
--**********************************
function x125021_UpdateItem( sceneId, selfId, nIndex )
	if nIndex == 1  then
	
		BeginAddItem(sceneId)
			AddItem( sceneId, x125021_g_Item_2, 1 )
		local ret = EndAddItem(sceneId,selfId)
		if ret > 0  then
			if LuaFnGetAvailableItemCount(sceneId,selfId,x125021_g_StoneId)>=9 and
				LuaFnGetAvailableItemCount(sceneId,selfId,x125021_g_Item_1)>=1  then
				
				LuaFnDelAvailableItem(sceneId,selfId,x125021_g_StoneId,9)
				LuaFnDelAvailableItem(sceneId,selfId,x125021_g_Item_1,1)
				
				AddItemListToHuman(sceneId,selfId)
				-- 添加装备升级日志
				LuaFnAuditPlayerBehavior(sceneId, selfId, "邪ng Y陁 嗅i 鸨i Ng鈔 Y陁 嗅i");

		    	x125021_DispatchTips(sceneId,selfId,1)
				return
			end
		end
		
	elseif nIndex == 2  then
		
		if GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId) < 500000   then  
			x125021_DispatchTips(sceneId,selfId,-1)
			return
		end
	
		BeginAddItem(sceneId)
			AddItem( sceneId, x125021_g_Item_3, 1 )
		local ret = EndAddItem(sceneId,selfId)
		if ret > 0  then
			if LuaFnGetAvailableItemCount(sceneId,selfId,x125021_g_StoneId)>=90 and
				LuaFnGetAvailableItemCount(sceneId,selfId,x125021_g_Item_2)>=1  then
				
				LuaFnDelAvailableItem(sceneId,selfId,x125021_g_StoneId,90)
				LuaFnDelAvailableItem(sceneId,selfId,x125021_g_Item_2,1)
				
				-- 扣G
				--CostMoney(sceneId,selfId,500000)
				LuaFnCostMoneyWithPriority( sceneId, selfId, 500000 )  
				
				AddItemListToHuman(sceneId,selfId)
				-- 添加装备升级日志
				LuaFnAuditPlayerBehavior(sceneId, selfId, "Ng鈔 Y陁 嗅i 鸨i Kim Y陁 嗅i");

		    	x125021_DispatchTips(sceneId,selfId,1)
				return
			end
		end
		
	elseif nIndex == 3  then
		
		if GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId)< 1000000   then
			x125021_DispatchTips(sceneId,selfId,-1)
			return
		end
	
		BeginAddItem(sceneId)
			AddItem( sceneId, x125021_g_Item_4, 1 )
		local ret = EndAddItem(sceneId,selfId)
		if ret > 0  then
			if LuaFnGetAvailableItemCount(sceneId,selfId,x125021_g_StoneId)>=400 and
					LuaFnGetAvailableItemCount(sceneId,selfId,x125021_g_Item_3)>=1  then
				
				LuaFnDelAvailableItem(sceneId,selfId,x125021_g_StoneId,400)
				LuaFnDelAvailableItem(sceneId,selfId,x125021_g_Item_3,1)
				
				-- 扣G
				--CostMoney(sceneId,selfId,1000000)
				LuaFnCostMoneyWithPriority( sceneId, selfId, 1000000 )  
				AddItemListToHuman(sceneId,selfId)
				
				
				-- 添加装备升级日志
				LuaFnAuditPlayerBehavior(sceneId, selfId, "Kim Y陁 嗅i 鸨i Th B鋙 Y陁 嗅i");
	    	x125021_DispatchTips(sceneId,selfId,1)
		    	
		    -- 发送世界公告
				local szTransferEquip = GetItemTransfer(sceneId,selfId,0)
		    
				local str = ""
				str = format("#PVu C豼 Li阯 : Thi阯 h� anh h鵱g 瘊ng l� anh h鵱g thi阯 h� ! #{_INFOUSR%s} giang h� t呓ng truy玭 t読 Phong Thi玭 朽i huy猼 chi猲 k竎h li畉, cu痠 c鵱g c鹡g gi鄋h 疬㧟 ch裞 v� V� L鈓 Minh Ch� ! v� #{_INFOMSG%s}", GetName(sceneId,selfId), szTransferEquip)
				BroadMsgByChatPipe(sceneId, selfId, str, 4)
		    
				return
			end
		end
		
	end
	
  x125021_DispatchTips(sceneId,selfId,0)
  
end

--**********************************
--x125021_ChangeItem
--**********************************
function x125021_ChangeItem( sceneId, selfId, nIndex )
	if nIndex == 1  then
		BeginAddItem(sceneId)
			AddItem( sceneId, x125021_g_StoneId, 1 )
		local ret = EndAddItem(sceneId,selfId)
		if ret > 0  then
			if LuaFnDelAvailableItem(sceneId,selfId,x125021_g_Item_1,1) == 1  then
				AddItemListToHuman(sceneId,selfId)
				--添加兑换日志
				LuaFnAuditPlayerBehavior(sceneId, selfId, "邪ng Y陁 嗅i 鸨i 1 Minh Ch� ");
			    x125021_DispatchTips(sceneId,selfId,1)
			    return
			end
		end
		
	elseif nIndex == 2  then
		BeginAddItem(sceneId)
			AddItem( sceneId, x125021_g_StoneId, 10 )
		local ret = EndAddItem(sceneId,selfId)
		if ret > 0  then
			if LuaFnDelAvailableItem(sceneId,selfId,x125021_g_Item_2,1) == 1  then
				AddItemListToHuman(sceneId,selfId)
				--添加兑换日志
				LuaFnAuditPlayerBehavior(sceneId, selfId, "Ng鈔 y陁 疳i 鸨i 10 minh ch� ");
			    x125021_DispatchTips(sceneId,selfId,1)
			    return
			end
		end
		
	elseif nIndex == 3  then
		BeginAddItem(sceneId)
			AddItem( sceneId, x125021_g_StoneId, 100 )
		local ret = EndAddItem(sceneId,selfId)
		if ret > 0  then
			if LuaFnDelAvailableItem(sceneId,selfId,x125021_g_Item_3,1) == 1  then
				AddItemListToHuman(sceneId,selfId)
				--添加兑换日志
				LuaFnAuditPlayerBehavior(sceneId, selfId, "Kim y陁 疳i 鸨i 100 minh ch� ");
			  	x125021_DispatchTips(sceneId,selfId,1)
			    return
			end
		end
		
	end
	
 	x125021_DispatchTips(sceneId,selfId,0)  
  return
  
end

function x125021_DispatchTips(sceneId,selfId,bOk)
	if bOk == 0  then
	  BeginEvent(sceneId)
	    AddText(sceneId,"Ho醤 鸨i th b読, vui l騨g ki琺 tra l読 v ph");
	  EndEvent(sceneId)
	  DispatchMissionTips(sceneId,selfId)
	elseif bOk == -1  then
	  BeginEvent(sceneId)
	    AddText(sceneId,"Kh鬾g 瘘 ng鈔 l唼ng");    
	  EndEvent(sceneId)
	  DispatchMissionTips(sceneId,selfId)
	elseif bOk == -2  then
	  BeginEvent(sceneId)
	    AddText(sceneId,"Thi猽 kh鬾g gian t鷌 餰o");
	  EndEvent(sceneId)
	  DispatchMissionTips(sceneId,selfId)
	else
	  BeginEvent(sceneId)
	    AddText(sceneId,"Ho醤 鸨i th鄋h c鬾g");
	  EndEvent(sceneId)
	  DispatchMissionTips(sceneId,selfId)
	end
	
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)
end
