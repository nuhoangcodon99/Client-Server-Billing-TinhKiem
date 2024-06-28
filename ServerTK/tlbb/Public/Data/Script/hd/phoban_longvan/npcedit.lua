x000193_g_scriptId = 000193

x000193_g_tinh_van_thuy = 20310180--T¸nh Vân Thüy
x000193_g_xuyet_long_thach_nguyen = 20310181--Xuyªt Long ThÕch_Nguyên
x000193_g_xuyet_long_thach_bao = 20310182--Xuyªt Long ThÕch_BÕo
x000193_g_xuyet_long_thach_thuong = 20310183--Xuyªt Long ThÕch_Thß½ng


x000193_g_ChuVan_List ={
	[1] = { item = 38000152, num = 5  },		-- co dinh
	[2] = { item = 38000164, num = 10 },		-- co dinh
	[3] = { item = 38000165, num = 20 },		-- co dinh
	[4] = { item = 38000184, num = 5  },		--ko co dinh
	[5] = { item = 38000185, num = 10 },		--ko co dinh
	[6] = { item = 38000186, num = 20 },		--ko co dinh
}


x000193_g_LevelUp ={1,2,3,4,5,6,7,8,9,11,13,15,17,19,21,23,25,27,29,32,35,38,41,44,47,50,53,56,59,64,69,74,79,84,89,94,99,104,109,117,125,133,141,149,157,165,
173,181,189,202,215,228,241,254,267,280,293,306,319,340,361,382,403,424,445,466,487,508,529,563,597,631,665,699,733,767,801,835,869,924,979,1034,1089,1144,
1199,1254,1309,1364,1419,1508,1597,1686,1775,1864,1953,2042,2131,2220,2309,2308,
}
x000193_g_LWList_lv1_50={
10157002,10157102,10157103,10157104,10157105,10157106,10157107,10157108,10157109,10157110,10157111,10157112,10157113,10157114,10157115,10157116,10157117,10157118,
10157119,10157120,10157121,10157122,10157123,10157124,10157125,10157126,10157127,10157128,10157129,10157130,10157131,10157132,10157133,10157134,
10157135,10157136,10157137,10157138,10157139,10157140,10157141,10157142,10157143,10157144,10157145,10157146,10157147,10157148,10157149,10157150,
}
x000193_g_LWList_lv51_80={
{10157151,10157152,10157153,10157154,10157155,10157156,10157157,10157158,10157159,10157160,10157161,10157162,10157163,10157164,10157165,10157166,10157167,10157168,10157169,10157170,10157171,10157172,10157173,10157174,10157175,10157176,10157177,10157178,10157179,10157180,},
{10157251,10157252,10157253,10157254,10157255,10157256,10157257,10157258,10157259,10157260,10157261,10157262,10157263,10157264,10157265,10157266,10157267,10157268,10157269,10157270,10157271,10157272,10157273,10157274,10157275,10157276,10157277,10157278,10157279,10157280,},
{10157351,10157352,10157353,10157354,10157355,10157356,10157357,10157358,10157359,10157360,10157361,10157362,10157363,10157364,10157365,10157366,10157367,10157368,10157369,10157370,10157371,10157372,10157373,10157374,10157375,10157376,10157377,10157378,10157379,10157380,},
{10157451,10157452,10157453,10157454,10157455,10157456,10157457,10157458,10157459,10157460,10157461,10157462,10157463,10157464,10157465,10157466,10157467,10157468,10157469,10157470,10157471,10157472,10157473,10157474,10157475,10157476,10157477,10157478,10157479,10157480,},
}
x000193_g_LWExtraUp={}
x000193_g_LWExtraUp[3] = {10157008,10157009,10157010,10157011}
x000193_g_LWExtraUp[4] = {10157012,10157013,10157014,10157015}
x000193_g_LWExtraUp[5] = {10157016,10157017,10157018,10157019}
x000193_g_LWExtraUp[6] = {10157020,10157021,10157022,10157023}
x000193_g_LWExtraUp[7] = {10157024,10157025,10157026,10157027}
x000193_g_LWExtraUp[8] = {10157028,10157029,10157030,10157031}

x000193_m_NeedMoney   = {100000, 200000, 300000, 400000, 500000, 600000, 700000, 800000, 900000, 1000000, 1100000}
x000193_m_NeedItemNum = {1, 2, 3, 4, 5, 6, 7, 7, 7, 7, 7}

function x000193_OnDefaultEvent( sceneId, selfId,targetId )
--local rettime = io.openfile("npcedit.lua","w")
	
	BeginEvent(sceneId)
		AddText(sceneId,"Testing Long Van")
		--AddNumText(sceneId,193,"H÷c thuµc tính m· rµng mÑc HP Long Vån",6, 1)--%HP
		AddNumText(sceneId,x000193_g_scriptId,"#{LW_KVK_110704_01}",6, 4)	-- tang truong thanh
		--AddNumText(sceneId,x000193_g_scriptId,"#{LW_KVK_110704_02}",6, 6)	-- sao
		AddNumText(sceneId,x000193_g_scriptId,"#{LW_KVK_110704_03}",6, 5)	-- tay lai thuoc tinh
		AddNumText(sceneId,x000193_g_scriptId,"#{LW_KVK_110704_04}",6, 2)-- hoc tt mr
		AddNumText(sceneId,x000193_g_scriptId,"#{LW_KVK_110704_05}",6, 3)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
