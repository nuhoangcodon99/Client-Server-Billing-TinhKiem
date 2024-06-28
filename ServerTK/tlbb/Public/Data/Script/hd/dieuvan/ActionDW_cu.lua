x000550_g_scriptId = 000550
AllowEquipPoint = {0,1,2,3,4,5,6,12,14,15,16} --Các loÕi item có th¬ ÐV
Impact_K={}
Impact_K[5]={ MD = MD_POINT_BANG,ImpactId = 10600}
Impact_K[6]={ MD = MD_POINT_HOA,ImpactId = 10700}
Impact_K[7]={ MD = MD_POINT_HUYEN,ImpactId = 10800}
Impact_K[8]={ MD = MD_POINT_DOC,ImpactId = 10900}
Impact_K[9]={ MD = MD_POINT_GKBANG,ImpactId = 11400}
Impact_K[10]={ MD = MD_POINT_GKHOA,ImpactId = 11500}
Impact_K[11]={ MD = MD_POINT_GKHUYEN,ImpactId = 11600}
Impact_K[12]={ MD = MD_POINT_GKDOC,ImpactId = 11700}
Impact_K[13]={ MD = MD_POINT_KBANG,ImpactId = 11000}
Impact_K[14]={ MD = MD_POINT_KHOA,ImpactId = 11100}
Impact_K[15]={ MD = MD_POINT_KHUYEN,ImpactId = 11200}
Impact_K[16]={ MD = MD_POINT_KDOC,ImpactId = 11300}
x000550_Gem_Impact = {}
x000550_Gem_Impact[50431001]= 10529
x000550_Gem_Impact[50431002]= 10530
x000550_Gem_Impact[50431003]= 10531
x000550_Gem_Impact[50431004]= 10532
x000550_Gem_Impact[50431005]= 10533
function x000550_ActionDW5(sceneId,selfId,Type,Prama) --Type = 0: click chuµt vào item, 1: có sñ thay ð±i equip, 2: tháo item,3: kéo item

	if GetMissionFlag(sceneId, selfId, MF_CHECKVERSION) == 1 then	-- Nªu server và client ko cùng version thì luôn =1
		LuaFnWashPoints(sceneId, selfId)
		BeginEvent( sceneId )
			AddText( sceneId, "Sai thông tin phiên bän, hãy täi phiên bän m¾i nh¤t tÕi trang chü" )
		EndEvent( sceneId )
		DispatchMissionTips(sceneId,selfId)
		NewWorld(sceneId, selfId, 722, 12, 12);
		return
	end
	if Type == 10 then

		--LuaFnSetItemCreator(sceneId, selfId, Prama, "*01001*")
			local _, name = LuaFnGetItemCreator(sceneId, selfId, Prama)
			local ItemID = LuaFnGetItemTableIndexByIndex( sceneId, selfId, Prama )
			local n,Dtype,Dvalue = x000550_Creator2Data(name)
			local nLevel = GetBagItemLevel( sceneId, selfId, Prama )
			if GetLevel(sceneId,selfId) < nLevel then
				SetMissionData(sceneId,selfId,MD_EQUIP_CACHE,0)
				SetMissionData(sceneId,selfId,MD_DW_CACHE,0)
				return
			end
			SetMissionData(sceneId,selfId,MD_EQUIP_CACHE,ItemID) -- save thong tin item
			SetMissionData(sceneId,selfId,MD_DW_CACHE,Dtype*1000+ Dvalue) -- save thong tin dw
			SetMissionData(sceneId,selfId,MD_EQUIP_POS_REMOVE, Prama+1) -- save pos vua click
			local equipType = LuaFnGetBagEquipType( sceneId, selfId, Prama )
			-----------Danh rieng cho ngoc thoi trang--------------
			if equipType ==16 then
				local IdImpact = x000550_checkGemCloth(sceneId,selfId,Prama)
				SetMissionData(sceneId,selfId,MD_EQUIP_CACHE,IdImpact) -- save thong tin item
			end
			-----------end/ Danh rieng cho ngoc thoi trang--------------
			--hd add Log 22/9
			local LogInfo= format( "[LOG_ACTIONDW]: sceneId=%d, GUID=%0X, ActionType=%d, ItemID=%d, Dtype=%d, Dvalue=%d, BagIndex=%d",
				sceneId,
				LuaFnObjId2Guid( sceneId, selfId ),
				Type,
				ItemID,
				Dtype,
				Dvalue,
				Prama)
			WriteDebugLog( sceneId, selfId, LogInfo )
			--end add Log
			--for i=0,29 do
				--local _, namepos = LuaFnGetItemCreator(sceneId, selfId, i)
				--local npos,Dtypepos,Dvaluepos = x000550_Creator2Data(namepos)
				--if Dvaluepos > then 
				--local itemPosID = LuaFnGetItemTableIndexByIndex( sceneId, selfId, Dvaluepos )
				--	SetMissionData(sceneId,selfId,470+i, Dvaluepos)
				--end
			--end
	--x000550_Notice(sceneId,selfId,"1") --hd edit
		
	elseif Type == 11 then -- có sñ thay ð±i equip

			local ItemID = GetMissionData(sceneId,selfId,MD_EQUIP_CACHE) --l¤y item id cache
			--x000550_Notice(sceneId,selfId,"ItemID: "..ItemID) --hd edit
			if ItemID == 0 then return end --kªt thúc nªu ko có itemid cache

			local PosEquipRemove = GetMissionData(sceneId,selfId,MD_EQUIP_POS_REMOVE) - 1
			if PosEquipRemove < 0 then return end --v¸ trí túi ð° mà item trä v« => l²i
			if PosEquipRemove ~= Prama then
				--x000550_Notice(sceneId,selfId,"Dæ li®u giæa server và client không ð°ng bµ") --hd edit
				PrintStr("Dæ li®u giæa server và client không ð°ng bµ")
				SetMissionData(sceneId,selfId,MD_EQUIP_CACHE,0)
				return
			end
						-----------Danh rieng cho ngoc thoi trang--------------
			if ItemID < 10000000 then
				local IdImpact = x000550_checkGemCloth(sceneId,selfId,PosEquipRemove)
				if IdImpact ~= ItemID then
					x000550_cancelImpactCloth(sceneId,selfId)
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, ItemID, 0 )
				end
			end
						-----------end/ Danh rieng cho ngoc thoi trang--------------
			local DW = GetMissionData(sceneId,selfId,MD_DW_CACHE)
			local Dtype = floor(DW/1000)
			local Dvalue = mod(DW,1000)
			local ItemIDRemove = LuaFnGetItemTableIndexByIndex( sceneId, selfId, PosEquipRemove )
			if ItemIDRemove ~= 0 then
				local _, nameRemove = LuaFnGetItemCreator(sceneId, selfId, PosEquipRemove)
				if nameRemove == nil then --không check ðßþc creator
					nameRemove ="" 
				end 
				local _,DtypeRemove,DvalueRemove = x000550_Creator2Data(nameRemove)
				--x000550_Notice(sceneId,selfId,"DtypeRemove: "..DtypeRemove)
				--x000550_Notice(sceneId,selfId,"DvalueRemove: "..Dtype)
				
				if (DtypeRemove ~= Dtype) and (DtypeRemove < 5) and (Dtype < 5)then
					x000550_DWDoPoint(sceneId,selfId,DtypeRemove,-DvalueRemove)
					x000550_DWDoPoint(sceneId,selfId,Dtype,Dvalue)
				elseif (DtypeRemove ~= Dtype) and (DtypeRemove < 5) and (Dtype >= 5)then
					x000550_DWDoPoint(sceneId,selfId,DtypeRemove,-DvalueRemove)
					x000550_DWDoPoint_K(sceneId,selfId,Dtype,Dvalue)
				elseif (DtypeRemove ~= Dtype) and (DtypeRemove >= 5) and (Dtype < 5)then
					x000550_DWDoPoint_K(sceneId,selfId,DtypeRemove,-DvalueRemove)
					x000550_DWDoPoint(sceneId,selfId,Dtype,Dvalue)
				elseif (DtypeRemove ~= Dtype) and (DtypeRemove >= 5) and (Dtype >= 5)then
					x000550_DWDoPoint_K(sceneId,selfId,DtypeRemove,-DvalueRemove)
					x000550_DWDoPoint_K(sceneId,selfId,Dtype,Dvalue)
				elseif (DtypeRemove == Dtype) and (Dtype < 5) then
					x000550_DWDoPoint(sceneId,selfId,Dtype,Dvalue-DvalueRemove)
				elseif (DtypeRemove == Dtype) and (Dtype > 4) then
					x000550_DWDoPoint_K(sceneId,selfId,Dtype,Dvalue-DvalueRemove)
				end
				BeginUICommand( sceneId )
					--UICommand_AddInt( sceneId, targetId )
				EndUICommand( sceneId )
				DispatchUICommand( sceneId, selfId, 11223361 )
				--hd add Log 22/9
				
				local LogInfo= format( "[LOG_ACTIONDW]: sceneId=%d, GUID=%0X, ActionType=%d, ItemIDRemove=%d, DtypeRemove=%d, DvalueRemove=%d, BagIndex=%d",
					sceneId,
					LuaFnObjId2Guid( sceneId, selfId ),
					Type,
					ItemIDRemove,
					DtypeRemove,
					DvalueRemove,
					Prama)
				WriteDebugLog( sceneId, selfId, LogInfo )
				--end add Log
			else --không có item remove 
				--x000550_Notice(sceneId,selfId,Dtype.."Dæ li®u giæa server và client không ð°ng bµ"..Dvalue)
				--if Dvalue ~=0 then--giá tr¸ dw ~= 0 thì call hàm thñc hi®n
					SetMissionData(sceneId,selfId,MD_EQUIP_CACHE,0) --hd add 22/9\
					if Dtype <5 then
						x000550_DWDoPoint(sceneId,selfId,Dtype,Dvalue)
					else
						x000550_DWDoPoint_K(sceneId,selfId,Dtype,Dvalue)

					end
					BeginUICommand( sceneId )
						--UICommand_AddInt( sceneId, targetId )
					EndUICommand( sceneId )
					DispatchUICommand( sceneId, selfId, 11223361 )
					--add log
					local LogInfo= format( "[LOG_ACTIONDW]: sceneId=%d, GUID=%0X, ActionType=%d, ItemID=%d, Dtype=%d, Dvalue=%d, PreBagIndex=%d",
						sceneId,
						LuaFnObjId2Guid( sceneId, selfId ),
						Type,
						ItemID,
						Dtype,
						Dvalue,
						Prama)
					WriteDebugLog( sceneId, selfId, LogInfo )
					return --hd add 22/9
				--end
			end
			SetMissionData(sceneId,selfId,MD_EQUIP_CACHE,0) 
