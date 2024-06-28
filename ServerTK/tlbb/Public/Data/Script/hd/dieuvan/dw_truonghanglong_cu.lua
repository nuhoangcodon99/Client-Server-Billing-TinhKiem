---NPC Tính nång Ðiêu  Vån
--Author: tinhkiem.us
--Date: 13/12/2012

x000551_g_ScriptId = 000551
AllowEquipPoint = {0,1,2,3,4,5,6,12,14,15} --Các loÕi item có th¬ ÐV. 14 ho uyen, 0 VK

ItemHopThanh ={
		 	{dt = 30120001,dv = 30110001},{dt = 30120002,dv = 30110011},{dt = 30120003,dv = 30110021},--Trang suc cß¶ng,nµi,thân 
			{dt = 30120008,dv = 30110071},{dt = 30120009,dv = 30110081},--Hai tu th¬,trí
			{dt = 30120010,dv = 30110091},{dt = 30120011,dv = 30110101},-- Yeu dai th¬ trí
			{dt = 30120012,dv = 30110111},{dt = 30120013,dv = 30110121},--Vu Khi cß¶ng nµi
			{dt = 30120022,dv = 30110211},{dt = 30120023,dv = 30110221},--Mao trí thân
			{dt = 30120028,dv = 30110271},{dt = 30120029,dv = 30110281},{dt = 30120030,dv = 30110291},--Y phøc th¬ trí thân
			{dt = 30120031,dv = 30110301},{dt = 30120032,dv = 30110311},{dt = 30120041,dv = 30110401},--Thü hµ trí thân th¬
			{dt = 30120033,dv = 30110321},{dt = 30120034,dv = 30110331},--Hµ uy¬n cß¶ng nµi
			{dt = 30120039,dv = 30110381},{dt = 30120040,dv = 30110391},{dt = 30120042,dv = 30110411},--Hµ kiên trí thân th¬
			{dt = 30120014,dv = 30110131},{dt = 30120015,dv = 30110141},{dt = 30120016,dv = 30110151},{dt = 30120017,dv = 30110161},--vu khi thuoc tinh Bang hoa huyen doc
			{dt = 30120018,dv = 30110171},{dt = 30120019,dv = 30110181},{dt = 30120020,dv = 30110191},{dt = 30120021,dv = 30110201},--vu khi giam khang Bang hoa huyen doc
			{dt = 30120035,dv = 30110341},{dt = 30120036,dv = 30110351},{dt = 30120037,dv = 30110361},{dt = 30120038,dv = 30110371},--Ho Uyen thuoc tinh Bang Hoa Huyen Doc
			{dt = 30120024,dv = 30110231},{dt = 30120025,dv = 30110241},{dt = 30120026,dv = 30110251},{dt = 30120027,dv = 30110261},--Mao khang thuoc tinh
		}

DWEquipPoint = {}
DWEquipPoint[0] = {fir1 = 30110111,end1 =30110210}
DWEquipPoint[1] = {fir1 = 30110211,end1 =30110270}
DWEquipPoint[2] = {fir1 = 30110271,end1 =30110300}
DWEquipPoint[3] = {fir1 = 30110301,end1 =30110320,fir2=30110401,end2=30110410}
DWEquipPoint[4] = {fir1 = 30110071,end1 =30110090}
DWEquipPoint[5] = {fir1 = 30110091,end1 =30110110}
DWEquipPoint[6] = {fir1 = 30110001,end1 =30110030}
DWEquipPoint[12] = {fir1 = 30110001,end1 =30110030}
DWEquipPoint[14] = {fir1 = 30110321,end1 =30110380}
DWEquipPoint[15] = {fir1 = 30110381,end1 =30110400,fir2 = 30110411,end2=30110420}

DWMaterialType = {}
DWMaterialType[0] = {
			{[20]=30110001,     [0]=30110111,     [14]=30110321},
			{[20]=30110002,     [0]=30110112,     [14]=30110322},
			{[20]=30110003,     [0]=30110113,     [14]=30110323},
			{[20]=30110004,     [0]=30110114,     [14]=30110324},
			{[20]=30110005,     [0]=30110115,     [14]=30110325},
			{[20]=30110006,     [0]=30110116,     [14]=30110326},
			{[20]=30110007,     [0]=30110117,     [14]=30110327},
			{[20]=30110008,     [0]=30110118,     [14]=30110328},
			{[20]=30110009,     [0]=30110119,     [14]=30110329},
			{[20]=30110010,     [0]=30110120,     [14]=30110330}
			}
