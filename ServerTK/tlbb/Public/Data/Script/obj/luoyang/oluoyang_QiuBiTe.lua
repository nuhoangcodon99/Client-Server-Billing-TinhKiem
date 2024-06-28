--情人节活动
--兑换情人节礼物

--脚本号
x000152_g_ScriptId = 000152

x000152_StartTime   = 14044 --14/2/2014
x000152_EndTime     = 14059 --01/03/2014

x000152_g_Gift = 	30501166

x000152_item1 = 20700011 --t靚h nh鈔 k猼
x000152_item1_need = 520
x000152_item1_recv = 30504132 --Tr裯g tr鈔 th�: Ch呓ng Ng�
x000152_item2 = 20700012 --si t靚h ng鱟
--buffer对应的ID
x000152_BufferID = 74

x000152_g_GiftTbl = {
	30505193,
	30505194,
	38000529,
}

x000152_ItemList_ThuCuoi_VIP ={
	30309724,-- Tr裯g tr鈔 th�: Ni阯 Th� 85
	30309725,-- Tr裯g tr鈔 th�: Ni阯 Th� 95 
	30505121, --Tr裯g X� Nga V呓ng
	30309095, --Tr裯g tr鈔 th� : Mao Mao Ng遳
	30309092,--Tr裯g tr鈔 th� : Th醝 Th唼ng Long T�
	38000529, --B� T竎h T鄋 Di畃
	30309097,--Tr裯g tr鈔 th� : Ti瑄 L鉵g Nh鈔
	30309098, --Tr裯g tr鈔 th� : Phong 衖瑄
	30309091, --Tr裯g tr鈔 th� : An T�
	30309096,--Tr裯g tr鈔 th� : Gi鋘 Ti瑄 Hoa
	30309094,-- Tr裯g tr鈔 th� : Th醤h Trang Ti瑄 L礳
	30309092,-- Tr裯g tr鈔 th� : Th醝 Th唼ng Long T�
	30309093 , --Tr裯g tr鈔 th� : C鬾 Lu鈔 Ti阯 Tu
--10141431,--M� V� v頽h c豼
--10141432,--Th� c咿i: V鈔 Th鼀 Kim T靚h Th�
--10141433,--Th� c咿i: X韈h Ti陁 Vi阭 Lang
--10141434,--Th� c咿i: Thi阯 H� Linh Th呔c

--10141435,--Th� c咿i: H Thi阯 M�
--10141436,--Th� c咿i: U Lam H鋓 Long
--10141437,--Th� c咿i: Huy玭 邪ng H鋓 Long
--10141438,--Th� c咿i: 羗 Vi阯 H Thi阯 V鈔
--10141439,--Th� c咿i: 羗 Vi阯 B誧h Thi阯 V鈔

--Add th� 6/2013
10141470,--T鱝 k�: Tinh H皀g V鈔 Ch鈛
10141476,--Th� c咿i: 羗 Vi阭 Minh S�
10141483,--Th� c咿i: H� Kh鬾g H鵱g H皀
10141489,--Th� c咿i: T叨ng V鈔 H誧
-- Add th� 10/2013
--10141505,--Th� c咿i: 縩g Long Huy璶 H皀

-- Add th� DM
--10141492,--Th� c咿i: Kim Ti玭 B醥
--10141493,--Th� c咿i: V鈔 Tuy猼 B醥
--10141497,--Th� c咿i: U Minh B醥
-- Add thu 1/2014
--10141521,--T鱝 k�: Nhung Tuy猼 Th Ng遳
10141546,--T鱝 k�: 效u 效u Tuy猼 Khi陁
10141534,--T鱝 k�: Th呓ng H鋓 Long C鈛
--10141540,--T鱝 k�: B醕h Bi猲 Kim C呓ng

10141507,--C醤h: Vi阭 V� 30

10141535,--T鱝 k�: Th呓ng H鋓 Long C鈛 30
}