--x000550_Notice(sceneId,selfId,"3") --hd edit
	elseif Type == 12 and Prama == 1 then -- click chuµt vào item trên ng (trc khi item tháo ra)
		--hd add 21/9/2013 
		--check tui do
		if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
			--x000550_Notice(sceneId, selfId,  "Your bag is full !")
			SetMissionData(sceneId,selfId,MD_EQUIP_POS_REMOVE, -1) --tui do da day
			return
		end
		--end hd add 21/9/2013
		SetMissionData(sceneId,selfId,MD_EQUIP_CACHE,0)
		
		for i=0,29 do
			--local hdtestid = LuaFnGetItemTableIndexByIndex( sceneId, selfId, i )
			--local str = "stt : "..i.." : "..hdtestid
			--BroadMsgByChatPipe(sceneId, selfId, str, 4)
			
			if LuaFnGetItemTableIndexByIndex( sceneId, selfId, i ) == 0 then
				SetMissionData(sceneId,selfId,MD_EQUIP_POS_REMOVE, i+1)
				return
			end
		end
		SetMissionData(sceneId,selfId,MD_EQUIP_POS_REMOVE, -1)
--x000550_Notice(sceneId,selfId,"4") --hd edit
	elseif Type == 12 and Prama == 2 then -- sau khi item ðc tháo xu¯ng
		local PosEquipRemove = GetMissionData(sceneId,selfId,MD_EQUIP_POS_REMOVE) - 1
		--x000550_Notice(sceneId, selfId,  "PosEquipRemove : "..PosEquipRemove)
		if PosEquipRemove <0 then  --hd edit 21/09/2013 truong hop posremove <0 thi do tui do day
			BeginUICommand( sceneId )
				--UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 11223361 )
			return 
		end --thieu khong gian tui do
		local equipType = LuaFnGetBagEquipType( sceneId, selfId, PosEquipRemove )
		if equipType ==16 then
			x000550_cancelImpactCloth(sceneId,selfId)
		end
		local ItemID = LuaFnGetItemTableIndexByIndex( sceneId, selfId, PosEquipRemove )
		--hd add 22/9 : check loai item
		local EquipPoint = LuaFnGetBagEquipType( sceneId, selfId, PosEquipRemove )
		if EquipPoint == HEQUIP_DARK then 
			BeginUICommand( sceneId )
				--UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 11223361 )
			return 
		end --nªu là ám khí thì stop
		--end hd add 22/9
		local _, name = LuaFnGetItemCreator(sceneId, selfId, PosEquipRemove)
		local n,Dtype,Dvalue = x000550_Creator2Data(name)
		if Dvalue == 0 then 
			BeginUICommand( sceneId )
				--UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 11223361 )
			return
		end
		local LogInfo= format( "[LOG_ACTIONDW]: sceneId=%d, GUID=%0X, ActionType=%d, ItemID=%d, Dtype=%d, Dvalue=%d, BagIndex=%d",
			sceneId,
			LuaFnObjId2Guid( sceneId, selfId ),
			Type,
			ItemID,
			Dtype,
			Dvalue,
			PosEquipRemove)
		WriteDebugLog( sceneId, selfId, LogInfo )
		if Dtype < 5 then
			x000550_DWDoPoint(sceneId,selfId,Dtype,-Dvalue)
		else
			x000550_DWDoPoint_K(sceneId,selfId,Dtype,-Dvalue)
		end
			BeginUICommand( sceneId )
				--UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 11223361 )