function  x000193_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText()==2 then
		BeginEvent(sceneId)
			AddNumText(sceneId,x000193_g_scriptId,"H÷c thuµc tính Tång gi¾i hÕn máu",6, 11)--%HP
			AddNumText(sceneId,x000193_g_scriptId,"H÷c thuµc tính Giäm kháng møc tiêu",6, 12)-- giam khang, cong kich
			AddNumText(sceneId,x000193_g_scriptId,"H÷c thuµc tính Công kích",6, 13)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText()==3 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, 1 )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20110730)
	elseif GetNumText()==4 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, 1 )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20110725)
	elseif GetNumText()==5 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, 1 )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20110727)
	elseif GetNumText()==6 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, 1 )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20110726)
	end
	if GetNumText()==11 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, 0 )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20110728)
	elseif GetNumText()==12 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, 1 )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20110729)
	elseif GetNumText()==13 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, 2 )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20110729)
	end
end
function  x000193_ActionLW( sceneId, selfId, Type, param1,param2,param3 )
	if Type ==1 then
		x000193_LevelUp( sceneId, selfId, param1,param2,param3 )
	elseif Type == 2 then
		x000193_LWReset( sceneId, selfId, param1,param2,param3 )
	elseif Type == 3 then
		x000193_LWStudy( sceneId, selfId, param1,param2,param3 )
	elseif Type == 4 then
		x000193_LWStudy2( sceneId, selfId, param1,param2,param3 )
	elseif Type == 5 then
		x000193_LWStudy3( sceneId, selfId, param1,param2,param3 )
	elseif Type == 6 then
		x000193_LWExtraUp( sceneId, selfId, param1,param2,param3 )
	end