DWMaterialType[1] = {
			{[20]=30110011,     [0]=30110121,     [14]=30110331},
			{[20]=30110012,     [0]=30110122,     [14]=30110332},
			{[20]=30110013,     [0]=30110123,     [14]=30110333},
			{[20]=30110014,     [0]=30110124,     [14]=30110334},
			{[20]=30110015,     [0]=30110125,     [14]=30110335},
			{[20]=30110016,     [0]=30110126,     [14]=30110336},
			{[20]=30110017,     [0]=30110127,     [14]=30110337},
			{[20]=30110018,     [0]=30110128,     [14]=30110338},
			{[20]=30110019,     [0]=30110129,     [14]=30110339},
			{[20]=30110020,     [0]=30110130,     [14]=30110340}
			}
DWMaterialType[2] = {
			{[4]=30110071,     [5]=30110091,     [2]=30110271,     [3]=30110401,     [15]=30110411},
			{[4]=30110072,     [5]=30110092,     [2]=30110272,     [3]=30110402,     [15]=30110412},
			{[4]=30110073,     [5]=30110093,     [2]=30110273,     [3]=30110403,     [15]=30110413},
			{[4]=30110074,     [5]=30110094,     [2]=30110274,     [3]=30110404,     [15]=30110414},
			{[4]=30110075,     [5]=30110095,     [2]=30110275,     [3]=30110405,     [15]=30110415},
			{[4]=30110076,     [5]=30110096,     [2]=30110276,     [3]=30110406,     [15]=30110416},
			{[4]=30110077,     [5]=30110097,     [2]=30110277,     [3]=30110407,     [15]=30110417},
			{[4]=30110078,     [5]=30110098,     [2]=30110278,     [3]=30110408,     [15]=30110418},
			{[4]=30110079,     [5]=30110099,     [2]=30110279,     [3]=30110409,     [15]=30110419},
			{[4]=30110080,     [5]=30110100,     [2]=30110280,     [3]=30110410,     [15]=30110420}
			}
DWMaterialType[3] = {
			{[4]=30110081,     [5]=30110101,     [1]=30110211,     [2]=30110281,     [3]=30110301,     [15]=30110381},
			{[4]=30110082,     [5]=30110102,     [1]=30110212,     [2]=30110282,     [3]=30110302,     [15]=30110382},
			{[4]=30110083,     [5]=30110103,     [1]=30110213,     [2]=30110283,     [3]=30110303,     [15]=30110383},
			{[4]=30110084,     [5]=30110104,     [1]=30110214,     [2]=30110284,     [3]=30110304,     [15]=30110384},
			{[4]=30110085,     [5]=30110105,     [1]=30110215,     [2]=30110285,     [3]=30110305,     [15]=30110385},
			{[4]=30110086,     [5]=30110106,     [1]=30110216,     [2]=30110286,     [3]=30110306,     [15]=30110386},
			{[4]=30110087,     [5]=30110107,     [1]=30110217,     [2]=30110287,     [3]=30110307,     [15]=30110387},
			{[4]=30110088,     [5]=30110108,     [1]=30110218,     [2]=30110288,     [3]=30110308,     [15]=30110388},
			{[4]=30110089,     [5]=30110109,     [1]=30110219,     [2]=30110289,     [3]=30110309,     [15]=30110389},
			{[4]=30110090,     [5]=30110110,     [1]=30110220,     [2]=30110290,     [3]=30110310,     [15]=30110390}
			}
DWMaterialType[4] = {
			{[20]=30110021,     [1]=30110221,     [2]=30110291,     [3]=30110311,     [15]=30110391},
			{[20]=30110022,     [1]=30110222,     [2]=30110292,     [3]=30110312,     [15]=30110392},
			{[20]=30110023,     [1]=30110223,     [2]=30110293,     [3]=30110313,     [15]=30110393},
			{[20]=30110024,     [1]=30110224,     [2]=30110294,     [3]=30110314,     [15]=30110394},
			{[20]=30110025,     [1]=30110225,     [2]=30110295,     [3]=30110315,     [15]=30110395},
			{[20]=30110026,     [1]=30110226,     [2]=30110296,     [3]=30110316,     [15]=30110396},
			{[20]=30110027,     [1]=30110227,     [2]=30110297,     [3]=30110317,     [15]=30110397},
			{[20]=30110028,     [1]=30110228,     [2]=30110298,     [3]=30110318,     [15]=30110398},
			{[20]=30110029,     [1]=30110229,     [2]=30110299,     [3]=30110319,     [15]=30110399},
			{[20]=30110030,     [1]=30110230,     [2]=30110300,     [3]=30110320,     [15]=30110400}
			}
