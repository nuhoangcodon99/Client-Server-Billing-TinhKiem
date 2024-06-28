x000560_g_scriptId = 000560

MAX_LEVEL = 100 
MAX_FLOOR = 10 -- max t¥ng
SKILL_ADD_ST = 1901
SKILL_ADD_EN = 1913
XIULIAN_TABLE = {
	{lv = 1, cl = 33, value = 1, exp = 90,  },{lv = 2, cl = 33, value = 1, exp = 324,  },{lv = 3, cl = 33, value = 1, exp = 630,  },{lv = 4, cl = 33, value = 1, exp = 1152,  },
	{lv = 5, cl = 33, value = 1, exp = 1620,  },	{lv = 6, cl = 33, value = 1, exp = 1800,  },	{lv = 7, cl = 33, value = 1, exp = 1980,  },	{lv = 8, cl = 33, value = 1, exp = 2160,  },
	{lv = 9, cl = 33, value = 1, exp = 2340,  },	{lv = 10, cl = 33, value = 1, exp = 6300,  },	{lv = 11, cl = 33, value = 1, exp = 7020,  },	{lv = 12, cl = 33, value = 1, exp = 7776,  },
	{lv = 13, cl = 33, value = 1, exp = 8874,  },	{lv = 14, cl = 33, value = 1, exp = 10044,  },	{lv = 15, cl = 33, value = 1, exp = 11628,  },	{lv = 16, cl = 33, value = 1, exp = 13320,  },
	{lv = 17, cl = 33, value = 1, exp = 15498,  },	{lv = 18, cl = 33, value = 1, exp = 18216,  },	{lv = 19, cl = 33, value = 1, exp = 21528,  },	{lv = 20, cl = 33, value = 1, exp = 25488,  },
	{lv = 21, cl = 33, value = 1, exp = 30150,  },	{lv = 22, cl = 33, value = 1, exp = 35568,  },	{lv = 23, cl = 33, value = 1, exp = 41796,  },	{lv = 24, cl = 33, value = 1, exp = 48888,  },
	{lv = 25, cl = 33, value = 1, exp = 57420,  },	{lv = 26, cl = 33, value = 1, exp = 67500,  },	{lv = 27, cl = 33, value = 1, exp = 78678,  },	{lv = 28, cl = 33, value = 1, exp = 91008,  },
	{lv = 29, cl = 33, value = 1, exp = 104544,  },	{lv = 30, cl = 33, value = 1, exp = 123624,  },	{lv = 31, cl = 50, value = 2, exp = 144270,  },	{lv = 32, cl = 50, value = 2, exp = 166536,  },
	{lv = 33, cl = 50, value = 2, exp = 190476,  },	{lv = 34, cl = 50, value = 2, exp = 216144,  },	{lv = 35, cl = 50, value = 2, exp = 243594,  },	{lv = 36, cl = 50, value = 2, exp = 272880,  },
	{lv = 37, cl = 50, value = 2, exp = 304056,  },	{lv = 38, cl = 50, value = 2, exp = 337176,  },	{lv = 39, cl = 50, value = 2, exp = 372294,  },	{lv = 40, cl = 50, value = 2, exp = 409860,  },
	{lv = 41, cl = 50, value = 2, exp = 449955,  },	{lv = 42, cl = 50, value = 2, exp = 492660,  },	{lv = 43, cl = 50, value = 2, exp = 538056,  },	{lv = 44, cl = 50, value = 2, exp = 586224,  },
	{lv = 45, cl = 50, value = 2, exp = 637245,  },	{lv = 46, cl = 50, value = 2, exp = 691200,  },	{lv = 47, cl = 50, value = 2, exp = 748170,  },	{lv = 48, cl = 50, value = 2, exp = 808236,  },
	{lv = 49, cl = 50, value = 2, exp = 871479,  },	{lv = 50, cl = 50, value = 2, exp = 937980,  },	{lv = 51, cl = 50, value = 2, exp = 1007820,  },{lv = 52, cl = 50, value = 2, exp = 1081080,  },
	{lv = 53, cl = 50, value = 2, exp = 1157841,  },{lv = 54, cl = 50, value = 2, exp = 1238184,  },{lv = 55, cl = 50, value = 2, exp = 1322190,  },{lv = 56, cl = 50, value = 2, exp = 1409940,  },
	{lv = 57, cl = 50, value = 2, exp = 1501515,  },{lv = 58, cl = 50, value = 2, exp = 1596996,  },{lv = 59, cl = 50, value = 2, exp = 1696464,  },{lv = 60, cl = 50, value = 2, exp = 1800000,  },
	{lv = 61, cl = 100, value = 3, exp = 1907685,  },{lv = 62, cl = 100, value = 3, exp = 2019600,  },{lv = 63, cl = 100, value = 3, exp = 2135826,  },{lv = 64, cl = 100, value = 3, exp = 2256444,  },
	{lv = 65, cl = 100, value = 3, exp = 2381535,  },{lv = 66, cl = 100, value = 3, exp = 2516850,  },{lv = 67, cl = 100, value = 3, exp = 2667825,  },{lv = 68, cl = 100, value = 3, exp = 2835000,  },
	{lv = 69, cl = 100, value = 3, exp = 3018915,  },{lv = 70, cl = 100, value = 3, exp = 3220110,  },{lv = 71, cl = 100, value = 3, exp = 3439125,  },{lv = 72, cl = 100, value = 3, exp = 3676500,  },
	{lv = 73, cl = 100, value = 3, exp = 3932775,  },{lv = 74, cl = 100, value = 3, exp = 4208490,  },{lv = 75, cl = 100, value = 3, exp = 4518405,  },{lv = 76, cl = 100, value = 3, exp = 4863600,  },
	{lv = 77, cl = 100, value = 3, exp = 5245155,  },{lv = 78, cl = 100, value = 3, exp = 5664150,  },{lv = 79, cl = 100, value = 3, exp = 6121665,  },{lv = 80, cl = 100, value = 3, exp = 6739740,  },
	{lv = 81, cl = 100, value = 3, exp = 7676775,  },{lv = 82, cl = 100, value = 3, exp = 9098370,  },{lv = 83, cl = 100, value = 3, exp = 11177325,  },{lv = 84, cl = 100, value = 3, exp = 14093640,  },
	{lv = 85, cl = 100, value = 3, exp = 18034515,  },{lv = 86, cl = 100, value = 3, exp = 23194350,  },{lv = 87, cl = 100, value = 3, exp = 29774745,  },{lv = 88, cl = 100, value = 3, exp = 37984500,  },
	{lv = 89, cl = 100, value = 3, exp = 48039615,  },{lv = 90, cl = 100, value = 3, exp = 60163290,  },{lv = 91, cl = 100, value = 3, exp = 74585925,  },{lv = 92, cl = 100, value = 3, exp = 91545120,  },
	{lv = 93, cl = 100, value = 3, exp = 111285675,  },{lv = 94, cl = 100, value = 3, exp = 134059590,  },{lv = 95, cl = 100, value = 3, exp = 160126065,  },{lv = 96, cl = 100, value = 3, exp = 189751500,  },
	{lv = 97, cl = 100, value = 3, exp = 223209495,  },{lv = 98, cl = 100, value = 3, exp = 260780850,  },{lv = 99, cl = 100, value = 3, exp = 302753565,  },{lv = 100, cl = 100, value = 3, exp = 307564920,  },
	{lv = 101, cl = 100, value = 3, exp = 312506775,  },{lv = 102, cl = 100, value = 3, exp = 317581830,  },{lv = 103, cl = 100, value = 3, exp = 322792785,  },{lv = 104, cl = 100, value = 3, exp = 328142340,  },
	{lv = 105, cl = 100, value = 3, exp = 333633195,  },{lv = 106, cl = 100, value = 3, exp = 339268050,  },{lv = 107, cl = 100, value = 3, exp = 345049605,  },{lv = 108, cl = 100, value = 3, exp = 350980560,  },
	{lv = 109, cl = 100, value = 3, exp = 357063615,  },{lv = 110, cl = 100, value = 3, exp = 363301470,  },{lv = 111, cl = 100, value = 3, exp = 369696825,  },{lv = 112, cl = 100, value = 3, exp = 376252380,  },
	{lv = 113, cl = 100, value = 3, exp = 382970835,  },{lv = 114, cl = 100, value = 3, exp = 389854890,  },{lv = 115, cl = 100, value = 3, exp = 396907245,  },{lv = 116, cl = 100, value = 3, exp = 404130600,  },
	{lv = 117, cl = 100, value = 3, exp = 411527655,  },{lv = 118, cl = 100, value = 3, exp = 419101110,  },{lv = 119, cl = 100, value = 3, exp = 426853665,  },{lv = 120, cl = 100, value = 3, exp = 434788020,  },
}
function x000560_ActionXiuLian(sceneId,selfId,Type,Prama) --Type = 0: click chuµt vào item, 1: có sñ thay ð±i equip, 2: tháo item,3: kéo item
	local lastTime = GetMissionData(sceneId,selfId,MD_XL_CONGLUC) -- save thong tin item
	local lastDayTime =  floor( lastTime / 1000 )-floor( lastTime / 100000000 )*100000
	local CongLuc = mod( lastTime, 1000 )
	local CurDayTime = GetDayTime()
	local used = floor( lastTime / 100000000 )
	
	--hd add test fix
	local strGUID = LuaFnGetGUID( sceneId, selfId )
	--if strGUID == 1010000003 then
		--x000560_Notice(sceneId,selfId,"lastDayTime: "..lastDayTime)
		--x000560_Notice(sceneId,selfId,"CurDayTime: "..CurDayTime)
		if (lastDayTime == 20016) then --fix error year 2020/01/17, => 17/1/2014
			CongLuc =100
			lastTime = CurDayTime * 1000 + CongLuc
			SetMissionData( sceneId, selfId, MD_XL_CONGLUC, lastTime )
		end
	--end
	--end hd add
	
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
	------quy¬n bí t¸ch thÑ 2
	Info_Skill2[1] = GetMissionData(sceneId,selfId,MD_XL2_SKILL1) -- save thong tin item
	Info_Skill2[2] = GetMissionData(sceneId,selfId,MD_XL2_SKILL2) -- save thong tin item
	Info_Skill2[3] = GetMissionData(sceneId,selfId,MD_XL2_SKILL3) -- save thong tin item
	Info_Skill2[4] = GetMissionData(sceneId,selfId,MD_XL2_SKILL4) -- save thong tin item

	for i=1,5 do
		Skill1[i] = mod(Info_Skill1[i],1000)		-- l¤y thông tin tu luy®n cüa t¥ng
		Skill1_Max[i] = floor(Info_Skill1[i]/1000)	-- l¤y thông tin t¥ng
		if Skill1_Max[i] == 0 then Skill1_Max[i] =1 end
	end
	for i=1,4 do	-- Tách thông tin quy¬n bí t¸ch 2
		Skill2[i] = mod(Info_Skill2[i],1000)
		Skill2_Max[i] = floor(Info_Skill2[i]/1000)
		if Skill2_Max[i] == 0 then Skill2_Max[i] =1 end
	end
		local ThuocTinh
		local TTString = ""
		if Prama == 1 then 		ThuocTinh = MD_XL1_SKILL1	TTString ="Cß¶ng Lñc"
		elseif Prama == 2 then 	ThuocTinh = MD_XL1_SKILL2	TTString ="Nµi Lñc"
		elseif Prama == 3 then 	ThuocTinh = MD_XL1_SKILL3	TTString ="Th¬ Lñc"
		elseif Prama == 4 then 	ThuocTinh = MD_XL1_SKILL4 	TTString ="Trí Lñc"
		elseif Prama == 5 then 	ThuocTinh = MD_XL1_SKILL5 	TTString = "Thân Pháp" 
		elseif Prama == 11 then 		ThuocTinh = MD_XL2_SKILL1	TTString =""
		elseif Prama == 12 then 	ThuocTinh = MD_XL2_SKILL2	TTString =""
		elseif Prama == 13 then 	ThuocTinh = MD_XL2_SKILL3	TTString =""
		elseif Prama == 14 then 	ThuocTinh = MD_XL2_SKILL4 	TTString =""
		end
