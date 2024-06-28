
x000592_g_scriptId = 000592
x000592_g_isActive = 0
x000592_limit_times =30
x000592_g_rate_YQ = 98
x000592_g_rate_quatang = 40
x000592_g_rate_random = 95


x000592_g_quatang = { -- 8 item
--30505123,--phao hoa trung thu vui ve
30505107,--tieu lat ba
30008018,--Thanh Tâm Ðan
30008019,--Ð£c Xá L®nh
30008014,--Thông Thiên Linh Ðan
30900016,--cao c¤p hþp thành phù
30008030,--th± ðµn châu
30008048 --kim cß½ng toä
}
x000592_g_baothachC6 ={ --17 ngoc
50601001,
50601002,
50603001,
50604002,
50611001,
50611002,
50612001,
50612002,
50612003,
50612004,
50613001,
50613002,
50613003,
50613004,
50613005,
50613006,
50614001
}
x000592_g_baothachC7 ={ --17 ngoc
50701001,
50701002,
50703001,
50704002,
50711001,
50711002,
50712001,
50712002,
50712003,
50712004,
50713001,
50713002,
50713003,
50713004,
50713005,
50713006,
50714001

}
x000592_g_LucHopLenhBai ={ --6 item
30504101,
30504102,

30504104,
30504105,
30504106,
30504103
}
x000592_g_yeuquyet_bt8 = {
30308111,
30308112,
30308113,
30308114,
30308115,
30308116,
30308117,
30308118,
30308119,

30308121,
30308122,
30308123,
30308124,
30308125,
30308126,
30308127,
30308128,
30308129
}

function x000592_OnDefaultEvent( sceneId, selfId, bagIndex )

end

function x000592_IsSkillLikeScript( sceneId, selfId)
	return 1; 
end

function x000592_CancelImpacts( sceneId, selfId )
	return 0; 
end

function x000592_OnConditionCheck( sceneId, selfId )

	
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end

	return 1

end