--**********************************
--事件交互入口
--**********************************
function x000152_OnDefaultEvent( sceneId, selfId,targetId  )
	BeginEvent(sceneId)
		AddText(sceneId,"#{QRJ_81009_02}")
		local curDayTime = GetDayTime()
		if (curDayTime>=x000152_StartTime and curDayTime<x000152_EndTime) then
			AddNumText(sceneId,x000152_g_ScriptId,"Nh l頽h 羒 Th Chi Ti璶",6,0)
			AddNumText(sceneId,x000152_g_ScriptId,"斜i ph th叻ng N� H鬾 羒 Th",6,1)
			AddNumText(sceneId,x000152_g_ScriptId,"Hoa H皀g Truy玭 T靚h",6,1000)
		end 
		AddNumText(sceneId,x000152_g_ScriptId,"Li阯 quan ho誸 鸬ng N� H鬾 羒 Th",11,2)
		AddNumText(sceneId, x000152_g_ScriptId, "#{YHJZ_081007_2}", 11, 3);
		
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--事件列表选中一项
--**********************************
function x000152_OnEventRequest( sceneId, selfId, targetId, eventId )
		
		if GetNumText() == 0 then
			x000152_GiveArrow(sceneId, selfId, targetId, eventId)
		elseif GetNumText() == 1 then
			x000152_GiveGift(sceneId, selfId, targetId, eventId)
		elseif GetNumText() == 2 then
			x000152_NotifyFailBox(sceneId, selfId,targetId,"#{QRJ_81009_01}")
		elseif GetNumText() == 3 then
			x000152_NotifyFailBox(sceneId, selfId, targetId,"#{YHJZ_081007_48}")
		elseif GetNumText() == 1000 then --hoa hong truyen tinh
			BeginEvent(sceneId)
				AddNumText(sceneId,x000152_g_ScriptId,"Nh ph th叻ng Hoa H皀g Truy玭 T靚h",6,1001)
				AddNumText(sceneId,x000152_g_ScriptId,"斜i danh hi畊 Hoa H皀g Truy玭 T靚h",6,1002)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			
		elseif GetNumText() == 1001 then
			x000152_hoahong_truyentinh(sceneId, selfId, targetId, eventId)
		elseif GetNumText() == 1002 then
			x000152_doidanhhieu_truyentinh(sceneId, selfId, targetId, eventId)
		end
		
end

--**********************************
-- 对话窗口信息提示
--**********************************
function x000152_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

function x000152_GiveArrow(sceneId, selfId, targetId, eventId)
		--20级的限制
		if GetLevel( sceneId, selfId ) < 20 then
			x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_03}" )
			return
		end
		
		--判断今天是否领过
		local td = GetDayTime()
		local LastGetGiftTime = GetMissionData(sceneId,selfId,MD_QINGRENJIE_ARROWDAY)
		if td <= LastGetGiftTime then
				x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_04}" )
			return
		    --SetMissionData( sceneId, selfId, MD_QINGRENJIE_ARROWCOUNT, 0 )
		    SetMissionData( sceneId, selfId, MD_QINGRENJIE_ARROWDAY, td )			
		end 
		
		-- 检查背包空间
		if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
				BeginEvent(sceneId)
				AddText( sceneId, "#{QRJ_81009_14}" )
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
		else
			
				--给玩家东西，完成
			BeginAddItem( sceneId )
				local nIndex = AddItem( sceneId, x000152_g_Gift, 1 )
			local ret = EndAddItem( sceneId, selfId )
			if ret <= 0 then 
				return
			end
			AddItemListToHuman(sceneId,selfId)
			--返回NPC的对话 
			x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_24}" )
			
			--醒目提示
			BeginEvent(sceneId) 
				AddText( sceneId, "#{QRJ_81009_25}" )
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			--SetMissionData(sceneId, selfId, MD_QINGRENJIE_ARROWCOUNT,1)
			SetMissionData(sceneId, selfId, MD_QINGRENJIE_ARROWDAY,td)
		end
		
