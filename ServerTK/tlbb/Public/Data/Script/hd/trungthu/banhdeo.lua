
x000575_g_scriptId = 000575

x000575_g_quatang = { -- 8 item
30505123,--phao hoa trung thu vui ve
30505107,--tieu lat ba
30008018,--Thanh Tâm Ðan
30008019,--Ð£c Xá L®nh
30008014,--Thông Thiên Linh Ðan
30900016,--cao c¤p hþp thành phù
30008030,--th± ðµn châu
30008048 --kim cß½ng toä
}
x000575_g_baothachC6 ={ --17 ngoc
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


function x000575_OnDefaultEvent( sceneId, selfId, bagIndex )

end


function x000575_IsSkillLikeScript( sceneId, selfId)
	return 1;
end

function x000575_CancelImpacts( sceneId, selfId )
	return 0;
end

function x000575_OnConditionCheck( sceneId, selfId )
	return 1; 
end

function x000575_OnDeplete( sceneId, selfId )

--	local bagpos = LuaFnGetBagIndexOfUsedItem(sceneId, selfId)
--	local itemId = LuaFnGetItemTableIndexByIndex(sceneId, selfId, bagpos)
--	local impactId = x000575_g_ImpactTbl[itemId]

	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
	--	if impactId then
	--		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, impactId, 0)
	--	end
		return 1;
	end

	return 0;

end

function x000575_OnActivateOnce( sceneId, selfId )

	
	-------------------exp-------------------
	local Level = GetLevel(sceneId,selfId)
	local exp = 7.5 * Level * Level --+ 450 * Level +1500
	LuaFnAddExp( sceneId, selfId, floor(exp))
	-------------------end exp-------------------
	-------------------------phan thuong random-------------------
	
	local randValue = random(100);
	--x000575_NotifyTip( sceneId, selfId, "randValue : "..randValue.."" )
	
	if  randValue > 95 then --ty le 5%
		local gift_id = x000575_g_baothachC6[random(1,17)];
		local BagIndex = TryRecieveItem( sceneId, selfId, gift_id, QUALITY_MUST_BE_CHANGE )
		if BagIndex ~= -1 then
			local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
			if bindidx ~= 1 then
				x000575_NotifyTip( sceneId, selfId, "C¯ ð¸nh th¤t bÕi !" )
			else
				x000575_NotifyTip( sceneId, selfId,"Chúc m×ng, nh§n ðßþc quà t£ng Trung Thu:  #Y#{_ITEM" ..gift_id.. "}" )
				
				str = format("#cff99cc#{_INFOUSR%s} tham gia sñ ki®n #Y [Trung Thu Thß·ng Nguy®t] #cff99cc trong lúc bøng ðói c°n cào, bèn l¤y #{_ITEM30103032} ra thß·ng thÑc #cff99cc vô tình c¡n trúng #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
				BroadMsgByChatPipe(sceneId, selfId, str, 4)
			end
		end
	else
		local gift_id = x000575_g_quatang[random(1,8)];
		local BagIndex = TryRecieveItem( sceneId, selfId, gift_id, QUALITY_MUST_BE_CHANGE )
		if BagIndex ~= -1 then
			local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
			if bindidx ~= 1 then
				x000575_NotifyTip( sceneId, selfId, "C¯ ð¸nh th¤t bÕi !" )
			else
				x000575_NotifyTip( sceneId, selfId,"Chúc m×ng, nh§n ðßþc quà t£ng Trung Thu:  #Y#{_ITEM" ..gift_id.. "}" )
				
				str = format("#cff99cc#{_INFOUSR%s} tham gia sñ ki®n #Y [Trung Thu Thß·ng Nguy®t] #cff99cc trong lúc bøng ðói c°n cào, bèn l¤y #{_ITEM30103032} ra thß·ng thÑc #cff99cc vô tình c¡n trúng #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
				BroadMsgByChatPipe(sceneId, selfId, str, 0)
			end
		end
	end
	-------------------------phan thuong random-------------------
	
	--add biªn thân bánh trung thu
	local bienthan_itemid = 30501136;
	local i = random(100);
	if i > 80 then -- tyle 20%
		local BagIndex = TryRecieveItem( sceneId, selfId, bienthan_itemid, QUALITY_MUST_BE_CHANGE )
		if BagIndex ~= -1 then
			local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
			if bindidx ~= 1 then
				x000575_NotifyTip( sceneId, selfId,  "C¯ ð¸nh th¤t bÕi !" )
			else
				x000575_NotifyTip( sceneId, selfId, "Chúc m×ng, nh§n ðßþc quà t£ng Trung Thu:   #Y#{_ITEM" ..bienthan_itemid.. "}" )
				str = format("#cff99cc#{_INFOUSR%s} tham gia sñ ki®n #Y [Trung Thu Thß·ng Nguy®t] #cff99cc trong lúc bøng ðói c°n cào, bèn l¤y #{_ITEM30103032} ra thß·ng thÑc #cff99cc vô tình c¡n trúng #Y#{_ITEM" ..bienthan_itemid.. "}  #cff99cc!", GetName(sceneId,selfId))
				BroadMsgByChatPipe(sceneId, selfId, str, 0)
			end
		end
	end
	--end add bien than
	--add diem hoat dong
	local pointadd = 1; --so diem hoat dong duoc thuong
	local trungthu2013_point = 0;
	local trungthu2013_point = GetMissionData(sceneId,selfId,MD_TRUNGTHU_POINT)
	SetMissionData(sceneId,selfId,MD_TRUNGTHU_POINT,trungthu2013_point+pointadd ) --add diem
	x000575_NotifyTip( sceneId, selfId,  "Ði¬m hoÕt ðµng tích luÛ hi®n tÕi : "..trungthu2013_point+pointadd.." ði¬m hoÕt ðµng!" )
	--end add diem hoat dong
	
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
	return 1;

end

function x000575_OnActivateEachTick( sceneId, selfId)
	return 1;
end

function x000575_NotifyTip( sceneId, selfId, Msg )

	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end