end
function x000193_LWExtraUp( sceneId, selfId, param1,param2,param3 )
	if param1==-1 or param2 == -1 or param3 == -1 then
		x000193_NotifyTip(sceneId,selfId, "Có l²i xäy ra")
		return
	end
	local LWID = LuaFnGetItemTableIndexByIndex( sceneId, selfId, param1 )
	local EquipPoint1 = LuaFnGetBagEquipType( sceneId, selfId, param1 )
	if EquipPoint1 ~= 18 then
		x000193_NotifyTip(sceneId,selfId, "#{LW_KVK_110704_07}")
		return
	end
	if LWID <10157008 or LWID > 10157031 then
		x000193_NotifyTip(sceneId,selfId, "Long Vån c¥n c¤p ðµ thång trß·ng 80 và ðã h÷c ðü 3 loÕi thuµc tính m¾i có th¬ tång c¤p m· rµng.")
		return
	end
	if LWID >=10157028 and LWID <= 10157031 then
		x000193_NotifyTip(sceneId,selfId, "Hi®n tÕi thuµc tính m· rµng ðã ðÕt c¤p 8 t¯i ða, không th¬ tång tiªp..")
		return
	end
	if LuaFnIsItemAvailable( sceneId, selfId, param1 ) ~= 1 then
		x000193_NotifyTip(sceneId, selfId, "V§t ph¦m ðang b¸ khóa")
		return
	end	
	if GetGemEmbededCount( sceneId, selfId, param1 ) > 0 then
		x000193_NotifyTip(sceneId, selfId, "Hãy tháo gÞ t¤t cä #GBäo ThÕch trên #YLong Vån!")
		return
	end
	local needMoney = 0
	local needItemNum = 0
	local pos = 0
	local itemadd = 0
	for i,type in x000193_g_LWExtraUp do
			for j,id in type do
				if LWID == id then
					pos = j
					needMoney = 10000*(i+1)
					needItemNum = i+1
					break
				end
			end
	end
	
	if needMoney ~= param2 or needItemNum ~= param3 then
			x000193_NotifyTip(sceneId,selfId, "Có l²i xäy ra, l²i ð°ng bµ server và client")
		return
	end
	itemadd =  x000193_g_LWExtraUp[needItemNum][pos]
	if itemadd <=0 then
		x000193_NotifyTip(sceneId,selfId, "Có l²i xäy ra, không tìm th¤y v§t ph¦m thång c¤p")
		return
	end
	if needItemNum >8 then
		x000193_NotifyTip(sceneId,selfId, "Hi®n tÕi thuµc tính m· rµng ðã ðÕt c¤p 8 t¯i ða, không th¬ tång tiªp..")
		return
	end
	if (LuaFnGetAvailableItemCount( sceneId, selfId, x000193_g_xuyet_long_thach_nguyen ) < needItemNum) then
		x000193_NotifyTip( sceneId, selfId, "#{LW_KVK_110704_21}, c¥n "..needItemNum.." Xuyªt Long ThÕch_Nguyên")
		return
	end
	if (LuaFnGetAvailableItemCount( sceneId, selfId, x000193_g_xuyet_long_thach_bao ) < needItemNum) then
		x000193_NotifyTip( sceneId, selfId, "#{LW_KVK_110704_21}, c¥n "..needItemNum.." Xuyªt Long ThÕch_BÕo")
		return
	end
	if (LuaFnGetAvailableItemCount( sceneId, selfId, x000193_g_xuyet_long_thach_thuong ) < needItemNum) then
		x000193_NotifyTip( sceneId, selfId, "#{LW_KVK_110704_21}, c¥n "..needItemNum.." Xuyªt Long ThÕch_Thß½ng")
		return
	end
	local ret = LuaFnCostMoneyWithPriority( sceneId, selfId, needMoney )
	if ret < 0 then
		x000193_NotifyTip( sceneId, selfId, "Không ðü ngân lßþng." )
		return
	end
	local _, name = LuaFnGetItemCreator(sceneId, selfId, param1)
	local Dvalue = x000193_Creator2Data(name)
	LuaFnEraseItem( sceneId, selfId, param1 )
	LuaFnDelAvailableItem(sceneId,selfId, x000193_g_xuyet_long_thach_nguyen, needItemNum)
	LuaFnDelAvailableItem(sceneId,selfId, x000193_g_xuyet_long_thach_bao, needItemNum)
	LuaFnDelAvailableItem(sceneId,selfId, x000193_g_xuyet_long_thach_thuong, needItemNum)
	local bag = TryRecieveItem( sceneId, selfId, itemadd , 1 )
	if bag == -1 then
		x000193_NotifyTip( sceneId, selfId, "Có l²i xäy ra, không add ðßþc v§t ph¦m")
		return
	end
	x000193_SetLW(sceneId,selfId,Dvalue,bag)
	--hd add thong bao 19/7/2014
	
	local szTransferEquip = GetBagItemTransfer(sceneId,selfId, bag)
	local str = format("#{_INFOUSR%s} #P sau nhi«u n² lñc, cu¯i cùng cûng ðã hoàn thành nâng c¤p #{_INFOMSG%s} #P lên mµt t¥m cao m¾i khiªn ai n¤y ð«u ngßÞng mµ !", GetName(sceneId,selfId),szTransferEquip)
	BroadMsgByChatPipe(sceneId, selfId, str, 4)
	
	--end hd add
	x000193_NotifyTip( sceneId, selfId, "Thång c¤p m· rµng thành công lên c¤p "..needItemNum)
end
function x000193_LWStudy( sceneId, selfId, param1,param2,param3 )
	if param2 ~=-1 or param3 ~= -1 then
		x000193_NotifyTip(sceneId,selfId, "Có l²i xäy ra")
		return
	end
	local LWID = LuaFnGetItemTableIndexByIndex( sceneId, selfId, param1 )
	local EquipPoint1 = LuaFnGetBagEquipType( sceneId, selfId, param1 )
	if EquipPoint1 ~= 18 then
		x000193_NotifyTip(sceneId,selfId, "#{LW_KVK_110704_07}")
		return
	end
	if LWID ~= 10157130 then
			x000193_NotifyTip(sceneId,selfId, "#{LW_KVK_110704_27} ho£c mÑc trß·ng thành chßa ðü 30")
		return
	end
	if LuaFnIsItemAvailable( sceneId, selfId, param1 ) ~= 1 then
		x000193_NotifyTip(sceneId,selfId, "V§t ph¦m ðang b¸ khóa")
		return
	end
	if GetGemEmbededCount( sceneId, selfId, param1 ) > 0 then
		x000193_NotifyTip(sceneId,selfId, "Hãy tháo gÞ t¤t cä #GBäo ThÕch trên #YLong Vån!")
		return
	end
	if (LuaFnGetAvailableItemCount( sceneId, selfId, x000193_g_xuyet_long_thach_nguyen ) < 10) then
		x000193_NotifyTip( sceneId, selfId, "#{LW_KVK_110704_21}")
		return
	end
	local ret = LuaFnCostMoneyWithPriority( sceneId, selfId, 10000 )
	if ret < 0 then
		x000193_NotifyTip( sceneId, selfId, "Không ðü ngân lßþng." )
		return
	end
	local _, name = LuaFnGetItemCreator(sceneId, selfId, param1)
	local Dvalue = x000193_Creator2Data(name)
	LuaFnEraseItem( sceneId, selfId, param1 )
	LuaFnDelAvailableItem(sceneId,selfId, x000193_g_xuyet_long_thach_nguyen, 10)
	local bag = TryRecieveItem( sceneId, selfId, 10157003 , 1 )
	if bag == -1 then
		x000193_NotifyTip( sceneId, selfId, "Có l²i xäy ra")
		return
	end
	x000193_SetLW(sceneId,selfId,Dvalue,bag)
	x000193_NotifyTip( sceneId, selfId, "#{LW_KVK_110704_29}")
