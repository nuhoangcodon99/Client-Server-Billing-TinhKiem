--活动——
--圣诞节元旦活动-收集门派道具换奖励

--脚本号
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
}			                                   --贺卡ID

x050026_g_GiftId = {
	                30509051,            --Lao 鸬ng t痠 quang vinh
	                30509050,            --Trang sinh hi瑄 m祅g
			30501125,            --Dich Dung 衋n: C鈟 Gi醤g Sinh
	                30008014,            --Th鬾g Thi阯 Linh 衋n
			30900016,	--cao c h䅟 th鄋h ph�
			30008019,	--校c X� L畁h
	                10141140,            --Th� c咿i: H Th�
	                10141136,            --Th� c咿i: B誧h V鈔
			
}			                                   --奖品ID

--**********************************
--任务入口函数
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
	    if getgiftcount > 10 then          --本来是6但是为了越南版的应用临时改为 10 显示上会有点小问题但是功能正常
	       str = "C醕 h� 疸 nh s� l唼ng Thi畃 Ch鷆 瘘, do 痼 kh鬾g th� nh th阭 疬㧟 n鎍."
	    else
	       str = format("C醕 h� quy猼 鸶nh s� d鴑g Thi畃 ch鷆 ng鄖 l� c黙 C豼 鹫i m鬾 ph醝 ti猲 h鄋h 鸨i l %d c黙 ng鄖 h鬽 nay kh鬾g ?", getgiftcount);
			end
			AddText(sceneId, str);
			AddNumText(sceneId, x050026_g_ScriptId,"Duy畉", 8, 113);
			AddNumText(sceneId, x050026_g_ScriptId,"Hu�", 8, 114);
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 113 then
	  x050026_GivePlayerGift( sceneId, selfId, targetId )	
	elseif NumText == 114 then
	  -- 关闭窗口
	  BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
	end
	
end

--**********************************
--列举事件
--**********************************
function x050026_OnEnumerate( sceneId, selfId, targetId )
  
  --检测时间是否正确
	local isTime = 1 -- x050026_CheckRightTime()
	if 1 ~= isTime then
		return
	end

	AddNumText(sceneId, x050026_g_ScriptId, "Gi緄 thi畊 鸨i l� ph", 6, 111 )
	AddNumText(sceneId, x050026_g_ScriptId, "斜i l� ph", 6, 112 )													
end

--**********************************
--检测活动时间是否正确
--**********************************
function x050026_CheckRightTime( sceneId )
	  
	local today = GetDayTime()						--当前时间
	local firstDay = 7356								-- 2007年 12 月 23 日
	local lastDay = 8003								-- 2008年 1  月 4  日
	  
	-- 12 月 31 日 0 时 ~ 1 月 7 日 24 时
	if today <= firstDay or today >= lastDay then
		--return 0 --hd edit
	end

	return 1

end

