--�µ�Ԫ���̵�

x888902_g_scriptId = 888902
--Ԫ���̵��б� Ҫ��ͻ��˽����Ӧ
x888902_g_shoplist = {}
x888902_g_shoplist[1]	= {229,209,178,228}				--khu vuc buon ban: L�u �, shop 1 � m�ng n�y l� shop hi�n th� KNB C� t�i client, khai b�o v�t ph�m trong shoptable v�i �n v� l� �i�m t�ng � tr�nh b� hack.
x888902_g_shoplist[2]	= { 150, 198, 193}			--Bao thach Dai ly bao thach- ld bao thach--149",czf,2009.07.21
x888902_g_shoplist[3]	= {155,154,135, 152, 195}			--tran thu thuong thanh
x888902_g_shoplist[4]	= {136, 137, 144}				--nam bac tap hoa
x888902_g_shoplist[5]	= {120, 181, 145, 182, 134,165}			--quang truong hinh tuong
x888902_g_shoplist[6]	= {156, 157, 158, 159, 160, 161, 162, 163}	--da tao do


x888902_g_shoplist[9]	= {149,150, 178, 198, 136}			--��Ҫ��ǿ��
x888902_g_shoplist[10]	= {134, 120, 181, 145, 182}			--��Ҫ��������
x888902_g_shoplist[11]	= {149,150, 178, 193, 137}			--��Ҫ���켫Ʒװ��
x888902_g_shoplist[12]	= { 135, 152, 195}				--��Ҫ���켫Ʒ����
x888902_g_shoplist[13]	= {134, 144}					--��Ҫ�ƶ��ĸ���
x888902_g_shoplist[14]	= {120, 134}			--��Ҫ����˱��
x888902_g_shoplist[15]	= { 135, 152}				--��Ҫѧϰ�¼���
---Shop �t
x888902_g_shoplist[101]	= {164, 197,132,219,219}		
x888902_g_shoplist[102]	= {189}			
x888902_g_shoplist[103]	= {194,208}			
x888902_g_shoplist[104]	= {188,225}			
x888902_g_shoplist[105]	= {146,227}			
x888902_g_shoplist[106]	= {190, 191, 192, 133}				--hoa vu nhan gian

x888902_g_yuanbaobind = {						-- V�t ph�m c�a shop KNB C�, id v� gi� ph�i d�a v�o shoptable � ID shop 1 � tr�n, n�u ko s� b� l�ch hi�n th� v� gi� tr� mua.
									-- L�u �, hi�n t�i ch� h� tr� mua 1 item, ko h� tr� mua nhi�u
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
-- ��������NPC�Ĺ���
-- op��������𣬱���1����Ԫ����ص������������
--**********************************
function x888902_OpenYuanbaoShop( sceneId, selfId, targetId , shopA ,shopB )
	--BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD:--"..shopA.."--"..shopB.."", 0);
	if shopA == 2000 and shopB == 2000 then	-- TH b�t khung trang b�, ki�m tra KNBC�
		--SetMissionData(sceneId, selfId, MD_KNB_BIND,10000)
		local knb = GetMissionData(sceneId, selfId, MD_KNB_BIND)
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, knb )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 11223352 )	-- tr� v� cl ch� s�
	elseif shopA > 1000 and shopA < 2000 and shopB > 1000 then	-- ��y l� tr߶ng h�p click mua item t�i shop KNB C� th�
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
	--�ظ�
	
	--hd add 25/8 disable shop
	--if 1==1 then
		--BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD:T�nh n�ng t�m ��ng, vui l�ng quay l�i sau !", 0);
		--BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD:Function is temporarily closed. Please come back later !", 0);
		--return 0
	--end
	--end hd add
	
	if sceneId == 77 then 
		BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD:Kh�ng th� s� d�ng c�ng n�ng t�i ��y", 0);
		return 0
	end
	--��Ӹ���
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
	--˫�����
	local selfHasDRideFlag = LuaFnGetDRideFlag(sceneId, selfId);
	if selfHasDRideFlag and selfHasDRideFlag == 1 then
		local selfIsDRideMountOwner = LuaFnIsDRideMountOwner(sceneId, selfId);
		if not selfIsDRideMountOwner or selfIsDRideMountOwner ~= 1 then
			--����˫�����״̬�����Ǳ����ģ�����������������
			return 0
		end
	end
	--15������
	local level = GetLevel(sceneId,selfId);
	if nil == level or level < 15 then
		BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD:��ng c�p 15 tr� l�n m�i c� th� s� d�ng c�ng n�ng n�y", 0);
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
		BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD:Nguy�n b�o c� �nh kh�ng ��", 0);
		return
	end
	local BagIndex = TryRecieveItem( sceneId, selfId, x888902_g_yuanbaobind[item].id, QUALITY_MUST_BE_CHANGE )
	if BagIndex == -1 then
		BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD:Tay n�i c�a c�c h� �� �y", 0);
		return
	end
	LuaFnItemBind( sceneId, selfId, BagIndex)
	BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD:C�c h� �� mua 1 c�i "..GetItemName( sceneId, x888902_g_yuanbaobind[item].id ).."", 0);
	SetMissionData(sceneId, selfId, MD_KNB_BIND,knb-x888902_g_yuanbaobind[item].price)
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, knb-x888902_g_yuanbaobind[item].price )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 11223353 )	-- tr� v� cl ch� s�
end