end
function x000193_LWStudy2( sceneId, selfId, param1,param2,param3 )
	if param2 <1 or param2 > 4 or param3 ~= -1 then
					x000193_NotifyTip(sceneId,selfId, "Có l²i xäy ra")
			return
	end
	local LWID = LuaFnGetItemTableIndexByIndex( sceneId, selfId, param1 )
	local EquipPoint1 = LuaFnGetBagEquipType( sceneId, selfId, param1 )
	if EquipPoint1 ~= 18 then
		x000193_NotifyTip(sceneId,selfId, "#{LW_KVK_110704_07}")
		return
	end
	if LWID ~= 10157150 then
		x000193_NotifyTip(sceneId,selfId, "#{LW_KVK_110704_30} ho£c mÑc trß·ng thành chßa ðü 50")
		return
	end
	if LuaFnIsItemAvailable( sceneId, selfId, param1 ) ~= 1 then
		x000193_NotifyTip(sceneId,selfId, "V§t ph¦m ðang b¸ khóa")
		return
	end
	if GetGemEmbededCount( sceneId, selfId, param1 ) > 0 then
		x000193_NotifyTip(sceneId,selfId, "Hãy tháo gÞ t¤t cä #GBäo ThÕch trên #YLong Vån!")
		return
	end
	
	if (LuaFnGetAvailableItemCount( sceneId, selfId, x000193_g_xuyet_long_thach_bao ) < 10) then
			x000193_NotifyTip( sceneId, selfId, "#{LW_KVK_110704_31}")
			return
	end
	local ret = LuaFnCostMoneyWithPriority( sceneId, selfId, 10000 )
	if ret < 0 then
		x000193_NotifyTip( sceneId, selfId, "Không ðü ngân lßþng." )
		return
	end
	local _, name = LuaFnGetItemCreator(sceneId, selfId, param1)
	local Dvalue = x000193_Creator2Data(name)
	LuaFnEraseItem( sceneId, selfId, param1 )
	LuaFnDelAvailableItem(sceneId,selfId, x000193_g_xuyet_long_thach_bao, 10)
	local itemadd = 0
	local type = ""
	if param2 == 1 then itemadd = 10157004 type = "giäm kháng Bång"
	elseif param2 == 2 then itemadd = 10157005 type = "giäm kháng Höa"
	elseif param2 == 3 then itemadd = 10157006 type = "giäm kháng Huy«n"
	elseif param2 == 4 then itemadd = 10157007 type = "giäm kháng Ðµc"
	end
	local bag = TryRecieveItem( sceneId, selfId, itemadd , 1 )
	if bag == -1 then
		x000193_NotifyTip( sceneId, selfId, "Có l²i xäy ra")
		return
	end
	x000193_SetLW(sceneId,selfId,Dvalue,bag)
	x000193_NotifyTip( sceneId, selfId, "H÷c thuµc tính m· rµng "..type.." thành công")