--**********************************
--给玩家新年贺帖
--**********************************
function x050026_GivePlayerGift( sceneId, selfId, targetId )

	--关闭对话窗口....
	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 1000 )

	--如果玩家等级小于25不予换取贺卡
	if	GetLevel( sceneId, selfId) < 25 then
		BeginEvent(sceneId)
			AddText( sceneId, "衅ng c c黙 c醕 h� kh鬾g 瘘, kh鬾g th� 鸨i ph th叻ng." )
		EndEvent(sceneId)
		DispatchMissionTips( sceneId, selfId )
		return
	end
	
	--否有1个新年符节....
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
			AddText( sceneId, "C醕 h� v鏽 ch遖 thu th 瘘 to鄋 b� Thi畃 ch鷆 c黙 c醕 m鬾 ph醝, kh鬾g th� ti猲 h鄋h 鸨i." )
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
			AddText( sceneId, "C醕 h� 疸 s� d鴑g h猼 t c� c� h礽 鸨i ph th叻ng c黙 ng鄖 h鬽 nay r癷, ng鄖 mai l読 皙n nh�." )
		EndEvent(sceneId)
		DispatchMissionTips( sceneId, selfId )
		return
	end	
	
	--检测背包是否有地方....
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
		BeginEvent(sceneId)
			AddText( sceneId, "Kh鬾g gian tay n鋓 kh鬾g 瘘, kh鬾g th� ti猲 h鄋h 鸨i ph th叻ng." )
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	--是否删除失败....
	for i, v in x050026_g_HeKaId do
	  if LuaFnDelAvailableItem(sceneId, selfId, v, 1) == 0 then
			 BeginEvent(sceneId)
			 AddText( sceneId, "C醕 h� v鏽 ch遖 thu th 瘘 to鄋 b� Thi畃 ch鷆 c黙 c醕 m鬾 ph醝, kh鬾g th� ti猲 h鄋h 鸨i." )
		   EndEvent(sceneId)
		   DispatchMissionTips( sceneId, selfId )
		   return
		 end
	 end
	    
	    
	local odds = random(1,100)
	local GiftId = 0   --礼物ID
	local GiftNum = 0  --礼物数量
	local strtext
	--随机发放礼物
	if(GetGiftCount == 0) then             -- 第一次换礼物
	  if( odds >= 1 and odds <= 32 ) then
	    GiftId = x050026_g_GiftId[1]
	    GiftNum = 3
	    strtext = "Ch鷆 m譶g c醕 h� thu 疬㧟 l� v Tuy猼 c h課h ph鷆, ch鷆 c醕 h� ch絠 game  vui v�!"
	  elseif( odds >= 33 and odds <= 65 ) then
	    GiftId = x050026_g_GiftId[2]
	    GiftNum = 1
	    strtext = "Ch鷆 m譶g c醕 h� thu 疬㧟 l� v ph醥 hoa Nguy阯 嗅n, ch鷆 c醕 h� ch絠 game  vui v�!"
	  elseif( odds >= 66 and odds <= 98 ) then
	    GiftId = x050026_g_GiftId[3]
	    GiftNum = 1
	    strtext = "Ch鷆 m譶g c醕 h� thu 疬㧟 l� v Dich Dung 衋n: H祊 K﹐, ch鷆 c醕 h� ch絠 game  vui v�!"
	  elseif( odds >= 99 and odds <= 100 ) then
	    GiftId = x050026_g_GiftId[6]
	    GiftNum = 1
	    strtext = "Ch鷆 m譶g c醕 h� thu 疬㧟 l� v Th鬾g Thi阯 Linh 衋n, ch鷆 c醕 h� ch絠 game  vui v�!"
	  end	
	elseif(GetGiftCount == 1) then           -- 第二次换礼物
	  if( odds >= 1 and odds <= 30 ) then
	    GiftId = x050026_g_GiftId[1]
	    GiftNum = 3
	    strtext = "Ch鷆 m譶g c醕 h� thu 疬㧟 l� v Tuy猼 c h課h ph鷆, ch鷆 c醕 h� ch絠 game  vui v�!"
	  elseif( odds >= 31 and odds <= 63 ) then
	    GiftId = x050026_g_GiftId[2]
	    GiftNum = 1
	    strtext = "Ch鷆 m譶g c醕 h� thu 疬㧟 l� v ph醥 hoa Nguy阯 嗅n, ch鷆 c醕 h� ch絠 game  vui v�!"
	  elseif( odds >= 64 and odds <= 93 ) then
	    GiftId = x050026_g_GiftId[4]
	    GiftNum = 1
	    strtext = "Ch鷆 m譶g c醕 h� thu 疬㧟 l� v D竎h Dung 衋n: 姓i Linh 衋n, ch鷆 c醕 h� ch絠 game  vui v�!"
	  elseif( odds >= 94 and odds <= 98 ) then
	    GiftId = x050026_g_GiftId[6]
	    GiftNum = 1
	    strtext = "Ch鷆 m譶g c醕 h� thu 疬㧟 l� v Th鬾g Thi阯 Linh 衋n, ch鷆 c醕 h� ch絠 game  vui v�!"
	  elseif( odds >= 99 and odds <= 100 ) then
	    GiftId = x050026_g_GiftId[8]
	    GiftNum = 1
	    strtext = "Ch鷆 m譶g c醕 h� thu 疬㧟 l� v Th� C咿i H Th�, ch鷆 c醕 h� ch絠 game  vui v�!"
	  end	
	elseif(GetGiftCount == 2) then            -- 第三次换礼物
	  if( odds >= 1 and odds <= 30 ) then
	    GiftId = x050026_g_GiftId[1]
	    GiftNum = 3
	    strtext = "Ch鷆 m譶g c醕 h� thu 疬㧟 l� v Tuy猼 c h課h ph鷆, ch鷆 c醕 h� ch絠 game  vui v�!"
	  elseif( odds >= 31 and odds <= 60 ) then
	    GiftId = x050026_g_GiftId[2]
	    GiftNum = 1
	    strtext = "Ch鷆 m譶g c醕 h� thu 疬㧟 l� v ph醥 hoa Nguy阯 嗅n, ch鷆 c醕 h� ch絠 game  vui v�!"
	  elseif( odds >= 61 and odds <= 90 ) then
	    GiftId = x050026_g_GiftId[5]
	    GiftNum = 1
	    strtext = "Ch鷆 m譶g c醕 h� thu 疬㧟 l� v Dich dung 餫n: C鈟 Th鬾g, ch鷆 c醕 h� ch絠 game  vui v�!"
	  elseif( odds >= 91 and odds <= 95 ) then
	    GiftId = x050026_g_GiftId[6]
	    GiftNum = 1
	    strtext = "Ch鷆 m譶g c醕 h� thu 疬㧟 l� v Th鬾g Thi阯 Linh 衋n, ch鷆 c醕 h� ch絠 game  vui v�!"
	  elseif( odds >= 96 and odds <= 100 ) then
	    GiftId = x050026_g_GiftId[7]
	    GiftNum = 1
	    strtext = "Ch鷆 m譶g c醕 h� thu 疬㧟 l� v Th� c咿i B誧h V鈔, ch鷆 c醕 h� ch絠 game  vui v�!"
	  end		
	elseif(GetGiftCount == 3) then            -- 第四次换礼物
	  if( odds >= 1 and odds <= 15 ) then
	    GiftId = x050026_g_GiftId[1]
	    GiftNum = 3
	    strtext = "Ch鷆 m譶g c醕 h� thu 疬㧟 l� v Tuy猼 c h課h ph鷆, ch鷆 c醕 h� ch絠 game  vui v�!"
	  elseif( odds >= 16 and odds <= 30 ) then
	    GiftId = x050026_g_GiftId[2]
	    GiftNum = 1
	    strtext = "Ch鷆 m譶g c醕 h� thu 疬㧟 l� v ph醥 hoa Nguy阯 嗅n, ch鷆 c醕 h� ch絠 game  vui v�!"
	  elseif( odds >= 31 and odds <= 50 ) then
	    GiftId = x050026_g_GiftId[3]
	    GiftNum = 1
	    strtext = "Ch鷆 m譶g c醕 h� thu 疬㧟 l� v Dich Dung 衋n: H祊 K﹐, ch鷆 c醕 h� ch絠 game  vui v�!"
	  elseif( odds >= 51 and odds <= 70 ) then
	    GiftId = x050026_g_GiftId[4]
	    GiftNum = 1
	    strtext = "Ch鷆 m譶g c醕 h� thu 疬㧟 l� v D竎h Dung 衋n: 姓i Linh 衋n, ch鷆 c醕 h� ch絠 game  vui v�!"
	  elseif( odds >= 71 and odds <= 90 ) then
	    GiftId = x050026_g_GiftId[5]
	    GiftNum = 1
	    strtext = "Ch鷆 m譶g c醕 h� thu 疬㧟 l� v Dich dung 餫n: C鈟 Th鬾g, ch鷆 c醕 h� ch絠 game  vui v�!"
	  elseif( odds >= 91 and odds <= 95 ) then
	    GiftId = x050026_g_GiftId[8]
	    GiftNum = 1
	    strtext = "Ch鷆 m譶g c醕 h� thu 疬㧟 l� v Th� c咿i B誧h V鈔, ch鷆 c醕 h� ch絠 game  vui v�!"
	  elseif( odds >= 96 and odds <= 100 ) then
	    GiftId = x050026_g_GiftId[7]
	    GiftNum = 1
	    strtext = "Ch鷆 m譶g c醕 h� thu 疬㧟 l� v Th� c咿i H Th�, ch鷆 c醕 h� ch絠 game  vui v�!"
	  end	
	elseif(GetGiftCount == 4 or GetGiftCount == 5) then     -- 第五次换礼物，第六次换礼物
	  if( odds >= 1 and odds <= 15 ) then
	    GiftId = x050026_g_GiftId[1]
	    GiftNum = 3
	    strtext = "Ch鷆 m譶g c醕 h� thu 疬㧟 l� v Tuy猼 c h課h ph鷆, ch鷆 c醕 h� ch絠 game  vui v�!"
	  elseif( odds >= 16 and odds <= 30 ) then
	    GiftId = x050026_g_GiftId[2]
	    GiftNum = 1
	    strtext = "Ch鷆 m譶g c醕 h� thu 疬㧟 l� v ph醥 hoa Nguy阯 嗅n, ch鷆 c醕 h� ch絠 game  vui v�!"
	  elseif( odds >= 31 and odds <= 45 ) then
	    GiftId = x050026_g_GiftId[3]
	    GiftNum = 1
	    strtext = "Ch鷆 m譶g c醕 h� thu 疬㧟 l� v Dich Dung 衋n: H祊 K﹐, ch鷆 c醕 h� ch絠 game  vui v�!"
	  elseif( odds >= 46 and odds <= 60 ) then
	    GiftId = x050026_g_GiftId[4]
	    GiftNum = 1
	    strtext = "Ch鷆 m譶g c醕 h� thu 疬㧟 l� v D竎h Dung 衋n: 姓i Linh 衋n, ch鷆 c醕 h� ch絠 game  vui v�!"
	  elseif( odds >= 61 and odds <= 74 ) then
	    GiftId = x050026_g_GiftId[5]
	    GiftNum = 1
	    strtext = "Ch鷆 m譶g c醕 h� thu 疬㧟 l� v Dich dung 餫n: C鈟 Th鬾g, ch鷆 c醕 h� ch絠 game  vui v�!"
	  elseif( odds >= 75 and odds <= 80 ) then
	    GiftId = x050026_g_GiftId[6]
	    GiftNum = 1
	    strtext = "Ch鷆 m譶g c醕 h� thu 疬㧟 l� v Th鬾g Thi阯 Linh 衋n, ch鷆 c醕 h� ch絠 game  vui v�!"
	  elseif( odds >= 81 and odds <= 90 ) then
	    GiftId = x050026_g_GiftId[8]
	    GiftNum = 1
	    strtext = "Ch鷆 m譶g c醕 h� thu 疬㧟 l� v Th� c咿i H Th�, ch鷆 c醕 h� ch絠 game  vui v�!"
	  elseif( odds >= 91 and odds <= 100 ) then
	    GiftId = x050026_g_GiftId[7]
	    GiftNum = 1
	    strtext = "Ch鷆 m譶g c醕 h� thu 疬㧟 l� v Th� c咿i B誧h V鈔, ch鷆 c醕 h� ch絠 game  vui v�!"
	  end	
	  elseif(GetGiftCount > 5) then     -- 第五次换礼物，第六次换礼物
	  if( odds >= 1 and odds <= 15 ) then
	    GiftId = x050026_g_GiftId[1]
	    GiftNum = 3
	    strtext = "Ch鷆 m譶g c醕 h� thu 疬㧟 l� v Tuy猼 c h課h ph鷆, ch鷆 c醕 h� ch絠 game  vui v�!"
	  elseif( odds >= 16 and odds <= 30 ) then
	    GiftId = x050026_g_GiftId[2]
	    GiftNum = 1
	    strtext = "Ch鷆 m譶g c醕 h� thu 疬㧟 l� v ph醥 hoa Nguy阯 嗅n, ch鷆 c醕 h� ch絠 game  vui v�!"
	  elseif( odds >= 31 and odds <= 45 ) then
	    GiftId = x050026_g_GiftId[3]
	    GiftNum = 1
	    strtext = "Ch鷆 m譶g c醕 h� thu 疬㧟 l� v Dich Dung 衋n: H祊 K﹐, ch鷆 c醕 h� ch絠 game  vui v�!"
	  elseif( odds >= 46 and odds <= 60 ) then
	    GiftId = x050026_g_GiftId[4]
	    GiftNum = 1
	    strtext = "Ch鷆 m譶g c醕 h� thu 疬㧟 l� v D竎h Dung 衋n: 姓i Linh 衋n, ch鷆 c醕 h� ch絠 game  vui v�!"
	  elseif( odds >= 61 and odds <= 74 ) then
	    GiftId = x050026_g_GiftId[5]
	    GiftNum = 1
	    strtext = "Ch鷆 m譶g c醕 h� thu 疬㧟 l� v Dich dung 餫n: C鈟 Th鬾g, ch鷆 c醕 h� ch絠 game  vui v�!"
	  elseif( odds >= 75 and odds <= 80 ) then
	    GiftId = x050026_g_GiftId[6]
	    GiftNum = 1
	    strtext = "Ch鷆 m譶g c醕 h� thu 疬㧟 l� v Th鬾g Thi阯 Linh 衋n, ch鷆 c醕 h� ch絠 game  vui v�!"
	  elseif( odds >= 81 and odds <= 90 ) then
	    GiftId = x050026_g_GiftId[8]
	    GiftNum = 1
	    strtext = "Ch鷆 m譶g c醕 h� thu 疬㧟 l� v Th� c咿i H Th�, ch鷆 c醕 h� ch絠 game  vui v�!"
	  elseif( odds >= 91 and odds <= 100 ) then
	    GiftId = x050026_g_GiftId[7]
	    GiftNum = 1
	    strtext = "Ch鷆 m譶g c醕 h� thu 疬㧟 l� v Th� c咿i B誧h V鈔, ch鷆 c醕 h� ch絠 game  vui v�!"
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
  
	--系统公告
	local	bagpos = -1
	bagpos = GetBagPosByItemSn(sceneId, selfId, GiftId)
		
  local ItemInfo
	if bagpos ~= -1 then
	  ItemInfo = GetBagItemTransfer( sceneId, selfId, bagpos )
	end
	local PlayerName = GetName(sceneId,selfId)
	local str = format( "#cff99ccT鵱g T鵱g X鑞g! L誧 D呓ng n醥 nhi畉 v� c鵱g, #{_INFOUSR%s} mang tr阯 tay Thi畃 ch鷆 ng鄖 l� c黙 C豼 鹫i m鬾 ph醝 鸨i l� ph #{_INFOMSG%s} vui v� ra v�. Nguy畁 ch鷆 cho t c� c醕 鹫i hi畃 Gi醤g sinh An l鄋h N錷 m緄 H課h Ph鷆!", PlayerName, ItemInfo )
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )

end

--**********************************
--获得今日领取奖品次数
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
--检测接受条件
--**********************************
function x050026_CheckAccept( sceneId, selfId )
end

--**********************************
--接受
--**********************************
function x050026_OnAccept( sceneId, selfId )
end

--**********************************
--放弃
--**********************************
function x050026_OnAbandon( sceneId, selfId )
end

--**********************************
--继续
--**********************************
function x050026_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--检测是否可以提交
--**********************************
function x050026_CheckSubmit( sceneId, selfId )
end

--**********************************
--提交
--**********************************
function x050026_OnSubmit( sceneId, selfId, targetId, selectRadioId )
end

--**********************************
--杀死怪物或玩家
--**********************************
function x050026_OnKillObject( sceneId, selfId, objdataId ,objId )
end

--**********************************
--进入区域事件
--**********************************
function x050026_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--道具改变
--**********************************
function x050026_OnItemChanged( sceneId, selfId, itemdataId )
end