--5:Bang, 6:Hoa, 7Huyen,8 DOc
--Bang: Vu khi, Ho Uyen
DWMaterialType[5] = {
			{[0]=30110131,      [14]=30110341},
			{[0]=30110132,      [14]=30110342},
			{[0]=30110133,      [14]=30110343},
			{[0]=30110134,      [14]=30110344},
			{[0]=30110135,      [14]=30110345},
			{[0]=30110136,      [14]=30110346},
			{[0]=30110137,      [14]=30110347},
			{[0]=30110138,      [14]=30110348},
			{[0]=30110139,      [14]=30110349},
			{[0]=30110140,      [14]=30110350}
			}
--Hoa
DWMaterialType[6] = {
			{[0]=30110141,      [14]=30110351},
			{[0]=30110142,      [14]=30110352},
			{[0]=30110143,      [14]=30110353},
			{[0]=30110144,      [14]=30110354},
			{[0]=30110145,      [14]=30110355},
			{[0]=30110146,      [14]=30110356},
			{[0]=30110147,      [14]=30110357},
			{[0]=30110148,      [14]=30110358},
			{[0]=30110149,      [14]=30110359},
			{[0]=30110150,      [14]=30110360}
			}
--Huyen
DWMaterialType[7] = {
			{[0]=30110151,      [14]=30110361},
			{[0]=30110152,      [14]=30110362},
			{[0]=30110153,      [14]=30110363},
			{[0]=30110154,      [14]=30110364},
			{[0]=30110155,      [14]=30110365},
			{[0]=30110156,      [14]=30110366},
			{[0]=30110157,      [14]=30110367},
			{[0]=30110158,      [14]=30110368},
			{[0]=30110159,      [14]=30110369},
			{[0]=30110160,      [14]=30110370}
			}
--Doc
DWMaterialType[8] = {
			{[0]=30110161,      [14]=30110371},
			{[0]=30110162,      [14]=30110372},
			{[0]=30110163,      [14]=30110373},
			{[0]=30110164,      [14]=30110374},
			{[0]=30110165,      [14]=30110375},
			{[0]=30110166,      [14]=30110376},
			{[0]=30110167,      [14]=30110377},
			{[0]=30110168,      [14]=30110378},
			{[0]=30110169,      [14]=30110379},
			{[0]=30110170,      [14]=30110380}
			}
--9 GK Bang, 10 GK Hoa, 11 GK Huyen, 12 Gk Doc. 13 KB, 14 KH, 15 KHuyen, 16 KD
DWMaterialType[9] = {
			{[0]=30110171},
			{[0]=30110172},
			{[0]=30110173},
			{[0]=30110174},
			{[0]=30110175},
			{[0]=30110176},
			{[0]=30110177},
			{[0]=30110178},
			{[0]=30110179},
			{[0]=30110180}
			}
DWMaterialType[10] = {
			{[0]=30110181},
			{[0]=30110182},
			{[0]=30110183},
			{[0]=30110184},
			{[0]=30110185},
			{[0]=30110186},
			{[0]=30110187},
			{[0]=30110188},
			{[0]=30110189},
			{[0]=30110190}
			}
DWMaterialType[11] = {
			{[0]=30110191},
			{[0]=30110192},
			{[0]=30110193},
			{[0]=30110194},
			{[0]=30110195},
			{[0]=30110196},
			{[0]=30110197},
			{[0]=30110198},
			{[0]=30110199},
			{[0]=30110200}
			}
DWMaterialType[12] = {
			{[0]=30110201},
			{[0]=30110202},
			{[0]=30110203},
			{[0]=30110204},
			{[0]=30110205},
			{[0]=30110206},
			{[0]=30110207},
			{[0]=30110208},
			{[0]=30110209},
			{[0]=30110210}
			}
--Khang
DWMaterialType[13] = {
			{[1]=30110231},
			{[1]=30110232},
			{[1]=30110233},
			{[1]=30110234},
			{[1]=30110235},
			{[1]=30110236},
			{[1]=30110237},
			{[1]=30110238},
			{[1]=30110239},
			{[1]=30110240}
			}