--x000550_Notice(sceneId,selfId,"5") --hd edit
	elseif Type == 3 then -- Kéo item t× túi ð° lên ng
		--SetMissionData(sceneId,selfId,MD_EQUIP_POS_REMOVE, i+1)
		--local ItemID = LuaFnGetItemTableIndexByIndex( sceneId, selfId, Prama )
--x000550_Notice(sceneId,selfId,ItemID)
	elseif Type == 4 and Prama == 4 then  -- check t¦y tüy
		BeginEvent(sceneId)
			AddText(sceneId, "#YÐÕi T¦y Tüy Ðan")
			AddText(sceneId, "  Sau khi sØ døng có th¬ mang t¤t cä các ði¬m s¯ ðã phân ph¯i biªn thành ti«m nång.")
				AddNumText(sceneId, 300052,"Bây gi¶ tÕi hÕ mu¯n chïnh ði¬m", 0, 1)
				AddNumText(sceneId, 300052,"Sau này hãy tính", 0, 2)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,-1)
	elseif Type == 5 and Prama == 5 then	-- Tien hanh tay diem neu bug dw
		LuaFnWashPoints(sceneId, selfId)
	end
end
function x000550_checkGemCloth(sceneId,selfId,Prama)

	--x000550_cancelImpactCloth(sceneId,selfId)
	local equipEmbededGemCount = GetGemEmbededCount( sceneId, selfId, Prama )

	local gemEmbededIdx =0
	for i = 0, equipEmbededGemCount - 1 do
		local gemEmbededIdx = GetGemEmbededType( sceneId, selfId, Prama, i )
		if x000550_Gem_Impact[gemEmbededIdx] then
			--x000550_Notice(sceneId,selfId,"Dæ li®u giæa server và client không ð°ng bµ"..x000550_Gem_Impact[gemEmbededIdx])
			--LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x000550_Gem_Impact[gemEmbededIdx], 0 )
			return x000550_Gem_Impact[gemEmbededIdx]
		end
	end
	return 0
