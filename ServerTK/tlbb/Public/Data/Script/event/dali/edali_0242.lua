-- 210242
-- 暑期活动，兑换企鹅蛋

x210242_g_ScriptId = 210242

x210242_g_ItemId = {30505114,30505115,30505116,30505117,30505118,30505119,30505120,}

x210242_g_PetEggId = 30505121

-- 掉落七星碎片活动时间[2007/7/1, 2007/9/27]
x210242_g_Drop_QiXingSuiPian_StartDay = 7181 --2007/7/1开始
x210242_g_Drop_QiXingSuiPian_EndDay = 7269 --2007/9/27结束

-- 兑换企鹅蛋活动时间[2007/7/1, 2007/10/31]
x210242_g_ExchangePenguinEggStartDay	= 7181 --2007/7/1开始
x210242_g_ExchangePenguinEggEndDay		= 7303 --2007/10/31结束
	
--**********************************
--任务入口函数
--**********************************
function x210242_OnDefaultEvent( sceneId, selfId, targetId )
	
	-- 活动时间，只在这个活动时间内能显示这个对话
	if x210242_IsValidPenguinEggExchangeTime() == 0    then
		BeginEvent(sceneId)
			AddText(sceneId, "#Y 斜i X� Nga" );
			AddText(sceneId, "    Ho誸 鸬ng 疸 qu� h課." );
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if GetNumText() == 1   then
		BeginEvent(sceneId)
			AddText(sceneId, "#Y 斜i X� Nga" );
			AddText(sceneId, "  Trong c醝 n髇g c黙 m鵤 H�, c醕 h� c� mu痭 1 t� gi� kh鬾g ? C� mu痭 1 ly th裞 u痭g l課h kh鬾g ? C� mu痭 1 t� thanh th鋘 s鋘 kho醝 kh鬾g ?" );
			AddText(sceneId, "  Ch� c c� 瘘 b� 7 mi猲g m鋘h v鴑, l� c� th� 鹫t 疬㧟 r癷!" );
			AddText(sceneId, "  M祎 v� kh鬾g bi猼 t阯, 疸 d鵱g s� m鋘h v鴑 n鄖 mang 皙n cho th� gi緄 Thi阯 Long B醫 B� c鄋g th阭 tho鋓 m醝, 瓞 l鄊 qu� tg, ng叨i c騨 nh� ta tg cho nh鎛g ng叨i thu th 瘘 m鋘h v鴑 th tinh 1 m髇 qu�! " );
			AddText(sceneId, "  M祎 con X� Nga 疳ng y陁!" );
			AddText(sceneId, "  C醕 h� x醕 nh mu痭 鸨i tr裯g X� Nga kh鬾g ?" );
			AddNumText(sceneId, x210242_g_ScriptId,"Duy畉", 8, 3);
			AddNumText(sceneId, x210242_g_ScriptId,"Hu�", 8, 4);
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	if GetNumText() == 4   then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		return
	end
	
	if GetNumText() == 3   then
		
		-- 1，检测玩家身上是不是有一套碎片，
		local HaveAllItem = 1
		for i, ItemId in x210242_g_ItemId  do
			if GetItemCount(sceneId, selfId, ItemId) < 1   then
				HaveAllItem = 0
			end
			if GetItemCount(sceneId, selfId, ItemId) == 1   then
				BagHavePos = 1
			end
		end
		
		if HaveAllItem == 0  then
			BeginEvent(sceneId)
				AddText(sceneId, "    斜i tr裯g X� Nga c Kim, M礳, Th鼀, H鯽, Th�, Nh, Nguy畉 7 lo読 m鋘h v鴑 m瞚 th� 1 c醝, tr阯 ng叨i c醕 h� kh鬾g 瘘 m鋘h v鴑 n阯 kh鬾g th� ti猲 h鄋h 鸨i." );
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		-- 2，检测玩家的这套碎片是不是都能够删除
		local AllItemCanDelete = 1
		for i, ItemId in x210242_g_ItemId  do
			if LuaFnGetAvailableItemCount(sceneId, selfId, ItemId) < 1   then
				AllItemCanDelete = 0
				break;
			end
		end
		
		if AllItemCanDelete == 0  then
			BeginEvent(sceneId)
				AddText(sceneId, "    Kh tr� v ph tr阯 ng叨i c醕 h� th b読, xin ki琺 tra l読 ph鋓 ch錸g v ph 疸 b� kh骯 ho v ph 餫ng trong tr課g th醝 giao d竎h." );
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		-- 3，检测玩家身上是不是有空间放奖励
	 	BeginAddItem(sceneId)
			AddItem( sceneId, x210242_g_PetEggId, 1 )
		local ret = EndAddItem(sceneId,selfId)
		
		local delret = 1
		if ret == 1  then
			for i, ItemId in x210242_g_ItemId  do
				if LuaFnDelAvailableItem(sceneId, selfId, ItemId, 1) == 0   then
					delret = 0
					break
				end
			end
			
			if delret == 1  then
				AddItemListToHuman(sceneId,selfId)
				-- 发世界公告
				local transfer = GetItemTransfer(sceneId,selfId,0)
				local str = format("#cff99cc #{_INFOUSR%s} tr鋓 qua nh鎛g n� l馽, cu痠 c鵱g c鹡g thu 疬㧟 瘘 b� Kim Tinh, M礳 Tinh, Th鼀 Tinh, H鯽 Tinh, Th� Tinh, M Tr錸g v� M Tr秈 7 b鋣 mi猲g m鋘h v鴑. 鞋 皤n 疳p, C黱g Th醝 V鈔 � 姓i L� 疸 tg cho 1 vi阯 #{_INFOMSG%s}. ",GetName(sceneId,selfId), transfer)
				BroadMsgByChatPipe(sceneId, selfId, str, 4)
				LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,1000)

				BeginUICommand(sceneId)
				EndUICommand(sceneId)
				DispatchUICommand(sceneId,selfId, 1000)
			end
		end
		return

	end
	
	if GetNumText() == 2   then
		BeginEvent(sceneId)
			AddText(sceneId, "#Y 斜i X� Nga" );
			AddText(sceneId, "#{duihuanqie_shuoming}" );
			
			--AddText(sceneId, "    炎热的夏天里，你想不想要一阵凉风？想不想要一杯冷饮？想不想要一丝清爽？" );
			--AddText(sceneId, "    只要有全部七颗七星碎片，你就都可以获得啦！" );
			--AddText(sceneId, "    一位不知名的长者，可以使用这些碎片来让天龙八部的世界变得更加清爽，而作为奖励，他还托我送给收集七星碎片的人一件最清爽的礼物！" );
			--AddText(sceneId, "    一只可爱的企鹅！" );
			--AddText(sceneId, "    碎片对应的星宿不同，其中最为难得的是太阳碎片。只有在采集草药或者采集矿石的时候，才有可能获得七星碎片当中的一种。" );
			--AddText(sceneId, "    当你凑齐金星碎片，木星碎片，水星碎片，火星碎片，土星碎片，月亮碎片，太阳碎片之后，把它们交给我。我就可以代那位长者送给你一枚天下罕见的企鹅蛋。企鹅蛋可以在你等级大于等于55级时使用，使用后将会召唤出一只企鹅宝宝作为你的珍兽。" );
			--AddText(sceneId, "    需要说明的是，七星碎片只有聚集在一起的时候才有价值。当然您多余的一些碎片可以出售给商店换取少量的金钱。" );
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
end