end 
--**********************************
-- 对话窗口信息提示
--**********************************
function x000152_GiveGift(sceneId, selfId, targetId, eventId)

	if LuaFnHasTeam( sceneId, selfId ) == 0 then
		x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_06}" )
		return
	end
	if LuaFnIsTeamLeader( sceneId, selfId ) == 0 then 
		x000152_NotifyFailBox( sceneId, selfId,targetId, "#{QRJ_81009_07}" )
		return
	end
	
	if GetTeamSize( sceneId, selfId ) ~=2 then
	  x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_08}" )
	  return
	end
	
		-- 取得玩家附近的队友数量（包括自己）
	local nearteammembercount = GetNearTeamCount( sceneId, selfId )
	
	if nearteammembercount ~= LuaFnGetTeamSize( sceneId, selfId ) then
		x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_09}" )
		return
	end
	
	--两队员的GUID,再转化为OBjID
	local ID1 = GetNearTeamMember( sceneId, selfId, 0 )
	local ID2 = GetNearTeamMember( sceneId, selfId, 1 )
	
	--判断两人的性别
	if (LuaFnGetSex(sceneId,ID1) == LuaFnGetSex(sceneId,ID2)) then
		x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_10}" )
		return
	end
	
	--判断今天是否领过
	local td = GetDayTime()
	local LastSelfGiftTime  = GetMissionData(sceneId,ID1,MD_QINGRENJIE_KISSDAY)
	
	--记录已经领奖的人数
	local iCount = 0
	--记录已经领奖的人名
	local strName =""
	
	--队长是否领过
	if (td <= LastSelfGiftTime) then
		iCount =iCount+1
		strName = LuaFnGetName(sceneId,ID1)
		--x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_12}"..LuaFnGetName(sceneId,ID1).."#{QRJ_81009_13}" )
	end 
	
	--队员是否领过
	LastSelfGiftTime  = GetMissionData(sceneId,ID2,MD_QINGRENJIE_KISSDAY)
	
	if (td <= LastSelfGiftTime) then
		iCount =iCount+1
		strName = LuaFnGetName(sceneId,ID2)
		--x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_12}"..LuaFnGetName(sceneId,ID2).."#{QRJ_81009_13}" )
	end 
	
	if (iCount ==1) then
		x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_12}"..strName.."#{QRJ_81009_13}" )
		return 
	end
	if (iCount ==2) then
		x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81114_1}" )
		return 
	end
	
	--两个人同时有了爱神之吻
	if (0==LuaFnHaveImpactOfSpecificDataIndex(sceneId, ID1,x000152_BufferID) or 0==LuaFnHaveImpactOfSpecificDataIndex(sceneId, ID2,x000152_BufferID)) then
		x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_11}" )
		return
	end
	
	
	
	-- 队长检查背包空间
	if LuaFnGetPropertyBagSpace( sceneId, ID1 ) < 1 then
			--本人提示您的背包空间不够
			BeginEvent(sceneId)
			AddText( sceneId, "#{QRJ_81009_14}" )
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,ID1)
			--另一人提示AAA背包空间不够
			BeginEvent(sceneId)
			AddText( sceneId, LuaFnGetName(sceneId,ID1).."#{QRJ_81009_15}" )
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,ID2)
			return
	end 
		
	--队员检查背包空间
	if LuaFnGetPropertyBagSpace( sceneId, ID2 ) < 1 then
			--本人提示您的背包空间不够
			BeginEvent(sceneId)
			AddText( sceneId, "#{QRJ_81009_14}" )
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,ID2)
			--另一人提示AAA背包空间不够
			BeginEvent(sceneId)
			AddText( sceneId, LuaFnGetName(sceneId,ID2).."#{QRJ_81009_15}" )
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,ID1)
			return
	end 
		
	--删除两人身上的buffer
	LuaFnCancelSpecificImpact(sceneId, ID1,x000152_BufferID)
	LuaFnCancelSpecificImpact(sceneId, ID2,x000152_BufferID)
		
	--送两人爱神之吻奖励
	local nGiftIndex = x000152_RandomGift()

	BeginAddItem( sceneId )
	local nIndex = AddItem( sceneId, x000152_g_GiftTbl[nGiftIndex], 1 )
	local ret = EndAddItem( sceneId, ID1 )
	if ret <= 0 then 
		return
	end
	AddItemListToHuman(sceneId,ID1)
	SetMissionData(sceneId, ID1, MD_QINGRENJIE_KISSDAY,td)
	local str ="#{QRJ_81009_26}#{_ITEM"..x000152_g_GiftTbl[nGiftIndex].."}"
	--礼物的醒目提示
		BeginEvent(sceneId)
			AddText( sceneId, str)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,ID1)
	
	if (nGiftIndex ==3) then
		local	bagpos = GetBagPosByItemSn(sceneId, ID1, x000152_g_GiftTbl[nGiftIndex])
		local szTransferEquip = GetBagItemTransfer(sceneId,ID1, bagpos)
		local str = format( "#{_INFOUSR%s}".."#{QRJ_81009_23}#{_INFOMSG%s}#{QRJ_81009_27}", LuaFnGetName(sceneId,ID1),szTransferEquip)
		BroadMsgByChatPipe( sceneId, ID1, str, 4 )
		AuditQingRenJieShiZhuang(sceneId,ID1)
	end 
	
	--送第二个人爱神之吻奖励
	nGiftIndex = x000152_RandomGift()
	
	BeginAddItem( sceneId )
	nIndex = AddItem( sceneId, x000152_g_GiftTbl[nGiftIndex], 1 )
	local ret = EndAddItem( sceneId, ID2 )
	if ret <= 0 then 
		return
	end
	
	AddItemListToHuman(sceneId,ID2)
	str ="#{QRJ_81009_26}#{_ITEM"..x000152_g_GiftTbl[nGiftIndex].."}"
	--礼物的醒目提示
	BeginEvent(sceneId)
		AddText( sceneId, str)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,ID2)

	SetMissionData(sceneId, ID2, MD_QINGRENJIE_KISSDAY,td)
	if (nGiftIndex ==3) then
		local	bagpos = GetBagPosByItemSn(sceneId, ID2, x000152_g_GiftTbl[nGiftIndex])
		local szTransferEquip = GetBagItemTransfer(sceneId,ID2, bagpos)
		local str = format( "#{_INFOUSR%s}".."#{QRJ_81009_23}#{_INFOMSG%s}#{QRJ_81009_27}", LuaFnGetName(sceneId,ID2),szTransferEquip)
		BroadMsgByChatPipe( sceneId, ID2, str, 4 )
		AuditQingRenJieShiZhuang(sceneId,ID2)
	end 
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,ID1,18,0)
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,ID2,18,0)
	x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_16}" )
	
