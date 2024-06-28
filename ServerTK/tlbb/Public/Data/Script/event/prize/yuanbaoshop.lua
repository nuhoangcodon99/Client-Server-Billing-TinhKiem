--ÐÂµÄÔª±¦ÉÌµê

x888902_g_scriptId = 888902
--Ôª±¦ÉÌµêÁÐ±í ÒªÓë¿Í»§¶Ë½çÃæ¶ÔÓ¦
x888902_g_shoplist = {}
x888902_g_shoplist[1]	= {229,209,178,228}				--khu vuc buon ban: Lßu ý, shop 1 · mäng này là shop hi¬n th¸ KNB CÐ tÕi client, khai báo v§t ph¦m trong shoptable v¾i ð½n v¸ là ði¬m t£ng ð¬ tránh b¸ hack.
x888902_g_shoplist[2]	= { 150, 198, 193}			--Bao thach Dai ly bao thach- ld bao thach--149",czf,2009.07.21
x888902_g_shoplist[3]	= {155,154,135, 152, 195}			--tran thu thuong thanh
x888902_g_shoplist[4]	= {136, 137, 144}				--nam bac tap hoa
x888902_g_shoplist[5]	= {120, 181, 145, 182, 134,165}			--quang truong hinh tuong
x888902_g_shoplist[6]	= {156, 157, 158, 159, 160, 161, 162, 163}	--da tao do


x888902_g_shoplist[9]	= {149,150, 178, 198, 136}			--ÎÒÒª¸üÇ¿´ó
x888902_g_shoplist[10]	= {134, 120, 181, 145, 182}			--ÎÒÒª¸üÓÐ÷ÈÁ¦
x888902_g_shoplist[11]	= {149,150, 178, 193, 137}			--ÎÒÒª´òÔì¼«Æ·×°±¸
x888902_g_shoplist[12]	= { 135, 152, 195}				--ÎÒÒª´òÔì¼«Æ·ÕäÊÞ
x888902_g_shoplist[13]	= {134, 144}					--ÎÒÒªÒÆ¶¯µÄ¸ü¿ì
x888902_g_shoplist[14]	= {120, 134}			--ÎÒÒªÏò±ðÈË±í°×
x888902_g_shoplist[15]	= { 135, 152}				--ÎÒÒªÑ§Ï°ÐÂ¼¼ÄÜ
---Shop ðt
x888902_g_shoplist[101]	= {164, 197,132,219,219}		
x888902_g_shoplist[102]	= {189}			
x888902_g_shoplist[103]	= {194,208}			
x888902_g_shoplist[104]	= {188,225}			
x888902_g_shoplist[105]	= {146,227}			
x888902_g_shoplist[106]	= {190, 191, 192, 133}				--hoa vu nhan gian

x888902_g_yuanbaobind = {						-- V§t ph¦m cüa shop KNB CÐ, id và giá phäi dña vào shoptable · ID shop 1 · trên, nªu ko s¨ b¸ l®ch hi¬n th¸ và giá tr¸ mua.
									-- Lßu ý, hi®n tÕi chï h² trþ mua 1 item, ko h² trþ mua nhi«u
{id = 30505107, price = 100},
{id = 30008014, price = 500},
{id = 30900045, price = 1},
{id = 30008017, price = 1},
{id = 30008018, price = 300},
{id = 30008019, price = 1000},
{id = 30008030, price = 150},
{id = 30501118, price = 1},
{id = 30501119, price = 1},
{id = 30501120, price = 1},
{id = 30501121, price = 1},
{id = 30501122, price = 1},
{id = 30501123, price = 1},
{id = 30501124, price = 1},
{id = 10141137, price = 2999},
{id = 30308073, price = 1},
{id = 10141141, price = 2999},
{id = 30308074, price = 1},

{id = 30008034, price = 50},
{id = 30008048, price = 400},
{id = 31000101, price = 500},
{id = 30008013, price = 10000},
{id = 30008029, price = 200},
{id =0, price = 0},	--page 2

				{id = 10124456, price = 1000},{id =0, price = 0},{id =0, price = 0},{id =0, price = 0},{id =0, price = 0},{id =0, price = 0},
				{id = 10124456, price = 1000},{id =0, price = 0},{id =0, price = 0},{id =0, price = 0},{id =0, price = 0},{id =0, price = 0},

				{id = 10124456, price = 1000},{id =0, price = 0},{id =0, price = 0},{id =0, price = 0},{id =0, price = 0},{id =0, price = 0},	--page 3
				{id = 10124456, price = 1000},{id =0, price = 0},{id =0, price = 0},{id =0, price = 0},{id =0, price = 0},{id =0, price = 0},
				{id = 10124456, price = 1000},{id =0, price = 0}
				}