--**********************************
--列举事件
--**********************************
function x210242_OnEnumerate( sceneId, selfId, targetId )
	
	-- 活动有效时间判定
	if x210242_IsValidPenguinEggExchangeTime() == 0    then
		-- 活动如果已经过期，就不再显示这些内容
		return
	end

	AddNumText(sceneId, x210242_g_ScriptId,"Ta mu痭 鸨i tr裯g X� Nga", 6, 1);
	AddNumText(sceneId, x210242_g_ScriptId,"Li阯 quan 鸨i tr裯g X� Nga", 0, 2);

end

--**********************************
--检测接受条件
--**********************************
function x210242_CheckAccept( sceneId, selfId )
end

--**********************************
--接受
--**********************************
function x210242_OnAccept( sceneId, selfId, targetId )
end

--**********************************
--放弃
--**********************************
function x210242_OnAbandon( sceneId, selfId )
end


--**********************************
--检测是否可以提交
--**********************************
function x210242_CheckSubmit( sceneId, selfId )
end

--**********************************
--提交
--**********************************
function x210242_OnSubmit( sceneId, selfId, targetId, selectRadioId )
end

--**********************************
--进入区域事件
--**********************************
function x210242_OnEnterZone( sceneId, selfId, zoneId )
end


-- 是否合法兑换企鹅蛋活动时间
function x210242_IsValidPenguinEggExchangeTime()
	local theDay = GetDayTime()
	if theDay < x210242_g_ExchangePenguinEggStartDay or
		 theDay > x210242_g_ExchangePenguinEggEndDay then
		return 0 --非活动时间
	end
	
	return 1
