x000580_g_scriptId = 000580

ComboSkillBook = {
				{id=1914,skill1=1851,skill2=1852,skill3=1853,numbook = 50},
				{id=1915,skill1=1854,skill2=1855,skill3=1856,numbook = 50},
				{id=1916,skill1=1857,skill2=1858,skill3=1859,numbook = 50},
				{id=1917,skill1=1860,skill2=1861,skill3=1862,numbook = 50},
				{id=1918,skill1=1863,skill2=1864,skill3=1865,numbook = 50},
				{id=1919,skill1=1866,skill2=1867,skill3=1868,numbook = 100},
				{id=1920,skill1=1869,skill2=1870,skill3=1871,numbook = 100},
				{id=1921,skill1=1872,skill2=1873,skill3=1874,numbook = 100},
				{id=1922,skill1=1875,skill2=1876,skill3=1877,numbook = 100},
				{id=1923,skill1=1878,skill2=1879,skill3=1880,numbook = 100},
				{id=1924,skill1=1881,skill2=1882,skill3=1883,numbook = 300},
				{id=1925,skill1=1884,skill2=1885,skill3=1886,numbook = 300},
				{id=1926,skill1=1887,skill2=1888,skill3=1889,numbook = 300},
				{id=1927,skill1=1890,skill2=1891,skill3=1892,numbook = 500},
				{id=1928,skill1=1893,skill2=1894,skill3=1895,numbook = 500},
				{id=1929,skill1=1896,skill2=1897,skill3=1898,numbook = 500}
				}
BiTichTanDiep = 38000529
maxlevelcomboskill = 99
BookLevelTable={41,44,47,50,55,60,65,71,78,85,93,101,109,118,128,138,148,158,169,181,192,205,217,230,243,257,271,285,299,314,329,345,361,377,393,410,427,445,462,480,499,517,536,555,575,595,615,635,655,676,697,719,740,762,785,807,830,853,876,899,923,947,971,996,1021,1046,1071,1096,1122,1148,1174,1201,1228,1255,1282,1309,1337,1365,1393,1421,1450,1479,1508,1537,1566,1596,1626,1656,1687,1717,1748,1779,1811,1842,1874,1906,1938,1970,0}
--toltal 76305
function x000580_Miji_Action(sceneId,selfId,Type,Prama)
--		SetMissionData(sceneId,selfId,MD_MJ_TAMDAC,100000)
--		SetMissionData(sceneId,selfId,MD_MJ_BOOKLV,0) 
--		SetMissionData(sceneId,selfId,MD_MJ_BOOKVT,0)
--		for i = 1914,1929 do
--			DelSkill(sceneId,selfId,i)
--		end
--		for i = 1851,1898 do
--			DelSkill(sceneId,selfId,i)
--		end
	if GetMissionData(sceneId,selfId,MD_MJ_TAMDAC) >999999 then
			SetMissionData(sceneId,selfId,MD_MJ_TAMDAC,999999)
	end
	local TAMDAC = GetMissionData(sceneId,selfId,MD_MJ_TAMDAC)
	local BookLevel = GetMissionData(sceneId,selfId,MD_MJ_BOOKLV) 
	local BookVT = GetMissionData(sceneId,selfId,MD_MJ_BOOKVT)	--xxx-yyy-zzz
	local BookVTBT = {1000+floor(BookVT/1000000),1000-floor(BookVT/1000000)*1000+floor(BookVT/1000),1000+mod(BookVT,1000)}
	local BookLV = {}
	BookLV[1] = floor(BookLevel/10000)
	BookLV[2] = floor(BookLevel/100)-BookLV[1]*100
	BookLV[3] = mod(BookLevel,100)

