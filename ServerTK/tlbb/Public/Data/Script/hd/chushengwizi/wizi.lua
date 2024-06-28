--Sinh con
--Script Sinh con
--Author: SÛi

--********************--
x910181_g_scriptId=910181
--********************--
x910181_g_String_Char_Table=
{
	["Q"] = "100",
	["W"] = "101",
	["E"] = "102",
	["»"] = "103",
	["…"] = "104",
	["â"] = "105",
	["À"] = "106",
	["à"] = "107",
	[" "] = "108",
	["ã"] = "109",
	["ä"] = "110",
	["é"] = "111",
	["å"] = "112",
	["ç"] = "113",
	["R"] = "114",
	["T"] = "115",
	["Y"] = "116",
	["ü"] = "117",
	["›"] = "118",
	["‹"] = "119",
	["÷"] = "120",
	["€"] = "121",
	["U"] = "122",
	["Ÿ"] = "123",
	["⁄"] = "124",
	["û"] = "125",
	["ú"] = "126",
	["ù"] = "127",
	["ø"] = "128",
	["ª"] = "129",
	["∫"] = "130",
	["π"] = "131",
	["º"] = "132",
	["ˇ"] = "133",
	["I"] = "134",
	["Ã"] = "135",
	["Õ"] = "136",
	["ò"] = "137",
	["õ"] = "138",
	["Œ"] = "139",
	["O"] = "140",
	["“"] = "141",
	["”"] = "142",
	["ö"] = "143",
	["ô"] = "144",
	["ı"] = "145",
	["‘"] = "146",
	["ê"] = "147",
	["è"] = "148",
	["ì"] = "149",
	["ë"] = "150",
	["í"] = "151",
	["¥"] = "152",
	["ñ"] = "153",
	["ï"] = "154",
	["î"] = "155",
	["ó"] = "156",
	["≥"] = "157",
	["P"] = "158",
	["A"] = "159",
	["¿"] = "160",
	["¡"] = "161",
	["Ä"] = "162",
	["ƒ"] = "163",
	["√"] = "164",
	["≈"] = "164",
	["Ç"] = "166",
	["Å"] = "167",
	["É"] = "168",
	["∆"] = "169",
	["«"] = "170",
	["¬"] = "171",
	["Ö"] = "172",
	["Ñ"] = "173",
	["á"] = "174",
	["Ü"] = "175",
	["Á"] = "176",
	["S"] = "177",
	["D"] = "178",
	["–"] = "179",
	["G"] = "180",
	["H"] = "181",
	["J"] = "182",
	["K"] = "183",
	["L"] = "184",
	["Z"] = "185",
	["X"] = "186",
	["C"] = "187",
	["V"] = "188",
	["B"] = "189",
	["N"] = "190",
	["M"] = "191",
	["q"] = "192",
	["w"] = "193",
	["e"] = "194",
	["Ë"] = "195",
	["È"] = "196",
	["©"] = "197",
	["Î"] = "198",
	["®"] = "199",
	["Í"] = "200",
	["´"] = "201",
	["™"] = "202",
	["Æ"] = "203",
	["¨"] = "204",
	["≠"] = "205",
	["r"] = "206",
	["t"] = "207",
	["y"] = "208",
	["œ"] = "209",
	["˝"] = "210",
	["‹"] = "211",
	["÷"] = "212",
	["€"] = "213",
	["u"] = "214",
	["˘"] = "215",
	["˙"] = "216",
	["¯"] = "217",
	["¸"] = "218",
	["˚"] = "219",
	["ﬂ"] = "220",
	["◊"] = "221",
	["—"] = "222",
	["Ò"] = "223",
	["ÿ"] = "224",
	["Ê"] = "225",
	["i"] = "226",
	["Ï"] = "227",
	["Ì"] = "228",
	["∏"] = "229",
	["Ô"] = "230",
	["Ó"] = "231",
	["o"] = "232",
	["Ú"] = "233",
	["Û"] = "234",
	["˜"] = "235",
	["ˆ"] = "236",
	["ı"] = "237",
	["Ù"] = "238",
	["∞"] = "239",
	["Ø"] = "240",
	["µ"] = "241",
	["±"] = "242",
	["≤"] = "243",
	["Ω"] = "244",
	["∂"] = "245",
	["æ"] = "246",
	["˛"] = "247",
	["∑"] = "248",
	["ﬁ"] = "249",
	["p"] = "250",
	["a"] = "251",
	["‡"] = "252",
	["·"] = "253",
	["’"] = "254",
	["‰"] = "255",
	["„"] = "256",
	["Â"] = "257",
	["¢"] = "258",
	["°"] = "259",
	["£"] = "260",
	["∆"] = "261",
	["«"] = "262",
	["‚"] = "263",
	["•"] = "264",
	["§"] = "265",
	["ß"] = "266",
	["¶"] = "267",
	["Á"] = "268",
	["s"] = "269",
	["d"] = "270",
	[""] = "271",
	["g"] = "272",
	["h"] = "273",
	["j"] = "274",
	["k"] = "275",
	["l"] = "276",
	["z"] = "277",
	["x"] = "278",
	["c"] = "279",
	["v"] = "280",
	["b"] = "281",
	["n"] = "282",
	["m"] = "283",
	["0"] = "284",
	["1"] = "285",
	["2"] = "286",
	["3"] = "287",
	["4"] = "288",
	["5"] = "289",
	["6"] = "290",
	["7"] = "291",
	["8"] = "292",
	["9"] = "293",
	[" "] = "294",
}
--********************--