end

--**********************************
--玩家获得太阳石 的时候，在掉落包内获得
--**********************************
function x210242_PickupItem( sceneId, selfId, itemId, bagidx )
	-- #cff99cc X刨出了一块怪石，擦干净泥土之后，才发现居然是一块Y。
	local transfer = GetBagItemTransfer(sceneId, selfId, bagidx)
	local str = format("#cff99cc #{_INFOUSR%s} l鄊 ra 1 vi阯 疳, sau khi mang 餴 r豠 s誧h s�, th� m緄 ph醫 hi畁 ra l� #{_INFOMSG%s}. ",GetName(sceneId,selfId), transfer)
	BroadMsgByChatPipe(sceneId, selfId, str, 4)
	
end

function x210242_CheckPercentOK( numerator, denominator )
  --参数为分子,分母. 例如 ( 100, 10000 ) 表示几率为 100 / 10000
  local roll = random( denominator )
  if roll <= numerator then
      return 1
  end
  return 0
end

--**********************************
--检测是否正确的活动时间(掉落七星碎片)
--**********************************
function x210242_IsValidDayToDrop_QiXingSuiPian()
    local DayTime = GetDayTime()
    if DayTime < x210242_g_Drop_QiXingSuiPian_StartDay or
    	 DayTime > x210242_g_Drop_QiXingSuiPian_EndDay	 then
       return 0    --非活动时间
    end
    
    return 1  
end

function x210242_DropStoneList(sceneId, LongzhuIndex) 
  --金	0.0200 	0.00667
	--木	0.0050 	0.00167
	--水	0.0020 	0.00067
	--火	0.0011 	0.00037
	--土	0.0007 	0.00023
	--月	0.0004 	0.00013
	--日	0.0002 	0.00007

  if 0 == x210242_IsValidDayToDrop_QiXingSuiPian()  then
  	return -1
  end
  
  if 1 == LongzhuIndex then
      local CheckOK = x210242_CheckPercentOK( 667, 100000 )--0.00667
      if 1 == CheckOK then
          return 30505114
      end
  end
  
  if 2 == LongzhuIndex then
      local CheckOK = x210242_CheckPercentOK( 167, 100000 )
      if 1 == CheckOK then
          return 30505115
      end
  end
  
  if 3 == LongzhuIndex then
      local CheckOK = x210242_CheckPercentOK( 67, 100000 )
      if 1 == CheckOK then
          return 30505116
      end
  end
  
  if 4 == LongzhuIndex then
      local CheckOK = x210242_CheckPercentOK( 37, 100000 )
      if 1 == CheckOK then
          return 30505117
      end
  end
  
  if 5 == LongzhuIndex then
      local CheckOK = x210242_CheckPercentOK( 23, 100000 )
      if 1 == CheckOK then
          return 30505118
      end
  end
  
  if 6 == LongzhuIndex then
      local CheckOK = x210242_CheckPercentOK( 13, 100000 )
      if 1 == CheckOK then
          return 30505119
      end
  end
  
  if 7 == LongzhuIndex then
      local CheckOK = x210242_CheckPercentOK( 7, 100000 )
      if 1 == CheckOK then
          return 30505120
      end
  end
  
  return -1
    
end