DWMaterialType[14] = {
			{[1]=30110241},
			{[1]=30110242},
			{[1]=30110243},
			{[1]=30110244},
			{[1]=30110245},
			{[1]=30110246},
			{[1]=30110247},
			{[1]=30110248},
			{[1]=30110249},
			{[1]=30110250}
			}
DWMaterialType[15] = {
			{[1]=30110251},
			{[1]=30110252},
			{[1]=30110253},
			{[1]=30110254},
			{[1]=30110255},
			{[1]=30110256},
			{[1]=30110257},
			{[1]=30110258},
			{[1]=30110259},
			{[1]=30110260}
			}
DWMaterialType[16] = {
			{[1]=30110261},
			{[1]=30110262},
			{[1]=30110263},
			{[1]=30110264},
			{[1]=30110265},
			{[1]=30110266},
			{[1]=30110267},
			{[1]=30110268},
			{[1]=30110269},
			{[1]=30110270}
			}
NumberMaterial = {2,9,50,87,165,284,811,2088,3570}

function x000551_OnDefaultEvent( sceneId, selfId,targetId )


--LuaFnSetItemCreator( sceneId, selfId, 0, "*00010*" )
--local _, name = LuaFnGetItemCreator(sceneId, selfId, 0)
	BeginEvent(sceneId)
		AddText(sceneId,"#{ZBDW_091105_1}")
		AddNumText( sceneId, x000551_g_ScriptId, "#{ZBDW_XML_1}",6 ,1000  )
		AddNumText( sceneId, x000551_g_ScriptId, "#{ZBDW_XML_2}",6 ,2000  )
		AddNumText( sceneId, x000551_g_ScriptId, "#{ZBDW_XML_3}",6 ,3000  )
		AddNumText( sceneId, x000551_g_ScriptId, "#{ZBDW_XML_4}",6 ,4000  )
		AddNumText( sceneId, x000551_g_ScriptId, "#{ZBDW_XML_6}",11 ,5000  )
		--AddNumText( sceneId, x000551_g_ScriptId, "Reset diem",11 ,6000  )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end


function x000551_OnEventRequest( sceneId, selfId, targetId, eventId )
	local key = GetNumText()

	if key == 1000 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000156 )
	end
	if key == 2000 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 2000156 )
	end
	if key == 3000 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 3000156 )
	end
	if key == 4000 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 4000156 )
	end
	if key == 5000 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{ZBDW_091105_21}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if key == 6000 then
		SetMissionData(sceneId,selfId,Impact_K[5].MD,0)
		SetMissionData(sceneId,selfId,Impact_K[6].MD,0)
		SetMissionData(sceneId,selfId,Impact_K[7].MD,0)
		SetMissionData(sceneId,selfId,Impact_K[8].MD,0)
	end
end