--**********************************--
--*           On Update            *--
--**********************************--
function x910181_OnUpdate(sceneId,selfId,Request,Param_1,Param_2,Param_3,Param_4)

	--********************--
	if Request==0 then											--Cßp nhßt thÙng tin Con
		x910181_UpdateWiZiInformation(sceneId,selfId)
	end
	--********************--
	if Request==1 then											--Sinh Con
		x910181_BornAKid(sceneId,selfId)
	end
	--********************--
	if Request==2 then											--TÂng i¨m yÍu thﬂΩng
		x910181_CareOfMyBaby(sceneId,selfId)
	end
	--********************--
	if Request==3 then											--–±i tÍn
		x910181_ChangeBabyName(sceneId,selfId,Param_1,Param_2,Param_3,Param_4)
	end
	--********************--
	if Request==4 then											--ThÂng c§p
		x910181_LevelUpMyBaby(sceneId,selfId)
	end
	--********************--
	if Request==5 then											--ThÂng c§p mµt thuµc tÌnh
		x910181_LevelUpAProperty(sceneId,selfId,Param_1)
	end
	--********************--
	if Request==6 then											--Th·o trang b∏
		x910181_UnEquipAnEquipment(sceneId,selfId,Param_1)
	end
	--********************--
	
end
--**********************************--
--*           On Update            *--
--**********************************--
function x910181_UpdateWiZiInformation(sceneId,selfId)

	--********************--
	local str1=tostring(GetMissionData(sceneId,selfId,MD_WIZI_NAME_NUMBER_1))
	local str2=tostring(GetMissionData(sceneId,selfId,MD_WIZI_NAME_NUMBER_2))
	local str3=tostring(GetMissionData(sceneId,selfId,MD_WIZI_NAME_NUMBER_3))
	local str4=tostring(GetMissionData(sceneId,selfId,MD_WIZI_NAME_NUMBER_4))
	local str=str1..str2..str3..str4
	--********************--
	while strlen(str)<36 do
		str=str.."0"
	end
	--********************--
	local Baby_Name=""
	--********************--
	for i=1,floor(strlen(str)/3) do
		for j,text in x910181_g_String_Char_Table do
			if text==strsub(str,(i-1)*3+1,i*3) then
				Baby_Name=Baby_Name..j
				break
			end
		end
	end
	local My_BFF_Name=""
	if LuaFnGetFriendName(sceneId,selfId,LuaFnGetSpouseGUID(sceneId,selfId)) then
		My_BFF_Name=LuaFnGetFriendName(sceneId,selfId,LuaFnGetSpouseGUID(sceneId,selfId))
	else
		My_BFF_Name="KhÙng cÛ"
	end
	local nDate=tostring(GetMissionData(sceneId,selfId,MD_WIZI_BORN_DATE))
	while strlen(nDate)<8 do
		nDate="0"..nDate
	end
	local Date=strsub(nDate,7,8)
	local Month=strsub(nDate,5,6)
	local Year=strsub(nDate,1,4)
	--********************--
	local nPoint=0
	local nBonus={10,15,35,50,95}
	--********************--
	local x=tostring(GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_1))
	while strlen(x)<8 do
		x="0"..x
	end
	if tonumber(strsub(x,8,8))>0 and tonumber(strsub(x,8,8))<6 then
		nPoint=nPoint+nBonus[tonumber(strsub(x,8,8))]
	end
	--********************--
	local y=tostring(GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_2))
	while strlen(y)<8 do
		y="0"..y
	end
	if tonumber(strsub(y,8,8))>0 and tonumber(strsub(y,8,8))<6 then
		nPoint=nPoint+nBonus[tonumber(strsub(y,8,8))]
	end
	--********************--
	local z=tostring(GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_3))
	while strlen(z)<8 do
		z="0"..z
	end
	if tonumber(strsub(z,8,8))>0 and tonumber(strsub(z,8,8))<6 then
		nPoint=nPoint+nBonus[tonumber(strsub(z,8,8))]
	end
	--********************--
	local t=tostring(GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_4))
	while strlen(t)<8 do
		t="0"..t
	end
	if tonumber(strsub(t,8,8))>0 and tonumber(strsub(t,8,8))<6 then
		nPoint=nPoint+nBonus[tonumber(strsub(t,8,8))]
	end
	--********************--
	local Infor_Equip=x..y..z..t
	--********************--
	local x=tostring(GetMissionData(sceneId,selfId,MD_WIZI_SKILL_1))
	while strlen(x)<2 do
		x="0"..x
	end
	--********************--
	local y=tostring(GetMissionData(sceneId,selfId,MD_WIZI_SKILL_2))
	while strlen(y)<2 do
		y="0"..y
	end
	--********************--
	local z=tostring(GetMissionData(sceneId,selfId,MD_WIZI_SKILL_3))
	while strlen(z)<2 do
		z="0"..z
	end
	--********************--
	local t=tostring(GetMissionData(sceneId,selfId,MD_WIZI_SKILL_4))
	while strlen(t)<2 do
		t="0"..t
	end
	--********************--
	local Infor_Skill=x..y..z..t
	--********************--
	local Discription=format("Ch‡o ∂i: %s/%s/%s",Date,Month,Year)
	--********************--
	SetMissionData(sceneId,selfId,MD_WIZI_EQUIP_TOTAL,nPoint)
	--********************--
	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_WIZI_SEX))
		UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_WIZI_LEVEL))
		UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_WIZI_EXP))
		UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_WIZI_LILIANG)+GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_TOTAL))
		UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_WIZI_LINGQI)+GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_TOTAL))
		UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_WIZI_TILI)+GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_TOTAL))
		UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_WIZI_DINGLI)+GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_TOTAL))
		UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_WIZI_SHENFA)+GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_TOTAL))
		UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_WIZI_HAPPINESS_POINT))
		UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_WIZI_REMAIN_POINT))
		UICommand_AddInt(sceneId,GetSex(sceneId,selfId))
		UICommand_AddString(sceneId,Baby_Name)
		UICommand_AddString(sceneId,My_BFF_Name)
		UICommand_AddString(sceneId,Infor_Equip)
		UICommand_AddString(sceneId,Infor_Skill)
		UICommand_AddString(sceneId,Discription)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId,123654789)
	--********************--
	
