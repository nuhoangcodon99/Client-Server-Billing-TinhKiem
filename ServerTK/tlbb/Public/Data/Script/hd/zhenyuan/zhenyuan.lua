--Script thao t�c Ch�n nguy�n
--Code by: S�i

--****************--
x900000_g_scriptId = 900000
x900000_g_disable_fenli = 0 --dong chuc nang phan giai


--****************--
x900000_g_ZhenYuan_Slot=
{
	MD_ZHENYUAN_SLOT_1,
	MD_ZHENYUAN_SLOT_2,
	MD_ZHENYUAN_SLOT_3,
	MD_ZHENYUAN_SLOT_4,
	MD_ZHENYUAN_SLOT_5,
	MD_ZHENYUAN_SLOT_6,
	MD_ZHENYUAN_SLOT_7,
	MD_ZHENYUAN_SLOT_8,
	MD_ZHENYUAN_SLOT_9,
	MD_ZHENYUAN_SLOT_10,
	MD_ZHENYUAN_SLOT_11,
	MD_ZHENYUAN_SLOT_12,
	MD_ZHENYUAN_SLOT_13,
	MD_ZHENYUAN_SLOT_14,
	MD_ZHENYUAN_SLOT_15,
	MD_ZHENYUAN_SLOT_16,
	MD_ZHENYUAN_SLOT_17,
	MD_ZHENYUAN_SLOT_18,
	MD_ZHENYUAN_SLOT_19,
	MD_ZHENYUAN_SLOT_20,
}
--****************--
x900000_g_ZhenYuan_EquipSlot=
{
	MD_ZHENYUAN_EQUIP_1,
	MD_ZHENYUAN_EQUIP_2,
	MD_ZHENYUAN_EQUIP_3,
	MD_ZHENYUAN_EQUIP_4,
	MD_ZHENYUAN_EQUIP_5,
	MD_ZHENYUAN_EQUIP_6,
	MD_ZHENYUAN_EQUIP_7,
	MD_ZHENYUAN_EQUIP_8,
	MD_ZHENYUAN_EQUIP_9,
	MD_ZHENYUAN_EQUIP_10,
	MD_ZHENYUAN_EQUIP_11,
	MD_ZHENYUAN_EQUIP_12,
}
--****************--
x900000_g_ZhenYuan_Gray		=	{30010000,30010005,30010010,30010015,30010020,30010035,30010040,30010045,30010050,30010055,30010060,30010065,30010070,30010075}
x900000_g_ZhenYuan_Green	=	{30010001,30010006,30010011,30010016,30010021,30010036,30010041,30010046,30010051,30010056,30010061,30010066,30010071,30010076}
x900000_g_ZhenYuan_Blue		=	{30010002,30010007,30010012,30010017,30010022,30010037,30010042,30010047,30010052,30010057,30010062,30010067,30010072,30010077}
x900000_g_ZhenYuan_Purple	=	{30010003,30010008,30010013,30010018,30010023,30010038,30010043,30010048,30010053,30010058,30010063,30010068,30010073,30010078}
x900000_g_ZhenYuan_Orange	=	{30010004,30010009,30010014,30010019,30010024,30010039,30010044,30010049,30010054,30010059,30010064,30010069,30010074,30010079}
--****************--
x900000_g_YuanXing_Need={50,100,1000,5000,0}
x900000_g_YuanXing_Recieve={1,2,5,15,50}
--****************--
x900000_g_Impact_Gray={										--Ch�n nguy�n X�m (Impact Lv 1, c�c Lv sau s� hi�u Impact +1
	["Cuong Luc"]	=	13201,								--C� ch� m�i b�
	["Noi Luc"]		=	13211,								--C� ch� m�i b�
	["The Luc"]		=	13221,								--C� ch� m�i b�
	["Tri Luc"]		=	13231,								--C� ch� m�i b�
	["Than Phap"]	=	13241,								--C� ch� m�i b�
	["Ngoai Cong"]	=	13251,
	["Noi Cong"]	=	13261,
	["Chinh Xac"]	=	13271,
	["Ne Tranh"]	=	13281,
	["Hoi Cong"]	=	13291,
	["Bang Cong"]	=	13301,
	["Hoa Cong"]	=	13311,
	["Huyen Cong"]	=	13321,
	["Doc Cong"]	=	13331,
}
--****************--
x900000_g_Impact_Green={									--Ch�n nguy�n L�c (Impact Lv 1, c�c Lv sau s� hi�u Impact +1
	["Cuong Luc"]	=	13401,								--C� ch� m�i b�
	["Noi Luc"]		=	13411,								--C� ch� m�i b�
	["The Luc"]		=	13421,								--C� ch� m�i b�
	["Tri Luc"]		=	13431,								--C� ch� m�i b�
	["Than Phap"]	=	13441,								--C� ch� m�i b�
	["Ngoai Cong"]	=	13451,
	["Noi Cong"]	=	13461,
	["Chinh Xac"]	=	13471,
	["Ne Tranh"]	=	13481,
	["Hoi Cong"]	=	13491,
	["Bang Cong"]	=	13501,
	["Hoa Cong"]	=	13511,
	["Huyen Cong"]	=	13521,
	["Doc Cong"]	=	13531,
}
--****************--
x900000_g_Impact_Blue={										--Ch�n nguy�n Lam (Impact Lv 1, c�c Lv sau s� hi�u Impact +1
	["Cuong Luc"]	=	13001,								--C� ch� m�i b�
	["Noi Luc"]		=	13011,								--C� ch� m�i b�
	["The Luc"]		=	13021,								--C� ch� m�i b�
	["Tri Luc"]		=	13031,								--C� ch� m�i b�
	["Than Phap"]	=	13041,								--C� ch� m�i b�
	["Ngoai Cong"]	=	13051,
	["Noi Cong"]	=	13061,
	["Chinh Xac"]	=	13071,
	["Ne Tranh"]	=	13081,
	["Hoi Cong"]	=	13091,
	["Bang Cong"]	=	13101,
	["Hoa Cong"]	=	13111,
	["Huyen Cong"]	=	13121,
	["Doc Cong"]	=	13131,
}
--****************--
x900000_g_Impact_Purple={									--Ch�n nguy�n T�m (Impact Lv 1, c�c Lv sau s� hi�u Impact +1
	["Cuong Luc"]	=	13601,								--C� ch� m�i b�
	["Noi Luc"]		=	13611,								--C� ch� m�i b�
	["The Luc"]		=	13621,								--C� ch� m�i b�
	["Tri Luc"]		=	13631,								--C� ch� m�i b�
	["Than Phap"]	=	13641,								--C� ch� m�i b�
	["Ngoai Cong"]	=	13651,
	["Noi Cong"]	=	13661,
	["Chinh Xac"]	=	13671,
	["Ne Tranh"]	=	13681,
	["Hoi Cong"]	=	13691,
	["Bang Cong"]	=	13701,
	["Hoa Cong"]	=	13711,
	["Huyen Cong"]	=	13721,
	["Doc Cong"]	=	13731,
}
--****************--
x900000_g_Impact_Orange={									--Ch�n nguy�n Cam (Impact Lv 1, c�c Lv sau s� hi�u Impact +1
	["Cuong Luc"]	=	13801,								--C� ch� m�i b�
	["Noi Luc"]		=	13811,								--C� ch� m�i b�
	["The Luc"]		=	13821,								--C� ch� m�i b�
	["Tri Luc"]		=	13831,								--C� ch� m�i b�
	["Than Phap"]	=	13841,								--C� ch� m�i b�
	["Ngoai Cong"]	=	13851,
	["Noi Cong"]	=	13861,
	["Chinh Xac"]	=	13871,
	["Ne Tranh"]	=	13881,
	["Hoi Cong"]	=	13891,
	["Bang Cong"]	=	13901,
	["Hoa Cong"]	=	13911,
	["Huyen Cong"]	=	13921,
	["Doc Cong"]	=	13931,
}
--****************--
x900000_g_Equip_Pos={107,106,111,114,112,113,102,105,103,104,101,115}
--****************--
x900000_g_Gem_Infor={
	[00]	=	{	Type="Cuong Luc",	Gem=50113001	},
	[01]	=	{	Type="Cuong Luc",	Gem=50113001	},
	[02]	=	{	Type="Cuong Luc",	Gem=50113001	},
	[03]	=	{	Type="Cuong Luc",	Gem=50113001	},
	[04]	=	{	Type="Cuong Luc",	Gem=50113001	},
	
	[05]	=	{	Type="Noi Luc",		Gem=50113002	},
	[06]	=	{	Type="Noi Luc",		Gem=50113002	},
	[07]	=	{	Type="Noi Luc",		Gem=50113002	},
	[08]	=	{	Type="Noi Luc",		Gem=50113002	},
	[09]	=	{	Type="Noi Luc",		Gem=50113002	},
	
	[10]	=	{	Type="The Luc",		Gem=50113004	},
	[11]	=	{	Type="The Luc",		Gem=50113004	},
	[12]	=	{	Type="The Luc",		Gem=50113004	},
	[13]	=	{	Type="The Luc",		Gem=50113004	},
	[14]	=	{	Type="The Luc",		Gem=50113004	},
	
	[15]	=	{	Type="Tri Luc",		Gem=50113005	},
	[16]	=	{	Type="Tri Luc",		Gem=50113005	},
	[17]	=	{	Type="Tri Luc",		Gem=50113005	},
	[18]	=	{	Type="Tri Luc",		Gem=50113005	},
	[19]	=	{	Type="Tri Luc",		Gem=50113005	},
	
	[20]	=	{	Type="Than Phap",	Gem=50113003	},
	[21]	=	{	Type="Than Phap",	Gem=50113003	},
	[22]	=	{	Type="Than Phap",	Gem=50113003	},
	[23]	=	{	Type="Than Phap",	Gem=50113003	},
	[24]	=	{	Type="Than Phap",	Gem=50113003	},
	
	[25]	=	{	Type="Huyet",		Gem=50113006	},
	[26]	=	{	Type="Huyet",		Gem=50113006	},
	[27]	=	{	Type="Huyet",		Gem=50113006	},
	[28]	=	{	Type="Huyet",		Gem=50113006	},
	[29]	=	{	Type="Huyet",		Gem=50113006	},
	
	[30]	=	{	Type="Khi",			Gem=50113006	},
	[31]	=	{	Type="Khi",			Gem=50113006	},
	[32]	=	{	Type="Khi",			Gem=50113006	},
	[33]	=	{	Type="Khi",			Gem=50113006	},
	[34]	=	{	Type="Khi",			Gem=50113006	},
	
	[35]	=	{	Type="Noi Cong",	Gem=50101001	},
	[36]	=	{	Type="Noi Cong",	Gem=50101001	},
	[37]	=	{	Type="Noi Cong",	Gem=50101001	},
	[38]	=	{	Type="Noi Cong",	Gem=50101001	},
	[39]	=	{	Type="Noi Cong",	Gem=50101001	},
	
	[40]	=	{	Type="Ngoai Cong",	Gem=50101002	},
	[41]	=	{	Type="Ngoai Cong",	Gem=50101002	},
	[42]	=	{	Type="Ngoai Cong",	Gem=50101002	},
	[43]	=	{	Type="Ngoai Cong",	Gem=50101002	},
	[44]	=	{	Type="Ngoai Cong",	Gem=50101002	},
	
	[45]	=	{	Type="Chinh Xac",	Gem=50103001	},
	[46]	=	{	Type="Chinh Xac",	Gem=50103001	},
	[47]	=	{	Type="Chinh Xac",	Gem=50103001	},
	[48]	=	{	Type="Chinh Xac",	Gem=50103001	},
	[49]	=	{	Type="Chinh Xac",	Gem=50103001	},
	
	[50]	=	{	Type="Ne Tranh",	Gem=50114001	},
	[51]	=	{	Type="Ne Tranh",	Gem=50114001	},
	[52]	=	{	Type="Ne Tranh",	Gem=50114001	},
	[53]	=	{	Type="Ne Tranh",	Gem=50114001	},
	[54]	=	{	Type="Ne Tranh",	Gem=50114001	},
	
	[55]	=	{	Type="Hoi Cong",	Gem=50104002	},
	[56]	=	{	Type="Hoi Cong",	Gem=50104002	},
	[57]	=	{	Type="Hoi Cong",	Gem=50104002	},
	[58]	=	{	Type="Hoi Cong",	Gem=50104002	},
	[59]	=	{	Type="Hoi Cong",	Gem=50104002	},
	
	[60]	=	{	Type="Bang Cong",	Gem=50102006	},
	[61]	=	{	Type="Bang Cong",	Gem=50102006	},
	[62]	=	{	Type="Bang Cong",	Gem=50102006	},
	[63]	=	{	Type="Bang Cong",	Gem=50102006	},
	[64]	=	{	Type="Bang Cong",	Gem=50102006	},
	
	[65]	=	{	Type="Hoa Cong",	Gem=50102007	},
	[66]	=	{	Type="Hoa Cong",	Gem=50102007	},
	[67]	=	{	Type="Hoa Cong",	Gem=50102007	},
	[68]	=	{	Type="Hoa Cong",	Gem=50102007	},
	[69]	=	{	Type="Hoa Cong",	Gem=50102007	},
	
	[70]	=	{	Type="Huyen Cong",	Gem=50102005	},
	[71]	=	{	Type="Huyen Cong",	Gem=50102005	},
	[72]	=	{	Type="Huyen Cong",	Gem=50102005	},
	[73]	=	{	Type="Huyen Cong",	Gem=50102005	},
	[74]	=	{	Type="Huyen Cong",	Gem=50102005	},
	
	[75]	=	{	Type="Doc Cong",	Gem=50102008	},
	[76]	=	{	Type="Doc Cong",	Gem=50102008	},
	[77]	=	{	Type="Doc Cong",	Gem=50102008	},
	[78]	=	{	Type="Doc Cong",	Gem=50102008	},
	[79]	=	{	Type="Doc Cong",	Gem=50102008	},
	
	
}
--****************--
x900000_g_ZhenYuan_Gray_Type			=	{	1,	2,	3,		7,		13,		20,		26,		32,		34		}	--�i�m c�ng CN x�m
x900000_g_ZhenYuan_ShenFa_Gray_Type		=	{	0,	1,	2,		4,		7,		11,		14,		17,		18		}	--�i�m c�ng CN x�m Th�n ph�p
x900000_g_ZhenYuan_Green_Type			=	{	6,	12,	18,		38,		69,		103,	135,	166,	172		}	--�i�m c�ng CN l�c
x900000_g_ZhenYuan_ShenFa_Green_Type	=	{	3,	6,	10,		20,		37,		56,		72,		89,		93		}	--�i�m c�ng CN l�c Th�n ph�p
x900000_g_ZhenYuan_Blue_Type			=	{	13,	25,	37,		76,		137,	206,	267,	329,	342		}	--�i�m c�ng CN lam
x900000_g_ZhenYuan_ShenFa_Blue_Type		=	{	7,	13,	20,		41,		74,		112,	145,	179,	186		}	--�i�m c�ng CN lam Th�n ph�p
x900000_g_ZhenYuan_Purple_Type			=	{	26,	50,	74,		152,	274,	412,	534,	658,	684		}	--�i�m c�ng CN t�m
x900000_g_ZhenYuan_ShenFa_Purple_Type	=	{	14,	26,	40,		82,		148,	224,	290,	358,	372		}	--�i�m c�ng CN t�m Th�n ph�p
x900000_g_ZhenYuan_Orange_Type			=	{	39,	75,	111,	228,	411,	618,	801,	987,	1026	}	--�i�m c�ng CN cam
x900000_g_ZhenYuan_ShenFa_Orange_Type	=	{	21,	39,	60,		123,	222,	336,	435,	537,	558		}	--�i�m c�ng CN cam Th�n ph�p
--****************--
x900000_g_Active_Zhenyuan_Gray 		= 1				--K�ch ho�t Ch�n nguy�n x�m (0/1)
x900000_g_Active_Zhenyuan_Green 	= 1				--K�ch ho�t Ch�n nguy�n l�c (0/1)
x900000_g_Active_Zhenyuan_Blue 		= 1				--K�ch ho�t Ch�n nguy�n lam (0/1)
x900000_g_Active_Zhenyuan_Purple 	= 0				--K�ch ho�t Ch�n nguy�n t� (0/1)
x900000_g_Active_Zhenyuan_Orange 	= 0				--K�ch ho�t Ch�n nguy�n tranh (0/1)
--****************--
x900000_g_Active_Zhenyuan_MaxLv 	= 3				--Gi�i h�n c�p � t�i �a c�a Ch�n nguy�n (0~V� hi�u, 1~X�m, 2~L�c, 3~Lam, 4~T�, 5~Tranh)
x900000_g_CheckBugOverLevel			= 0				--Ki�m tra c� CN n�o qu� c�p � gi�i h�n kh�ng (1~enable, 0~disable)
--****************--

--Write debug
function x900000_WriteDebugLogZhenYuanInfo(sceneId,selfId)
	
	--****************--
	local Actived=GetMissionData(sceneId,selfId,MD_ZHENYUAN_AVTIVED)
	--****************--
	if Actived==0 then
		return
	end
	--****************--
	local nHour=GetHour()
	local nMinute=GetMinute()
	local nDate=tonumber(GetTodayDate())
	local nMonth=tonumber(GetTodayMonth())
	local nYear=tonumber(GetTodayYear())
	local nName=GetName(sceneId,selfId)
	local nGuid=LuaFnGetGUID(sceneId,selfId)
	local Current_YuanXing=GetMissionData(sceneId,selfId,MD_YUANXING)
	local Current_ZhenYuanXingXu=GetMissionData(sceneId,selfId,MD_ZHENYUANXINGXU)
	local str="[Zhen yuan] Update information of "..nName.." (Index="..nGuid..") {T0="..nHour..":"..nMinute.."_"..nMonth.."-"..nDate.."-"..nYear.."}\n"
	str=str.."[Zhen yuan] <Point update> YuanXing="..Current_YuanXing..", ZhenYuanXingXu="..Current_ZhenYuanXingXu.."\n"
	str=str.."[Zhen yuan] <Equip Information> "
	for i,MD in x900000_g_ZhenYuan_EquipSlot do
		str=str.."Slot["..i.."]="..GetMissionData(sceneId,selfId,MD).." "
	end
	str=str.."\n[Zhen yuan] <Bag Information> "
	for i,MD in x900000_g_ZhenYuan_Slot do
		str=str.."Slot["..i.."]="..GetMissionData(sceneId,selfId,MD).." "
	end
	--****************--
	local str1,str2,xx="","",""
	--****************--
	if x900000_g_CheckBugOverLevel==1 then
		for i,MD in x900000_g_ZhenYuan_EquipSlot do
			local x=mod(mod(GetMissionData(sceneId,selfId,MD),10),5)+1
			--Delete CN lv > gioi han
			if x>x900000_g_Active_Zhenyuan_MaxLv then
				local Zhen_Yuan_Index=GetMissionData(sceneId,selfId,MD)
				SetMissionData(sceneId,selfId,MD,0)
				local nName=GetName(sceneId,selfId)
				local nGuid=LuaFnGetGUID(sceneId,selfId)
				local Item_Index=Zhen_Yuan_Index
				local Item_Level=x
				xx=format("\n[Zhen yuan] <Delete bug item from equip> Name=%s, Index=%s, Pos=%d, ZhenYuanIndex=%d, ZhenYuanLevel=%d",nName,nGuid,i,Item_Index,Item_Level)
				str1=str1..xx
			end
			--end
		end
		--****************--
		for i,MD in x900000_g_ZhenYuan_Slot do
			local x=mod(mod(GetMissionData(sceneId,selfId,MD),10),5)+1
			--Delete CN lv > gioi han
			if x>x900000_g_Active_Zhenyuan_MaxLv then
				local Zhen_Yuan_Index=GetMissionData(sceneId,selfId,MD)
				SetMissionData(sceneId,selfId,MD,0)
				local nName=GetName(sceneId,selfId)
				local nGuid=LuaFnGetGUID(sceneId,selfId)
				local Item_Index=Zhen_Yuan_Index
				local Item_Level=x
				xx=format("\n[Zhen yuan] <Delete bug item from bag> Name=%s, Index=%s, Pos=%d, ZhenYuanIndex=%d, ZhenYuanLevel=%d",nName,nGuid,i,Item_Index,Item_Level)
				str2=str2..xx
			end
			--end
		end
	end
	--****************--
	str=str..str1..str2.."\nUpdate Zhen Yuan information successfully"
	WriteDebugLog(sceneId,selfId,str)
	--****************--
	
end
--End

--*********************************--
--*           On Update           *--
--*********************************--
function x900000_OnUpdate(sceneId,selfId,Request,Param,Param_1)

	--****************--
	if GetMissionFlag(sceneId,selfId,MF_CHECKVERSION)==1 or GetHp(sceneId,selfId)<1 then--Sai phi�n b�n ho�c nh�n v�t die
		return
	end
	--****************--
	if Request==2 or Request==11 then
		if x900000_g_disable_fenli==1 then	
			BeginEvent(sceneId)
				AddText(sceneId,"Ch�c n�ng t�m kh�a � ki�m tra!")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
	end
	--****************--
	if Request==0 then								--C�p nh�t th�ng tin Ch�n Nguy�n
		x900000_UpdateZhenYuanInfo(sceneId,selfId)
	end
	--****************--
	if Request==1 then								--Th�ng c�p Ch�n nguy�n
		x900000_ZhenYuanLevelUp(sceneId,selfId,Param)
	end
	--****************--
	if Request==2 then								--Ph�n gi�i Ch�n nguy�n
		x900000_ZhenYuanFenLi(sceneId,selfId,Param)
	end
	--****************--
	if Request==3 then								--S�p x�p danh s�ch Ch�n nguy�n
		x900000_ZhenYuanSort(sceneId,selfId)
	end
	--****************--
	if Request==4 then								--L�y Ch�n nguy�n ra kh�i trang b� Ch�n nguy�n
		x900000_ZhenYuanReturnBoxFromEquip(sceneId,selfId,Param)
	end
	--****************--
	if Request==5 then								--Kh�i t�o Ch�n nguy�n
		x900000_ZhenYuanStart(sceneId,selfId)
	end
	--****************--
	if Request==6 then								--L�y Ch�n nguy�n ra kh�i t�i ��ng Ch�n nguy�n
		x900000_ZhenYuanReturnBagFromBox(sceneId,selfId,Param)
	end
	--****************--
	if Request==7 then								--Trang b� Ch�n nguy�n t� t�i ��ng Ch�n nguy�n
		x900000_ZhenYuanEquipFromBox(sceneId,selfId,Param,Param_1)
	end
	--****************--
	if Request==8 then								--G� phong cho Ch�n nguy�n
		x900000_ZhenYuanUnFrozen(sceneId,selfId,Param)
	end
	--****************--
	if Request==9 then								--Ng�ng luy�n Ch�n nguy�n
		x900000_ZhenYuanNingLian(sceneId,selfId)
	end
	--****************--
	if Request==10 then								--C�ng �i�m Ch�n nguy�n
		x900000_ZhenYuanCancelImpact(sceneId,selfId)
		x900000_ZhenYuanAddImpact(sceneId,selfId)
		local nHP=GetMissionData(sceneId,selfId,MD_CURRENT_HITPOINT)
		local nMP=GetMissionData(sceneId,selfId,MD_CURRENT_MANAPOINT)
		SetHp(sceneId,selfId,nHP)
		SetMp(sceneId,selfId,nMP)
		SetPlayerRemainPoints(sceneId,selfId,GetMissionData(sceneId,selfId,MD_CURRENT_REMAINPOINT))
	end
	--****************--
	if Request==11 then								--Ph�n ly to�n b� Ch�n nguy�n
		--****************--
		if LuaFnIsPasswordSetup(sceneId,selfId,0)==1 then
			if LuaFnIsPasswordUnlocked(sceneId,selfId,0)~=1 then
				LuaFnSendOpResult(sceneId,selfId,OR_NEED_UNLOCKMINORPASSWORD)
				return
			end	
		end
		--****************--
		--****************--
		local ok=1
		for i=1,getn(x900000_g_ZhenYuan_Slot) do
			if GetMissionData(sceneId,selfId,x900000_g_ZhenYuan_Slot[i])>0 then
				x900000_ZhenYuanFenLi(sceneId,selfId,i)
				ok=0
			end
		end
		if ok==0 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ph�n gi�i to�n b� Ch�n nguy�n th�nh c�ng!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,selfId)
		else
			BeginEvent(sceneId)
				AddText(sceneId,"C�c h� kh�ng c� Ch�n nguy�n trong t�i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,selfId)
		end
	end
	--****************--
	
end
--*********************************--
--*        Zhen Yuan Start        *--
--*********************************--
function x900000_ZhenYuanStart(sceneId,selfId)

	--****************--
	SetMissionData(sceneId,selfId,MD_ZHENYUAN_AVTIVED,1)
	for i,MD in x900000_g_ZhenYuan_EquipSlot do
		SetMissionData(sceneId,selfId,MD,-1)
	end
	SetMissionData(sceneId,selfId,MD_ZHENYUANXINGXU,0)
	SetMissionData(sceneId,selfId,MD_YUANXING,0)
	for i,MD in x900000_g_ZhenYuan_Slot do
		SetMissionData(sceneId,selfId,MD,0)
	end
	--****************--
	x900000_UpdateZhenYuanInfo(sceneId,selfId)
	--****************--
	
end
--*********************************--
--*     Update Zhen Yuan Info     *--
--*********************************--
function x900000_UpdateZhenYuanInfo(sceneId,selfId)

	--****************--
	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_ZHENYUAN_AVTIVED)*10+GetSex(sceneId,selfId))
		for i,MD in x900000_g_ZhenYuan_EquipSlot do
			UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD))
		end
		UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_YUANXING))
		UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_ZHENYUANXINGXU))
		local str=""
		for i,MD in x900000_g_ZhenYuan_Slot do
			if GetMissionData(sceneId,selfId,MD)<=0 then
				str=str.."xxxxxxxx"
			else
				str=str..tostring(GetMissionData(sceneId,selfId,MD))
			end
		end
		UICommand_AddString(sceneId,str)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId,80800791)
	--****************--
	
