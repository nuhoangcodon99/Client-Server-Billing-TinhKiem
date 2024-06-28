--ÇéÈË½Ú»î¶¯
--¶Ò»»ÇéÈË½ÚÀñÎï

--½Å±¾ºÅ
x000152_g_ScriptId = 000152

x000152_StartTime   = 14044 --14/2/2014
x000152_EndTime     = 14059 --01/03/2014

x000152_g_Gift = 	30501166

x000152_item1 = 20700011 --tình nhân kªt
x000152_item1_need = 520
x000152_item1_recv = 30504132 --TrÑng trân thú: Chß½ng Ngß
x000152_item2 = 20700012 --si tình ng÷c
--buffer¶ÔÓ¦µÄID
x000152_BufferID = 74

x000152_g_GiftTbl = {
	30505193,
	30505194,
	38000529,
}

x000152_ItemList_ThuCuoi_VIP ={
	30309724,-- TrÑng trân thú: Niên Thú 85
	30309725,-- TrÑng trân thú: Niên Thú 95 
	30505121, --TrÑng Xí Nga Vß½ng
	30309095, --TrÑng trân thú : Mao Mao Ngßu
	30309092,--TrÑng trân thú : Thái Thßþng Long TØ
	38000529, --Bí T¸ch Tàn Di®p
	30309097,--TrÑng trân thú : Ti¬u Lãng Nhân
	30309098, --TrÑng trân thú : Phong Ði¬u
	30309091, --TrÑng trân thú : An TØ
	30309096,--TrÑng trân thú : Giän Ti¬u Hoa
	30309094,-- TrÑng trân thú : Thánh Trang Ti¬u Lµc
	30309092,-- TrÑng trân thú : Thái Thßþng Long TØ
	30309093 , --TrÑng trân thú : Côn Luân Tiên Tu¤n
--10141431,--M¸ Vû vînh cØu
--10141432,--Thú cßÞi: Vân Thüy Kim Tình Thú
--10141433,--Thú cßÞi: Xích Tiêu Viêm Lang
--10141434,--Thú cßÞi: Thiên Hà Linh Thß¾c

--10141435,--Thú cßÞi: H¡c Thiên Mã
--10141436,--Thú cßÞi: U Lam Häi Long
--10141437,--Thú cßÞi: Huy«n Ð°ng Häi Long
--10141438,--Thú cßÞi: Ám Viên H¡c Thiên Vân
--10141439,--Thú cßÞi: Ám Viên BÕch Thiên Vân

--Add thú 6/2013
10141470,--T÷a kÜ: Tinh H°ng Vân Châu
10141476,--Thú cßÞi: Ám Viêm Minh Sß
10141483,--Thú cßÞi: Hß Không Hùng H°n
10141489,--Thú cßÞi: Tß¶ng Vân HÕc
-- Add thú 10/2013
--10141505,--Thú cßÞi: ¿ng Long Huy­n H°n

-- Add thú DM
--10141492,--Thú cßÞi: Kim Ti«n Báo
--10141493,--Thú cßÞi: Vân Tuyªt Báo
--10141497,--Thú cßÞi: U Minh Báo
-- Add thu 1/2014
--10141521,--T÷a kÜ: Nhung Tuyªt Th¥n Ngßu
10141546,--T÷a kÜ: Ð§u Ð§u Tuyªt Khiêu
10141534,--T÷a kÜ: Thß½ng Häi Long Câu
--10141540,--T÷a kÜ: Bách Biªn Kim Cß½ng

10141507,--Cánh: Viêm Vû 30

10141535,--T÷a kÜ: Thß½ng Häi Long Câu 30
}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000152_OnDefaultEvent( sceneId, selfId,targetId  )
	BeginEvent(sceneId)
		AddText(sceneId,"#{QRJ_81009_02}")
		local curDayTime = GetDayTime()
		if (curDayTime>=x000152_StartTime and curDayTime<x000152_EndTime) then
			AddNumText(sceneId,x000152_g_ScriptId,"Nh§n lînh Ái Th¥n Chi Ti­n",6,0)
			AddNumText(sceneId,x000152_g_ScriptId,"Ð±i ph¥n thß·ng Nø Hôn Ái Th¥n",6,1)
			AddNumText(sceneId,x000152_g_ScriptId,"Hoa H°ng Truy«n Tình",6,1000)
		end 
		AddNumText(sceneId,x000152_g_ScriptId,"Liên quan hoÕt ðµng Nø Hôn Ái Th¥n",11,2)
		AddNumText(sceneId, x000152_g_ScriptId, "#{YHJZ_081007_2}", 11, 3);
		
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
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
				AddNumText(sceneId,x000152_g_ScriptId,"Nh§n ph¥n thß·ng Hoa H°ng Truy«n Tình",6,1001)
				AddNumText(sceneId,x000152_g_ScriptId,"Ð±i danh hi®u Hoa H°ng Truy«n Tình",6,1002)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			
		elseif GetNumText() == 1001 then
			x000152_hoahong_truyentinh(sceneId, selfId, targetId, eventId)
		elseif GetNumText() == 1002 then
			x000152_doidanhhieu_truyentinh(sceneId, selfId, targetId, eventId)
		end
		