end
--**********************************--
--*           Born a Kid           *--
--**********************************--
function x910181_BornAKid(sceneId,selfId)

	--********************--
	SetMissionData(sceneId,selfId,MD_WIZI_NAME_NUMBER_1,183273238)
	SetMissionData(sceneId,selfId,MD_WIZI_NAME_NUMBER_2,282272294)
	SetMissionData(sceneId,selfId,MD_WIZI_NAME_NUMBER_3,279234)
	SetMissionData(sceneId,selfId,MD_WIZI_NAME_NUMBER_4,0)
	--********************--
	local x=tonumber(GetTime2Day())
	SetMissionData(sceneId,selfId,MD_WIZI_BORN_DATE,x)
	--********************--
	local str1=tostring(183273238)
	local str2=tostring(282272187)
	local str3=tostring(234)
	local str4=tostring(0)
	local str=str1..str2..str3..str4
	--********************--
	while strlen(str)<36 do
		str=str.."0"
	end
	--********************--
	local Baby_Name=""
	--********************--
	for i=1,floor(strlen(str)/3) do
		for j,text in x910181_g_String_Char_Table do
			if text==strsub(str,(i-1)*3+1,i*3) then
				Baby_Name=Baby_Name..j
				break
			end
		end
	end
	local My_BFF_Name=""
	if LuaFnGetFriendName(sceneId,selfId,LuaFnGetSpouseGUID(sceneId,selfId)) then
		My_BFF_Name=LuaFnGetFriendName(sceneId,selfId,LuaFnGetSpouseGUID(sceneId,selfId))
	else
		My_BFF_Name="KhÙng cÛ"
	end
	local nDate=tostring(GetMissionData(sceneId,selfId,MD_WIZI_BORN_DATE))
	while strlen(nDate)<8 do
		nDate="0"..nDate
	end
	local Date=strsub(nDate,7,8)
	local Month=strsub(nDate,5,6)
	local Year=strsub(nDate,1,4)
	--********************--
	SetMissionData(sceneId,selfId,MD_WIZI_SEX,random(2))
	SetMissionData(sceneId,selfId,MD_WIZI_LEVEL,1)
	SetMissionData(sceneId,selfId,MD_WIZI_EXP,0)
	SetMissionData(sceneId,selfId,MD_WIZI_LILIANG,random(10))
	SetMissionData(sceneId,selfId,MD_WIZI_LINGQI,random(10))
	SetMissionData(sceneId,selfId,MD_WIZI_TILI,random(10))
	SetMissionData(sceneId,selfId,MD_WIZI_DINGLI,random(10))
	SetMissionData(sceneId,selfId,MD_WIZI_SHENFA,random(10))
	SetMissionData(sceneId,selfId,MD_WIZI_HAPPINESS_POINT,0)
	SetMissionData(sceneId,selfId,MD_WIZI_REMAIN_POINT,0)
	SetMissionData(sceneId,selfId,MD_WIZI_EQUIP_1,0)
	SetMissionData(sceneId,selfId,MD_WIZI_EQUIP_2,0)
	SetMissionData(sceneId,selfId,MD_WIZI_EQUIP_3,0)
	SetMissionData(sceneId,selfId,MD_WIZI_EQUIP_4,0)
	SetMissionData(sceneId,selfId,MD_WIZI_SKILL_1,0)
	SetMissionData(sceneId,selfId,MD_WIZI_SKILL_2,0)
	SetMissionData(sceneId,selfId,MD_WIZI_SKILL_3,0)
	SetMissionData(sceneId,selfId,MD_WIZI_SKILL_4,0)
	SetMissionData(sceneId,selfId,MD_WIZI_EQUIP_TOTAL,0)
	--********************--
	local Discription=format("Ch‡o ∂i: %s/%s/%s",Date,Month,Year)
	--********************--
	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_WIZI_SEX))
		UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_WIZI_LEVEL))
		UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_WIZI_EXP))
		UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_WIZI_LILIANG))
		UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_WIZI_LINGQI))
		UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_WIZI_TILI))
		UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_WIZI_DINGLI))
		UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_WIZI_SHENFA))
		UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_WIZI_HAPPINESS_POINT))
		UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_WIZI_REMAIN_POINT))
		UICommand_AddInt(sceneId,GetSex(sceneId,selfId))
		UICommand_AddString(sceneId,Baby_Name)
		UICommand_AddString(sceneId,My_BFF_Name)
		UICommand_AddString(sceneId,"00000000000000000000000000000000")
		UICommand_AddString(sceneId,"")
		UICommand_AddString(sceneId,Discription)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId,123654789)
	--********************--
	