end

--**********************************
-- 随机物品的ID号
--**********************************
function x000152_RandomGift()
	local nMsgIndex = random( 1, 100 )
	if (nMsgIndex<49) then
		return 1
	elseif (nMsgIndex<97) then
		return 2
	end
	
	return 3
end

function x000152_hoahong_truyentinh(sceneId, selfId, targetId, eventId)
	--check bag
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
		x000152_AddText( sceneId, selfId,targetId,"T鷌 瘃ng 鸢 疸 馥y. ")
		return
	end
	--check item
	if (LuaFnGetAvailableItemCount( sceneId, selfId, x000152_item1 ) < x000152_item1_need ) then
		x000152_AddText( sceneId, selfId,targetId,"C醕 h� kh鬾g c� 瘘 "..x000152_item1_need.." T靚h Nh鈔 K猼. ")
		return
	end
	--delete item
	LuaFnDelAvailableItem(sceneId,selfId, x000152_item1, x000152_item1_need )
	
	--rec
	--TryRecieveItem( sceneId, selfId, x000152_item1_recv, 1 )
	local randomit = random(getn(x000152_ItemList_ThuCuoi_VIP))
	local BagPos = TryRecieveItem(sceneId,selfId,x000152_ItemList_ThuCuoi_VIP[randomit], QUALITY_MUST_BE_CHANGE )
				
	if -1 ~= BagPos then
		--LuaFnItemBind( sceneId, selfId, BagPos) --list2 la yeu quyet mon phai nen khong co dinh	
		local szTransferEquip = GetBagItemTransfer(sceneId,selfId, BagPos)
		str = format("#P#{_INFOUSR%s} tham gia s� ki畁 #Y [Hoa H皀g Truy玭 T靚h] #P trong l鷆 mang nh鎛g b鬾g hoa xinh 皓p 皙n tg ng叨i y陁 疸 nh 疬㧟 #Y#{_INFOMSG%s}", GetName(sceneId,selfId),szTransferEquip)
		BroadMsgByChatPipe(sceneId, selfId, str, 4)
	end
	x000152_NotifyFailTips( sceneId, selfId, "Nh ph th叻ng th鄋h c鬾g" )
	x000152_AddText( sceneId, selfId,targetId, "Nh ph th叻ng th鄋h c鬾g." )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
end
function x000152_doidanhhieu_truyentinh(sceneId, selfId, targetId, eventId)
	--check item
	local num =LuaFnGetAvailableItemCount( sceneId, selfId, x000152_item2 )
	if (num < 1 ) then
		x000152_AddText( sceneId, selfId,targetId,"C醕 h� kh鬾g c� 瘘 Si t靚h ng鱟 ")
		return
	end
	
	local	title_truyentinh	=
	{
		[0]	= { 303,	305, 307 },		--nu
		[1]	= { 304,	306, 308 },		--nam
	}
	
	local title_recv
	if GetSex( sceneId, selfId ) == 0 then
		title_recv	= title_truyentinh[0]
	else
	  	title_recv	= title_truyentinh[1]
	end
	local stt =1
	local num_del =1
	if num >=10 then 
		stt = 3
		num_del = 10
	elseif  num >=3 then
		stt = 2
		num_del = 3
	elseif  num >=1 then
		stt = 1
		num_del = 1
	end
	
	--add title
	AwardTitle( sceneId, selfId, 19, title_recv[stt] )
	LuaFnDispatchAllTitle( sceneId, selfId )
	--delete item
	LuaFnDelAvailableItem(sceneId,selfId, x000152_item2, num_del )
	
	
	x000152_NotifyFailTips( sceneId, selfId, "斜i danh hi畊 th鄋h c鬾g" )
	x000152_AddText( sceneId, selfId,targetId, "斜i danh hi畊 th鄋h c鬾g." )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
	
end

function x000152_AddText( sceneId, selfId,targetId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchEventList(sceneId,selfId,targetId)
end
function x000152_NotifyFailTips( sceneId, selfId, Tip )

	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