end
function x000193_LWStudy3( sceneId, selfId, param1,param2,param3 )
	if param2 <1 or param2 > 4 or param3 ~= -1 then
		x000193_NotifyTip(sceneId,selfId, "Có l²i xäy ra")
		return
	end
	local LWID = LuaFnGetItemTableIndexByIndex( sceneId, selfId, param1 )
	local EquipPoint1 = LuaFnGetBagEquipType( sceneId, selfId, param1 )
	if EquipPoint1 ~= 18 then
		x000193_NotifyTip(sceneId,selfId, "#{LW_KVK_110704_07}")
		return
	end
	if LWID ~= 10157180 and LWID ~= 10157280 and LWID ~= 10157380 and LWID ~= 10157480 then
		x000193_NotifyTip(sceneId,selfId, "#{LW_KVK_110704_33} ho£c mÑc trß·ng thành chßa ðü 80")
		return
	end
	if LWID == 10157180 and  param2 ~=1 then
		x000193_NotifyTip(sceneId,selfId, "Long Vån thuµc tính Bång chï có th¬ h÷c Bång công")
		return
	end
	if LWID == 10157280 and  param2 ~=2 then
		x000193_NotifyTip(sceneId,selfId, "Long Vån thuµc tính Höa chï có th¬ h÷c Höa công")
		return
	end
	if LWID == 10157380 and  param2 ~=3 then
		x000193_NotifyTip(sceneId,selfId, "Long Vån thuµc tính Huy«n chï có th¬ h÷c Huy«n công")
		return
	end
	if LWID == 10157480 and  param2 ~=4 then
		x000193_NotifyTip(sceneId,selfId, "Long Vån thuµc tính Ðµc chï có th¬ h÷c Ðµc công")
		return
	end
	if LuaFnIsItemAvailable( sceneId, selfId, param1 ) ~= 1 then
		x000193_NotifyTip(sceneId,selfId, "V§t ph¦m ðang b¸ khóa")
		return
	end
	if GetGemEmbededCount( sceneId, selfId, param1 ) > 0 then
		x000193_NotifyTip(sceneId,selfId, "Hãy tháo gÞ t¤t cä #GBäo ThÕch trên #YLong Vån!")
		return
	end
	
	if (LuaFnGetAvailableItemCount( sceneId, selfId, x000193_g_xuyet_long_thach_thuong ) < 10) then
		x000193_NotifyTip( sceneId, selfId, "#{LW_KVK_110704_34}")
		return
	end
	local ret = LuaFnCostMoneyWithPriority( sceneId, selfId, 10000 )
	if ret < 0 then
		x000193_NotifyTip( sceneId, selfId, "Không ðü ngân lßþng." )
		return
	end
	local _, name = LuaFnGetItemCreator(sceneId, selfId, param1)
	local Dvalue = x000193_Creator2Data(name)
	LuaFnEraseItem( sceneId, selfId, param1 )
	LuaFnDelAvailableItem(sceneId,selfId, x000193_g_xuyet_long_thach_thuong, 10)
	local itemadd = 0
	local type = ""
	if param2 == 1 then itemadd = 10157008 type = "Bång công"
	elseif param2 == 2 then itemadd = 10157009 type = "Höa công"
	elseif param2 == 3 then itemadd = 10157010 type = "Huy«n công"
	elseif param2 == 4 then itemadd = 10157011 type = "Ðµc công"
	end
	local bag = TryRecieveItem( sceneId, selfId, itemadd , 1 )
	if bag == -1 then
		x000193_NotifyTip( sceneId, selfId, "Có l²i xäy ra")
		return
	end
	x000193_SetLW(sceneId,selfId,Dvalue,bag)
	x000193_NotifyTip( sceneId, selfId, "H÷c thuµc tính m· rµng "..type.." thành công")
end

