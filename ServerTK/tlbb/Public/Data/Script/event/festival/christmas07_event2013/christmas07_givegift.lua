--»î¶¯¡ª¡ª
--Ê¥µ®½ÚÔªµ©»î¶¯-ÊÕ¼¯ÃÅÅÉµÀ¾ß»»½±Àø

--½Å±¾ºÅ
--NPC  Gia cat khong minh - Lac Duong
x050026_g_ScriptId = 050026



x050026_g_HeKaId = {
	                 20310011,
	                 20310017,
	                 20310012,
	                 20310019,
	                 20310014,
	                 20310018,
	                 20310015,
	                 20310016,
	                 20310013,	
}			                                   --ºØ¿¨ID

x050026_g_GiftId = {
	                30509051,            --Lao ðµng t¯i quang vinh
	                30509050,            --Trang sinh hi¬u mµng
			30501125,            --Dich Dung Ðan: Cây Giáng Sinh
	                30008014,            --Thông Thiên Linh Ðan
			30900016,	--cao c¤p hþp thành phù
			30008019,	--Ð£c Xá L®nh
	                10141140,            --Thú cßÞi: H¡c Th±
	                10141136,            --Thú cßÞi: BÕch Vân
			
}			                                   --½±Æ·ID

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x050026_OnDefaultEvent( sceneId, selfId, targetId )

	local isTime = x050026_CheckRightTime()
	if 1 ~= isTime then
		return
	end

	local NumText = GetNumText()


	if NumText == 111 then
	  BeginEvent(sceneId)
			AddText(sceneId, "#{CHRISTMAS_LUOYANG_HTJS_2}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 112 then
	  BeginEvent(sceneId)
	    local getgiftcount = x050026_GetGiftCount(sceneId, selfId) + 1
	    local str
	    if getgiftcount > 10 then          --±¾À´ÊÇ6µ«ÊÇÎªÁËÔ½ÄÏ°æµÄÓ¦ÓÃÁÙÊ±¸ÄÎª 10 ÏÔÊ¾ÉÏ»áÓÐµãÐ¡ÎÊÌâµ«ÊÇ¹¦ÄÜÕý³£
	       str = "Các hÕ ðã nh§n s¯ lßþng Thi®p Chúc ðü, do ðó không th¬ nh§n thêm ðßþc næa."
	    else
	       str = format("Các hÕ quyªt ð¸nh sØ døng Thi®p chúc ngày l­ cüa CØu ðÕi môn phái tiªn hành ð±i l¥n %d cüa ngày hôm nay không ?", getgiftcount);
			end
			AddText(sceneId, str);
			AddNumText(sceneId, x050026_g_ScriptId,"Duy®t", 8, 113);
			AddNumText(sceneId, x050026_g_ScriptId,"HuÖ", 8, 114);
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 113 then
	  x050026_GivePlayerGift( sceneId, selfId, targetId )	
	elseif NumText == 114 then
	  -- ¹Ø±Õ´°¿Ú
	  BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
	end
	
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x050026_OnEnumerate( sceneId, selfId, targetId )
  
  --¼ì²âÊ±¼äÊÇ·ñÕýÈ·
	local isTime = 1 -- x050026_CheckRightTime()
	if 1 ~= isTime then
		return
	end

	AddNumText(sceneId, x050026_g_ScriptId, "Gi¾i thi®u ð±i l­ ph¦m", 6, 111 )
	AddNumText(sceneId, x050026_g_ScriptId, "Ð±i l­ ph¦m", 6, 112 )													
end

--**********************************
--¼ì²â»î¶¯Ê±¼äÊÇ·ñÕýÈ·
--**********************************
function x050026_CheckRightTime( sceneId )
	  
	local today = GetDayTime()						--µ±Ç°Ê±¼ä
	local firstDay = 7356								-- 2007Äê 12 ÔÂ 23 ÈÕ
	local lastDay = 8003								-- 2008Äê 1  ÔÂ 4  ÈÕ
	  
	-- 12 ÔÂ 31 ÈÕ 0 Ê± ~ 1 ÔÂ 7 ÈÕ 24 Ê±
	if today <= firstDay or today >= lastDay then
		--return 0 --hd edit
	end

	return 1

end

--**********************************
--¸øÍæ¼ÒÐÂÄêºØÌû
--**********************************
function x050026_GivePlayerGift( sceneId, selfId, targetId )

	--¹Ø±Õ¶Ô»°´°¿Ú....
	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 1000 )

	--Èç¹ûÍæ¼ÒµÈ¼¶Ð¡ÓÚ25²»Óè»»È¡ºØ¿¨
	if	GetLevel( sceneId, selfId) < 25 then
		BeginEvent(sceneId)
			AddText( sceneId, "ÐÆng c¤p cüa các hÕ không ðü, không th¬ ð±i ph¥n thß·ng." )
		EndEvent(sceneId)
		DispatchMissionTips( sceneId, selfId )
		return
	end
	
	--·ñÓÐ1¸öÐÂÄê·û½Ú....
	local ShaoLinHeKaCount = LuaFnGetAvailableItemCount(sceneId, selfId, x050026_g_HeKaId[1])
	local MingJiaoHeKaCount = LuaFnGetAvailableItemCount(sceneId, selfId, x050026_g_HeKaId[2])
	local GaiBangHeKaCount = LuaFnGetAvailableItemCount(sceneId, selfId, x050026_g_HeKaId[3])
	local WuDangHeKaCount = LuaFnGetAvailableItemCount(sceneId, selfId, x050026_g_HeKaId[4])
	local EMeiHeKaCount = LuaFnGetAvailableItemCount(sceneId, selfId, x050026_g_HeKaId[5])
	local XingSuHeKaCount = LuaFnGetAvailableItemCount(sceneId, selfId, x050026_g_HeKaId[6])
	local DaLiHeKaCount = LuaFnGetAvailableItemCount(sceneId, selfId, x050026_g_HeKaId[7])
	local TianShanHeKaCount = LuaFnGetAvailableItemCount(sceneId, selfId, x050026_g_HeKaId[8])
  local XiaoYaoHeKaCount = LuaFnGetAvailableItemCount(sceneId, selfId, x050026_g_HeKaId[9])

  local result = 1
  if ShaoLinHeKaCount < 1 then
    result = 0
  elseif MingJiaoHeKaCount < 1 then
    result = 0
  elseif GaiBangHeKaCount < 1 then
    result = 0
  elseif WuDangHeKaCount < 1 then
    result = 0
  elseif EMeiHeKaCount < 1 then
    result = 0
  elseif XingSuHeKaCount < 1 then
    result = 0
  elseif DaLiHeKaCount < 1 then
    result = 0
  elseif TianShanHeKaCount < 1 then
    result = 0
  elseif XiaoYaoHeKaCount < 1 then
    result = 0
  end    
    
  if result == 0 then
		BeginEvent(sceneId)
			AddText( sceneId, "Các hÕ vçn chßa thu th§p ðü toàn bµ Thi®p chúc cüa các môn phái, không th¬ tiªn hành ð±i." )
		EndEvent(sceneId)
		DispatchMissionTips( sceneId, selfId )
		return
	end
	
	local td = GetDayTime()
	local LastGetGiftTime = GetMissionData(sceneId,selfId,MD_GETGIFT_TIME)
	if td > LastGetGiftTime then
	    SetMissionData( sceneId, selfId, MD_GETGIFT_COUNT, 0 )
	    SetMissionData( sceneId, selfId, MD_GETGIFT_TIME, td )
	end
		
	local GetGiftCount = GetMissionData(sceneId,selfId,MD_GETGIFT_COUNT)
	
	if GetGiftCount >= 10 then
		BeginEvent(sceneId)
			AddText( sceneId, "Các hÕ ðã sØ døng hªt t¤t cä c½ hµi ð±i ph¥n thß·ng cüa ngày hôm nay r°i, ngày mai lÕi ðªn nhé." )
		EndEvent(sceneId)
		DispatchMissionTips( sceneId, selfId )
		return
	end	
	
	--¼ì²â±³°üÊÇ·ñÓÐµØ·½....
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
		BeginEvent(sceneId)
			AddText( sceneId, "Không gian tay näi không ðü, không th¬ tiªn hành ð±i ph¥n thß·ng." )
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	--ÊÇ·ñÉ¾³ýÊ§°Ü....
	for i, v in x050026_g_HeKaId do
	  if LuaFnDelAvailableItem(sceneId, selfId, v, 1) == 0 then
			 BeginEvent(sceneId)
			 AddText( sceneId, "Các hÕ vçn chßa thu th§p ðü toàn bµ Thi®p chúc cüa các môn phái, không th¬ tiªn hành ð±i." )
		   EndEvent(sceneId)
		   DispatchMissionTips( sceneId, selfId )
		   return
		 end
	 end
	    
	    
	local odds = random(1,100)
	local GiftId = 0   --ÀñÎïID
	local GiftNum = 0  --ÀñÎïÊýÁ¿
	local strtext
	--Ëæ»ú·¢·ÅÀñÎï
	if(GetGiftCount == 0) then             -- µÚÒ»´Î»»ÀñÎï
	  if( odds >= 1 and odds <= 32 ) then
	    GiftId = x050026_g_GiftId[1]
	    GiftNum = 3
	    strtext = "Chúc m×ng các hÕ thu ðßþc l­ v§t Tuyªt c¥u hÕnh phúc, chúc các hÕ ch½i game  vui vë!"
	  elseif( odds >= 33 and odds <= 65 ) then
	    GiftId = x050026_g_GiftId[2]
	    GiftNum = 1
	    strtext = "Chúc m×ng các hÕ thu ðßþc l­ v§t pháo hoa Nguyên Ðán, chúc các hÕ ch½i game  vui vë!"
	  elseif( odds >= 66 and odds <= 98 ) then
	    GiftId = x050026_g_GiftId[3]
	    GiftNum = 1
	    strtext = "Chúc m×ng các hÕ thu ðßþc l­ v§t Dich Dung Ðan: Hµp K©o, chúc các hÕ ch½i game  vui vë!"
	  elseif( odds >= 99 and odds <= 100 ) then
	    GiftId = x050026_g_GiftId[6]
	    GiftNum = 1
	    strtext = "Chúc m×ng các hÕ thu ðßþc l­ v§t Thông Thiên Linh Ðan, chúc các hÕ ch½i game  vui vë!"
	  end	
	elseif(GetGiftCount == 1) then           -- µÚ¶þ´Î»»ÀñÎï
	  if( odds >= 1 and odds <= 30 ) then
	    GiftId = x050026_g_GiftId[1]
	    GiftNum = 3
	    strtext = "Chúc m×ng các hÕ thu ðßþc l­ v§t Tuyªt c¥u hÕnh phúc, chúc các hÕ ch½i game  vui vë!"
	  elseif( odds >= 31 and odds <= 63 ) then
	    GiftId = x050026_g_GiftId[2]
	    GiftNum = 1
	    strtext = "Chúc m×ng các hÕ thu ðßþc l­ v§t pháo hoa Nguyên Ðán, chúc các hÕ ch½i game  vui vë!"
	  elseif( odds >= 64 and odds <= 93 ) then
	    GiftId = x050026_g_GiftId[4]
	    GiftNum = 1
	    strtext = "Chúc m×ng các hÕ thu ðßþc l­ v§t D¸ch Dung Ðan: ÐÕi Linh Ðan, chúc các hÕ ch½i game  vui vë!"
	  elseif( odds >= 94 and odds <= 98 ) then
	    GiftId = x050026_g_GiftId[6]
	    GiftNum = 1
	    strtext = "Chúc m×ng các hÕ thu ðßþc l­ v§t Thông Thiên Linh Ðan, chúc các hÕ ch½i game  vui vë!"
	  elseif( odds >= 99 and odds <= 100 ) then
	    GiftId = x050026_g_GiftId[8]
	    GiftNum = 1
	    strtext = "Chúc m×ng các hÕ thu ðßþc l­ v§t Thú CßÞi H¡c Th±, chúc các hÕ ch½i game  vui vë!"
	  end	
	elseif(GetGiftCount == 2) then            -- µÚÈý´Î»»ÀñÎï
	  if( odds >= 1 and odds <= 30 ) then
	    GiftId = x050026_g_GiftId[1]
	    GiftNum = 3
	    strtext = "Chúc m×ng các hÕ thu ðßþc l­ v§t Tuyªt c¥u hÕnh phúc, chúc các hÕ ch½i game  vui vë!"
	  elseif( odds >= 31 and odds <= 60 ) then
	    GiftId = x050026_g_GiftId[2]
	    GiftNum = 1
	    strtext = "Chúc m×ng các hÕ thu ðßþc l­ v§t pháo hoa Nguyên Ðán, chúc các hÕ ch½i game  vui vë!"
	  elseif( odds >= 61 and odds <= 90 ) then
	    GiftId = x050026_g_GiftId[5]
	    GiftNum = 1
	    strtext = "Chúc m×ng các hÕ thu ðßþc l­ v§t Dich dung ðan: Cây Thông, chúc các hÕ ch½i game  vui vë!"
	  elseif( odds >= 91 and odds <= 95 ) then
	    GiftId = x050026_g_GiftId[6]
	    GiftNum = 1
	    strtext = "Chúc m×ng các hÕ thu ðßþc l­ v§t Thông Thiên Linh Ðan, chúc các hÕ ch½i game  vui vë!"
	  elseif( odds >= 96 and odds <= 100 ) then
	    GiftId = x050026_g_GiftId[7]
	    GiftNum = 1
	    strtext = "Chúc m×ng các hÕ thu ðßþc l­ v§t Thú cßÞi BÕch Vân, chúc các hÕ ch½i game  vui vë!"
	  end		
	elseif(GetGiftCount == 3) then            -- µÚËÄ´Î»»ÀñÎï
	  if( odds >= 1 and odds <= 15 ) then
	    GiftId = x050026_g_GiftId[1]
	    GiftNum = 3
	    strtext = "Chúc m×ng các hÕ thu ðßþc l­ v§t Tuyªt c¥u hÕnh phúc, chúc các hÕ ch½i game  vui vë!"
	  elseif( odds >= 16 and odds <= 30 ) then
	    GiftId = x050026_g_GiftId[2]
	    GiftNum = 1
	    strtext = "Chúc m×ng các hÕ thu ðßþc l­ v§t pháo hoa Nguyên Ðán, chúc các hÕ ch½i game  vui vë!"
	  elseif( odds >= 31 and odds <= 50 ) then
	    GiftId = x050026_g_GiftId[3]
	    GiftNum = 1
	    strtext = "Chúc m×ng các hÕ thu ðßþc l­ v§t Dich Dung Ðan: Hµp K©o, chúc các hÕ ch½i game  vui vë!"
	  elseif( odds >= 51 and odds <= 70 ) then
	    GiftId = x050026_g_GiftId[4]
	    GiftNum = 1
	    strtext = "Chúc m×ng các hÕ thu ðßþc l­ v§t D¸ch Dung Ðan: ÐÕi Linh Ðan, chúc các hÕ ch½i game  vui vë!"
	  elseif( odds >= 71 and odds <= 90 ) then
	    GiftId = x050026_g_GiftId[5]
	    GiftNum = 1
	    strtext = "Chúc m×ng các hÕ thu ðßþc l­ v§t Dich dung ðan: Cây Thông, chúc các hÕ ch½i game  vui vë!"
	  elseif( odds >= 91 and odds <= 95 ) then
	    GiftId = x050026_g_GiftId[8]
	    GiftNum = 1
	    strtext = "Chúc m×ng các hÕ thu ðßþc l­ v§t Thú cßÞi BÕch Vân, chúc các hÕ ch½i game  vui vë!"
	  elseif( odds >= 96 and odds <= 100 ) then
	    GiftId = x050026_g_GiftId[7]
	    GiftNum = 1
	    strtext = "Chúc m×ng các hÕ thu ðßþc l­ v§t Thú cßÞi H¡c Th±, chúc các hÕ ch½i game  vui vë!"
	  end	
	elseif(GetGiftCount == 4 or GetGiftCount == 5) then     -- µÚÎå´Î»»ÀñÎï£¬µÚÁù´Î»»ÀñÎï
	  if( odds >= 1 and odds <= 15 ) then
	    GiftId = x050026_g_GiftId[1]
	    GiftNum = 3
	    strtext = "Chúc m×ng các hÕ thu ðßþc l­ v§t Tuyªt c¥u hÕnh phúc, chúc các hÕ ch½i game  vui vë!"
	  elseif( odds >= 16 and odds <= 30 ) then
	    GiftId = x050026_g_GiftId[2]
	    GiftNum = 1
	    strtext = "Chúc m×ng các hÕ thu ðßþc l­ v§t pháo hoa Nguyên Ðán, chúc các hÕ ch½i game  vui vë!"
	  elseif( odds >= 31 and odds <= 45 ) then
	    GiftId = x050026_g_GiftId[3]
	    GiftNum = 1
	    strtext = "Chúc m×ng các hÕ thu ðßþc l­ v§t Dich Dung Ðan: Hµp K©o, chúc các hÕ ch½i game  vui vë!"
	  elseif( odds >= 46 and odds <= 60 ) then
	    GiftId = x050026_g_GiftId[4]
	    GiftNum = 1
	    strtext = "Chúc m×ng các hÕ thu ðßþc l­ v§t D¸ch Dung Ðan: ÐÕi Linh Ðan, chúc các hÕ ch½i game  vui vë!"
	  elseif( odds >= 61 and odds <= 74 ) then
	    GiftId = x050026_g_GiftId[5]
	    GiftNum = 1
	    strtext = "Chúc m×ng các hÕ thu ðßþc l­ v§t Dich dung ðan: Cây Thông, chúc các hÕ ch½i game  vui vë!"
	  elseif( odds >= 75 and odds <= 80 ) then
	    GiftId = x050026_g_GiftId[6]
	    GiftNum = 1
	    strtext = "Chúc m×ng các hÕ thu ðßþc l­ v§t Thông Thiên Linh Ðan, chúc các hÕ ch½i game  vui vë!"
	  elseif( odds >= 81 and odds <= 90 ) then
	    GiftId = x050026_g_GiftId[8]
	    GiftNum = 1
	    strtext = "Chúc m×ng các hÕ thu ðßþc l­ v§t Thú cßÞi H¡c Th±, chúc các hÕ ch½i game  vui vë!"
	  elseif( odds >= 91 and odds <= 100 ) then
	    GiftId = x050026_g_GiftId[7]
	    GiftNum = 1
	    strtext = "Chúc m×ng các hÕ thu ðßþc l­ v§t Thú cßÞi BÕch Vân, chúc các hÕ ch½i game  vui vë!"
	  end	
	  elseif(GetGiftCount > 5) then     -- µÚÎå´Î»»ÀñÎï£¬µÚÁù´Î»»ÀñÎï
	  if( odds >= 1 and odds <= 15 ) then
	    GiftId = x050026_g_GiftId[1]
	    GiftNum = 3
	    strtext = "Chúc m×ng các hÕ thu ðßþc l­ v§t Tuyªt c¥u hÕnh phúc, chúc các hÕ ch½i game  vui vë!"
	  elseif( odds >= 16 and odds <= 30 ) then
	    GiftId = x050026_g_GiftId[2]
	    GiftNum = 1
	    strtext = "Chúc m×ng các hÕ thu ðßþc l­ v§t pháo hoa Nguyên Ðán, chúc các hÕ ch½i game  vui vë!"
	  elseif( odds >= 31 and odds <= 45 ) then
	    GiftId = x050026_g_GiftId[3]
	    GiftNum = 1
	    strtext = "Chúc m×ng các hÕ thu ðßþc l­ v§t Dich Dung Ðan: Hµp K©o, chúc các hÕ ch½i game  vui vë!"
	  elseif( odds >= 46 and odds <= 60 ) then
	    GiftId = x050026_g_GiftId[4]
	    GiftNum = 1
	    strtext = "Chúc m×ng các hÕ thu ðßþc l­ v§t D¸ch Dung Ðan: ÐÕi Linh Ðan, chúc các hÕ ch½i game  vui vë!"
	  elseif( odds >= 61 and odds <= 74 ) then
	    GiftId = x050026_g_GiftId[5]
	    GiftNum = 1
	    strtext = "Chúc m×ng các hÕ thu ðßþc l­ v§t Dich dung ðan: Cây Thông, chúc các hÕ ch½i game  vui vë!"
	  elseif( odds >= 75 and odds <= 80 ) then
	    GiftId = x050026_g_GiftId[6]
	    GiftNum = 1
	    strtext = "Chúc m×ng các hÕ thu ðßþc l­ v§t Thông Thiên Linh Ðan, chúc các hÕ ch½i game  vui vë!"
	  elseif( odds >= 81 and odds <= 90 ) then
	    GiftId = x050026_g_GiftId[8]
	    GiftNum = 1
	    strtext = "Chúc m×ng các hÕ thu ðßþc l­ v§t Thú cßÞi H¡c Th±, chúc các hÕ ch½i game  vui vë!"
	  elseif( odds >= 91 and odds <= 100 ) then
	    GiftId = x050026_g_GiftId[7]
	    GiftNum = 1
	    strtext = "Chúc m×ng các hÕ thu ðßþc l­ v§t Thú cßÞi BÕch Vân, chúc các hÕ ch½i game  vui vë!"
	  end	
	end
	
	BeginAddItem( sceneId )
		nIndex = AddItem( sceneId, GiftId, GiftNum )
	local ret = EndAddItem( sceneId, selfId )
	if ret <= 0 then 
		return
	end
	AddItemListToHuman(sceneId,selfId)
	SetMissionData( sceneId, selfId, MD_GETGIFT_COUNT, GetGiftCount+1 )
	
	BeginEvent( sceneId )
		AddText( sceneId, strtext )
	EndEvent( sceneId )
  DispatchMissionTips( sceneId, selfId )
  
	--ÏµÍ³¹«¸æ
	local	bagpos = -1
	bagpos = GetBagPosByItemSn(sceneId, selfId, GiftId)
		
  local ItemInfo
	if bagpos ~= -1 then
	  ItemInfo = GetBagItemTransfer( sceneId, selfId, bagpos )
	end
	local PlayerName = GetName(sceneId,selfId)
	local str = format( "#cff99ccTùng Tùng Xèng! LÕc Dß½ng náo nhi®t vô cùng, #{_INFOUSR%s} mang trên tay Thi®p chúc ngày l­ cüa CØu ðÕi môn phái ð±i l­ ph¦m #{_INFOMSG%s} vui vë ra v«. Nguy®n chúc cho t¤t cä các ðÕi hi®p Giáng sinh An lành Nåm m¾i HÕnh Phúc!", PlayerName, ItemInfo )
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )

end

--**********************************
--»ñµÃ½ñÈÕÁìÈ¡½±Æ·´ÎÊý
--**********************************
function x050026_GetGiftCount( sceneId, selfId )
	  
	local td = GetDayTime()
	local LastGetGiftTime = GetMissionData(sceneId,selfId,MD_GETGIFT_TIME)

	if td > LastGetGiftTime then
	    SetMissionData( sceneId, selfId, MD_GETGIFT_COUNT, 0 )
	    SetMissionData( sceneId, selfId, MD_GETGIFT_TIME, td )
	end
		
	local GetGiftCount = GetMissionData(sceneId,selfId,MD_GETGIFT_COUNT)

	return GetGiftCount

end

--**********************************
--¼ì²â½ÓÊÜÌõ¼þ
--**********************************
function x050026_CheckAccept( sceneId, selfId )
end

--**********************************
--½ÓÊÜ
--**********************************
function x050026_OnAccept( sceneId, selfId )
end

--**********************************
--·ÅÆú
--**********************************
function x050026_OnAbandon( sceneId, selfId )
end

--**********************************
--¼ÌÐø
--**********************************
function x050026_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x050026_CheckSubmit( sceneId, selfId )
end

--**********************************
--Ìá½»
--**********************************
function x050026_OnSubmit( sceneId, selfId, targetId, selectRadioId )
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x050026_OnKillObject( sceneId, selfId, objdataId ,objId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x050026_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x050026_OnItemChanged( sceneId, selfId, itemdataId )
end