end
--*********************************--
--*       Zhen Yuan Fen Li        *--
--*********************************--
function x900000_ZhenYuanFenLi(sceneId,selfId,Pos)

	--****************--
	if LuaFnIsPasswordSetup(sceneId,selfId,0)==1 then
		if LuaFnIsPasswordUnlocked(sceneId,selfId,0)~=1 then
			LuaFnSendOpResult(sceneId,selfId,OR_NEED_UNLOCKMINORPASSWORD)
			return
		end	
	end
	--****************--
	--****************--
	if x900000_g_ZhenYuan_Slot[Pos]==nil then
		BeginEvent(sceneId)
			AddText(sceneId,"H�y ch�n Ch�n nguy�n c�n ph�n gi�i!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	--****************--
	local Current_ZhenYuan=GetMissionData(sceneId,selfId,x900000_g_ZhenYuan_Slot[Pos])
	--****************--
	local nLevel=mod(mod(Current_ZhenYuan,10),5)+1
	local Current_YuanXing=GetMissionData(sceneId,selfId,MD_YUANXING)
	--****************--
	SetMissionData(sceneId,selfId,MD_YUANXING,Current_YuanXing+x900000_g_YuanXing_Recieve[nLevel])
	--****************--
	BeginEvent(sceneId)
		AddText(sceneId,"Ph�n gi�i Ch�n nguy�n th�nh c�ng, s� �i�m Nguy�n tinh c�a c�c h� t�ng th�m "..x900000_g_YuanXing_Recieve[nLevel].." �i�m!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--****************--
	SetMissionData(sceneId,selfId,x900000_g_ZhenYuan_Slot[Pos],0)
	--****************--
	local nName=GetName(sceneId,selfId)
	local nGuid=LuaFnGetGUID(sceneId,selfId)
	local Material_Index=Current_ZhenYuan
	local Material_Level=nLevel
	local YuanXing_Before=Current_YuanXing
	local YuanXing_After=GetMissionData(sceneId,selfId,MD_YUANXING)
	local Product_Index=nItem
	local str=format("[Zhen yuan] <Split> Name=%s, ID=%d, Pos=%d, MaterialIndex=%d, MaterialLevel=%d, YuanXingBefore=%d, YuanXingAfter=%d",nName,nGuid,Pos,Material_Index,Material_Level,YuanXing_Before,YuanXing_After)
	WriteDebugLog(sceneId,selfId,str)
	--****************--
	x900000_UpdateZhenYuanInfo(sceneId,selfId)
	--****************--
	
end
--*********************************--
--*         Zhen Yuan Sort        *--
--*********************************--
function x900000_ZhenYuanSort(sceneId,selfId)

	--****************--
	local Zhen_Yuan={}
	local nSize=0
	--****************--
	for i,MD in x900000_g_ZhenYuan_Slot do
		if GetMissionData(sceneId,selfId,MD)>0 then
			nSize=nSize+1
			Zhen_Yuan[nSize]=GetMissionData(sceneId,selfId,MD)
		end
		SetMissionData(sceneId,selfId,MD,0)
	end
	--****************--
	for i=1,nSize do
		SetMissionData(sceneId,selfId,x900000_g_ZhenYuan_Slot[i],Zhen_Yuan[i])
	end
	--****************--
	x900000_UpdateZhenYuanInfo(sceneId,selfId)
	--****************--
	
end
--*********************************--
--*       Zhen Yuan Level Up      *--
--*********************************--
function x900000_ZhenYuanLevelUp(sceneId,selfId,Pos)

	--****************--
	local Current_ZhenYuan=GetMissionData(sceneId,selfId,x900000_g_ZhenYuan_EquipSlot[Pos])
	local nLevel=mod(mod(Current_ZhenYuan,10),5)+1
	if nLevel==5 then
		BeginEvent(sceneId)
			AddText(sceneId,"Ch�n nguy�n n�y �� ��t c�p � cao nh�t!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	elseif nLevel>=x900000_g_Active_Zhenyuan_MaxLv then
		BeginEvent(sceneId)
			AddText(sceneId,"H� th�ng gi�i h�n c�p � ch�n nguy�n t�i �a l� c�p "..x900000_g_Active_Zhenyuan_MaxLv.."!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	--****************--
	local Current_YuanXing=GetMissionData(sceneId,selfId,MD_YUANXING)
	if Current_YuanXing<x900000_g_YuanXing_Need[nLevel] then
		BeginEvent(sceneId)
			AddText(sceneId,"S� �i�m Nguy�n tinh kh�ng ��!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	--****************--
	SetMissionData(sceneId,selfId,MD_YUANXING,Current_YuanXing-x900000_g_YuanXing_Need[nLevel])
	--****************--
	SetMissionData(sceneId,selfId,x900000_g_ZhenYuan_EquipSlot[Pos],Current_ZhenYuan+1)
	--****************--
	if nLevel>=3 then
		local str = format("#cff99cc#{_INFOUSR%s} tr�i qua n� l�c kh�ng ng�ng � th�ng c�p Ch�n nguy�n, th�nh c�ng ��t ���c #Y[%s#Y]#P. M�i ng߶i c� ai c� th� ��t ���c �i�u n�y kh�ng?", GetName(sceneId,selfId),GetItemName(sceneId,Current_ZhenYuan+1))
		AddGlobalCountNews(sceneId,str)
	end
	--****************--
	BeginEvent(sceneId)
		AddText(sceneId,"Th�ng c�p th�nh c�ng!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--****************--
	local nName=GetName(sceneId,selfId)
	local nGuid=LuaFnGetGUID(sceneId,selfId)
	local From_Index=Current_ZhenYuan
	local To_Index=Current_ZhenYuan+1
	local From_Level=nLevel-1
	local To_Level=nLevel
	local Yuan_Xing_Before=Current_YuanXing
	local Yuan_Xing_After=GetMissionData(sceneId,selfId,MD_YUANXING)
	local str=format("[Zhen yuan] <Level up> Name=%s, ID=%d, Pos=%d, FromIndex=%d, FromLevel=%d, ToIndex=%d, ToLevel=%d, YuanXingBefore=%d, YuanXingAfter=%d",nName,nGuid,Pos,From_Index,From_Level,To_Index,To_Level,Yuan_Xing_Before,Yuan_Xing_After)
	WriteDebugLog(sceneId,selfId,str)
	--****************--
	x900000_UpdateZhenYuanInfo(sceneId,selfId)
	--****************--
	
end
--*********************************--
--*Zhen Yuan Return Box From Equip*--
--*********************************--
function x900000_ZhenYuanReturnBoxFromEquip(sceneId,selfId,Pos)

	--****************--
	local nSlot=-1
	--****************--
	for i,MD in x900000_g_ZhenYuan_Slot do
		if GetMissionData(sceneId,selfId,MD)<=0 then
			nSlot=i
			break
		end
	end
	--****************--
	if nSlot==-1 then
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� c�n s�p x�p �t nh�t m�t � tr�ng trong t�i Ch�n nguy�n!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	--****************--
	local Current_ZhenYuan=GetMissionData(sceneId,selfId,x900000_g_ZhenYuan_EquipSlot[Pos])
	--****************--
	SetMissionData(sceneId,selfId,x900000_g_ZhenYuan_Slot[nSlot],Current_ZhenYuan)
	--****************--
	SetMissionData(sceneId,selfId,x900000_g_ZhenYuan_EquipSlot[Pos],0)
	--****************--
	x900000_UpdateZhenYuanInfo(sceneId,selfId)
	--****************--
	
end
--*********************************--
--* Zhen Yuan Return Bag From Box *--
--*********************************--
function x900000_ZhenYuanReturnBagFromBox(sceneId,selfId,Pos)

	--****************--
	if LuaFnGetPropertyBagSpace(sceneId,selfId)<1 then
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� c�n s�p x�p l�i �t nh�t m�t � tr�ng trong � ��o c�!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	--****************--
	local Current_ZhenYuan=GetMissionData(sceneId,selfId,x900000_g_ZhenYuan_Slot[Pos])
	--****************--
	TryRecieveItem(sceneId,selfId,Current_ZhenYuan,1)
	--****************--
	SetMissionData(sceneId,selfId,x900000_g_ZhenYuan_Slot[Pos],0)
	--****************--
	x900000_UpdateZhenYuanInfo(sceneId,selfId)
	--****************--
	
end
--*********************************--
--*    Zhen Yuan Equip From Box   *--
--*********************************--
function x900000_ZhenYuanEquipFromBox(sceneId,selfId,Box_Pos,Equip_Pos)

	--****************--
	local Box_ZhenYuan=GetMissionData(sceneId,selfId,x900000_g_ZhenYuan_Slot[Box_Pos])
	local Equiped_ZhenYuan=GetMissionData(sceneId,selfId,x900000_g_ZhenYuan_EquipSlot[Equip_Pos])
	--****************--
	if Equiped_ZhenYuan==-1 then
		BeginEvent(sceneId)
			AddText(sceneId,"V� tr� n�y �ang b� phong �n!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	elseif Box_ZhenYuan==0 then
		BeginEvent(sceneId)
			AddText(sceneId,"H�y ch�n Ch�n nguy�n c�n trang b� v�o v� tr� n�y!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	--****************--
	SetMissionData(sceneId,selfId,x900000_g_ZhenYuan_Slot[Box_Pos],Equiped_ZhenYuan)
	SetMissionData(sceneId,selfId,x900000_g_ZhenYuan_EquipSlot[Equip_Pos],Box_ZhenYuan)
	--****************--
	x900000_UpdateZhenYuanInfo(sceneId,selfId)
	--****************--
	
end
--*********************************--
--*      Zhen Yuan Un Frozen      *--
--*********************************--
function x900000_ZhenYuanUnFrozen(sceneId,selfId,Pos)

	--****************--
	local Current_ZhenYuanXingXu=GetMissionData(sceneId,selfId,MD_ZHENYUANXINGXU)
	--****************--
	if Pos==0 then
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� c�n ch�n m�t v� tr� c�n gi�i phong!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	elseif Current_ZhenYuanXingXu<50 then
		BeginEvent(sceneId)
			AddText(sceneId,"S� l��ng Ch�n nguy�n tinh t�y kh�ng ��!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	elseif CostMoney(sceneId,selfId,50000)==-1 then
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� kh�ng �� ti�n!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	--****************--
	SetMissionData(sceneId,selfId,MD_ZHENYUANXINGXU,Current_ZhenYuanXingXu-50)
	--****************--
	SetMissionData(sceneId,selfId,x900000_g_ZhenYuan_EquipSlot[Pos],0)
	--****************--
	BeginEvent(sceneId)
		AddText(sceneId,"Gi�i phong th�nh c�ng!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--****************--
	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_ZHENYUAN_AVTIVED))
		for i,MD in x900000_g_ZhenYuan_EquipSlot do
			UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD))
		end
		UICommand_AddInt(sceneId,GetSex(sceneId,selfId))
		UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_ZHENYUANXINGXU))
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId,88990099)
	--****************--
	
end
--*********************************--
--*      Zhen Yuan Ning Lian      *--
--*********************************--
function x900000_ZhenYuanNingLian(sceneId,selfId)

	--****************--
	local Current_ZhenYuanXingXu=GetMissionData(sceneId,selfId,MD_ZHENYUANXINGXU)
	--****************--
	local nSlot=-1
	--****************--
	for i,MD in x900000_g_ZhenYuan_Slot do
		if GetMissionData(sceneId,selfId,MD)<=0 then
			nSlot=i
			break
		end
	end
	--****************--
	if Current_ZhenYuanXingXu<20 then
		BeginEvent(sceneId)
			AddText(sceneId,"S� l��ng Ch�n nguy�n tinh t�y kh�ng ��!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	elseif nSlot==-1 then
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� c�n s�p x�p l�i �t nh�t m�t � tr�ng trong t�i Ch�n nguy�n!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	--****************--
	SetMissionData(sceneId,selfId,MD_ZHENYUANXINGXU,Current_ZhenYuanXingXu-20)
	--****************--
	local nItem
	local x,y=random(1000)+random(100)+random(10),random(10)
	if x==y and x900000_g_Active_Zhenyuan_Orange==1 then
		nItem=x900000_g_ZhenYuan_Orange[random(getn(x900000_g_ZhenYuan_Orange))]
		AddGlobalCountNews(sceneId,GetName(sceneId,selfId).."#R t�i #GT� Ch�u - Tr߽ng S� T�m#R tr�i qua n� l�c, ng�ng luy�n th�nh c�ng "..GetItemName(sceneId,nItem).."!")
	elseif abs(x-y)<=5 and x900000_g_Active_Zhenyuan_Purple==1 then
		nItem=x900000_g_ZhenYuan_Purple[random(getn(x900000_g_ZhenYuan_Purple))]
		AddGlobalCountNews(sceneId,GetName(sceneId,selfId).."#R t�i #GT� Ch�u - Tr߽ng S� T�m#R tr�i qua n� l�c, ng�ng luy�n th�nh c�ng "..GetItemName(sceneId,nItem).."!")
	elseif abs(x-y)<=30 and x900000_g_Active_Zhenyuan_Blue==1 then
		nItem=x900000_g_ZhenYuan_Blue[random(getn(x900000_g_ZhenYuan_Blue))]
	elseif abs(x-y)<=200 and x900000_g_Active_Zhenyuan_Green==1 then
		nItem=x900000_g_ZhenYuan_Green[random(getn(x900000_g_ZhenYuan_Green))]
	elseif x900000_g_Active_Zhenyuan_Gray==1 then
		nItem=x900000_g_ZhenYuan_Gray[random(getn(x900000_g_ZhenYuan_Gray))]
	end
	--****************--
	SetMissionData(sceneId,selfId,x900000_g_ZhenYuan_Slot[nSlot],nItem)
	--****************--
	BeginEvent(sceneId)
		AddText(sceneId,"Ng�ng luy�n th�nh c�ng. C�c h� nh�n ���c m�t vi�n "..GetItemName(sceneId,nItem).."!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--****************--
	local nName=GetName(sceneId,selfId)
	local nGuid=LuaFnGetGUID(sceneId,selfId)
	local ZhenYuanXingXu_Before=Current_ZhenYuanXingXu
	local ZhenYuanXingXu_After=GetMissionData(sceneId,selfId,MD_ZHENYUANXINGXU)
	local Product_Index=nItem
	local str=format("[Zhen yuan] <Create new> Name=%s, ID=%s, ProductIndex=%s, ZhenYuanXingXuBefore=%d, ZhenYuanXingXuAfter=%d",nName,nGuid,Product_Index,ZhenYuanXingXu_Before,ZhenYuanXingXu_After)
	WriteDebugLog(sceneId,selfId,str)
	--****************--
	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_ZHENYUAN_AVTIVED))
		local str=""
		for i,MD in x900000_g_ZhenYuan_Slot do
			if GetMissionData(sceneId,selfId,MD)<=0 then
				str=str.."xxxxxxxx"
			else
				str=str..tostring(GetMissionData(sceneId,selfId,MD))
			end
		end
		UICommand_AddString(sceneId,str)
		UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_YUANXING))
		UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_ZHENYUANXINGXU))
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId,88990001)
	--****************--
	