end
function x000550_cancelImpactCloth(sceneId,selfId)
	for j=10529,10533 do
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, j) == 1 then
			LuaFnCancelSpecificImpact(sceneId,selfId,j)
		end
	end
end
function x000550_DWDoPoint(sceneId,selfId,nType,nPoint)   ---1,1
	if nPoint ==0 then return end --point ==0 thì kªt thúc --hd add 22/9
	--x000550_Notice(sceneId,selfId,"x000550_DWDoPoint nType: "..nType)
	--x000550_Notice(sceneId,selfId,"x000550_DWDoPoint nPoint: "..nPoint)
	if nType == 888 and nPoint == 888 then --trß¶ng hþp ngß¶i ch½i chßa cµng ði¬m, client cµng ði¬m r°i send ðªn sv
		nPoint = mod(GetMissionData(sceneId,selfId,MD_POINT_CACHE),1000)
		nType = floor(GetMissionData(sceneId,selfId,MD_POINT_CACHE)/1000)
	end

	if LuaFnIsCanWashPiont(sceneId, selfId, nType) == 1  then --có th¬ t¦y ði¬m
		local RemainPoint = GetPlayerRemainPoints(sceneId, selfId)---l¤y ði¬m cµng hi®n tÕi
		
		LuaFnWashSomePoints(sceneId, selfId, nType, -nPoint) --tiªn hành cµng ði¬m vào thuµc tính nType
		SetPlayerRemainPoints(sceneId, selfId, RemainPoint) --set lÕi ði¬m cµng
		--add log 
		local LogInfo= format( "[LOG_ACTIONDW]: sceneId=%d, GUID=%0X, nType=%d, nPoint=%d, RemainPoint=%d",
			sceneId,
			LuaFnObjId2Guid( sceneId, selfId ),
			nType,
			nPoint,
			RemainPoint)
		WriteDebugLog( sceneId, selfId, LogInfo )
		--end add log
	else --không t¦y ði¬m ðßþc
		if nPoint <= 0 then return end -- Khi thao ra point < 0, neu ko the tru diem thi thoi ko tru --edit 22/9 <=0 : trß¶ng hþp
		--b¢ng 0 cûng không thñc hi®n thêm
		local RemainPoint = GetPlayerRemainPoints(sceneId, selfId) --l¤y ði¬m cµng hi®n tÕi cüa nhân v§t
		SetPlayerRemainPoints(sceneId, selfId, RemainPoint+1) --cµng cho nhân v§t mµt ði¬m cµng
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, nType ) --thuµc tính c¥n cµng
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 11223344 ) --send ðªn client +1 ði¬m theo nType
		SetMissionData(sceneId,selfId,MD_POINT_CACHE,nType*1000+nPoint-1) --tr× 1 ði¬m dw
	end