-------------------------------------------------------------------------------------------------------------
	if Type == 0 then --Kiem tra chi so gØi v« khung tu luy®n
		--x000560_Notice(sceneId,selfId,"1111111111")
		for i=SKILL_ADD_ST,SKILL_ADD_EN do	-- Nªu chßa có hi¬n th¸ thì add skill
			if HaveSkill( sceneId, selfId, i ) ~= 1 then AddSkill( sceneId, selfId, i ) end
		end
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, CongLuc ) -- Tra ve client chi so cong luc
			--UICommand_AddInt( sceneId, BiTich1 )
			for i=1,5 do	-- truy«n thông tin skill quy¬n 1
				UICommand_AddInt( sceneId, Info_Skill1[i] )
				--UICommand_AddInt( sceneId, Skill1[i] )
				--UICommand_AddInt( sceneId, Skill1_Max[i] )
			end
			for i=1,4 do	-- truy«n thông tin skill quy¬n 2
				UICommand_AddInt( sceneId, Info_Skill2[i] )
				--UICommand_AddInt( sceneId, Skill2[i] )
				--UICommand_AddInt( sceneId, Skill2_Max[i] )
			end
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 11223350 )
		return
	elseif Type == 100 then	-- Ki¬m tra chï s¯ gØi v« khung Kinh mÕch
		local MySex = LuaFnGetSex(sceneId, selfId)
			BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, MySex ) -- Tra ve client chi so cong luc
			for i=1,4 do
				UICommand_AddInt( sceneId, Info_Skill2[i] )
			end
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 3000001 )
		--x000560_Notice(sceneId,selfId,"sv--"..MySex)
		return