function x000193_LevelUp( sceneId, selfId, param1,param2,param3 )
	if param1 == param2 or param1==param3 or param2 == param3 then
		x000193_NotifyTip(sceneId,selfId, "Có l²i xäy ra, hãy m· lÕi khung giao di®n")
		return
	end
	local checkCV =0
	local LWID = LuaFnGetItemTableIndexByIndex( sceneId, selfId, param1 )
	local EquipPoint1 = LuaFnGetBagEquipType( sceneId, selfId, param1 )
	if EquipPoint1 ~= 18 then
		x000193_NotifyTip(sceneId,selfId, "Hãy ð£t ðúng Long Vån c¥n thång c¤p!!!")
		return
	end
	if (LWID==10157008 or LWID==10157009 or LWID==10157010 or LWID==10157011)then
			x000193_NotifyTip(sceneId,selfId, "Long Vån ðã ðÕt c¤p ðµ cao nh¤t, không th¬ thång c¤p. ")
			return
	end
	if (LWID==10157130 or 
		LWID==10157150 or LWID==10157250 or LWID==10157350 or LWID==10157450 or
		LWID==10157180 or LWID==10157280 or LWID==10157380 or LWID==10157480 )then
		x000193_NotifyTip(sceneId,selfId, "Long Vån ðã ðªn lúc c¥n h÷c thuµc tính m· rµng, h÷c thuµc tính m· rµng trß¾c khi thång c¤p. ")
		return
	end
	local EquipPoint2 = LuaFnGetBagEquipType( sceneId, selfId, param2 )
	if LuaFnIsItemAvailable( sceneId, selfId, param2 ) ~= 1 then
		x000193_NotifyTip(sceneId,selfId, "V§t ph¦m ðang b¸ khóa")
		return
	end
	if EquipPoint2 ~= 18 then
		x000193_NotifyTip(sceneId,selfId,"Ô nguyên li®u chï có th¬ ð£t Long Vån !!!")
		return
	end

	if GetGemEmbededCount( sceneId, selfId, param2 ) > 0 then
		x000193_NotifyTip(sceneId,selfId,"Hãy tháo gÞ t¤t cä #GBäo ThÕch trên #YLong Vån!")
		return
	end
	local diemCV = 0
	if param3 ~= -1 then
		local IDCV = LuaFnGetItemTableIndexByIndex( sceneId, selfId, param3 )
		for i=1,getn(x000193_g_ChuVan_List) do
			if IDCV==x000193_g_ChuVan_List[i].item then
				checkCV = 1
				diemCV = x000193_g_ChuVan_List[i].num
				break
			end
		end
		if IDCV ~= -1 and checkCV == 0 then
			x000193_NotifyTip(sceneId,selfId, "Ô ðÕo cø chï có th¬ ð£t Chú Vån ho£c ð¬ tr¯ng")
			return
		end
	end
	if checkCV == 1 then
		if LuaFnIsItemAvailable( sceneId, selfId, param3 ) ~= 1 then
			x000193_NotifyTip(sceneId,selfId, "V§t ph¦m ðang b¸ khóa")
			return
		end
		if LuaFnGetItemCountInBagPos(sceneId, selfId, param3) > 1 then
			x000193_NotifyTip(sceneId,selfId, "Chï ð£t vào 1 Chú Vån.")
			return
		end
	end
	
	local _, name = LuaFnGetItemCreator(sceneId, selfId, param1)
	local Dvalue = x000193_Creator2Data(name)
	
	--hongtu add fix up nham longwen 18/7/2014
	local _, subname = LuaFnGetItemCreator(sceneId, selfId, param2)
	local subvalue = x000193_Creator2Data(subname)
	if Dvalue < subvalue then
		x000193_NotifyTip(sceneId,selfId, "Long Vån dùng làm nguyên li®u có c¤p trß·ng thành l¾n h½n.")
		return
	end
	--end hongtuadd 
	local diemcong = Dvalue+1
	if checkCV == 1 then
		diemcong = Dvalue+diemCV
	end
	local nowlevel = 0
	for i=1,getn(x000193_g_LevelUp) do
		if Dvalue < x000193_g_LevelUp[i] then
			nowlevel = i-1
			break
		end
	end
	local nextlevel = 0
	for i=1,getn(x000193_g_LevelUp) do
		if diemcong < x000193_g_LevelUp[i] then
			nextlevel = i-1
			break
		end
	end
	if nowlevel ~= nextlevel then
		if nextlevel >80 then
			x000193_NotifyTip(sceneId,selfId, "Long Vån ðã ðÕt c¤p ðµ cao nh¤t, không th¬ thång c¤p. ")
			return
		end
		if LuaFnIsItemAvailable( sceneId, selfId, param1 ) ~= 1 then
			x000193_NotifyTip(sceneId,selfId, "C¥n m· khóa Long Vån trß¾c khi thång c¤p.")
			return
		end
		if GetGemEmbededCount( sceneId, selfId, param1 ) > 0 then
			x000193_NotifyTip(sceneId,selfId, "Hãy tháo gÞ t¤t cä #GBäo ThÕch trên #YLong Vån!")
		return
		end
	end

	local needMoney = x000193_m_NeedMoney[floor(nowlevel/10)+1]
	local ret = LuaFnCostMoneyWithPriority( sceneId, selfId, needMoney )
	if ret < 0 then
		x000193_NotifyTip( sceneId, selfId, "Không ðü ngân lßþng." )
		return
	end
	LuaFnEraseItem( sceneId, selfId, param2 )
	if checkCV == 1 then
		LuaFnEraseItem( sceneId, selfId, param3 )
	end
	if nowlevel == nextlevel then
		x000193_SetLW(sceneId,selfId,diemcong,param1)
	else
		LuaFnEraseItem( sceneId, selfId, param1 )
		local itemNext = 0

		if nextlevel <= 50 then
			itemNext = x000193_g_LWList_lv1_50[nextlevel]
		else
			local subitem  = (LWID-10157000) -- lay xem item thuoc tinh nao 1xx,2xx,3xx,4xx
			if (subitem <200 and subitem >100) or LWID == 10157004 then
				itemNext=x000193_g_LWList_lv51_80[1][nextlevel-50]
			elseif (subitem <300 and subitem >200)or LWID == 10157005 then
				itemNext=x000193_g_LWList_lv51_80[2][nextlevel-50]
			elseif (subitem <400 and subitem >300)or LWID == 10157006 then
				itemNext=x000193_g_LWList_lv51_80[3][nextlevel-50]
			elseif (subitem <500 and subitem >400) or LWID == 10157007 then
				itemNext=x000193_g_LWList_lv51_80[4][nextlevel-50]
			end
		end
		if itemNext == 0 then return end
		--x000193_NotifyTip( sceneId, selfId, "nextlevel: "..nextlevel )	
		--x000193_NotifyTip( sceneId, selfId, "itemNext: "..itemNext )	
		local bag = TryRecieveItem( sceneId, selfId, itemNext , 1 )
		if bag ~= -1 then
			x000193_SetLW(sceneId,selfId,diemcong,bag)
			--hd add 17/07/2014
			local	bindidx	=	LuaFnItemBind( sceneId, selfId, bag ) --co dinh vat pham
			if bindidx ~= 1 then
				x000193_NotifyTip( sceneId, selfId, "C¯ ð¸nh th¤t bÕi !" )
			end	
			--end hd add 17/07/2014
			--hd add thong bao 19/7/2014
			if nextlevel >= 70 then
				local szTransferEquip = GetBagItemTransfer(sceneId,selfId, bag)
				local str = format("#{_INFOUSR%s} #P sau nhi«u n² lñc, cu¯i cùng cûng ðã hoàn thành nâng c¤p #{_INFOMSG%s} #P lên mµt t¥m cao m¾i khiªn ai n¤y ð«u ngßÞng mµ !", GetName(sceneId,selfId),szTransferEquip)
				BroadMsgByChatPipe(sceneId, selfId, str, 4)
			end
			--end hd add
		else
			x000193_NotifyTip( sceneId, selfId, "Có l²i xäy ra")
		end
	end
	x000193_NotifyTip( sceneId, selfId, "Thång c¤p trß·ng thành Long Vån thành công "..diemCV)
	BeginUICommand( sceneId )
	UICommand_AddInt( sceneId, selfId )
	UICommand_AddInt( sceneId, 1 )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 20110725)
	