end
function x000550_DWDoPoint_K(sceneId,selfId,nType,nPoint)
					
	if nType < 5 or nType >16 then
		x000550_Notice(sceneId,selfId,"Có l²i xäy ra"..nType)
		return
	else
		--x000550_Notice(sceneId,selfId,GetMissionData(sceneId,selfId,Impact_K[nType].MD))
		SetMissionData(sceneId,selfId,Impact_K[nType].MD,GetMissionData(sceneId,selfId,Impact_K[nType].MD)+nPoint)
		--x000550_Notice(sceneId,selfId,GetMissionData(sceneId,selfId,Impact_K[nType].MD))
		x000550_AddImpact_K(sceneId,selfId,nType)
	end
end
function x000550_AddImpact_K(sceneId,selfId,nType)

	if ((nType >=5) and (nType <=8)) then
		local ImpactId = floor(GetMissionData(sceneId,selfId,Impact_K[nType].MD)/10)+Impact_K[nType].ImpactId
--x000550_Notice(sceneId,selfId,ImpactId)
		if ((ImpactId < (Impact_K[nType].ImpactId)) or (ImpactId >(Impact_K[nType].ImpactId+25))) then return end
		for i =(Impact_K[nType].ImpactId),(Impact_K[nType].ImpactId+25) do
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, i) == 1 then
				LuaFnCancelSpecificImpact(sceneId,selfId,i)
			end
		end
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, ImpactId, 0 )
	end
	if ((nType >=9) and (nType <=16)) then
		local ImpactId = floor(GetMissionData(sceneId,selfId,Impact_K[nType].MD)/2)+Impact_K[nType].ImpactId
		--x000550_Notice(sceneId,selfId,GetMissionData(sceneId,selfId,Impact_K[nType].MD))
		if ((ImpactId < (Impact_K[nType].ImpactId)) or (ImpactId >(Impact_K[nType].ImpactId+50))) then return end
		for i =(Impact_K[nType].ImpactId),(Impact_K[nType].ImpactId+50) do
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, i) == 1 then
				LuaFnCancelSpecificImpact(sceneId,selfId,i)
			end
		end
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, ImpactId, 0 )
	end
	if (nType ==99) then
		for j=5,8 do
			local ImpactId = floor(GetMissionData(sceneId,selfId,Impact_K[j].MD)/10)+Impact_K[j].ImpactId
			if ((ImpactId < (Impact_K[j].ImpactId)) or (ImpactId >(Impact_K[j].ImpactId+25))) then return end
			for i =(Impact_K[j].ImpactId),(Impact_K[j].ImpactId+25) do
				if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, i) == 1 then
					LuaFnCancelSpecificImpact(sceneId,selfId,i)
				end
			end
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, ImpactId, 0 )
		end
		for j=13,16 do
			local ImpactId = floor(GetMissionData(sceneId,selfId,Impact_K[j].MD)/2)+Impact_K[j].ImpactId
			if ((ImpactId < (Impact_K[j].ImpactId)) or (ImpactId >(Impact_K[j].ImpactId+50))) then return end
			for i =(Impact_K[j].ImpactId),(Impact_K[j].ImpactId+50) do
				if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, i) == 1 then
					LuaFnCancelSpecificImpact(sceneId,selfId,i)
				end
			end
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, ImpactId, 0 )
		end
	end
