---NPC Tính nång Ðiêu  Vån
--Author: tinhkiem.us
--Date: 13/12/2012

x000561_g_ScriptId = 000561
MF_TAYDIEM = 75
SKILL_ADD_ST = 1901
SKILL_ADD_EN = 1913

function x000561_OnDefaultEvent( sceneId, selfId,targetId )
--AddExp(sceneId,selfId,1000000000)
--SetMissionData(sceneId,selfId,MD_XL_CONGLUC,10100)
--SetMissionData(sceneId,selfId,MD_XL2_SKILL1,1)
--SetMissionData(sceneId,selfId,MD_XL2_SKILL2,29)
--SetMissionData(sceneId,selfId,MD_XL1_SKILL3,0)
--SetMissionData(sceneId,selfId,MD_XL1_SKILL4,0)
--SetMissionData(sceneId,selfId,MD_XL1_SKILL5,0)
		for i=SKILL_ADD_ST,SKILL_ADD_EN do
			if HaveSkill( sceneId, selfId, i ) ~= 1 then AddSkill( sceneId, selfId, i ) end
		end
	BeginEvent(sceneId)
		AddText(sceneId,"#{XL_090707_01}")
		
		if GetMissionFlag(sceneId,selfId, MF_TAYDIEM) == 0 then
			BeginEvent(sceneId)
				AddText(sceneId," #r#YTrß¾c khi Tu luy®n, b¢ng hæu c¥n tiªn hành t¦y tüy!")
				AddText(sceneId," #r#YSØ døng ÐÕi #PT¦y Tüy Ðan #Yvà tháo hªt t¤t cä trang b¸ trên ngß¶i ð¬ tiªn hành t¦y tüy!")

			EndEvent(sceneId)
			return
		end
		--AddText(sceneId,"#GChÑc nång chßa ðßþc m·!")
		--AddNumText( sceneId, x000561_g_ScriptId, "H÷c kÛ nång Tu Luy®n",6 ,100  )
		--AddNumText( sceneId, x000561_g_ScriptId, "Nh§n Công Lñc (Chï có · phiên bän test)",6 ,200  )
	if GetMissionFlag(sceneId,selfId, MF_TAYDIEM) == 1 then
		
		AddNumText( sceneId, x000561_g_ScriptId, "#{XL_XML_35}",6 ,1000  )
		AddNumText( sceneId, x000561_g_ScriptId, "#{XL_XML_36}",6 ,2000  )
		AddNumText( sceneId, x000561_g_ScriptId, "#{XL_XML_37}",6 ,3000  )
	end
		AddNumText( sceneId, x000561_g_ScriptId, "#{XL_XML_38}",11 ,4000  )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end