-------------------------------------------------------------------------------------------------------------
	elseif Type == 1 then -- tu luy®n
		if Prama < 10 then	-- Các cu¯n sách cüa bí t¸ch 1
			if LuaFnIsCanWashPiont(sceneId, selfId, Prama-1) ~= 1  then
				x000560_Notice(sceneId,selfId,"Hãy cµng vào thuµc tính #Y"..TTString.." #W1 ði¬m Ti«m nång sau ðó m¾i có th¬ tiªn hành Tu Luy®n!")
				x000560_Notice(sceneId,selfId,"Nªu không còn dß ði¬m Ti«m nång hãy tiªn hành T¦y Tüy!")
				return
			end
			if Skill1[Prama] == MAX_LEVEL then -- max level
				x000560_Notice(sceneId,selfId,"Cänh gi¾i Tu luy®n ðã ðÕt mÑc thßþng th×a, không th¬ tu luy®n thêm.")
				return
			end
			if (Skill1[Prama] == Skill1_Max[Prama]*10 and Skill1[Prama] ~= 0) or (Skill1[Prama] == 10 and Skill1_Max[Prama] == 0) then 
				x000560_Notice(sceneId,selfId,"#{XL_090707_04}")
				return
			end
			local nNeedMoney = (Skill1[Prama]+1)*XIULIAN_TABLE[Skill1[Prama]+1].cl*100
			local nNeedExp = XIULIAN_TABLE[Skill1[Prama]+1].exp
			local nXiulianNeedPower = XIULIAN_TABLE[Skill1[Prama]+1].cl
			if CongLuc < nXiulianNeedPower then
				x000560_Notice(sceneId,selfId,"#{XL_090707_51}")
				return
			end
			if GetExp(sceneId,selfId) < nNeedExp then
				x000560_Notice(sceneId,selfId,"#{XL_090707_06}")
				return
			end
			local ret = LuaFnCostMoneyWithPriority( sceneId, selfId, nNeedMoney )
			if ret < 0 then
				x000560_Notice( sceneId, selfId, "#{XL_090707_05}" )
				return
			end
			lastTime = used*100000000+lastDayTime * 1000 + CongLuc-nXiulianNeedPower
			SetMissionData(sceneId,selfId,MD_XL_CONGLUC,lastTime)
			AddExp(sceneId,selfId,0-nNeedExp)
			SetMissionData(sceneId,selfId,ThuocTinh ,Skill1_Max[Prama]*1000+Skill1[Prama]+1)
			local AddPoint = XIULIAN_TABLE[Skill1[Prama]+1].value
			if Prama == 3 then 
				if Skill1[Prama] >= 60 then 
					AddPoint = 2 -------------------------------------Ghim ði¬m th¬ lñc t× lv 60 -100 chï cµng 2 ði¬m
				end
			end
			x000560_DWDoPoint(sceneId,selfId,Prama-1,AddPoint)
			--CallScriptFunction( (550), "DWDoPoint", sceneId, selfId, Prama-1, AddPoint )
			x000560_Notice( sceneId, selfId, "#{XL_090707_07}")
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
			Info_Skill1[Prama] = GetMissionData(sceneId,selfId,ThuocTinh) -- save thong tin item
			CongLuc = mod(GetMissionData(sceneId,selfId,MD_XL_CONGLUC),1000)
			--Skill1[Prama] = mod(Info_Skill1[Prama],1000)
			--Skill1_Max[Prama] = floor(Info_Skill1[Prama]/1000)
		--	BeginUICommand( sceneId )
		--		UICommand_AddInt( sceneId, CongLuc ) -- Tra ve client chi so cong luc