end
--ham kiem tra Creator co phai la creator DW hay khong
function x000550_CheckCreatorDW(str)
	if type(str) == "string" then
		--old version
		--local creatorformat = "%*%d%d%d%d%d%*";
		--local dwformat = "%d%d%d%d%d"
		--if strfind(str,creatorformat)~= nil then
		--	local temp = strsub(str,strfind(str,creatorformat)) --ket qua gia tri *xxxxx*
				
		--	return strsub(str,strfind(temp,dwformat)) --xxxxx
		--end
		--new verison check dw creator -hd edit 18/6/2014
		local creatorformat = "%*%d%d%d%d%d%*";
		local i,j = strfind  ( str, creatorformat ); --tìm chu²i dw trong creator
		
		if i~= nil then --tìm th¤y
			local dw = strsub(str,i+1,j-1) --ket qua gia tri xxxxx
			--PushDebugMessage("dw : "..dw) 
			local len = strlen(dw);
			if len ==5 then --ki¬m tra ðµ dài chu²i =5 thì hþp l®
				
				local nlevel, ntype, npoint;
				nlevel =  tonumber(strsub(dw,1,1));
				ntype = tonumber(strsub(dw,1,2));
				npoint = tonumber(strsub(dw,3,len));
				local ok=1 --biªn ki¬m tra hþp l®
				--if tonumber(nlevel)<1 or tonumber(nlevel)<4 then --check nlevel --chßa dùng
					--ok=0
				--end
				if ntype<0 or ntype>16 then --check loÕi dw [0-4]
					ok=0
				end
				if x000550_GetDWLevel(sceneId,npoint,ntype) ==0 then --check c¤p dw
					ok=0
				end
				if ok ==1 then
					return tostring(dw)
				end
			end
		end
	end
	--khong la creator dw
	return 0;
end
--ham lay gia tri thuoc tinh cua creator
function x000550_Creator2Data(str)
	str = tostring(str)
	if type(str) == "string" then
		local check = x000550_CheckCreatorDW(str)
		local len = strlen(check)
		
		--return 0,len,0;
		if check ~= 0 and len == 5 then
			--creator la item dw
			local temp, ntype, npoint
			temp =  tonumber(strsub(check,1,1))
			ntype = tonumber(strsub(check,1,2))
			npoint = tonumber(strsub(check,3,len))
			return temp, ntype, npoint
		end
		--khong la creator dw
	end
	return 0,0,0;
end

function x000550_GetDWLevel(sceneId,npoint,ntype)
	local DWLevel = {10,20,40,70,110,140,170,210,240,280}
	local DWLevel_K ={4,8,18,36,42,50,60,70,80,90}
	local DWLevel_KP ={10,20,30,60,100,120,140,170,200,240}
	local maxDWlevel = 10;
	npoint = tonumber(npoint);
	ntype = tonumber(ntype);
	if ntype >8 then
		for i=1,maxDWlevel do
			if npoint==DWLevel_K[i] then
				return i;
			end
		end
	elseif ntype >4 then
		for i=1,maxDWlevel do
			if npoint==DWLevel_KP[i] then
				return i;
			end
		end
	else
		for i=1,maxDWlevel do
			if npoint==DWLevel[i] then
				return i;
			end
		end
	end
	return 0;
end

function x000550_Notice(sceneId,selfId,msg)
	BeginEvent( sceneId )
		AddText( sceneId, msg)
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end