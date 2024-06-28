
x331039_g_scriptId = 331039 
x331039_g_Pos = {{left={182,122},right={282,222}}}

x331039_g_tyle_thu_vip = 10 --ty le thu cuoi vip

x331039_g_GiftTbl = {
30505107,--tieu lat ba
30008018,--Thanh T�m �an
30008019,--Уc X� L�nh
30008014,--Th�ng Thi�n Linh �an
30900016,--cao c�p h�p th�nh ph�
30008030,--th� �n ch�u
30008048, --kim c߽ng to�
}

x331039_ItemList_ThuCuoi_VIP ={

--10141431,--M� V� v�nh c�u
--10141432,--Th� c��i: V�n Th�y Kim T�nh Th�
--10141433,--Th� c��i: X�ch Ti�u Vi�m Lang
--10141434,--Th� c��i: Thi�n H� Linh Th߾c

--10141435,--Th� c��i: H�c Thi�n M�
--10141436,--Th� c��i: U Lam H�i Long
--10141437,--Th� c��i: Huy�n аng H�i Long
--10141438,--Th� c��i: �m Vi�n H�c Thi�n V�n
--10141439,--Th� c��i: �m Vi�n B�ch Thi�n V�n

--Add th� 6/2013
10141470,--T�a k�: Tinh H�ng V�n Ch�u
10141476,--Th� c��i: �m Vi�m Minh S�
10141483,--Th� c��i: H� Kh�ng H�ng H�n
10141489,--Th� c��i: T߶ng V�n H�c
-- Add th� 10/2013
--10141505,--Th� c��i: �ng Long Huy�n H�n

-- Add th� DM
--10141492,--Th� c��i: Kim Ti�n B�o
--10141493,--Th� c��i: V�n Tuy�t B�o
--10141497,--Th� c��i: U Minh B�o
-- Add thu 1/2014
--10141521,--T�a k�: Nhung Tuy�t Th�n Ng�u
10141546,--T�a k�: Чu Чu Tuy�t Khi�u
10141534,--T�a k�: Th߽ng H�i Long C�u
--10141540,--T�a k�: B�ch Bi�n Kim C߽ng

10141507,--C�nh: Vi�m V� 30

10141535,--T�a k�: Th߽ng H�i Long C�u 30
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
						x331039_Tips(sceneId, selfId, "C�n 1 kh�ng gian t�i � � ��o c�  � nh�n ���c ph�n th߷ng may m�n" )
						return 1
					end
					local idx = random( getn(x331039_g_GiftTbl) )
					local ItemId = x331039_g_GiftTbl[idx]
					local BagIndex = TryRecieveItem( sceneId, selfId, ItemId, QUALITY_MUST_BE_CHANGE )
					if BagIndex ~= -1 then
						local playerName = GetName(sceneId, selfId)
						LuaFnItemBind( sceneId, selfId, BagIndex) --co dinh item
						local transfer = GetBagItemTransfer(sceneId,selfId,BagIndex)
						msg = format("#{_INFOUSR%s}#P d�ng m�t chi�c #GPh�o Hoa M�ng N�m M�i#P �t nhi�n #{_INFOMSG%s}#P t� tr�n tr�i r�i xu�ng chui l�t v�o tai n�i c�a #{_INFOUSR%s}#P th�t l� may m�n!", playerName, transfer, playerName )
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
							msg = format("#{_INFOUSR%s}#P d�ng m�t chi�c #GPh�o Hoa M�ng N�m M�i#P �t nhi�n #{_INFOMSG%s}#P t� tr�n tr�i r�i xu�ng chui l�t v�o tai n�i c�a #{_INFOUSR%s}#P th�t l� may m�n!", playerName, transfer, playerName )
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