function x000551_DoDiaowenAction(sceneId, selfId, nType, idBagPos1, idBagPos2 , idBagPos3)
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
			x000551_NotifyTip(sceneId,selfId, "Trang b¸ này không h² trþ kh¡c")
			return
		end
		if IDMaterial ~= 30503149 then
			x000551_NotifyTip(sceneId,selfId, "#{ZBDW_091105_6}")
			return
		end
		local notshike = 0
		--x000551_NotifyTip(sceneId,selfId, "12131---oooo"..EquipPoint)
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
			x000551_NotifyTip(sceneId,selfId, "#{ZBDW_091105_23}")
			return
		end
		if LuaFnIsItemAvailable( sceneId, selfId, idBagPos1 ) ~= 1 then
			x000551_NotifyTip(sceneId,selfId, "#{ResultText_158}")
			return
		end
		if LuaFnIsItemAvailable( sceneId, selfId, idBagPos2 ) ~= 1 then
			x000551_NotifyTip(sceneId,selfId, "#{ResultText_158}")
			return
		end
		if LuaFnIsItemAvailable( sceneId, selfId, idBagPos3 ) ~= 1 then
			x000551_NotifyTip(sceneId,selfId, "#{ResultText_158}")
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
			x000551_NotifyTip( sceneId, selfId, "Sai sót v§t ph¦m" )
			return
		end
		
		local ret = LuaFnCostMoneyWithPriority( sceneId, selfId, 50000 )
		if ret < 0 then
			x000551_NotifyTip( sceneId, selfId, "Không ðü ngân lßþng." )
			return
		end
		--x000551_NotifyTip( sceneId, selfId, "ItemType : " ..ItemType)
		--x000551_NotifyTip( sceneId, selfId, "ItemLevel : " ..ItemLevel)
		local _, name = LuaFnGetItemCreator(sceneId, selfId, idBagPos1)
		--local author = x000551_Creator2Author(name)
		--x000551_NotifyTip( sceneId, selfId, "author : " ..author)
		
		
		LuaFnEraseItem( sceneId, selfId, idBagPos2 )
		LuaFnEraseItem( sceneId, selfId, idBagPos3 )
		--SetDW(sceneId,selfId,ItemType,ItemLevel,idBagPos1)
		local ketqua = x000551_SetDW(sceneId,selfId,ItemType,ItemLevel,idBagPos1)
		local ret = LuaFnLockCheck( sceneId, selfId, idBagPos1, 0 )
		if ret == 0 then LuaFnEquipLock( sceneId, selfId, idBagPos1 ) end
		--x000551_NotifyTip( sceneId, selfId, "ketqua : " ..ketqua)
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
		x000551_NotifyTip( sceneId, selfId, "Ðiêu Vån trang b¸ thành công." )
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
			x000551_NotifyTip( sceneId, selfId, "S¯ Kim T¢m Ty nh§p vào l¾n h½n s¯ lßþng mang trên ngß¶i" )
			return
		end
		if name == nil or name =="" then
			x000551_NotifyTip( sceneId, selfId, "Trang b¸ chßa kh¡c Ðiêu Vån, không th¬ cß¶ng hóa" )
			return
		end
		--x000551_NotifyTip( sceneId, selfId, "name : " ..name)
		local check = x000551_CheckCreatorDW(name)
		--if check == nil then x000551_NotifyTip( sceneId, selfId, "check nil ") end
		local n,Dtype,Dvalue = x000551_Creator2Data(name)
		
		
		--x000551_NotifyTip( sceneId, selfId, "Dtype : " ..Dtype)
		--x000551_NotifyTip( sceneId, selfId, "Dvalue : " ..Dvalue)
		
		if Dvalue == 0 then
			x000551_NotifyTip( sceneId, selfId, "Trang b¸ chßa kh¡c Ðiêu Vån, không th¬ cß¶ng hóa" )
			return
		end
		
		local Dlevel = 0
		Dtype = tonumber(Dtype)
		Dlevel = CallScriptFunction( 550, "GetDWLevel",sceneId,Dvalue,Dtype  )
		if Dlevel == 0 then 
			x000551_NotifyTip( sceneId, selfId, "V§t ph¦m sai sót :")
			return
		end
		if Dlevel == 7 then
			x000551_NotifyTip( sceneId, selfId, "Trang b¸ ðã ðÕt c¤p Ðiêu Vån cao nh¤t" )
			return
		end
		
		--x000551_NotifyTip( sceneId, selfId, "Dtype : " ..Dtype)
		--x000551_NotifyTip( sceneId, selfId, "Dlevel : " ..Dlevel+1)
		--local npoint = x000551_strformat(x000551_GetDWPoint(Dlevel+1,Dtype))
		--x000551_NotifyTip( sceneId, selfId, "npoint : " ..npoint)
		if (idBagPos2 < NumberMaterial[Dlevel]) then
			x000551_NotifyTip( sceneId, selfId, "S¯ lßþng Kim T¢m Ty nh§p vào không ðü ð¬ thång c¤p" )
			return
		end
		if (NumMaterial < NumberMaterial[Dlevel]) then
			x000551_NotifyTip( sceneId, selfId, "Không ðü "..NumberMaterial[Dlevel].." Kim T¢m Ty ho£c có v§t ph¦m b¸ khóa" )
			return
		end

		LuaFnDelAvailableItem(sceneId,selfId, 20310166, NumberMaterial[Dlevel])
		x000551_SetDW(sceneId,selfId,Dtype,Dlevel+1,idBagPos1)
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
		x000551_NotifyTip( sceneId, selfId, "Cß¶ng Hóa Ðiêu Vån thành công." )
		return
	end
	if nType == 3 then --thao dv
		local EquipPoint = LuaFnGetBagEquipType( sceneId, selfId, idBagPos1 )
		local _, name = LuaFnGetItemCreator(sceneId, selfId, idBagPos1)
		local IDMaterial = LuaFnGetItemTableIndexByIndex( sceneId, selfId, idBagPos2 )
		local Dlevel = 0
		
		--x000551_NotifyTip( sceneId, selfId, "name : " ..name)
		--local author = x000551_Creator2Author(name)
		--x000551_NotifyTip( sceneId, selfId, "author : " ..author)
		
		--hd add 21/11 --check unlock pass truoc khi thuc hien - anti hack
		if LuaFnIsPasswordSetup( sceneId, selfId, 0 ) == 1 then
			--LuaFnSendOpResult( sceneId, selfId, OR_NEED_SETMINORPASSWORD )
			if LuaFnIsPasswordUnlocked( sceneId, selfId, 0 ) ~= 1 then
				LuaFnSendOpResult( sceneId, selfId, OR_NEED_UNLOCKMINORPASSWORD )
				return
			end
			
		end
		--end hd add 21/11

		if name == nil or name =="" then
			x000551_NotifyTip( sceneId, selfId, "Trang b¸ chßa kh¡c Ðiêu Vån, không th¬ tháo" )
			return
		end
		local n,Dtype,Dvalue = x000551_Creator2Data(name)
		--x000551_NotifyTip( sceneId, selfId, "Dvalue : " ..Dvalue)
		
		if Dvalue == 0 then
			x000551_NotifyTip( sceneId, selfId, "Trang b¸ chßa kh¡c Ðiêu Vån, không th¬ tháo" )
			return
		end
		Dlevel = CallScriptFunction( 550, "GetDWLevel",sceneId,Dvalue,Dtype  )
		--x000551_NotifyTip(sceneId,selfId, "131234aaa"..Dlevel)
		if LuaFnIsItemAvailable( sceneId, selfId, idBagPos2 ) ~= 1 then
			x000551_NotifyTip(sceneId,selfId, "#{ZBDW_091105_3}")
			return
		end
		if IDMaterial ~= 30503150 then
			x000551_NotifyTip(sceneId,selfId, "#{ZBDW_091105_20}")
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
			x000551_NotifyTip( sceneId, selfId, "Không tìm th¤y Ðiêu Vån tß½ng Ñng" )
			return
		end
		local ret = LuaFnCostMoneyWithPriority( sceneId, selfId, 50000 )
		if ret < 0 then
			x000551_NotifyTip( sceneId, selfId, "Không ðü ngân lßþng." )
			return
		end
		--x000551_NotifyTip( sceneId, selfId, "IDDW:  "..IDDW )
		local ketqua =x000551_SetDW(sceneId,selfId,Dtype,0,idBagPos1)
		--x000551_NotifyTip( sceneId, selfId, "ketqua:  "..ketqua )
		LuaFnEraseItem( sceneId, selfId, idBagPos2 )
		--local ret = LuaFnUnLockCheck( sceneId, selfId, idBagPos1, 0 )
		--if ret == 0 then LuaFnEquipUnLock( sceneId, selfId, idBagPos1 ) end
		local bagpos = TryRecieveItem( sceneId, selfId, IDDW, 1 )
		local	bindidx	=	LuaFnItemBind( sceneId, selfId, bagpos ) --co dinh vat pham
		if bindidx ~= 1 then
			x000551_NotifyTip( sceneId, selfId, targetId, "C¯ ð¸nh th¤t bÕi !" )
		end		
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
		x000551_NotifyTip( sceneId, selfId, "Tháo Ðiêu Vån thành công" )
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
			x000551_NotifyTip(sceneId,selfId, "#{ZBDW_091105_2}")
			return
		end
		if ( LuaFnGetAvailableItemCount( sceneId, selfId, 20310169 )< 20) then
			x000551_NotifyTip( sceneId, selfId, "Không ðü 20 Ðan Thanh ho£c có v§t ph¦m b¸ khóa")
			return
		end
		if LuaFnIsItemAvailable( sceneId, selfId, idBagPos1 ) ~= 1 then
			x000551_NotifyTip(sceneId,selfId, "#{WH_090729_07}")
			return
		end
		local ret = LuaFnCostMoneyWithPriority( sceneId, selfId, 50000 )
		if ret < 0 then
			x000551_NotifyTip( sceneId, selfId, "Không ðü ngân lßþng." )
			return
		end
		LuaFnEraseItem( sceneId, selfId, idBagPos1 )
		LuaFnDelAvailableItem(sceneId,selfId, 20310169, 20)
		TryRecieveItem( sceneId, selfId, ItemHopThanh[ItemClass].dv, 1 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
		x000551_NotifyTip( sceneId, selfId, "Hþp thành Ðiêu Vån thành công." )
		return
	end
end

function x000551_NotifyTip( sceneId, selfId, Msg )

	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end

--ham lay gia tri thuoc tinh cua creator
function x000551_Creator2Data(str)
	str = tostring(str)
	if type(str) == "string" then
		local check = x000551_CheckCreatorDW(str)
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


function x000551_SetDW(sceneId,selfId,DWType,DWLevel,iPos)
	--tra ve gia tri 
	--0 : that bai
	--1 : go khac ; 
	--2 : khac trang bi ko co creator
	--3 : khac trang bi co creator, chua co dw
	--4 : khac trang bi co creator, co dw
	--go khac dw
	if DWLevel == 0 then
		local _, name = LuaFnGetItemCreator(sceneId, selfId, iPos)
		local check = x000551_CheckCreatorDW(name)
		if check ~= 0 then
			local newname = x000551_Creator2Author(name)
			LuaFnSetItemCreator( sceneId, selfId, iPos,  newname)
			return 1
		end
	end
	-- khac dw
	if DWLevel > 0 then
		local _, name = LuaFnGetItemCreator(sceneId, selfId, iPos)
		local dwstring =""
		if name == nil or name =="" then --fix stack pop khi item ko dc che tao
			local npoint = x000551_strformat(x000551_GetDWPoint(DWLevel,DWType))
			if DWType<10 then
				dwstring = "*0"..DWType..npoint.."*"
			else
				dwstring = "*"..DWType..npoint.."*"	
			end
				LuaFnSetItemCreator( sceneId, selfId, iPos,  dwstring)
			return 2
		
		elseif name ~= nil then --item dc che tao
			local check = x000551_CheckCreatorDW(name)
			
			if check == 0 then --chua co dw
				local npoint = x000551_strformat(x000551_GetDWPoint(DWLevel,DWType))
				local dwstring = ""
			if DWType<10 then
				dwstring = "*0"..DWType..npoint.."*"..name
			else
				dwstring = "*"..DWType..npoint.."*"..name
			end
			--	local dwstring = "*0"..DWType..npoint.."*"..name
				LuaFnSetItemCreator( sceneId, selfId, iPos,  dwstring)
				return 3
			elseif check ~= 0 then --da dw
				local npoint = x000551_strformat(x000551_GetDWPoint(DWLevel,DWType))
				local author = x000551_Creator2Author(name)
				local dwstring = ""
			if DWType<10 then
				dwstring = "*0"..DWType..npoint.."*"..author
			else
				dwstring = "*"..DWType..npoint.."*"..author
			end
				LuaFnSetItemCreator( sceneId, selfId, iPos,  dwstring)
				return 4
			end
		end	
	end
	return 0
end
--ham kiem tra Creator co phai la creator DW hay khong
function x000551_CheckCreatorDW(str)
	if type(str) == "string" then
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
				if CallScriptFunction( 550, "GetDWLevel",sceneId,npoint,ntype  ) ==0 then --check c¤p dw
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


--tra ve gia tri nguoi tao vu khi tu creator dw
function x000551_Creator2Author(str)
	if type(str) == "string" then
		local check = x000551_CheckCreatorDW(str);
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
function x000551_strformat(npoint)
	npoint = tostring(npoint);
	local len = strlen(npoint)
	if len ==1 then
		npoint = "00"..npoint;
	elseif len ==2 then
		npoint = "0"..npoint;
	end
	return npoint;
end

function x000551_GetDWPoint(nlevel,dtype)
	local DWPoint_K ={4,8,18,36,42,50,60,70,80,90}
	local DWPoint_KP ={10,20,30,60,100,120,140,170,200,240}
	local DWPoint = {10,20,40,70,110,140,170,210,240,280}
	local maxDWlevel = 10;
	
	nlevel = tonumber(nlevel);
	if dtype >8 then
		for i=1,maxDWlevel do
			if nlevel==i then
				return DWPoint_K[i];
			end
		end
	elseif dtype >4 then
		for i=1,maxDWlevel do
			if nlevel==i then
				return DWPoint_KP[i];
			end
		end
	else
		for i=1,maxDWlevel do
			if nlevel==i then
				return DWPoint[i];
			end
		end
	end
	return 0;
end