end

--**********************************
-- ¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x000152_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

function x000152_GiveArrow(sceneId, selfId, targetId, eventId)
		--20¼¶µÄÏÞÖÆ
		if GetLevel( sceneId, selfId ) < 20 then
			x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_03}" )
			return
		end
		
		--ÅÐ¶Ï½ñÌìÊÇ·ñÁì¹ý
		local td = GetDayTime()
		local LastGetGiftTime = GetMissionData(sceneId,selfId,MD_QINGRENJIE_ARROWDAY)
		if td <= LastGetGiftTime then
				x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_04}" )
			return
		    --SetMissionData( sceneId, selfId, MD_QINGRENJIE_ARROWCOUNT, 0 )
		    SetMissionData( sceneId, selfId, MD_QINGRENJIE_ARROWDAY, td )			
		end 
		
		-- ¼ì²é±³°ü¿Õ¼ä
		if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
				BeginEvent(sceneId)
				AddText( sceneId, "#{QRJ_81009_14}" )
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
		else
			
				--¸øÍæ¼Ò¶«Î÷£¬Íê³É
			BeginAddItem( sceneId )
				local nIndex = AddItem( sceneId, x000152_g_Gift, 1 )
			local ret = EndAddItem( sceneId, selfId )
			if ret <= 0 then 
				return
			end
			AddItemListToHuman(sceneId,selfId)
			--·µ»ØNPCµÄ¶Ô»° 
			x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_24}" )
			
			--ÐÑÄ¿ÌáÊ¾
			BeginEvent(sceneId) 
				AddText( sceneId, "#{QRJ_81009_25}" )
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			--SetMissionData(sceneId, selfId, MD_QINGRENJIE_ARROWCOUNT,1)
			SetMissionData(sceneId, selfId, MD_QINGRENJIE_ARROWDAY,td)
		end
		