-------------------------------------------------------------------------------------------------------------
	if Type == 100 then --Kiem tra chi so gØi v« cl
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, TAMDAC )
			UICommand_AddInt( sceneId, BookLevel )
			UICommand_AddInt( sceneId, BookVT )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 4000001 )	-- trä vê cl chï s¯
		return
	elseif Type == 200 then	-- Up bí t¸ch
		if BookLV[Prama+1] == 0 then BookLV[Prama+1] = 1 end
		if BookLV[Prama+1] >= maxlevelcomboskill then
			x000580_Notice( sceneId, selfId, "#{WLMJ_130121_79}")
			return
		end
		local BookUp = BookLV[Prama+1]
		local ExpNeed = BookLevelTable[BookUp]
		if TAMDAC < ExpNeed then
			x000580_Notice( sceneId, selfId, "Không ðü ði¬m Tâm Ð¡c Võ H÷c.")
			return
		end
		local DataSet = 0
		if Prama==0 then 
			DataSet =(BookLV[1]+1)*10000+ BookLV[2]*100+BookLV[3]
		elseif Prama==1 then 
			DataSet =(BookLV[1])*10000+ (BookLV[2]+1)*100+BookLV[3]
		elseif Prama==2 then 
			DataSet =(BookLV[1])*10000+ BookLV[2]*100+BookLV[3]+1
		end
		SetMissionData(sceneId,selfId,MD_MJ_TAMDAC,TAMDAC-ExpNeed)
		SetMissionData(sceneId,selfId,MD_MJ_BOOKLV,DataSet)
		x000580_Notice( sceneId, selfId, "Chúc m×ng, thång c¤p cänh gi¾i lînh ngµ thành công")
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, TAMDAC-ExpNeed )
			UICommand_AddInt( sceneId, DataSet )
			UICommand_AddInt( sceneId, BookVT )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 4000001 )	-- trä vê cl chï s¯
		return
-------------------------------------------------------------------------------------------------------------
	elseif Type == 300 then -- Xoa Bí t¸ch
		local Point = 0
		local nbook = 0
		
		for i = 1,getn(ComboSkillBook) do
			if ComboSkillBook[i].id == BookVTBT[Prama+1] then
				nbook = i
				break
			end
		end
		if nbook == 0 then
			x000580_Notice( sceneId, selfId, "Sai sót, liên h® v¾i GM")
			return
		end
		if LuaFnGetMaterialBagSpace( sceneId, selfId ) < 2 then
			x000580_Notice( sceneId, selfId, "#{WLMJ_130121_75}")
			return
		end
		for i=1,BookLV[Prama+1]-1 do
			Point = Point+BookLevelTable[i]
		end
		local DataSet = 0
		if Prama==0 then 
			DataSet =BookLV[2]*10000+BookLV[3]*100
			SetData = (BookVTBT[2]-1000)*1000000+(BookVTBT[3]-1000)*1000
		elseif Prama==1 then 
			DataSet =(BookLV[1])*10000+BookLV[3]*100
			SetData = (BookVTBT[1]-1000)*1000000+(BookVTBT[3]-1000)*1000
		elseif Prama==2 then 
			DataSet =(BookLV[1])*10000+ BookLV[2]*100
			SetData = (BookVTBT[1]-1000)*1000000+(BookVTBT[2]-1000)*1000
		end
		SetMissionData(sceneId,selfId,MD_MJ_BOOKLV,DataSet)
		SetMissionData(sceneId,selfId,MD_MJ_TAMDAC,TAMDAC+Point)
		SetMissionData(sceneId,selfId,MD_MJ_BOOKVT,SetData)
		for i =1,ComboSkillBook[nbook].numbook do
			TryRecieveItem( sceneId, selfId, BiTichTanDiep, QUALITY_MUST_BE_CHANGE )
		end
		DelSkill(sceneId,selfId,ComboSkillBook[nbook].id)
		DelSkill(sceneId,selfId,ComboSkillBook[nbook].skill1)
		DelSkill(sceneId,selfId,ComboSkillBook[nbook].skill2)
		DelSkill(sceneId,selfId,ComboSkillBook[nbook].skill3)
		x000580_Notice( sceneId, selfId, "Quên thành công Võ Lâm Bí T¸ch, nh§n ðßþc "..Point.." Võ H÷c Tâm Ð¡c và "..ComboSkillBook[nbook].numbook.." Bí T¸ch Tàn Di®p.")
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, TAMDAC+Point )
			UICommand_AddInt( sceneId, DataSet )
			UICommand_AddInt( sceneId, SetData )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 4000001 )	-- trä vê cl chï s¯
	end
end

function x000580_Notice(sceneId,selfId,msg)
	BeginEvent( sceneId )
		AddText( sceneId, msg)
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end