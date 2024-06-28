
x331039_g_scriptId = 331039 
x331039_g_Pos = {{left={182,122},right={282,222}}}

x331039_g_tyle_thu_vip = 10 --ty le thu cuoi vip

x331039_g_GiftTbl = {
30505107,--tieu lat ba
30008018,--Thanh Tâm Ðan
30008019,--Ð£c Xá L®nh
30008014,--Thông Thiên Linh Ðan
30900016,--cao c¤p hþp thành phù
30008030,--th± ðµn châu
30008048, --kim cß½ng toä
}

x331039_ItemList_ThuCuoi_VIP ={

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


x331039_g_Impact1 = 3003 
x331039_g_Impact2 = -1 
x331039_g_SpecailObj = 39

--**********************************

function x331039_OnDefaultEvent( sceneId, selfId, bagIndex )

end

--**********************************

function x331039_IsSkillLikeScript( sceneId, selfId)
	return 1; 
end

--**********************************

function x331039_CancelImpacts( sceneId, selfId )
	return 0; 
end

--**********************************

function x331039_OnConditionCheck( sceneId, selfId )

	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	return 1; 
end

--**********************************

function x331039_OnDeplete( sceneId, selfId )
	
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1;
	end
	return 0;
end

--**********************************

function x331039_OnActivateOnce( sceneId, selfId )
	if(-1~=x331039_g_Impact1) then
		local posX,posZ = GetWorldPos(sceneId, selfId)

		CreateSpecialObjByDataIndex(sceneId, selfId, x331039_g_SpecailObj, posX, posZ, 0)
		
		--event ban phao hoa tet giap ngo
		local daytime = GetDayTime()
		local hour = GetHour()
		--x331039_Tips(sceneId, selfId, "sceneid:  "..sceneId..", daytime: "..daytime..", hour: "..hour)
		
		if sceneId == 121 and daytime < 14039 and hour >= 18 and hour <22 then
			for i = 1, getn( x331039_g_Pos ) do
				if x331039_g_Pos[i].left[1] <= posX and posX <= x331039_g_Pos[i].right[1] and x331039_g_Pos[i].left[2] <= posZ and posZ <= x331039_g_Pos[i].right[2] then  
					if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 2  then
						x331039_Tips(sceneId, selfId, "C¥n 1 không gian túi ð° ô ðÕo cø  ð¬ nh§n ðßþc ph¥n thß·ng may m¡n" )
						return 1
					end
					local idx = random( getn(x331039_g_GiftTbl) )
					local ItemId = x331039_g_GiftTbl[idx]
					local BagIndex = TryRecieveItem( sceneId, selfId, ItemId, QUALITY_MUST_BE_CHANGE )
					if BagIndex ~= -1 then
						local playerName = GetName(sceneId, selfId)
						LuaFnItemBind( sceneId, selfId, BagIndex) --co dinh item
						local transfer = GetBagItemTransfer(sceneId,selfId,BagIndex)
						msg = format("#{_INFOUSR%s}#P dùng mµt chiªc #GPháo Hoa M×ng Nåm M¾i#P ðµt nhiên #{_INFOMSG%s}#P t× trên tr¶i r½i xu¯ng chui l÷t vào tai näi cüa #{_INFOUSR%s}#P th§t là may m¡n!", playerName, transfer, playerName )
						BroadMsgByChatPipe(sceneId, selfId, msg, 0)
					end
					
					--thuong lan 2
					local ran = random(100)
					if ran < x331039_g_tyle_thu_vip then
						local idx = random( getn(x331039_ItemList_ThuCuoi_VIP) )
						local ItemId = x331039_ItemList_ThuCuoi_VIP[idx]
						local BagIndex = TryRecieveItem( sceneId, selfId, ItemId, QUALITY_MUST_BE_CHANGE )
						if BagIndex ~= -1 then
							local playerName = GetName(sceneId, selfId)
							--LuaFnItemBind( sceneId, selfId, BagIndex) --co dinh item
							local transfer = GetBagItemTransfer(sceneId,selfId,BagIndex)
							msg = format("#{_INFOUSR%s}#P dùng mµt chiªc #GPháo Hoa M×ng Nåm M¾i#P ðµt nhiên #{_INFOMSG%s}#P t× trên tr¶i r½i xu¯ng chui l÷t vào tai näi cüa #{_INFOUSR%s}#P th§t là may m¡n!", playerName, transfer, playerName )
							BroadMsgByChatPipe(sceneId, selfId, msg, 4)
						end
					end
					--end thuong lan 2
				end
			end
		end
		--end event ban phao hoa tet giap ngo
		
	end
	return 1;
end

--**********************************

function x331039_OnActivateEachTick( sceneId, selfId)
	return 1;
end
function x331039_Tips(sceneId, selfId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end