function x000561_OnEventRequest( sceneId, selfId, targetId, eventId )
	local key = GetNumText()
	local lastTime = GetMissionData(sceneId,selfId,MD_XL_CONGLUC) -- save thong tin item
	local lastDayTime =  floor( lastTime / 1000 )-floor( lastTime / 100000000 )*100000
	local CongLuc = mod( lastTime, 1000 )
	local CurDayTime = GetDayTime()
	local used = floor( lastTime / 100000000 )
	if CurDayTime > lastDayTime then
		lastDayTime = CurDayTime
		CongLuc =100
		lastTime = lastDayTime * 1000 + CongLuc
		SetMissionData( sceneId, selfId, MD_XL_CONGLUC, lastTime )
		CongLuc = mod(GetMissionData(sceneId,selfId,MD_XL_CONGLUC),1000)
	end
	--local BiTich1 = GetMissionData(sceneId,selfId,MD_XL_BOOK1) -- save thong tin item
	local Info_Skill1 ={}
	local Skill1 ={}
	local Skill1_Max = {}
	local Info_Skill2 ={}
	local Skill2 ={}
	local Skill2_Max = {}
	Info_Skill1[1] = GetMissionData(sceneId,selfId,MD_XL1_SKILL1) -- save thong tin item
	Info_Skill1[2] = GetMissionData(sceneId,selfId,MD_XL1_SKILL2) -- save thong tin item
	Info_Skill1[3] = GetMissionData(sceneId,selfId,MD_XL1_SKILL3) -- save thong tin item
	Info_Skill1[4] = GetMissionData(sceneId,selfId,MD_XL1_SKILL4) -- save thong tin item
	Info_Skill1[5] = GetMissionData(sceneId,selfId,MD_XL1_SKILL5) -- save thong tin item

	Info_Skill2[1] = GetMissionData(sceneId,selfId,MD_XL2_SKILL1) -- save thong tin item
	Info_Skill2[2] = GetMissionData(sceneId,selfId,MD_XL2_SKILL2) -- save thong tin item
	Info_Skill2[3] = GetMissionData(sceneId,selfId,MD_XL2_SKILL3) -- save thong tin item
	Info_Skill2[4] = GetMissionData(sceneId,selfId,MD_XL2_SKILL4) -- save thong tin item

	for i=1,5 do
		Skill1[i] = mod(Info_Skill1[i],1000)
		Skill1_Max[i] = floor(Info_Skill1[i]/1000)
	end
	for i=1,4 do
		Skill2[i] = mod(Info_Skill2[i],1000)
		Skill2_Max[i] = floor(Info_Skill2[i]/1000)
	end
	
	if key == 100 then	-- H÷c kÛ nång tu luy®n
		if GetLevel(sceneId,selfId) < 70 then
			BeginEvent(sceneId)
				AddText(sceneId,"ÐÆng c¤p 70 m¾i có th¬ tiªn hành h÷c t§p!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		for i=SKILL_ADD_ST,SKILL_ADD_EN do
			if HaveSkill( sceneId, selfId, i ) == 1 then DelSkill( sceneId, selfId, i ) end
		end
			BeginEvent(sceneId)
				AddText(sceneId,"H÷c kÛ nång Tu luy®n thành công")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
	end
	if key == 200 then	-- Nh§n công lñc
		--SetMissionData(sceneId,selfId,MD_XL_CONGLUC,100)
			BeginEvent(sceneId)
				AddText(sceneId,"Nh§n công lñc thành công")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
	end
	if key == 1000 then	-- Tu luy®n
		if GetLevel(sceneId,selfId) < 70 then
			BeginEvent(sceneId)
				AddText(sceneId,"ÐÆng c¤p 70 m¾i có th¬ tiªn hành h÷c t§p!")
			EndEvent(sceneId)
			return
		end
		if GetMissionFlag(sceneId,selfId, MF_TAYDIEM) == 0 then
			BeginEvent(sceneId)
				AddText(sceneId," Trß¾c khi Tu luy®n, b¢ng hæu c¥n tiªn hành t¦y tüy!")
			EndEvent(sceneId)
			return
		end

		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			UICommand_AddInt( sceneId, 1 )
			UICommand_AddInt( sceneId, CongLuc ) --Tra ve client chi so cong luc
			--UICommand_AddInt( sceneId, BiTich1 )
			for i=1,5 do
				UICommand_AddInt( sceneId, Info_Skill1[i] )
				--UICommand_AddInt( sceneId, Skill1[i] )
				--UICommand_AddInt( sceneId, Skill1_Max[i] )
			end
			for i=1,4 do
				UICommand_AddInt( sceneId, Info_Skill2[i] )
				--UICommand_AddInt( sceneId, Skill2[i] )
				--UICommand_AddInt( sceneId, Skill2_Max[i] )
			end
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 171717 )
		--x000561_NotifyTip( sceneId, selfId, "--"..Skill2[2] )
	end
	if key == 2000 then	-- Nâng cao cänh gi¾i
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			UICommand_AddInt( sceneId, 2 )
			UICommand_AddInt( sceneId, CongLuc ) -- Tra ve client chi so cong luc
			--UICommand_AddInt( sceneId, BiTich1 )
			for i=1,5 do
				UICommand_AddInt( sceneId, Info_Skill1[i] )
				--UICommand_AddInt( sceneId, Skill1[i] )
				--UICommand_AddInt( sceneId, Skill1_Max[i] )
			end
			for i=1,4 do
				UICommand_AddInt( sceneId, Info_Skill2[i] )
				--UICommand_AddInt( sceneId, Skill2[i] )
				--UICommand_AddInt( sceneId, Skill2_Max[i] )
			end
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 171717 )
	end
	if key == 3000 then	-- Nh§n danh hi®u
		x000561_NotifyTip( sceneId, selfId, "Tính nång chßa m·." )
	end
	if key == 4000 then	-- Info
		BeginEvent(sceneId)
			AddText(sceneId,"#{XL_090707_46}")
			AddNumText( sceneId, x000561_g_ScriptId, "#{XL_XML_60}",11 ,4001  )
			AddNumText( sceneId, x000561_g_ScriptId, "#{XL_XML_69}",11 ,4002  )
			AddNumText( sceneId, x000561_g_ScriptId, "#{XL_XML_61}",11 ,4003  )
			AddNumText( sceneId, x000561_g_ScriptId, "#{XL_XML_62}",11 ,4004  )
			AddNumText( sceneId, x000561_g_ScriptId, "#{XL_XML_63}",11 ,4005  )
			AddNumText( sceneId, x000561_g_ScriptId, "#{XL_XML_64}",11 ,4006  )
			AddNumText( sceneId, x000561_g_ScriptId, "#{XLPF_110520_01}",11 ,4007  )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if key == 4001 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{XL_090707_48}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if key == 4002 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{XL_090707_52}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if key == 4003 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{XL_090707_53}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if key == 4004 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{XL_090707_54}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if key == 4005 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{XL_090707_55}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if key == 4006 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{XL_090707_56}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end

	if key == 4007 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{XLPF_110520_02}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