--
--				for i=1,5 do
--					UICommand_AddInt( sceneId, Skill1[i] )
--					UICommand_AddInt( sceneId, Skill1_Max[i] )
--				end
--				for i=1,4 do
--					UICommand_AddInt( sceneId, Skill2[i] )
--					UICommand_AddInt( sceneId, Skill2_Max[i] )
--				end
--			EndUICommand( sceneId )
--			DispatchUICommand( sceneId, selfId, 171718 )	
		else
			local Books = Prama - 10
			if Skill2[1] <=0 then
				x000560_Notice(sceneId,selfId,"#{XLZY_120330_17}")
				return
			end
			if Skill2[Books] == MAX_LEVEL then -- max level
				x000560_Notice(sceneId,selfId,"Cänh gi¾i Tu luy®n ðã ðÕt mÑc thßþng th×a, không th¬ tu luy®n thêm.")
				return
			end
			if Books == 2 then
				if Skill2[1] < 10 then
					x000560_Notice(sceneId,selfId,"#{MPJJ_XT_110705_11}")
					return
				end
			end
			if Books == 3 or Books == 4 then
				if Skill2[1] < 20 or  Skill2[2] < 20 then
					x000560_Notice(sceneId,selfId,"#{MPJJ_XT_110705_12}")
					return
				end
			end
			if (Skill2[Books] >= Skill2_Max[Books]*10 and Skill2[Books] ~= 0) or (Skill2[Books] == 10 and Skill2_Max[Books] == 0) then 
				x000560_Notice(sceneId,selfId,"#{XL_090707_04}")
				return
			end
			
			local nNeedMoney = (Skill2[Books]+1)*XIULIAN_TABLE[Skill2[Books]+1].cl*100
			local nNeedExp = XIULIAN_TABLE[Skill2[Books]+1].exp
			local nXiulianNeedPower = XIULIAN_TABLE[Skill2[Books]+1].cl
			if CongLuc < nXiulianNeedPower then
				x000560_Notice(sceneId,selfId,"#{XL_090707_51}")
				return
			end
			if GetExp(sceneId,selfId) < nNeedExp then
				x000560_Notice(sceneId,selfId,"#{XL_090707_06}")
				return
			end
			local ret = LuaFnCostMoneyWithPriority( sceneId, selfId, nNeedMoney )
			if ret < 0 then
				x000560_Notice( sceneId, selfId, "#{XL_090707_05}" )
				return
			end
			lastTime = used*100000000+lastDayTime * 1000 + CongLuc-nXiulianNeedPower
			SetMissionData(sceneId,selfId,MD_XL_CONGLUC,lastTime)
			AddExp(sceneId,selfId,0-nNeedExp)
			SetMissionData(sceneId,selfId,ThuocTinh ,Skill2_Max[Books]*1000+Skill2[Books]+1)
			--local AddPoint = XIULIAN_TABLE[Skill1[Prama]+1].value
			--if Prama == 3 then 
			--	if Skill1[Prama] >= 60 then 
			--		AddPoint = 2 -------------------------------------Ghim ði¬m th¬ lñc t× lv 60 -100 chï cµng 2 ði¬m
			--	end
			--end
			--x000560_DWDoPoint(sceneId,selfId,Prama-1,AddPoint)
			--CallScriptFunction( (550), "DWDoPoint", sceneId, selfId, Prama-1, AddPoint )
			x000560_Notice( sceneId, selfId, "#{XL_090707_07}")
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
			Info_Skill2[Books] = GetMissionData(sceneId,selfId,ThuocTinh) -- save thong tin item
			CongLuc = mod(GetMissionData(sceneId,selfId,MD_XL_CONGLUC),1000)
			--Skill2[Prama] = mod(Info_Skill2[Prama],1000)
			--Skill2_Max[Prama] = floor(Info_Skill2[Prama]/1000)
			
		end
			BeginUICommand( sceneId )
				UICommand_AddInt( sceneId, CongLuc ) -- Tra ve client chi so cong luc

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
			DispatchUICommand( sceneId, selfId, 171718 )