end
function x000193_LWReset( sceneId, selfId, param1,param2,param3 )
	local LWID = LuaFnGetItemTableIndexByIndex( sceneId, selfId, param1 )
	local EquipPoint1 = LuaFnGetBagEquipType( sceneId, selfId, param1 )
	if EquipPoint1 ~= 18 then
		x000193_NotifyTip(sceneId,selfId, "#{LW_KVK_110704_07}")
		return
	end
	if LuaFnIsItemAvailable( sceneId, selfId, param1 ) ~= 1 then
		x000193_NotifyTip(sceneId,selfId, "V§t ph¦m ðang b¸ khóa")
		return
	end
	local LW_ID=LuaFnGetItemTableIndexByIndex(sceneId,selfId,param1)
	local LW_Bang=	{10157008,10157012,10157016,10157020,10157024,10157028}
	local LW_Hoa=	{10157009,10157013,10157017,10157021,10157025,10157029}
	local LW_Huyen=	{10157010,10157014,10157018,10157022,10157026,10157030}
	local LW_Doc=	{10157011,10157015,10157019,10157023,10157027,10157031}
	local nPos=-1
	for i,item in LW_Bang do
		if item==LW_ID then
			nPos=i
			break
		end
	end
	for i,item in LW_Hoa do
		if item==LW_ID then
			nPos=i
			break
		end
	end
	for i,item in LW_Huyen do
		if item==LW_ID then
			nPos=i
			break
		end
	end
	for i,item in LW_Doc do
		if item==LW_ID then
			nPos=i
			break
		end
	end
	if nPos==-1 then
		x000193_NotifyTip(sceneId,selfId, "C¥n ð£t vào Long vån thuµc tính c¤p 3 tr· lên!")
		return
	end
	if (LuaFnGetAvailableItemCount( sceneId, selfId, x000193_g_tinh_van_thuy ) < param2) then
		x000193_NotifyTip( sceneId, selfId, "#{LW_KVK_110704_21}")
		return
	end
	local _, name = LuaFnGetItemCreator(sceneId, selfId, param1)
	local Dvalue = x000193_Creator2Data(name)
	local nowlevel = 0
	for i=1,getn(x000193_g_LevelUp) do
		if Dvalue < x000193_g_LevelUp[i] then
			nowlevel = i-1
			break
		end
	end
	local needMoney = x000193_m_NeedMoney[floor(nowlevel/10)+1]
	local ret = LuaFnCostMoneyWithPriority( sceneId, selfId, needMoney )
	if ret < 0 then
		x000193_NotifyTip( sceneId, selfId, "Không ðü ngân lßþng." )
		return
	end
	LuaFnDelAvailableItem(sceneId,selfId, x000193_g_tinh_van_thuy, param2)
	local x=random(4)
	if x==1 then
		x000193_ChangeEquip(sceneId,selfId,param1,LW_Bang[nPos])
	elseif x==2 then
		x000193_ChangeEquip(sceneId,selfId,param1,LW_Hoa[nPos])
	elseif x==3 then
		x000193_ChangeEquip(sceneId,selfId,param1,LW_Huyen[nPos])
	else
		x000193_ChangeEquip(sceneId,selfId,param1,LW_Doc[nPos])
	end
	x000193_NotifyTip( sceneId, selfId, "T¦y lÕi thuµc tính Long vån thành công!")
end
--ham lay gia tri thuoc tinh cua creator
function x000193_Creator2Data(str)
	str = tostring(str)
	if type(str) == "string" then
		local check = x000193_CheckCreatorLW(str)
		local len = strlen(check)
		--return 0,len,0;
		if check ~= 0 and len == 5 then
			--creator la item LW
			--local temp, ntype, npoint
			--temp =  tonumber(strsub(check,1,1))
			--ntype = tonumber(strsub(check,2,2))
			local npoint = tonumber(check)
			return npoint
		end
		--khong la creator LW
	end
	return 0;
end