end


function x000561_DoDiaowenAction(sceneId, selfId, nType, idBagPos1, idBagPos2 , idBagPos3)
	if idBagPos1 == -1 then
		return
	end
	if nType == 1 then -- Khac DV
		local EquipPoint = LuaFnGetBagEquipType( sceneId, selfId, idBagPos1 )
		local IDMaterial = LuaFnGetItemTableIndexByIndex( sceneId, selfId, idBagPos2 )
		local IDDW = LuaFnGetItemTableIndexByIndex( sceneId, selfId, idBagPos3 )
		local NotDW = 1
		for i,Epoint in AllowEquipPoint do
			if EquipPoint == Epoint then
				NotDW = 0
			end
		end
		if NotDW  == 1 then
			x000561_NotifyTip(sceneId,selfId, "Trang b¸ này không h² trþ kh¡c")
			return
		end
		if IDMaterial ~= 30503149 then
			x000561_NotifyTip(sceneId,selfId, "#{ZBDW_091105_6}")
			return
		end
		local notshike = 0
		if (EquipPoint~= 3 and EquipPoint ~= 15) then
			if (IDDW >= DWEquipPoint[EquipPoint].fir1 and IDDW <= DWEquipPoint[EquipPoint].end1) then
				notshike = 1
			end
		else
			if (IDDW >= DWEquipPoint[EquipPoint].fir1 and IDDW <= DWEquipPoint[EquipPoint].end1) or (IDDW >= DWEquipPoint[EquipPoint].fir2 and IDDW <= DWEquipPoint[EquipPoint].end2) then
				notshike = 1
			end
		end
		if notshike == 0 then
			x000561_NotifyTip(sceneId,selfId, "#{ZBDW_091105_23}")
			return
		end
		if LuaFnIsItemAvailable( sceneId, selfId, idBagPos1 ) ~= 1 then
			x000561_NotifyTip(sceneId,selfId, "Có v§t ph¦m b¸ khóa")
			return
		end
		if LuaFnIsItemAvailable( sceneId, selfId, idBagPos2 ) ~= 1 then
			x000561_NotifyTip(sceneId,selfId, "Có v§t ph¦m b¸ khóa")
			return
		end
		if LuaFnIsItemAvailable( sceneId, selfId, idBagPos3 ) ~= 1 then
			x000561_NotifyTip(sceneId,selfId, "Có v§t ph¦m b¸ khóa")
			return
		end
		
		local ItemType = -1
		local ItemLevel = 0
		for i = 0, getn(DWMaterialType) do
			local Type = DWMaterialType[i]
			for j = 1,getn(Type) do
				local Level = Type[j]
				for k = 0,getn(Level) do
					if  IDDW == Level[k] then
						ItemType = i
						ItemLevel = j
						break
					end
				end
			end
		end
		if ItemType == -1 and ItemLevel == 0 then
			x000561_NotifyTip( sceneId, selfId, "Sai sót v§t ph¦m" )
			return
		end
		
		local ret = LuaFnCostMoneyWithPriority( sceneId, selfId, 50000 )
		if ret < 0 then
			x000561_NotifyTip( sceneId, selfId, "Không ðü ngân lßþng." )
			return
		end
		--x000561_NotifyTip( sceneId, selfId, "ItemType : " ..ItemType)
		--x000561_NotifyTip( sceneId, selfId, "ItemLevel : " ..ItemLevel)
		local _, name = LuaFnGetItemCreator(sceneId, selfId, idBagPos1)
		--local author = x000561_Creator2Author(name)
		--x000561_NotifyTip( sceneId, selfId, "author : " ..author)
		
		
		LuaFnEraseItem( sceneId, selfId, idBagPos2 )
		LuaFnEraseItem( sceneId, selfId, idBagPos3 )
		--SetDW(sceneId,selfId,ItemType,ItemLevel,idBagPos1)
		local ketqua = x000561_SetDW(sceneId,selfId,ItemType,ItemLevel,idBagPos1)
		local ret = LuaFnLockCheck( sceneId, selfId, idBagPos1, 0 )
		if ret == 0 then LuaFnEquipLock( sceneId, selfId, idBagPos1 ) end
		--x000561_NotifyTip( sceneId, selfId, "ketqua : " ..ketqua)
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
		x000561_NotifyTip( sceneId, selfId, "Ðiêu Vån trang b¸ thành công." )
		BeginUICommand( sceneId )
			--UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 8000156 )
		return
	end
	if nType == 2 then -- Cuong Hoa dv
		local _, name = LuaFnGetItemCreator(sceneId, selfId, idBagPos1)
		local NumMaterial = LuaFnGetAvailableItemCount( sceneId, selfId, 20310166 )
		
		if NumMaterial < idBagPos2 then
			x000561_NotifyTip( sceneId, selfId, "S¯ Kim T¢m Ty nh§p vào l¾n h½n s¯ lßþng mang trên ngß¶i" )
			return
		end
		if name == nil or name =="" then
			x000561_NotifyTip( sceneId, selfId, "Trang b¸ chßa kh¡c Ðiêu Vån, không th¬ tháo" )
			return
		end
		--x000561_NotifyTip( sceneId, selfId, "name : " ..name)
		local check = x000561_CheckCreatorDW(name)
		local n,Dtype,Dvalue = x000561_Creator2Data(name)
		
		--x000561_NotifyTip( sceneId, selfId, "check : " ..check)
		--x000561_NotifyTip( sceneId, selfId, "Dtype : " ..Dtype)
		--x000561_NotifyTip( sceneId, selfId, "Dvalue : " ..Dvalue)
		
		if Dvalue == 0 then
			x000561_NotifyTip( sceneId, selfId, "Trang b¸ chßa kh¡c Ðiêu Vån, không th¬ cß¶ng hóa" )
			return
		end
		
		local Dlevel = 0
		for i=1,getn(DWLevel) do
			if DWLevel[i] == Dvalue then
				Dlevel = i
				break
			end
		end
		if Dlevel == 0 then 
			x000561_NotifyTip( sceneId, selfId, "V§t ph¦m sai sót :")
			return
		end
		if Dlevel == 7 then
			x000561_NotifyTip( sceneId, selfId, "Trang b¸ ðã ðÕt c¤p Ðiêu Vån cao nh¤t" )
			return
		end
		
		--x000561_NotifyTip( sceneId, selfId, "Dtype : " ..Dtype)
		--x000561_NotifyTip( sceneId, selfId, "Dlevel : " ..Dlevel+1)
		--local npoint = x000561_strformat(x000561_GetDWPoint(Dlevel+1))
		--x000561_NotifyTip( sceneId, selfId, "npoint : " ..npoint)
		if (idBagPos2 < NumberMaterial[Dlevel]) then
			x000561_NotifyTip( sceneId, selfId, "S¯ lßþng Kim T¢m Ty nh§p vào không ðü ð¬ thång c¤p" )
			return
		end
		if (NumMaterial < NumberMaterial[Dlevel]) then
			x000561_NotifyTip( sceneId, selfId, "Không ðü "..NumberMaterial[Dlevel].." Kim T¢m Ty ho£c có v§t ph¦m b¸ khóa" )
			return
		end

		LuaFnDelAvailableItem(sceneId,selfId, 20310166, NumberMaterial[Dlevel])
		x000561_SetDW(sceneId,selfId,Dtype,Dlevel+1,idBagPos1)
		--CallScriptFunction((550), "SetDW",sceneId, selfId, Dtype,DWLevel[Dlevel+1],idBagPos1)
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
		x000561_NotifyTip( sceneId, selfId, "Cß¶ng Hóa Ðiêu Vån thành công." )
		return
	end
	if nType == 3 then --thao dv
		local EquipPoint = LuaFnGetBagEquipType( sceneId, selfId, idBagPos1 )
		local _, name = LuaFnGetItemCreator(sceneId, selfId, idBagPos1)
		local IDMaterial = LuaFnGetItemTableIndexByIndex( sceneId, selfId, idBagPos2 )
		local Dlevel = 0
		
		--x000561_NotifyTip( sceneId, selfId, "name : " ..name)
		--local author = x000561_Creator2Author(name)
		--x000561_NotifyTip( sceneId, selfId, "author : " ..author)
		
		if name == nil or name =="" then
			x000561_NotifyTip( sceneId, selfId, "Trang b¸ chßa kh¡c Ðiêu Vån, không th¬ tháo" )
			return
		end
		local n,Dtype,Dvalue = x000561_Creator2Data(name)
		--x000561_NotifyTip( sceneId, selfId, "Dvalue : " ..Dvalue)
		
		if Dvalue == 0 then
			x000561_NotifyTip( sceneId, selfId, "Trang b¸ chßa kh¡c Ðiêu Vån, không th¬ tháo" )
			return
		end
		for i=1,getn(DWLevel) do
			if DWLevel[i] == Dvalue then
				Dlevel = i
				break
			end
		end
		if LuaFnIsItemAvailable( sceneId, selfId, idBagPos2 ) ~= 1 then
			x000561_NotifyTip(sceneId,selfId, "#{ZBDW_091105_3}")
			return
		end
		if IDMaterial ~= 30503150 then
			x000561_NotifyTip(sceneId,selfId, "#{ZBDW_091105_20}")
			return
		end
		
		local DWEquipType = DWMaterialType[Dtype]
		local DWEquipLevel = DWEquipType[Dlevel]
		local IDDW = 0
		if EquipPoint == 6 or EquipPoint == 12 then
			EquipPoint =20
		end
		for i=0,getn(DWEquipLevel) do
			if i == EquipPoint then
				IDDW = DWEquipLevel[i]
				break
			end
		end
		if IDDW == 0 then
			x000561_NotifyTip( sceneId, selfId, "Không tìm th¤y Ðiêu Vån tß½ng Ñng" )
			return
		end
		local ret = LuaFnCostMoneyWithPriority( sceneId, selfId, 50000 )
		if ret < 0 then
			x000561_NotifyTip( sceneId, selfId, "Không ðü ngân lßþng." )
			return
		end
		--x000561_NotifyTip( sceneId, selfId, "IDDW:  "..IDDW )
		local ketqua =x000561_SetDW(sceneId,selfId,Dtype,0,idBagPos1)
		--x000561_NotifyTip( sceneId, selfId, "ketqua:  "..ketqua )
		LuaFnEraseItem( sceneId, selfId, idBagPos2 )
		--local ret = LuaFnUnLockCheck( sceneId, selfId, idBagPos1, 0 )
		--if ret == 0 then LuaFnEquipUnLock( sceneId, selfId, idBagPos1 ) end
		local bagpos = TryRecieveItem( sceneId, selfId, IDDW, 1 )
		local	bindidx	=	LuaFnItemBind( sceneId, selfId, bagpos ) --co dinh vat pham
		if bindidx ~= 1 then
			x000561_NotifyTip( sceneId, selfId, targetId, "C¯ ð¸nh th¤t bÕi !" )
		end		
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
		x000561_NotifyTip( sceneId, selfId, "Tháo Ðiêu Vån thành công" )
		BeginUICommand( sceneId )
			--UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 8000156 )
		return
	end
	if nType == 4 then  -- Hþp thành dv
		local IDVH = LuaFnGetItemTableIndexByIndex( sceneId, selfId, idBagPos1 )
		local ItemClass = 0
		for i=1,getn(ItemHopThanh) do
			if IDVH == ItemHopThanh[i].dt then
				ItemClass = i
				break
			end
		end
		if ItemClass == 0 then
			x000561_NotifyTip(sceneId,selfId, "#{ZBDW_091105_2}")
			return
		end
		if ( LuaFnGetAvailableItemCount( sceneId, selfId, 20310169 )< 20) then
			x000561_NotifyTip( sceneId, selfId, "Không ðü 20 Ðan Thanh ho£c có v§t ph¦m b¸ khóa")
			return
		end
		if LuaFnIsItemAvailable( sceneId, selfId, idBagPos1 ) ~= 1 then
			x000561_NotifyTip(sceneId,selfId, "#{WH_090729_07}")
			return
		end
		local ret = LuaFnCostMoneyWithPriority( sceneId, selfId, 50000 )
		if ret < 0 then
			x000561_NotifyTip( sceneId, selfId, "Không ðü ngân lßþng." )
			return
		end
		LuaFnEraseItem( sceneId, selfId, idBagPos1 )
		LuaFnDelAvailableItem(sceneId,selfId, 20310169, 20)
		TryRecieveItem( sceneId, selfId, ItemHopThanh[ItemClass].dv, 1 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
		x000561_NotifyTip( sceneId, selfId, "Hþp thành Ðiêu Vån thành công." )
		return
	end
end

function x000561_NotifyTip( sceneId, selfId, Msg )

	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end

--ham lay gia tri thuoc tinh cua creator
function x000561_Creator2Data(str)
	str = tostring(str)
	if type(str) == "string" then
		local check = x000561_CheckCreatorDW(str)
		local len = strlen(check)
		--return 0,len,0;
		if check ~= 0 and len == 5 then
			--creator la item dw
			local temp, ntype, npoint
			temp =  tonumber(strsub(check,1,1))
			ntype = tonumber(strsub(check,2,2))
			npoint = tonumber(strsub(check,3,len))
			return temp, ntype, npoint
		end
		--khong la creator dw
	end
	return 0,0,0;
end


function x000561_SetDW(sceneId,selfId,DWType,DWLevel,iPos)
	--tra ve gia tri 
	--0 : that bai
	--1 : go khac ; 
	--2 : khac trang bi ko co creator
	--3 : khac trang bi co creator, chua co dw
	--4 : khac trang bi co creator, co dw
	--go khac dw
	if DWLevel == 0 then
		local _, name = LuaFnGetItemCreator(sceneId, selfId, iPos)
		local check = x000561_CheckCreatorDW(name)
		if check ~= 0 then
			local newname = x000561_Creator2Author(name)
			LuaFnSetItemCreator( sceneId, selfId, iPos,  newname)
			return 1
		end
	end
	-- khac dw
	if DWLevel > 0 then
		local _, name = LuaFnGetItemCreator(sceneId, selfId, iPos)
		
		if name == nil or name =="" then --fix stack pop khi item ko dc che tao
			local npoint = x000561_strformat(x000561_GetDWPoint(DWLevel))
			local dwstring = "*0"..DWType..npoint.."*"
			LuaFnSetItemCreator( sceneId, selfId, iPos,  dwstring)
			return 2
		elseif name ~= nil then --item dc che tao
			local check = x000561_CheckCreatorDW(name)
			
			if check == 0 then --chua co dw
				local npoint = x000561_strformat(x000561_GetDWPoint(DWLevel))
				local dwstring = "*0"..DWType..npoint.."*"..name
				LuaFnSetItemCreator( sceneId, selfId, iPos,  dwstring)
				return 3
			elseif check ~= 0 then --da dw
				local npoint = x000561_strformat(x000561_GetDWPoint(DWLevel))
				local author = x000561_Creator2Author(name)
				local dwstring = "*0"..DWType..npoint.."*"..author
				LuaFnSetItemCreator( sceneId, selfId, iPos,  dwstring)
				return 4
			end
		end	
	end
	return 0
end
--ham kiem tra Creator co phai la creator DW hay khong
function x000561_CheckCreatorDW(str)
	if type(str) == "string" then
		local creatorformat = "%*%d%d%d%d%d%*";
		local dwformat = "%d%d%d%d%d"
		if strfind(str,creatorformat)~= nil then
			local temp = strsub(str,strfind(str,creatorformat)) --ket qua gia tri *xxxxx*
				
			return strsub(str,strfind(temp,dwformat)) --xxxxx
		end
	end
	--khong la creator dw
	return 0;
end
--tra ve gia tri nguoi tao vu khi tu creator dw
function x000561_Creator2Author(str)
	if type(str) == "string" then
		local check = x000561_CheckCreatorDW(str);
		--local len = strlen(check);
		if check ~= 0 then
			--creator la item dw
			local szAuthor = strsub(str,8);
			return szAuthor;
		end
	end
	return str;
end
--add khuon dang cho point 1 -> 001
function x000561_strformat(npoint)
	npoint = tostring(npoint);
	local len = strlen(npoint)
	if len ==1 then
		npoint = "00"..npoint;
	elseif len ==2 then
		npoint = "0"..npoint;
	end
	return npoint;
end

function x000561_GetDWPoint(nlevel)
	local DWPoint = {10,20,40,70,110,140,170,210,240,280}
	local maxDWlevel = 10;
	nlevel = tonumber(nlevel);
	for i=1,maxDWlevel do
		if nlevel==i then
			return DWPoint[i];
		end
	end
	return 0;
end