end
--**********************************--
--*        Care Of My Baby         *--
--**********************************--
function x910181_CareOfMyBaby(sceneId,selfId)

	--********************--
	local Happiness_Point=GetMissionData(sceneId,selfId,MD_WIZI_HAPPINESS_POINT)+random(5)
	if Happiness_Point>100 then
		Happiness_Point=100
	end
	--********************--
	SetMissionData(sceneId,selfId,MD_WIZI_HAPPINESS_POINT,Happiness_Point)
	--********************--
	x910181_UpdateWiZiInformation(sceneId,selfId)
	--********************--
	
end
--**********************************--
--*        Change Baby Name        *--
--**********************************--
function x910181_ChangeBabyName(sceneId,selfId,Number_1,Number_2,Number_3,Number_4)

	--********************--
	SetMissionData(sceneId,selfId,MD_WIZI_NAME_NUMBER_1,Number_1)
	SetMissionData(sceneId,selfId,MD_WIZI_NAME_NUMBER_2,Number_2)
	SetMissionData(sceneId,selfId,MD_WIZI_NAME_NUMBER_3,Number_3)
	SetMissionData(sceneId,selfId,MD_WIZI_NAME_NUMBER_4,Number_4)
	--********************--
	BeginEvent(sceneId)
		AddText(sceneId,"–±i tÍn th‡nh cÙng!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--********************--
	x910181_UpdateWiZiInformation(sceneId,selfId)
	--********************--
	
end
--**********************************--
--*        Level Up My Baby        *--
--**********************************--
function x910181_LevelUpMyBaby(sceneId,selfId)

	--********************--
	local Current_Level=GetMissionData(sceneId,selfId,MD_WIZI_LEVEL)
	local Exp_List={50,100,150,200,250,300,350,400,450,500,550,600,650,700,750,800,850,900,950,1000,1050,1100,1150,1200,1250,1300,1350,1400,1450,1500,1550,1600,1650,1700,1750,1800,1850,1900,1950,2000,2050,2100,2150,2200,2250,2300,2350,2400,2450,2500,2550,2600,2650,2700,2750,2800,2850,2900,2950,3000,3050,3100,3150,3200,3250,3300,3350,3400,3450,3500,3550,3600,3650,3700,3750,3800,3850,3900,3950,4000,4050,4100,4150,4200,4250,4300,4350,4400,4450,4500,4550,4600,4650,4700,4750,4800,4850,4900,4950,5000}
	--********************--
	if Current_Level>=100 then
		BeginEvent(sceneId)
			AddText(sceneId,"–„ ’t c§p tØi a!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	elseif GetMissionData(sceneId,selfId,MD_WIZI_EXP)<Exp_List[Current_Level] then
		BeginEvent(sceneId)
			AddText(sceneId,"Kinh nghiÆm khÙng ¸ ¨ thÂng c§p!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	elseif GetMissionData(sceneId,selfId,MD_WIZI_HAPPINESS_POINT)<Current_Level then
		BeginEvent(sceneId)
			AddText(sceneId,"–µ vui vÎ c¸a con c•n ’t tØi thi¨u "..Current_Level.." ¨ cÛ th¨ thÂng c§p!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	--********************--
	SetMissionData(sceneId,selfId,MD_WIZI_HAPPINESS_POINT,GetMissionData(sceneId,selfId,MD_WIZI_HAPPINESS_POINT)-Current_Level)
	--********************--
	SetMissionData(sceneId,selfId,MD_WIZI_LEVEL,GetMissionData(sceneId,selfId,MD_WIZI_LEVEL)+1)
	--********************--
	local Remain_Point=GetMissionData(sceneId,selfId,MD_WIZI_REMAIN_POINT)+floor(GetMissionData(sceneId,selfId,MD_WIZI_LEVEL)/10)
	SetMissionData(sceneId,selfId,MD_WIZI_REMAIN_POINT,Remain_Point)
	--********************--
	SetMissionData(sceneId,selfId,MD_WIZI_LILIANG,GetMissionData(sceneId,selfId,MD_WIZI_LILIANG)+random(3))
	SetMissionData(sceneId,selfId,MD_WIZI_LINGQI,GetMissionData(sceneId,selfId,MD_WIZI_LINGQI)+random(3))
	SetMissionData(sceneId,selfId,MD_WIZI_TILI,GetMissionData(sceneId,selfId,MD_WIZI_TILI)+random(3))
	SetMissionData(sceneId,selfId,MD_WIZI_DINGLI,GetMissionData(sceneId,selfId,MD_WIZI_DINGLI)+random(3))
	SetMissionData(sceneId,selfId,MD_WIZI_SHENFA,GetMissionData(sceneId,selfId,MD_WIZI_SHENFA)+random(3))
	SetMissionData(sceneId,selfId,MD_WIZI_EXP,0)
	--********************--
	if GetMissionData(sceneId,selfId,MD_WIZI_LEVEL)==30 then
		SetMissionData(sceneId,selfId,MD_WIZI_SKILL_1,1)
		SetMissionData(sceneId,selfId,MD_WIZI_SKILL_2,1)
		SetMissionData(sceneId,selfId,MD_WIZI_SKILL_3,1)
		SetMissionData(sceneId,selfId,MD_WIZI_SKILL_4,1)
	end
	--********************--
	BeginEvent(sceneId)
		AddText(sceneId,"ThÂng c§p cho con th‡nh cÙng!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--********************--
	x910181_UpdateWiZiInformation(sceneId,selfId)
	--********************--
	
end
--**********************************--
--*      Level Up A Property       *--
--**********************************--
function x910181_LevelUpAProperty(sceneId,selfId,Index)

	--********************--
	local Remain_Point=GetMissionData(sceneId,selfId,MD_WIZI_REMAIN_POINT)
	--********************--
	if Remain_Point<1 then
		BeginEvent(sceneId)
			AddText(sceneId,"SØ i¨m ti´m nÂng khÙng ¸!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	--********************--
	SetMissionData(sceneId,selfId,MD_WIZI_REMAIN_POINT,Remain_Point-1)
	--********************--
	if Index==1 then
		SetMissionData(sceneId,selfId,MD_WIZI_LILIANG,GetMissionData(sceneId,selfId,MD_WIZI_LILIANG)+1)
	elseif Index==2 then
		SetMissionData(sceneId,selfId,MD_WIZI_LINGQI,GetMissionData(sceneId,selfId,MD_WIZI_LINGQI)+1)
	elseif Index==3 then
		SetMissionData(sceneId,selfId,MD_WIZI_TILI,GetMissionData(sceneId,selfId,MD_WIZI_TILI)+1)
	elseif Index==4 then
		SetMissionData(sceneId,selfId,MD_WIZI_DINGLI,GetMissionData(sceneId,selfId,MD_WIZI_DINGLI)+1)
	elseif Index==5 then
		SetMissionData(sceneId,selfId,MD_WIZI_SHENFA,GetMissionData(sceneId,selfId,MD_WIZI_SHENFA)+1)
	end
	--********************--
	BeginEvent(sceneId)
		AddText(sceneId,"Ph‚n phØi i¨m ti´m nÂng th‡nh cÙng!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--********************--
	x910181_UpdateWiZiInformation(sceneId,selfId)
	--********************--

end
--**********************************--
--*      Unequip An Equipment      *--
--**********************************--
function x910181_UnEquipAnEquipment(sceneId,selfId,Index)

	--********************--
	if LuaFnGetPropertyBagSpace(sceneId,selfId)<1 then
		BeginEvent(sceneId)
			AddText(sceneId,"‘ ’o c¯ c•n trØng Ìt nh§t mµt v∏ trÌ!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return 0
	end
	--********************--
	if Index==1 then
		if GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_1)>0 then
			TryRecieveItem(sceneId,selfId,GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_1),1)
			SetMissionData(sceneId,selfId,MD_WIZI_EQUIP_1,0)
		else
			return
		end
	elseif Index==2 then
		if GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_2)>0 then
			TryRecieveItem(sceneId,selfId,GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_2),1)
			SetMissionData(sceneId,selfId,MD_WIZI_EQUIP_2,0)
		else
			return
		end
	elseif Index==3 then
		if GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_3)>0 then
			TryRecieveItem(sceneId,selfId,GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_3),1)
			SetMissionData(sceneId,selfId,MD_WIZI_EQUIP_3,0)
		else
			return
		end
	elseif Index==4 then
		if GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_4)>0 then
			TryRecieveItem(sceneId,selfId,GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_4),1)
			SetMissionData(sceneId,selfId,MD_WIZI_EQUIP_4,0)
		else
			return
		end
	end
	--********************--
	BeginEvent(sceneId)
		AddText(sceneId,"Th·o trang b∏ th‡nh cÙng!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--********************--
	x910181_UpdateWiZiInformation(sceneId,selfId)
	--********************--

end
--**********************************--
--*        Level Up A Skill        *--
--**********************************--
function x910181_LevelUpASkill(sceneId,selfId,Index)

	--********************--
	local Skill_List={MD_WIZI_SKILL_1,MD_WIZI_SKILL_2,MD_WIZI_SKILL_3,MD_WIZI_SKILL_4}
	local Book_Cost={5,10,20,40,80,160,320,640,1280,2560}
	local Book_Index={30030140,30030141,30030142,30030143}
	--********************--
	local nLevel=GetMissionData(sceneId,selfId,Skill_List[Index])
	--********************--
	if nLevel<=0 then
		BeginEvent(sceneId)
			AddText(sceneId,"K€ nÂng n‡y chﬂa ﬂ˛c lÓnh ngµ!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	elseif nLevel>=10 then
		BeginEvent(sceneId)
			AddText(sceneId,"K€ nÂng n‡y „ ’t c§p µ tØi a!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	elseif LuaFnGetAvailableItemCount(sceneId,selfId,Book_Index[Index])<Book_Cost[nLevel] then
		BeginEvent(sceneId)
			AddText(sceneId,"SØ lﬂΩng "..GetItemName(sceneId,Book_Index[Index]).." c¸a c·c h’ khÙng ¸!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	--********************--
	LuaFnDelAvailableItem(sceneId,selfId,Book_Index[Index],Book_Cost[nLevel])
	--********************--
	SetMissionData(sceneId,selfId,Skill_List[Index],nLevel+1)
	--********************--
	BeginEvent(sceneId)
		AddText(sceneId,"ThÂng c§p k€ nÂng th‡nh cÙng!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--********************--
	x910181_UpdateWiZiInformation(sceneId,selfId)
	--********************--

end
--**********************************--
--*         Release My Baby        *--
--**********************************--
function x910181_ReleaseMyBaby(sceneId,selfId)

	--********************--
	SetMissionData(sceneId,selfId,MD_WIZI_NAME_NUMBER_1,0)
	SetMissionData(sceneId,selfId,MD_WIZI_NAME_NUMBER_2,0)
	SetMissionData(sceneId,selfId,MD_WIZI_NAME_NUMBER_3,0)
	SetMissionData(sceneId,selfId,MD_WIZI_NAME_NUMBER_4,0)
	SetMissionData(sceneId,selfId,MD_WIZI_SEX,0)
	SetMissionData(sceneId,selfId,MD_WIZI_LEVEL,0)
	SetMissionData(sceneId,selfId,MD_WIZI_EXP,0)
	SetMissionData(sceneId,selfId,MD_WIZI_LILIANG,0)
	SetMissionData(sceneId,selfId,MD_WIZI_LINGQI,0)
	SetMissionData(sceneId,selfId,MD_WIZI_TILI,0)
	SetMissionData(sceneId,selfId,MD_WIZI_DINGLI,0)
	SetMissionData(sceneId,selfId,MD_WIZI_SHENFA,0)
	SetMissionData(sceneId,selfId,MD_WIZI_HAPPINESS_POINT,0)
	SetMissionData(sceneId,selfId,MD_WIZI_REMAIN_POINT,0)
	SetMissionData(sceneId,selfId,MD_WIZI_EQUIP_1,0)
	SetMissionData(sceneId,selfId,MD_WIZI_EQUIP_2,0)
	SetMissionData(sceneId,selfId,MD_WIZI_EQUIP_3,0)
	SetMissionData(sceneId,selfId,MD_WIZI_EQUIP_4,0)
	SetMissionData(sceneId,selfId,MD_WIZI_SKILL_1,0)
	SetMissionData(sceneId,selfId,MD_WIZI_SKILL_2,0)
	SetMissionData(sceneId,selfId,MD_WIZI_SKILL_3,0)
	SetMissionData(sceneId,selfId,MD_WIZI_SKILL_4,0)
	SetMissionData(sceneId,selfId,MD_WIZI_EQUIP_TOTAL,0)
	--********************--
	x910181_UpdateWiZiInformation(sceneId,selfId)
	--********************--

end