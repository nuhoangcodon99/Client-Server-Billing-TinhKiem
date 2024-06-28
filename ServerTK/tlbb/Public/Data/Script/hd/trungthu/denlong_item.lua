
x000574_g_scriptId = 000574
x000574_g_IsActive = 1 --open /close event
x000574_g_Pos = {{left={235,232},right={274,257}}}
--ÀñÆ·¸ÅÂÊ±í....
x000574_g_yeuquyet_bt8 = {
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
x000574_g_quatang = {
30505123,--phao hoa trung thu vui ve
30505107,--tieu lat ba
30008018,--Thanh Tâm Ðan
30008019,--Ð£c Xá L®nh
30008014,--Thông Thiên Linh Ðan
30900016,--cao c¤p hþp thành phù
30008030,--th± ðµn châu
30008048 --kim cß½ng toä
}

x000574_g_baothachC6 ={ --17 ngoc
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


function x000574_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ²»ÐèÒªÕâ¸ö½Ó¿Ú£¬µ«Òª±£Áô¿Õº¯Êý
end



function x000574_IsSkillLikeScript( sceneId, selfId)
	return 1; --Õâ¸ö½Å±¾ÐèÒª¶¯×÷Ö§³Ö
end


--**********************************
function x000574_CancelImpacts( sceneId, selfId )
	return 0; --²»ÐèÒªÕâ¸ö½Ó¿Ú£¬µ«Òª±£Áô¿Õº¯Êý,²¢ÇÒÊ¼ÖÕ·µ»Ø0¡£
end


function x000574_OnConditionCheck( sceneId, selfId )

	if x000574_g_IsActive ==0 then
		x000574_NotifyFailTips( sceneId, selfId, "Th¶i gian di­n ra sñ ki®n ðã kêt thúc")
		return 0
	end
	local posX,posZ = GetWorldPos(sceneId, selfId)
	local inpostype = -1
	for i = 1, getn( x000574_g_Pos ) do
		if x000574_g_Pos[i].left[1] <= posX and posX <= x000574_g_Pos[i].right[1] and x000574_g_Pos[i].left[2] <= posZ and posZ <= x000574_g_Pos[i].right[2] then
			inpostype = i
			break
		end
	end
	if sceneId ~= 0 then
		inpostype = -1
	end
	if inpostype == -1 then
		x000574_NotifyFailTips( sceneId, selfId, "Ðªn Quäng Trß¶ng LÕc Dß½ng m¾i có th¬ treo ðèn")
		return 0
	end
	if GetHour(sceneId, selfId) < 19 or GetHour(sceneId, selfId) > 20 then 
		x000574_NotifyFailTips( sceneId, selfId, "Th¶i gian treo ðèn t× 19:00 ðªn 20:00 hàng ngày")
		return 0
	end
	return 1; --²»ÐèÒªÈÎºÎÌõ¼þ£¬²¢ÇÒÊ¼ÖÕ·µ»Ø1¡£
end


function x000574_OnDeplete( sceneId, selfId )

	local bagpos = LuaFnGetBagIndexOfUsedItem(sceneId, selfId)
	local itemId = LuaFnGetItemTableIndexByIndex(sceneId, selfId, bagpos)
--	local impactId = x000574_g_ImpactTbl[itemId]

	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
--		if impactId then
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 32407, 0 )
--		end
		return 1;
	end

	return 0;

end


function x000574_OnActivateOnce( sceneId, selfId )
	if x000574_g_IsActive ==0 then
		x000574_NotifyFailTips( sceneId, selfId, "Th¶i gian di­n ra sñ ki®n ðã kêt thúc")
		return 0
	end
	local posX,posZ = GetWorldPos(sceneId, selfId)
	local inpostype = -1
	for i = 1, getn( x000574_g_Pos ) do
		if x000574_g_Pos[i].left[1] <= posX and posX <= x000574_g_Pos[i].right[1] and x000574_g_Pos[i].left[2] <= posZ and posZ <= x000574_g_Pos[i].right[2] then
			inpostype = i
			break
		end
	end
	if sceneId ~= 0 then
		inpostype = -1
	end
	if inpostype == -1 then
		x000574_NotifyFailTips( sceneId, selfId, "Ðªn Quäng Trß¶ng LÕc Dß½ng m¾i có th¬ treo ðèn" )
		return 0
	end
	local MonsterId =LuaFnCreateMonster( sceneId, 201, posX, posZ, 14, -1, -1 )
	SetLevel(sceneId, MonsterId, GetLevel(sceneId, selfId))
	SetCharacterDieTime( sceneId, MonsterId, 300000 )
---------------------------------------------------------------------------------------Phan thuong-Duyen Edit------------------------
	
	-------------------exp-------------------
	local Level = GetLevel(sceneId,selfId)
	local exp = 7.5 * Level * Level --+ 450 * Level +1500
	LuaFnAddExp( sceneId, selfId, floor(exp))
	-------------------end exp-------------------
	-------------------------phan thuong random-------------------
	
	local randValue = random(100);
	--x000574_NotifyFailTips( sceneId, selfId, "randValue : "..randValue.."" )
	
	if  randValue > 98 then --ty le 2%
		local gift_id = x000574_g_baothachC6[random(1,17)];
		local BagIndex = TryRecieveItem( sceneId, selfId, gift_id, QUALITY_MUST_BE_CHANGE )
		if BagIndex ~= -1 then
			local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
			if bindidx ~= 1 then
				x000574_NotifyFailTips( sceneId, selfId, "C¯ ð¸nh th¤t bÕi !" )
			else
				x000574_NotifyFailTips( sceneId, selfId,"Chúc m×ng, nh§n ðßþc quà t£ng Trung Thu:  #Y#{_ITEM" ..gift_id.. "}" )
				
				str = format("#cff99cc#{_INFOUSR%s} tham gia sñ ki®n #Y [Trung Thu Thß·ng Nguy®t] #cff99cc  trong lúc thä #{_ITEM30103026}  #cff99cctÕi #GLÕc Dß½ng #cff99cc vô tình nh§n ðßþc  #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
				BroadMsgByChatPipe(sceneId, selfId, str, 4)
			end
		end
	else
		local gift_id = x000574_g_quatang[random(1,8)];
		local BagIndex = TryRecieveItem( sceneId, selfId, gift_id, QUALITY_MUST_BE_CHANGE )
		if BagIndex ~= -1 then
			local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
			if bindidx ~= 1 then
				x000574_NotifyFailTips( sceneId, selfId, "C¯ ð¸nh th¤t bÕi !" )
			else
				x000574_NotifyFailTips( sceneId, selfId,"Chúc m×ng, nh§n ðßþc quà t£ng Trung Thu:  #Y#{_ITEM" ..gift_id.. "}" )
				
				str = format("#cff99cc#{_INFOUSR%s} tham gia sñ ki®n #Y [Trung Thu Thß·ng Nguy®t] #cff99cc  trong lúc thä #{_ITEM30103026}  #cff99cctÕi #GLÕc Dß½ng #cff99cc vô tình nh§n ðßþc  #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
				BroadMsgByChatPipe(sceneId, selfId, str, 0)
			end
		end
	end
	-------------------------phan thuong random-------------------
	
	
	-------------------phan thuong yeu quyet that truyen--------------------------
	--local random_value = random(100);
	--if random_value > 95 then --ty le 5%
		--local gift_id = x000574_g_yeuquyet_bt8[random(10,18)];
		--local BagIndex = TryRecieveItem( sceneId, selfId, gift_id, QUALITY_MUST_BE_CHANGE )
		--if BagIndex ~= -1 then
			--local	bindidx	=LuaFnItemBind( sceneId, selfId, BagIndex)
			--if bindidx ~= 1 then
			--	x000574_NotifyFailTips( sceneId, selfId, "C¯ ð¸nh th¤t bÕi !" )
			--else
		--		x000574_NotifyFailTips( sceneId, selfId,"Chúc m×ng, nh§n ðßþc quà t£ng Trung Thu:   #Y#{_ITEM" ..gift_id.. "}" )
				
		--		str = format("#cff99cc#{_INFOUSR%s} tham gia sñ ki®n #Y [Trung Thu Thß·ng Nguy®t] #cff99cc  trong lúc thä #{_ITEM30103026}  #cff99cctÕi #GLÕc Dß½ng #cff99cc vô tình nh§n ðßþc  #Y#{_ITEM" ..gift_id.. "}  #cff99cc!", GetName(sceneId,selfId))
		--		BroadMsgByChatPipe(sceneId, selfId, str, 4)
			--end
		--end
	--end
	-------------------end phan thuong yeu quyet that truyen--------------------------
	--add diem hoat dong
	local pointadd = 3; --so diem hoat dong duoc thuong
	local trungthu2013_point = 0;
	local trungthu2013_point = GetMissionData(sceneId,selfId,MD_TRUNGTHU_POINT)
	SetMissionData(sceneId,selfId,MD_TRUNGTHU_POINT,trungthu2013_point+pointadd ) --add diem
	x000574_NotifyFailTips( sceneId, selfId,  "Ði¬m hoÕt ðµng tích luÛ hi®n tÕi : "..trungthu2013_point+pointadd.." ði¬m hoÕt ðµng!" )
	--end add diem hoat dong
-------------------------------------------------------------------End Phan Thuong---------------------------------------
	return 1;

end


function x000574_OnActivateEachTick( sceneId, selfId)
	return 1; --²»ÊÇÒýµ¼ÐÔ½Å±¾, Ö»±£Áô¿Õº¯Êý.
end
function x000574_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end