function x000592_OnDeplete( sceneId, selfId )
	--if(LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1;
	--end
	--return 0;
end

function x000592_OnActivateOnce( sceneId, selfId )
	if x000592_g_isActive == 0 then
		x000591_NotifyTip( sceneId, selfId, "Th¶i gian di­n ra sñ ki®n ðã kªt thúc!")
		return 0
	end
	local bagpos = LuaFnGetBagIndexOfUsedItem(sceneId, selfId)
	if LuaFnIsItemAvailable( sceneId, selfId, bagpos ) ~= 1 then
		x000592_NotifyTip( sceneId, selfId, "V§t ph¦m b¸ khóa")
		return 0
	end
	local delok = LuaFnEraseItem( sceneId, selfId, bagpos )
	--x000592_NotifyTip( sceneId, selfId,"delok: "..delok)

	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 8062, 0) --buff su do
	
	--add diem hoat dong
	local pointadd = 2; --so diem hoat dong duoc thuong
	local trungthu2013_point = 0;
	local trungthu2013_point = GetMissionData(sceneId,selfId,MD_TRUNGTHU_POINT)
	SetMissionData(sceneId,selfId,MD_TRUNGTHU_POINT,trungthu2013_point+pointadd ) --add diem
	x000592_NotifyTip( sceneId, selfId,  "Ði¬m hoÕt ðµng tích luÛ hi®n tÕi : "..trungthu2013_point+pointadd.." ði¬m hoÕt ðµng!" )
	--end add diem hoat dong
	local dayCount = GetMissionData( sceneId, selfId, MD_SHITUZONGDONGYUAN_PRIZE_COUNT )
	local curDayTime = GetTime2Day()
	if curDayTime == floor( dayCount / 100) then
		if dayCount - curDayTime * 100 >= x000592_limit_times then --gi¾i hÕn 10 l¥n t£ng quà
			x000592_NotifyTip( sceneId, selfId,"Ðã hªt s¯ lßþt t£ng quà trong ngày nên các hÕ s¨ không nh§n ðßþc ph¥n thß·ng!" )
			return 1
		end
	end
	--thß·ng cho ð® tØ (ngß¶i t£ng)--
	local dayCount = GetMissionData( sceneId, selfId, MD_SHITUZONGDONGYUAN_PRIZE_COUNT )
	local curDayTime = GetTime2Day()
	if curDayTime == floor( dayCount / 100) then
		SetMissionData( sceneId, selfId, MD_SHITUZONGDONGYUAN_PRIZE_COUNT, dayCount + 1 )
	else
		SetMissionData( sceneId, selfId, MD_SHITUZONGDONGYUAN_PRIZE_COUNT, curDayTime * 100 + 1 )
	end 
	
	local randValue = random(100);
	if  randValue > x000592_g_rate_YQ then --ty le 3%
		local gift_id = x000592_g_yeuquyet_bt8[random(1,getn(x000592_g_yeuquyet_bt8))];
		local BagIndex = TryRecieveItem( sceneId, selfId, gift_id, QUALITY_MUST_BE_CHANGE )
		
				x000592_NotifyTip( sceneId, selfId,"Chúc m×ng, nh§n ðßþc quà t£ng:  #Y#{_ITEM" ..gift_id.. "}" )
				
				str = format("#cff99cc#{_INFOUSR%s} tham gia sñ ki®n #Y [Ân Sß - Ái Ð°] #cff99cc trong lúc sØ døng #Y[Sß Ð° ÐÕi L­ Bao] #cff99cc vô tình nh§n ðßþc #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
				BroadMsgByChatPipe(sceneId, selfId, str, 4)
		
	elseif randValue > x000592_g_rate_quatang then
		local gift_id = x000592_g_quatang[random(1,8)];
		local BagIndex = TryRecieveItem( sceneId, selfId, gift_id, QUALITY_MUST_BE_CHANGE )
		if BagIndex ~= -1 then
			local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
			if bindidx ~= 1 then
				x000592_NotifyTip( sceneId, selfId, "C¯ ð¸nh th¤t bÕi !" )
			else
				x000592_NotifyTip( sceneId, selfId,"Chúc m×ng, nh§n ðßþc quà t£ng:  #Y#{_ITEM" ..gift_id.. "}" )
				
				str = format("#cff99cc#{_INFOUSR%s} tham gia sñ ki®n #Y [Ân Sß - Ái Ð°] #cff99cc trong lúc sØ døng #Y[Sß Ð° ÐÕi L­ Bao] #cff99cc vô tình nh§n ðßþc #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
				BroadMsgByChatPipe(sceneId, selfId, str, 0)
			end
		end
	end
	-------------------------phan thuong random-------------------
	
	local addthem_itemid = 30501361;--cong luc dan
	local i = random(100);
	if i > x000592_g_rate_random then
		local BagIndex = TryRecieveItem( sceneId, selfId, addthem_itemid, QUALITY_MUST_BE_CHANGE )
		if BagIndex ~= -1 then
			local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
			if bindidx ~= 1 then
				x000592_NotifyTip( sceneId, selfId,  "C¯ ð¸nh th¤t bÕi !" )
			else
				x000592_NotifyTip( sceneId,selfId, "Chúc m×ng, nh§n ðßþc quà t£ng:   #Y#{_ITEM" ..addthem_itemid.. "}" )
				str = format("#cff99cc#{_INFOUSR%s} tham gia sñ ki®n #Y [Ân Sß - Ái Ð°] #cff99cc trong lúc sØ døng #Y[Sß Ð° ÐÕi L­ Bao] #cff99cc vô tình nh§n ðßþc #Y#{_ITEM" ..addthem_itemid.. "}  #cff99cc!", GetName(sceneId,selfId))
				BroadMsgByChatPipe(sceneId, selfId, str, 0)
			end
		end
	end
	-----end phan thuong random-------
	--end thß·ng cho ngß¶i t£ng--

	return 1;

end


function x000592_OnActivateEachTick( sceneId, selfId)
	return 1; 
end

function x000592_NotifyTip( sceneId, selfId, Msg )

	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end