end 
--**********************************
-- ¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
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
	
		-- È¡µÃÍæ¼Ò¸½½üµÄ¶ÓÓÑÊýÁ¿£¨°üÀ¨×Ô¼º£©
	local nearteammembercount = GetNearTeamCount( sceneId, selfId )
	
	if nearteammembercount ~= LuaFnGetTeamSize( sceneId, selfId ) then
		x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_09}" )
		return
	end
	
	--Á½¶ÓÔ±µÄGUID,ÔÙ×ª»¯ÎªOBjID
	local ID1 = GetNearTeamMember( sceneId, selfId, 0 )
	local ID2 = GetNearTeamMember( sceneId, selfId, 1 )
	
	--ÅÐ¶ÏÁ½ÈËµÄÐÔ±ð
	if (LuaFnGetSex(sceneId,ID1) == LuaFnGetSex(sceneId,ID2)) then
		x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_10}" )
		return
	end
	
	--ÅÐ¶Ï½ñÌìÊÇ·ñÁì¹ý
	local td = GetDayTime()
	local LastSelfGiftTime  = GetMissionData(sceneId,ID1,MD_QINGRENJIE_KISSDAY)
	
	--¼ÇÂ¼ÒÑ¾­Áì½±µÄÈËÊý
	local iCount = 0
	--¼ÇÂ¼ÒÑ¾­Áì½±µÄÈËÃû
	local strName =""
	
	--¶Ó³¤ÊÇ·ñÁì¹ý
	if (td <= LastSelfGiftTime) then
		iCount =iCount+1
		strName = LuaFnGetName(sceneId,ID1)
		--x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_12}"..LuaFnGetName(sceneId,ID1).."#{QRJ_81009_13}" )
	end 
	
	--¶ÓÔ±ÊÇ·ñÁì¹ý
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
	
	--Á½¸öÈËÍ¬Ê±ÓÐÁË°®ÉñÖ®ÎÇ
	if (0==LuaFnHaveImpactOfSpecificDataIndex(sceneId, ID1,x000152_BufferID) or 0==LuaFnHaveImpactOfSpecificDataIndex(sceneId, ID2,x000152_BufferID)) then
		x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_11}" )
		return
	end
	
	
	
	-- ¶Ó³¤¼ì²é±³°ü¿Õ¼ä
	if LuaFnGetPropertyBagSpace( sceneId, ID1 ) < 1 then
			--±¾ÈËÌáÊ¾ÄúµÄ±³°ü¿Õ¼ä²»¹»
			BeginEvent(sceneId)
			AddText( sceneId, "#{QRJ_81009_14}" )
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,ID1)
			--ÁíÒ»ÈËÌáÊ¾AAA±³°ü¿Õ¼ä²»¹»
			BeginEvent(sceneId)
			AddText( sceneId, LuaFnGetName(sceneId,ID1).."#{QRJ_81009_15}" )
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,ID2)
			return
	end 
		
	--¶ÓÔ±¼ì²é±³°ü¿Õ¼ä
	if LuaFnGetPropertyBagSpace( sceneId, ID2 ) < 1 then
			--±¾ÈËÌáÊ¾ÄúµÄ±³°ü¿Õ¼ä²»¹»
			BeginEvent(sceneId)
			AddText( sceneId, "#{QRJ_81009_14}" )
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,ID2)
			--ÁíÒ»ÈËÌáÊ¾AAA±³°ü¿Õ¼ä²»¹»
			BeginEvent(sceneId)
			AddText( sceneId, LuaFnGetName(sceneId,ID2).."#{QRJ_81009_15}" )
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,ID1)
			return
	end 
		
	--É¾³ýÁ½ÈËÉíÉÏµÄbuffer
	LuaFnCancelSpecificImpact(sceneId, ID1,x000152_BufferID)
	LuaFnCancelSpecificImpact(sceneId, ID2,x000152_BufferID)
		
	--ËÍÁ½ÈË°®ÉñÖ®ÎÇ½±Àø
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
	--ÀñÎïµÄÐÑÄ¿ÌáÊ¾
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
	
	--ËÍµÚ¶þ¸öÈË°®ÉñÖ®ÎÇ½±Àø
	nGiftIndex = x000152_RandomGift()
	
	BeginAddItem( sceneId )
	nIndex = AddItem( sceneId, x000152_g_GiftTbl[nGiftIndex], 1 )
	local ret = EndAddItem( sceneId, ID2 )
	if ret <= 0 then 
		return
	end
	
	AddItemListToHuman(sceneId,ID2)
	str ="#{QRJ_81009_26}#{_ITEM"..x000152_g_GiftTbl[nGiftIndex].."}"
	--ÀñÎïµÄÐÑÄ¿ÌáÊ¾
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
-- Ëæ»úÎïÆ·µÄIDºÅ
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
		x000152_AddText( sceneId, selfId,targetId,"Túi ðñng ð° ðã ð¥y. ")
		return
	end
	--check item
	if (LuaFnGetAvailableItemCount( sceneId, selfId, x000152_item1 ) < x000152_item1_need ) then
		x000152_AddText( sceneId, selfId,targetId,"Các hÕ không có ðü "..x000152_item1_need.." Tình Nhân Kªt. ")
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
		str = format("#P#{_INFOUSR%s} tham gia sñ ki®n #Y [Hoa H°ng Truy«n Tình] #P trong lúc mang nhæng bông hoa xinh ð©p ðªn t£ng ngß¶i yêu ðã nh§n ðßþc #Y#{_INFOMSG%s}", GetName(sceneId,selfId),szTransferEquip)
		BroadMsgByChatPipe(sceneId, selfId, str, 4)
	end
	x000152_NotifyFailTips( sceneId, selfId, "Nh§n ph¥n thß·ng thành công" )
	x000152_AddText( sceneId, selfId,targetId, "Nh§n ph¥n thß·ng thành công." )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
end
function x000152_doidanhhieu_truyentinh(sceneId, selfId, targetId, eventId)
	--check item
	local num =LuaFnGetAvailableItemCount( sceneId, selfId, x000152_item2 )
	if (num < 1 ) then
		x000152_AddText( sceneId, selfId,targetId,"Các hÕ không có ðü Si tình ng÷c ")
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
	
	
	x000152_NotifyFailTips( sceneId, selfId, "Ð±i danh hi®u thành công" )
	x000152_AddText( sceneId, selfId,targetId, "Ð±i danh hi®u thành công." )
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