--**********************************
-- ¼ì²é´ËËæÉíNPCµÄ¹¦ÄÜ
-- opÊÇÇëÇóÀà±ð£¬±ÈÈç1´ú±íÔª±¦Ïà¹ØµÄËæÉí²Ù×÷¡­¡­
--**********************************
function x888902_OpenYuanbaoShop( sceneId, selfId, targetId , shopA ,shopB )
	--BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD:--"..shopA.."--"..shopB.."", 0);
	if shopA == 2000 and shopB == 2000 then	-- TH b§t khung trang b¸, ki¬m tra KNBCÐ
		--SetMissionData(sceneId, selfId, MD_KNB_BIND,10000)
		local knb = GetMissionData(sceneId, selfId, MD_KNB_BIND)
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, knb )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 11223352 )	-- trä vê cl chï s¯
	elseif shopA > 1000 and shopA < 2000 and shopB > 1000 then	-- Ðây là trß¶ng hþp click mua item tÕi shop KNB CÐ thì
		local nindex = mod(shopA,1000)
		local npage = mod(shopB,1000)
		x888902_BuyBindYuanBao(sceneId,selfId,nindex,npage);
	else
		local bCheck = x888902_YuanbaoShopCheckOp(sceneId,selfId);
		
		if bCheck > 0 then
			if shopA > 0 and shopA < 116 and x888902_g_shoplist[shopA][shopB] ~= nil then
				--PrintStr(x888902_g_shoplist[shopA][shopB])
				if targetId == -1 then
					DispatchYuanbaoShopItem( sceneId, selfId, x888902_g_shoplist[shopA][shopB])
				else

					DispatchNpcYuanbaoShopItem( sceneId, selfId, targetId , x888902_g_shoplist[shopA][shopB])
				end
			end
		end
	end
end

function x888902_YuanbaoShopCheckOp(sceneId,selfId)
	--µØ¸®
	
	--hd add 25/8 disable shop
	--if 1==1 then
		--BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD:Tính nång tÕm ðóng, vui lòng quay lÕi sau !", 0);
		--BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD:Function is temporarily closed. Please come back later !", 0);
		--return 0
	--end
	--end hd add
	
	if sceneId == 77 then 
		BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD:Không th¬ sØ døng công nång tÕi ðây", 0);
		return 0
	end
	--×é¶Ó¸úËæ
	local selfHasTeamFlag = LuaFnHasTeam(sceneId, selfId);
	if selfHasTeamFlag and selfHasTeamFlag == 1 then
		local teamFollowFlag = IsTeamFollow(sceneId,selfId);
		local teamLeaderFlag = LuaFnIsTeamLeader(sceneId,selfId);
		if not teamLeaderFlag or not teamFollowFlag then
			return 0
		end
		if teamFollowFlag ~= 0 and teamLeaderFlag ~= 1 then
			return 0
		end
	end
	--Ë«ÈËÆï³Ë
	local selfHasDRideFlag = LuaFnGetDRideFlag(sceneId, selfId);
	if selfHasDRideFlag and selfHasDRideFlag == 1 then
		local selfIsDRideMountOwner = LuaFnIsDRideMountOwner(sceneId, selfId);
		if not selfIsDRideMountOwner or selfIsDRideMountOwner ~= 1 then
			--´¦ÓÚË«ÈËÆï³Ë×´Ì¬£¬ÇÒÊÇ±»¶¯µÄ£¬½»¸øÖ÷¶¯·½À´´¦Àí
			return 0
		end
	end
	--15¼¶ÒÔÉÏ
	local level = GetLevel(sceneId,selfId);
	if nil == level or level < 15 then
		BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD:ÐÆng c¤p 15 tr· lên m¾i có th¬ sØ døng công nång này", 0);
		return 0
	else

		return 1
	end
	return 0
end
function x888902_BuyBindYuanBao(sceneId,selfId,nindex,npage)
	local item = (npage-1)*18+nindex
	if not x888902_g_yuanbaobind[item] or x888902_g_yuanbaobind[item].id == 0 or x888902_g_yuanbaobind[item].price == 0 then
		return
	end
	local knb = GetMissionData(sceneId, selfId, MD_KNB_BIND)
	if knb < x888902_g_yuanbaobind[item].price then
		BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD:Nguyên bäo c¯ ð¸nh không ðü", 0);
		return
	end
	local BagIndex = TryRecieveItem( sceneId, selfId, x888902_g_yuanbaobind[item].id, QUALITY_MUST_BE_CHANGE )
	if BagIndex == -1 then
		BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD:Tay näi cüa các hÕ ðã ð¥y", 0);
		return
	end
	LuaFnItemBind( sceneId, selfId, BagIndex)
	BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD:Các hÕ ðã mua 1 cái "..GetItemName( sceneId, x888902_g_yuanbaobind[item].id ).."", 0);
	SetMissionData(sceneId, selfId, MD_KNB_BIND,knb-x888902_g_yuanbaobind[item].price)
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, knb-x888902_g_yuanbaobind[item].price )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 11223353 )	-- trä vê cl chï s¯
end