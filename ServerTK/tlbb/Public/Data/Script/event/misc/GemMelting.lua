--宝石熔炼

--脚本号
x800118_g_ScriptId	= 800118


function x800118_OnGemMelting( sceneId, selfId, GemItemPos1, GemItemPos2, GemItemPos3, NeedItemPos )

	if GemItemPos1 == -1 or GemItemPos2 == -1 or GemItemPos3 == -1 or NeedItemPos == -1 then
		return
	end

	--是否在安全时间内....这个判断函数里面自己有提示信息....
	if IsPilferLockFlag(sceneId, selfId) <= 0 then
		return
	end
	
	-- 不允许有重复的bagIndexList出现 added by dun.liu 2009.2.5
	if ScriptGlobal_IsUniqueNumberTable({GemItemPos1, GemItemPos2, GemItemPos3}) == 0 then
		return
	end

	local GemItemID1 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, GemItemPos1 )
	local GemItemID2 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, GemItemPos2 )
	local GemItemID3 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, GemItemPos3 )
	local NeedItemID = LuaFnGetItemTableIndexByIndex( sceneId, selfId, NeedItemPos )

	--检测是否是有同样的宝石....
	if GemItemID1 ~= GemItemID2 or GemItemID1 ~= GemItemID3 then
		x800118_NotifyTip( sceneId, selfId, "B鋙 th誧h kh鬾g 鸢ng nh, dung luy畁 th b読" )
		return
	end

	--检测是否可以熔炼....
	local ProductID, NeedID, NeedMoney = LuaFnGetGemMeltingInfo( GemItemID1 )
	if  -1 == ProductID then
		x800118_NotifyTip( sceneId, selfId, "B鋙 th誧h kh鬾g th� dung luy畁, dung luy畁 th b読 !" )
		return
	end

	--检测是否有所需物品....
	if NeedID ~= NeedItemID then
		x800118_NotifyTip( sceneId, selfId, "V ph dung luy畁 c thi猼 th b読, dung luy畁 th b読" )
		return
	end

	--检测金钱是否足够....
	local PlayerMoney = GetMoney( sceneId, selfId ) +  GetMoneyJZ(sceneId, selfId)  --交子普及 Vega
	if PlayerMoney < NeedMoney then
		x800118_NotifyTip( sceneId, selfId, "Kh鬾g 瘘 ng鈔 l唼ng, dung luy畁 th b読" )
		return
	end

	--检测产物是否需要绑定....
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

	--扣除宝石和所需物品....
	--local GemItemInfo = GetBagItemTransfer( sceneId, selfId, GemItemPos1 )
	local NeedItemInfo = GetBagItemTransfer( sceneId, selfId, NeedItemPos )

	local ret = -1
	ret = LuaFnIsItemAvailable( sceneId, selfId, GemItemPos1 )
	if ret ~= 1 then
		x800118_NotifyTip( sceneId, selfId, "B鋙 th誧h kh鬾g th� s� d鴑g, dung luy畁 th b読 !" )
		return
	end
	ret = LuaFnIsItemAvailable( sceneId, selfId, GemItemPos2 )
	if ret ~= 1 then
		x800118_NotifyTip( sceneId, selfId, "B鋙 th誧h kh鬾g th� s� d鴑g, dung luy畁 th b読 !" )
		return
	end
	ret = LuaFnIsItemAvailable( sceneId, selfId, GemItemPos3 )
	if ret ~= 1 then
		x800118_NotifyTip( sceneId, selfId, "B鋙 th誧h kh鬾g th� s� d鴑g, dung luy畁 th b読 !" )
		return
	end
	ret = LuaFnIsItemAvailable( sceneId, selfId, NeedItemPos )
	if ret ~= 1 then
		x800118_NotifyTip( sceneId, selfId, "S� d鴑g nguy阯 li畊 th b読, dung luy畁 th b読 !" )
		return
	end


	-- 必须保证扣除物品全部成功，任何一次失败都导致无法合成宝石，并且已经扣除的宝石不归还，added by dun.liu 2009.2.5
	if LuaFnEraseItem( sceneId, selfId, GemItemPos1 ) == 0 then
		x800118_NotifyTip( sceneId, selfId, "Kh tr� v ph th b読, dung luy畁 th b読 !" )
		return
	end
	
	if LuaFnEraseItem( sceneId, selfId, GemItemPos2 ) == 0 then
		x800118_NotifyTip( sceneId, selfId, "Kh tr� v ph th b読, dung luy畁 th b読 !" )
		return
	end
	
	if LuaFnEraseItem( sceneId, selfId, GemItemPos3 ) == 0 then
		x800118_NotifyTip( sceneId, selfId, "Kh tr� v ph th b読, dung luy畁 th b読 !" )
		return
	end
	
	if LuaFnEraseItem( sceneId, selfId, NeedItemPos ) == 0 then
		x800118_NotifyTip( sceneId, selfId, "Kh tr� v ph th b読, dung luy畁 th b読 !" )
		return
	end


	--扣钱....
	ret = LuaFnCostMoneyWithPriority( sceneId, selfId, NeedMoney )      --交子普及 Vega
	if ret < 0 then
		x800118_NotifyTip( sceneId, selfId, "Kh鬾g 瘘 ng鈔 l唼ng, dung luy畁 th b読" )
		return
	end

	--给玩家熔炼后的宝石....不用检测背包是否有地方....没地方前边也del出地方了....
	local BagIndex = TryRecieveItem( sceneId, selfId, ProductID, QUALITY_MUST_BE_CHANGE )
	if BagIndex == -1 then
		x800118_NotifyTip( sceneId, selfId, "Tai n鉯 疸 馥y, dung luy畁 th b読" )
		return
	end
	if bNeedBind == 1 then
		LuaFnItemBind(sceneId, selfId, BagIndex)
	end
	local ProductItemInfo = GetBagItemTransfer( sceneId, selfId, BagIndex )

	--统计....
	LuaFnAuditGemMelting( sceneId, selfId, GemItemID1, GemItemID2, GemItemID3, NeedItemID, ProductID )

	--醒目提示....
	x800118_NotifyTip( sceneId, selfId, "3 vi阯 #{_ITEM"..GemItemID1.."}, dung luy畁 th鄋h c鬾g th鄋h #{_ITEM"..ProductID.."}." )

	--公告....
	if LuaFnGetItemQuality(ProductID) >= 3 then
		local MeltingNPCTbl =
		{
			[0]   = "L誧 D呓ng (178,185) B鄋h Ho鄆 Ng鱟",
			[420] = "Th鷆 H� C� Tr (134,84) Kim Kh鋗 Th馽",
			[186] = "L鈛 Lan (74,161) Kh L� M礳",
		}
		local NPCInfo = MeltingNPCTbl[sceneId]
		local PlayerName = GetName(sceneId, selfId)
		local strText = format("#{JKBS_081021_016}#{_INFOUSR%s}#{JKBS_081021_017}#{_ITEM%s}#{JKBS_081021_018}#{_INFOMSG%s}#{JKBS_081021_019}%s#{JKBS_081021_020}#{_INFOMSG%s}#{JKBS_081021_021}", PlayerName, GemItemID1, NeedItemInfo, NPCInfo, ProductItemInfo )
		BroadMsgByChatPipe(sceneId,selfId, strText, 4)
	end

	--熔炼成功特效....
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 49, 0)

end

--**********************************
--醒目提示
--**********************************
function x800118_NotifyTip( sceneId, selfId, Msg )

	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