end
--*********************************--
--*    Zhen Yuan Cancel Impoact   *--
--*********************************--
function x900000_ZhenYuanCancelImpact(sceneId,selfId)

	--****************--
	for i,impact in x900000_g_Impact_Gray do
		for j=0,8 do
			while LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,impact+j)>0 do
				LuaFnCancelSpecificImpact(sceneId,selfId,impact+j)
			end
			while LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,impact+j+1000)>0 do
				LuaFnCancelSpecificImpact(sceneId,selfId,impact+j+1000)
			end
		end
	end
	--****************--
	for i,impact in x900000_g_Impact_Green do
		for j=0,8 do
			while LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,impact+j)>0 do
				LuaFnCancelSpecificImpact(sceneId,selfId,impact+j)
			end
			while LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,impact+j+1000)>0 do
				LuaFnCancelSpecificImpact(sceneId,selfId,impact+j+1000)
			end
		end
	end	
	--****************--
	for i,impact in x900000_g_Impact_Blue do
		for j=0,8 do
			while LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,impact+j)>0 do
				LuaFnCancelSpecificImpact(sceneId,selfId,impact+j)
			end
			while LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,impact+j+1000)>0 do
				LuaFnCancelSpecificImpact(sceneId,selfId,impact+j+1000)
			end
		end
	end
	--****************--
	for i,impact in x900000_g_Impact_Purple do
		for j=0,8 do
			while LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,impact+j)>0 do
				LuaFnCancelSpecificImpact(sceneId,selfId,impact+j)
			end
			while LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,impact+j+1000)>0 do
				LuaFnCancelSpecificImpact(sceneId,selfId,impact+j+1000)
			end
		end
	end
	--****************--
	for i,impact in x900000_g_Impact_Orange do
		for j=0,8 do
			while LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,impact+j)>0 do
				LuaFnCancelSpecificImpact(sceneId,selfId,impact+j)
			end
			while LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,impact+j+1000)>0 do
				LuaFnCancelSpecificImpact(sceneId,selfId,impact+j+1000)
			end
		end
	end
	--****************--
	