--------------------------------------------------------------------------------------------------------------
	elseif Type == 2 then -- nâng cao cänh gi¾i
		if Prama < 10 then
			if Skill1_Max[Prama] == MAX_FLOOR then -- max level
				x000560_Notice(sceneId,selfId,"Cänh gi¾i Tu luy®n ðã ðÕt mÑc thßþng th×a, không th¬ tu luy®n thêm.")
				return
			end
			local Skill_MaxLv = Skill1_Max[Prama]
			if Skill_MaxLv == 0 then
				Skill_MaxLv = 1
			end
			if (Skill1[Prama] ~= Skill_MaxLv*10) then 
				x000560_Notice(sceneId,selfId,"#{XL_090707_10}")
				return
			end
			local nCache = 0
			if Prama == 1 then 
				if Skill1_Max[2] >= Skill1_Max[1] then nCache = nCache+1 end
				if Skill1_Max[3] >= Skill1_Max[1] then nCache = nCache+1 end
				if Skill1_Max[4] >= Skill1_Max[1] then nCache = nCache+1 end
				if Skill1_Max[5] >= Skill1_Max[1] then nCache = nCache+1 end
			elseif Prama == 2 then 
				if Skill1_Max[3] >= Skill1_Max[2] then nCache = nCache+1 end
				if Skill1_Max[4] >= Skill1_Max[2] then nCache = nCache+1 end
				if Skill1_Max[5] >= Skill1_Max[2] then nCache = nCache+1 end
				if Skill1_Max[1] >= Skill1_Max[2] then nCache = nCache+1 end
			elseif Prama == 3 then 
				if Skill1_Max[4] >= Skill1_Max[3] then nCache = nCache+1 end
				if Skill1_Max[5] >= Skill1_Max[3] then nCache = nCache+1 end
				if Skill1_Max[1] >= Skill1_Max[3] then nCache = nCache+1 end
				if Skill1_Max[2] >= Skill1_Max[3] then nCache = nCache+1 end
			elseif Prama == 4 then 
				if Skill1_Max[1] >= Skill1_Max[4] then nCache = nCache+1 end
				if Skill1_Max[2] >= Skill1_Max[4] then nCache = nCache+1 end
				if Skill1_Max[3] >= Skill1_Max[4] then nCache = nCache+1 end
				if Skill1_Max[5] >= Skill1_Max[4] then nCache = nCache+1 end
			elseif Prama == 5 then 
				if Skill1_Max[1] >= Skill1_Max[5] then nCache = nCache+1 end
				if Skill1_Max[2] >= Skill1_Max[5] then nCache = nCache+1 end
				if Skill1_Max[3] >= Skill1_Max[5] then nCache = nCache+1 end
				if Skill1_Max[4] >= Skill1_Max[5] then nCache = nCache+1 end
			end
			if nCache < 2 then
				x000560_Notice(sceneId,selfId,"#{XL_090707_11} "..Skill1_Max[Prama].." #{XL_090707_12}")
				return
			end
			local nJingJieNum = Skill1_Max[Prama]
			local CurMaxLevel = nJingJieNum*10
			if(CurMaxLevel <= 60)   then
					  nJingJieNum = CurMaxLevel/10;
				else
					  nJingJieNum = ((CurMaxLevel-60)/15) + 6
				end
				nJingJieNum = nJingJieNum + 1
			local nNeedMoney = nJingJieNum
			local ret = LuaFnCostMoneyWithPriority( sceneId, selfId, nNeedMoney )
			if ret < 0 then
				x000560_Notice( sceneId, selfId, "#{XL_090707_05}" )
				return
			end
			SetMissionData(sceneId,selfId,ThuocTinh ,(Skill_MaxLv+1)*1000+Skill1[Prama])
			x000560_Notice( sceneId, selfId, "#{XL_090707_15}"..((Skill_MaxLv+1)*10).." #{XL_090707_16}")
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
			Info_Skill1[Prama] = GetMissionData(sceneId,selfId,ThuocTinh) --
		else
			local Books = Prama - 10
			if Skill2_Max[Books] == MAX_FLOOR then -- max level
				x000560_Notice(sceneId,selfId,"Cänh gi¾i Tu luy®n ðã ðÕt mÑc thßþng th×a, không th¬ tu luy®n thêm.")
				return
			end
			local Skill_MaxLv = Skill2_Max[Books]
			if Skill_MaxLv == 0 then
				Skill_MaxLv = 1
			end
			if (Skill2[Books] ~= Skill_MaxLv*10) then 
				x000560_Notice(sceneId,selfId,"#{XL_090707_10}")
				return
			end

			local nJingJieNum = Skill2_Max[Books]
			local CurMaxLevel = nJingJieNum*10
			if(CurMaxLevel <= 60)   then
					  nJingJieNum = CurMaxLevel/10;
				else
					  nJingJieNum = ((CurMaxLevel-60)/15) + 6
				end
				nJingJieNum = nJingJieNum + 1
			local nNeedMoney = nJingJieNum
			local ret = LuaFnCostMoneyWithPriority( sceneId, selfId, nNeedMoney )
			if ret < 0 then
				x000560_Notice( sceneId, selfId, "#{XL_090707_05}" )
				return
			end
			SetMissionData(sceneId,selfId,ThuocTinh ,(Skill_MaxLv+1)*1000+Skill2[Books])
			x000560_Notice( sceneId, selfId, "#{XL_090707_15}"..((Skill_MaxLv+1)*10).." #{XL_090707_16}")
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
			Info_Skill2[Books] = GetMissionData(sceneId,selfId,ThuocTinh) --
		end

		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, CongLuc ) -- Tra ve client chi so cong luc

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
		DispatchUICommand( sceneId, selfId, 171719 )