function x000193_SetLW(sceneId,selfId,npoint,iPos)
	--tra ve gia tri 
	--0 : that bai
	--1 : go khac ; 
	--2 : khac trang bi ko co creator
	--3 : khac trang bi co creator, chua co LW
	--4 : khac trang bi co creator, co LW
	--go khac LW
	local _, name = LuaFnGetItemCreator(sceneId, selfId, iPos)
	npoint = x000193_strformat(npoint)
	if name == nil or name =="" then --fix stack pop khi item ko dc che tao
		
		local LWstring = "@"..npoint.."@"
		LuaFnSetItemCreator( sceneId, selfId, iPos,  LWstring)
		return 2
	elseif name ~= nil then --item dc che tao
		local check = x000193_CheckCreatorLW(name)
		
		if check == 0 then --chua co LW
			local LWstring = "@"..npoint.."@"..name
			LuaFnSetItemCreator( sceneId, selfId, iPos,  LWstring)
			return 3
		elseif check ~= 0 then --da LW
			local author = x000193_Creator2Author(name)
			local LWstring = "@"..npoint.."@"..author
			LuaFnSetItemCreator( sceneId, selfId, iPos,  LWstring)
			return 4
		end
	end
	return 0
end
--ham kiem tra Creator co phai la creator LW hay khong
function x000193_CheckCreatorLW(str)
	if type(str) == "string" then
		local creatorformat = "@%d%d%d%d%d@"; --@xxxxx@
		
		local i,j = strfind(str,creatorformat)
		if i ~= nil then --tìm th¤y string
			local dw = strsub(str,i+1,j-1) --ket qua gia tri xxxxx
				
			if strlen(dw) ==5 then --ki¬m tra ðµ dài chu²i =5 thì hþp l®
				--chèn các ki¬m tra khác nªu có
				return dw
			end
		end
	end
	--khong la creator LW
	return 0;
end
--add khuon dang cho point 1 -> 001
function x000193_strformat(npoint)
	npoint = tostring(npoint);
	local len = strlen(npoint)
	if len ==1 then
		npoint = "0000"..npoint;
	elseif len ==2 then
		npoint = "000"..npoint;
	elseif len == 3 then
		npoint = "00"..npoint;
	elseif len == 4 then
		npoint = "0"..npoint;
	end
	return npoint;
end
--tra ve gia tri nguoi tao vu khi tu creator LW
function x000193_Creator2Author(str)
	if type(str) == "string" then
		local check = x000193_CheckCreatorLW(str);
		--local len = strlen(check);
		if check ~= 0 then
			--creator la item LW
			local szAuthor = strsub(str,8);
			return szAuthor;
		end
	end
	return str;
end
function x000193_NotifyTip( sceneId, selfId, Msg )
	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
--Soi add change equip
function x000193_ChangeEquip(sceneId,selfId,Equip_Old_Pos,Equip_New_Index)

	--****************--
	local First_Material_Index=LuaFnGetItemTableIndexByIndex(sceneId,selfId,30)
	local Material_Binded=LuaFnGetItemBindStatus(sceneId,selfId,30)
	local Material_Count=LuaFnGetItemCountInBagPos(sceneId,selfId,30)
	LuaFnEraseItem(sceneId,selfId,30)
	--****************--
	local Equip_Old_Index=LuaFnGetItemTableIndexByIndex(sceneId,selfId,Equip_Old_Pos)
	local _,Author=LuaFnGetItemCreator(sceneId,selfId,Equip_Old_Pos)
	local nStiletto=GetBagGemCount(sceneId,selfId,Equip_Old_Pos)
	local Gem_ID={}
	Gem_ID[1]=GetGemEmbededType(sceneId,selfId,Equip_Old_Pos,0)
	Gem_ID[2]=GetGemEmbededType(sceneId,selfId,Equip_Old_Pos,1)
	Gem_ID[3]=GetGemEmbededType(sceneId,selfId,Equip_Old_Pos,2)
	Gem_ID[4]=GetGemEmbededType(sceneId,selfId,Equip_Old_Pos,3)
	local Is_Bind=LuaFnGetItemBindStatus(sceneId,selfId,Equip_Old_Pos)
	--****************--
	LuaFnEraseItem(sceneId,selfId,Equip_Old_Pos)
	--****************--
	local Equip_New_Pos=TryRecieveItem(sceneId,selfId,Equip_New_Index,1)
	--****************--
	LuaFnSetItemCreator(sceneId,selfId,Equip_New_Pos,Author)
	--****************--
	for i=0,nStiletto-1 do
		AddBagItemSlotFour(sceneId,selfId,Equip_New_Pos)
		if Gem_ID[i+1]>50000000 then
			TryRecieveItem(sceneId,selfId,Gem_ID[i+1],1)
			GemEnchasing(sceneId,selfId,30,Equip_New_Pos)
		end
	end
	--****************--
	if Is_Bind==1 then
		LuaFnItemBind(sceneId,selfId,Equip_New_Pos)
	end
	--****************--
	if First_Material_Index~=0 then
		for i=1,Material_Count do
			TryRecieveItem(sceneId,selfId,First_Material_Index,1)
		end
		if Material_Binded==1 then
			LuaFnItemBind(sceneId,selfId,30)
		end
	end
	--****************--

end
--end