end
--*********************************--
--*     Zhen Yuan Add Impoact     *--
--*********************************--
function x900000_ZhenYuanAddImpact(sceneId,selfId)

	--****************--
	for i,Equip_Pos in x900000_g_Equip_Pos do
		if LuaFnGetItemTableIndexByIndex(sceneId,selfId,Equip_Pos)>0 then
			local Zhen_Yuan_Index=GetMissionData(sceneId,selfId,x900000_g_ZhenYuan_EquipSlot[i])
			if Zhen_Yuan_Index>0 then
				Zhen_Yuan_Index=mod(Zhen_Yuan_Index,100)
				local nArray=x900000_g_Gem_Infor[Zhen_Yuan_Index].Type
				local nGem=x900000_g_Gem_Infor[Zhen_Yuan_Index].Gem
				local x=mod(mod(Zhen_Yuan_Index,10),5)+1
				local Gem_Count=GetGemEmbededCount(sceneId,selfId,Equip_Pos)
				local break_point=0
				for k=0,Gem_Count-1 do
					local Gem_Index=GetGemEmbededType(sceneId,selfId,Equip_Pos,k)
					if break_point==1 then
						break
					end
					for u=0,8 do
						if Gem_Index==nGem+u*100000 then
							local Gem_Level=floor(mod(Gem_Index,1000000)/100000)
							if Gem_Count==4 and Gem_Index==GetGemEmbededType(sceneId,selfId,Equip_Pos,k) and Gem_Index==GetGemEmbededType(sceneId,selfId,Equip_Pos,3) and k~=4 
							and (nArray=="Noi Cong" or nArray=="Ngoai Cong" or nArray=="Bang Cong" or nArray=="Hoa Cong" or nArray=="Huyen Cong" or nArray=="Doc Cong") then
								if x==1 then
									LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x900000_g_Impact_Gray[nArray]+Gem_Level-1+1000,0)
								elseif x==2 then
									LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x900000_g_Impact_Green[nArray]+Gem_Level-1+1000,0)
								elseif x==3 then
									LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x900000_g_Impact_Blue[nArray]+Gem_Level-1+1000,0)
								elseif x==4 then
									LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x900000_g_Impact_Purple[nArray]+Gem_Level-1+1000,0)
								else
									LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x900000_g_Impact_Orange[nArray]+Gem_Level-1+1000,0)
								end
								break_point=1
							else
								if nArray=="Cuong Luc" or nArray=="Noi Luc" or nArray=="The Luc" or nArray=="Tri Luc" or nArray=="Than Phap" then
									local nType
					
									if nArray=="Cuong Luc" then
										nType=0
									elseif nArray=="Noi Luc" then
										nType=1
									elseif nArray=="The Luc" then
										nType=2
									elseif nArray=="Tri Luc" then
										nType=3
									elseif nArray=="Than Phap" then
										nType=4
									end
									
									if x==1 then
										if nArray=="Than Phap" then
											LuaFnWashSomePoints(sceneId,selfId,nType,-x900000_g_ZhenYuan_ShenFa_Gray_Type[Gem_Level])
										else
											LuaFnWashSomePoints(sceneId,selfId,nType,-x900000_g_ZhenYuan_Gray_Type[Gem_Level])
										end
									elseif x==2 then
										if nArray=="Than Phap" then
											LuaFnWashSomePoints(sceneId,selfId,nType,-x900000_g_ZhenYuan_ShenFa_Green_Type[Gem_Level])
										else
											LuaFnWashSomePoints(sceneId,selfId,nType,-x900000_g_ZhenYuan_Green_Type[Gem_Level])
										end
									elseif x==3 then
										if nArray=="Than Phap" then
											LuaFnWashSomePoints(sceneId,selfId,nType,-x900000_g_ZhenYuan_ShenFa_Blue_Type[Gem_Level])
										else
											LuaFnWashSomePoints(sceneId,selfId,nType,-x900000_g_ZhenYuan_Blue_Type[Gem_Level])
										end
									elseif x==4 then
										if nArray=="Than Phap" then
											LuaFnWashSomePoints(sceneId,selfId,nType,-x900000_g_ZhenYuan_ShenFa_Purple_Type[Gem_Level])
										else
											LuaFnWashSomePoints(sceneId,selfId,nType,-x900000_g_ZhenYuan_Purple_Type[Gem_Level])
										end
									elseif x==5 then
										if nArray=="Than Phap" then
											LuaFnWashSomePoints(sceneId,selfId,nType,-x900000_g_ZhenYuan_ShenFa_Orange_Type[Gem_Level])
										else	
											LuaFnWashSomePoints(sceneId,selfId,nType,-x900000_g_ZhenYuan_Orange_Type[Gem_Level])
										end
									end
								else
									if x==1 then
										LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x900000_g_Impact_Gray[nArray]+Gem_Level-1,0)
									elseif x==2 then
										LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x900000_g_Impact_Green[nArray]+Gem_Level-1,0)
									elseif x==3 then
										LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x900000_g_Impact_Blue[nArray]+Gem_Level-1,0)
									elseif x==4 then
										LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x900000_g_Impact_Purple[nArray]+Gem_Level-1,0)
									else
										LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x900000_g_Impact_Orange[nArray]+Gem_Level-1,0)
									end
									break_point=1
								end
							end
							break
						end
					end
				end
			end
		end
	end
	--****************--
	
end