------------------------------------------------------------------------------------------------------
	elseif Type == 3 then -- Trä v« khung Equip nhân v§t thông tin ði¬m tu luy®n
--x000560_Notice(sceneId,selfId,"111")
		BeginUICommand( sceneId )
			--UICommand_AddInt( sceneId, CongLuc ) -- Tra ve client chi so cong luc
			--UICommand_AddInt( sceneId, BiTich1 )
			for i=1,5 do
				UICommand_AddInt( sceneId, Skill1[i] )
				--UICommand_AddInt( sceneId, Skill1_Max[i] )
			end
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 11223349 )
	end
	for i = 1,5 do	--- Trä v« client hi¬n th¸ trên supertoooltip
		if Type == 1904+i then
			BeginUICommand( sceneId )
				UICommand_AddInt( sceneId, Skill1[i] )
				UICommand_AddInt( sceneId, Skill1_Max[i] )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 11223348 )
		end
	end
	
end

function x000560_DWDoPoint(sceneId,selfId,nType,nPoint)   ---4,2--4,1
		--x000560_Notice(sceneId,selfId,"..nType.."..nPoint)
	if nPoint == 0 then return end
	if LuaFnIsCanWashPiont(sceneId, selfId, nType) == 1  then
		local RemainPoint = GetPlayerRemainPoints(sceneId, selfId)
		
		LuaFnWashSomePoints(sceneId, selfId, nType, -nPoint)
		SetPlayerRemainPoints(sceneId, selfId, RemainPoint)
	else
	--	if nPoint < 0 then return end -- Khi thao ra point < 0, neu ko the tru diem thi thoi ko tru
	--	local RemainPoint = GetPlayerRemainPoints(sceneId, selfId)--186
	--	SetPlayerRemainPoints(sceneId, selfId, RemainPoint+1)--187
	--	BeginUICommand( sceneId )
	--	UICommand_AddInt( sceneId, nType )
	--	UICommand_AddInt( sceneId, nPoint )
	--	EndUICommand( sceneId )
	--	DispatchUICommand( sceneId, selfId, 11223351 )
	--	SetMissionData(sceneId,selfId,MD_POINT_CACHE,nType*1000+nPoint-1) -- 4001
			local nThuocTinh = ""
			if nType == 0 then nThuocTinh = "Cß¶ng Lñc"
			elseif nType == 1 then nThuocTinh = "Nµi Lñc"
			elseif nType == 2 then nThuocTinh = "Th¬ Lñc"
			elseif nType == 3 then nThuocTinh = "Trí Lñc"
			elseif nType == 4 then nThuocTinh = "Thân Pháp" end
			x000560_Notice(sceneId,selfId,"Hãy cµng vào thuµc tính #Y"..nThuocTinh.." #W1 ði¬m Ti«m nång sau ðó m¾i có th¬ tiªn hành Tu Luy®n!")
			x000560_Notice(sceneId,selfId,"Nªu không còn dß ði¬m Ti«m nång hãy tiªn hành T¦y Tüy!")
	end
end

function x000560_Notice(sceneId,selfId,msg)
	BeginEvent( sceneId )
		AddText( sceneId, msg)
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end