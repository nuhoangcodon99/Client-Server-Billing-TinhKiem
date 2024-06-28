
x000169_g_ScriptId = 000169

LevelPrice = {
		{tv = 100, lhtp = 10, hbc = 20310118},
		{tv = 200, lhtp = 20, hbc = 20310119},
		{tv = 300, lhtp = 30, hbc = 20310120},
		{tv = 800, lhtp = 80, hbc = 20310121} --cap 4->5
		}
ItemOld = {10155007,10155008,10155009,10155010}
ItemList = {
		{
			{10433301, 10433302, 10433303, 10433304, 10433305},
			{10433306, 10433307, 10433308, 10433309, 10433310},
			{10433311, 10433312, 10433313, 10433314, 10433315},
			{10433316, 10433317, 10433318, 10433319, 10433320},
			{10433321, 10433322, 10433323, 10433324, 10433325},
			{10433326, 10433327, 10433328, 10433329, 10433330},
			{10433331, 10433332, 10433333, 10433334, 10433335},
			{10433336, 10433337, 10433338, 10433339, 10433340},
			{10433341, 10433342, 10433343, 10433344, 10433345},
			{10433346, 10433347, 10433348, 10433349, 10433350},
			{10433351, 10433352, 10433353, 10433354, 10433355},
			{10433356, 10433357, 10433358, 10433359, 10433360},
			{10433361, 10433362, 10433363, 10433364, 10433365},
			{10433366, 10433367, 10433368, 10433369, 10433370},
			{10433371, 10433372, 10433373, 10433374, 10433375},
			{10433376, 10433377, 10433378, 10433379, 10433380},
		},
		{
			{10434301, 10434302, 10434303, 10434304, 10434305},
			{10434306, 10434307, 10434308, 10434309, 10434310},
			{10434311, 10434312, 10434313, 10434314, 10434315},
			{10434316, 10434317, 10434318, 10434319, 10434320},
			{10434321, 10434322, 10434323, 10434324, 10434325},
			{10434326, 10434327, 10434328, 10434329, 10434330},
			{10434331, 10434332, 10434333, 10434334, 10434335},
			{10434336, 10434337, 10434338, 10434339, 10434340},
			{10434341, 10434342, 10434343, 10434344, 10434345},
			{10434346, 10434347, 10434348, 10434349, 10434350},
			{10434351, 10434352, 10434353, 10434354, 10434355},
			{10434356, 10434357, 10434358, 10434359, 10434360},
			{10434361, 10434362, 10434363, 10434364, 10434365},
			{10434366, 10434367, 10434368, 10434369, 10434370},
			{10434371, 10434372, 10434373, 10434374, 10434375},
			{10434376, 10434377, 10434378, 10434379, 10434380},
		},
		{
			{10435301, 10435302, 10435303, 10435304, 10435305},
			{10435306, 10435307, 10435308, 10435309, 10435310},
			{10435311, 10435312, 10435313, 10435314, 10435315},
			{10435316, 10435317, 10435318, 10435319, 10435320},
			{10435321, 10435322, 10435323, 10435324, 10435325},
			{10435326, 10435327, 10435328, 10435329, 10435330},
			{10435331, 10435332, 10435333, 10435334, 10435335},
			{10435336, 10435337, 10435338, 10435339, 10435340},
			{10435341, 10435342, 10435343, 10435344, 10435345},
			{10435346, 10435347, 10435348, 10435349, 10435350},
			{10435351, 10435352, 10435353, 10435354, 10435355},
			{10435356, 10435357, 10435358, 10435359, 10435360},
			{10435361, 10435362, 10435363, 10435364, 10435365},
			{10435366, 10435367, 10435368, 10435369, 10435370},
			{10435371, 10435372, 10435373, 10435374, 10435375},
			{10435376, 10435377, 10435378, 10435379, 10435380},
		},
		{
			{10440901, 10440902, 10440903, 10440904, 10440905},
			{10440906, 10440907, 10440908, 10440909, 10440910},
			{10440911, 10440912, 10440913, 10440914, 10440915},
			{10440916, 10440917, 10440918, 10440919, 10440920},
			{10440921, 10440922, 10440923, 10440924, 10440925},
			{10440926, 10440927, 10440928, 10440929, 10440930},
			{10440931, 10440932, 10440933, 10440934, 10440935},
			{10440936, 10440937, 10440938, 10440939, 10440940},
			{10440941, 10440942, 10440943, 10440944, 10440945},
			{10440946, 10440947, 10440948, 10440949, 10440950},
			{10440951, 10440952, 10440953, 10440954, 10440955},
			{10440956, 10440957, 10440958, 10440959, 10440960},
			{10440961, 10440962, 10440963, 10440964, 10440965},
			{10440966, 10440967, 10440968, 10440969, 10440970},
			{10440971, 10440972, 10440973, 10440974, 10440975},
			{10440976, 10440977, 10440978, 10440979, 10440980},
		},

}
function x000169_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{WH_090729_03}")
		AddNumText( sceneId, x000169_g_ScriptId, "–±i #GLinh H∞n To·i Phi™n",6 ,30  )
		AddNumText( sceneId, x000169_g_ScriptId, "Cßp nhßt thuµc tÌnh vı h∞n",6 ,1  )
		AddNumText( sceneId, x000169_g_ScriptId, "L‡m mæi t÷ lÆ trﬂ∑ng th‡nh",6 ,2  )
		AddNumText( sceneId, x000169_g_ScriptId, "ThÂng c§p h˛p th‡nh Vı H∞n",6 ,1000  )
		AddNumText( sceneId, x000169_g_ScriptId, "T¶y k€ nÂng Vı H∞n",6 ,2000  )
		AddNumText( sceneId, x000169_g_ScriptId, "LÓnh ngµ k€ nÂng Vı H∞n",6 ,3000  )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end


function x000169_OnEventRequest( sceneId, selfId, targetId, eventId )
	local key = GetNumText()

	if key==1 then
		local Item_Index=LuaFnGetItemTableIndexByIndex(sceneId,selfId,0)
		if Item_Index<1 then
			BeginEvent(sceneId)
				AddText(sceneId,"H„y £t vı h∞n v‡o v∏ trÌ •u tiÍn trong tay n‰i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		local Item_Name=GetItemName(sceneId,Item_Index)
		if strfind(Item_Name,"BÂng Phong Chi H∞n") or strfind(Item_Name,"ThiÍn Hˆa Chi H∞n") or strfind(Item_Name,"Cu∞ng LÙi Chi H∞n") or strfind(Item_Name,"K∏ch –µc Chi H∞n") then
			local _,str=LuaFnGetItemCreator(sceneId,selfId,0)
			if str~=nil then
				BeginEvent(sceneId)
					AddText(sceneId,"Vı h∞n n‡y „ cßp nhßt thuµc tÌnh r∞i!")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
				return
			end
			LuaFnSetItemCreator(sceneId,selfId,0,"+0600001000000000100100100100100100100100100100+")
			BeginEvent(sceneId)
				AddText(sceneId,"Cßp nhßt thuµc tÌnh vı h∞n th‡nh cÙng!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			BeginEvent(sceneId)
				AddText(sceneId,"H„y £t vı h∞n v‡o v∏ trÌ •u tiÍn trong tay n‰i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	end
	
	if key==30 then
		BeginEvent(sceneId)
			AddText(sceneId,"–±i #GLinh H∞n To·i Phi™n#W c•n tiÍu tØn #GKinh nghiÆm#W v‡ #GTi´n v‡ng#W tﬂΩng —ng:")
			AddText(sceneId,"–±i #GLinh H∞n To·i Phi™n - Tranh#W: #Y5000000 #GExp#W v‡ #Y50 #-02")
			AddText(sceneId,"–±i #GLinh H∞n To·i Phi™n - H∞ng#W: #Y10000000 #GExp#W v‡ #Y100 #-02")
			AddText(sceneId,"–±i #GLinh H∞n To·i Phi™n - Ho‡ng#W: #Y15000000 #GExp#W v‡ #Y150 #-02")
			AddText(sceneId,"–±i #GLinh H∞n To·i Phi™n - Lam#W: #Y30000000 #GExp#W v‡ #Y300 #-02")
			AddText(sceneId,"–±i #GLinh H∞n To·i Phi™n - L¯c#W: #Y50000000 #GExp#W v‡ #Y500 #-02")
			AddNumText( sceneId, x000169_g_ScriptId, "–±i #GLinh H∞n To·i Phi™n - Tranh",6 ,10  )
			AddNumText( sceneId, x000169_g_ScriptId, "–±i #GLinh H∞n To·i Phi™n - H∞ng",6 ,11  )
			AddNumText( sceneId, x000169_g_ScriptId, "–±i #GLinh H∞n To·i Phi™n - Ho‡ng",6 ,12  )
			AddNumText( sceneId, x000169_g_ScriptId, "–±i #GLinh H∞n To·i Phi™n - Lam",6 ,13  )
			AddNumText( sceneId, x000169_g_ScriptId, "–±i #GLinh H∞n To·i Phi™n - L¯c",6 ,14  )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if key==2 then
		local Item_Name=GetItemName(sceneId,LuaFnGetItemTableIndexByIndex(sceneId,selfId,0))
		if strfind(Item_Name,"BÂng Phong Chi H∞n") or strfind(Item_Name,"ThiÍn Hˆa Chi H∞n") or strfind(Item_Name,"Cu∞ng LÙi Chi H∞n") or strfind(Item_Name,"K∏ch –µc Chi H∞n") then
			local _,str=LuaFnGetItemCreator(sceneId,selfId,0)
			if str==nil then
				BeginEvent(sceneId)
					AddText(sceneId,"Vı h∞n n‡y c•n cßp nhßt thuµc tÌnh trﬂæc!")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
				return
			elseif LuaFnDelAvailableItem(sceneId,selfId,30010089,1)<1 then
				BeginEvent(sceneId)
					AddText(sceneId,"C·c h’ c•n cÛ vßt ph¶m "..GetItemName(sceneId,30010089).." l‡m nguyÍn liÆu thÂng c§p!")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
				return
			end
			local x=600+random(500)-random(300)-random(200)
			if x<600 then
				x=600
			end
			while strlen(x)<4 do
				x="0"..x
			end
			local str1="+"..x..strsub(str,6,15)
			local Current_Level=tonumber(strsub(str,6,8))
			local GrowPoint=x
			
			local nGrowPoint=floor(tonumber(GrowPoint)/100)-5
			if nGrowPoint<0 then
				nGrowPoint=0
			end
			
			local Liliang,Liliang_Base,Lingqi,Lingqi_Base,Tili,Tili_Base,Dingli,Dingli_Base,Shenfa,Shenfa_Base=1,1,1,1,1,1,1,1,1,1
			
			for i=1,Current_Level do
				Liliang=Liliang+random(nGrowPoint)+1
				Liliang_Base=Liliang_Base+random(nGrowPoint)+1
				Lingqi=Lingqi+random(nGrowPoint)+1
				Lingqi_Base=Lingqi_Base+random(nGrowPoint)+1
				Tili=Tili+random(nGrowPoint)+1
				Tili_Base=Tili_Base+random(nGrowPoint)+1
				Dingli=Dingli+random(nGrowPoint)+1
				Dingli_Base=Dingli_Base+random(nGrowPoint)+1
				Shenfa=Shenfa+random(nGrowPoint)+1
				Shenfa_Base=Shenfa_Base+random(nGrowPoint)+1
			end
			
			while strlen(Liliang)<3 do
				Liliang="0"..Liliang
			end
			while strlen(Liliang_Base)<3 do
				Liliang_Base="0"..Liliang_Base
			end
			while strlen(Lingqi)<3 do
				Lingqi="0"..Lingqi
			end
			while strlen(Lingqi_Base)<3 do
				Lingqi_Base="0"..Lingqi_Base
			end
			while strlen(Tili)<3 do
				Tili="0"..Tili
			end
			while strlen(Tili_Base)<3 do
				Tili_Base="0"..Tili_Base
			end
			while strlen(Dingli)<3 do
				Dingli="0"..Dingli
			end
			while strlen(Dingli_Base)<3 do
				Dingli_Base="0"..Dingli_Base
			end
			while strlen(Shenfa)<3 do
				Shenfa="0"..Shenfa
			end
			while strlen(Shenfa_Base)<3 do
				Shenfa_Base="0"..Shenfa_Base
			end
			
			local str1=str1..Liliang..Liliang_Base..Lingqi..Lingqi_Base..Tili..Tili_Base..Dingli..Dingli_Base..Shenfa..Shenfa_Base.."+"
			
			LuaFnSetItemCreator(sceneId,selfId,0,str1)
			BeginEvent(sceneId)
				AddText(sceneId,"L‡m mæi t÷ lÆ trﬂ∑ng th‡nh th‡nh cÙng!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			BeginEvent(sceneId)
				AddText(sceneId,"H„y £t vı h∞n v‡o v∏ trÌ •u tiÍn trong tay n‰i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	end
	
	if key==10 then
		if LuaFnGetPropertyBagSpace(sceneId,selfId)<1 then
			x000169_NotifyTip( sceneId, selfId, "C·c h’ c•n s°p x™p l’i mµt Ù trØng trong Ù –’o c¯!" )
			return
		elseif GetExp(sceneId,selfId)<5000000 then
			x000169_NotifyTip( sceneId, selfId, "Kinh nghiÆm c¸a c·c h’ khÙng ¸!" )
			return
		elseif CostMoney(sceneId,selfId,500000)<1 then
			x000169_NotifyTip( sceneId, selfId, "C·c h’ khÙng cÛ ¸ ng‚n lﬂ˛ng!" )
			return
		end
		AddExp(sceneId,selfId,-5000000)
		TryRecieveItem(sceneId,selfId,30010084,1)
		x000169_NotifyTip( sceneId, selfId, "Ho·n ±i th‡nh cÙng!" )
	elseif key==11 then
		if LuaFnGetPropertyBagSpace(sceneId,selfId)<1 then
			x000169_NotifyTip( sceneId, selfId, "C·c h’ c•n s°p x™p l’i mµt Ù trØng trong Ù –’o c¯!" )
			return
		elseif GetExp(sceneId,selfId)<10000000 then
			x000169_NotifyTip( sceneId, selfId, "Kinh nghiÆm c¸a c·c h’ khÙng ¸!" )
			return
		elseif CostMoney(sceneId,selfId,1000000)<1 then
			x000169_NotifyTip( sceneId, selfId, "C·c h’ khÙng cÛ ¸ ng‚n lﬂ˛ng!" )
			return
		end
		AddExp(sceneId,selfId,-10000000)
		TryRecieveItem(sceneId,selfId,30010085,1)
		x000169_NotifyTip( sceneId, selfId, "Ho·n ±i th‡nh cÙng!" )
	elseif key==12 then
		if LuaFnGetPropertyBagSpace(sceneId,selfId)<1 then
			x000169_NotifyTip( sceneId, selfId, "C·c h’ c•n s°p x™p l’i mµt Ù trØng trong Ù –’o c¯!" )
			return
		elseif GetExp(sceneId,selfId)<15000000 then
			x000169_NotifyTip( sceneId, selfId, "Kinh nghiÆm c¸a c·c h’ khÙng ¸!" )
			return
		elseif CostMoney(sceneId,selfId,1500000)<1 then
			x000169_NotifyTip( sceneId, selfId, "C·c h’ khÙng cÛ ¸ ng‚n lﬂ˛ng!" )
			return
		end
		AddExp(sceneId,selfId,-15000000)
		TryRecieveItem(sceneId,selfId,30010086,1)
		x000169_NotifyTip( sceneId, selfId, "Ho·n ±i th‡nh cÙng!" )
	elseif key==13 then
		if LuaFnGetPropertyBagSpace(sceneId,selfId)<1 then
			x000169_NotifyTip( sceneId, selfId, "C·c h’ c•n s°p x™p l’i mµt Ù trØng trong Ù –’o c¯!" )
			return
		elseif GetExp(sceneId,selfId)<30000000 then
			x000169_NotifyTip( sceneId, selfId, "Kinh nghiÆm c¸a c·c h’ khÙng ¸!" )
			return
		elseif CostMoney(sceneId,selfId,3000000)<1 then
			x000169_NotifyTip( sceneId, selfId, "C·c h’ khÙng cÛ ¸ ng‚n lﬂ˛ng!" )
			return
		end
		AddExp(sceneId,selfId,-30000000)
		TryRecieveItem(sceneId,selfId,30010087,1)
		x000169_NotifyTip( sceneId, selfId, "Ho·n ±i th‡nh cÙng!" )
	elseif key==14 then
		if LuaFnGetPropertyBagSpace(sceneId,selfId)<1 then
			x000169_NotifyTip( sceneId, selfId, "C·c h’ c•n s°p x™p l’i mµt Ù trØng trong Ù –’o c¯!" )
			return
		elseif GetExp(sceneId,selfId)<50000000 then
			x000169_NotifyTip( sceneId, selfId, "Kinh nghiÆm c¸a c·c h’ khÙng ¸!" )
			return
		elseif CostMoney(sceneId,selfId,5000000)<1 then
			x000169_NotifyTip( sceneId, selfId, "C·c h’ khÙng cÛ ¸ ng‚n lﬂ˛ng!" )
			return
		end
		AddExp(sceneId,selfId,-50000000)
		TryRecieveItem(sceneId,selfId,30010088,1)
		x000169_NotifyTip( sceneId, selfId, "Ho·n ±i th‡nh cÙng!" )
	end
	
	if key == 1000 then
		BeginEvent(sceneId)
		AddText(sceneId,"#YVı H∞n #W sau khi thÂng c§p, c·c thuµc tÌnh v‡ c§p µ c¸a c·c k€ nÂng c˚ng s® tÂng theo. Do vßy, b¢ng hÊu c•n cÛ sØ lﬂ˛ng Linh H∞n To·i Phi™n v‡ H∞n BÂng Ch‚u tﬂΩng —ng")
			AddNumText( sceneId, x000169_g_ScriptId, "ThÂng c§p Vı H∞n", 6 , 1001 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if key == 2000 then
--		BeginEvent(sceneId)
--		AddText(sceneId,"#{WH_xml_XX(40)}")
--			AddNumText( sceneId, x000169_g_ScriptId, "T¶y k€ nÂng Vı H∞n", 6 , 2001 )
--		EndEvent(sceneId)
--		DispatchEventList(sceneId,selfId,targetId)
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			UICommand_AddInt( sceneId, 2 )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20090722 )
	end
	if key == 3000 then
		--x000169_LearnSkill(sceneId,selfId, targetId)
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			UICommand_AddInt( sceneId, 1 )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20090722 )
	end
	if key == 4000 then
		BeginEvent(sceneId)
			AddText(sceneId," N™u #YVı H∞n #W c¸a c·c h’ khÙng th¨ ¯c l≤, h„y l‡m mæi l’i ¨ cÛ th¨ ti™n h‡nh ¯c l≤. \n#cFF0000Lﬂu ˝:L‡m mæi s® khÙng thay ±i v´ ∆ng c§p Vı H∞n, chÔ cÛ th¨ ¯c l≤ Vı H∞n trÍn website #Bhttp://tieungaogiangho.us")
			AddText(sceneId,"H„y c§t #YVı H∞n #Wc¸a mÏnh v‡o #GÙ ’o c¯ •u tiÍn c¸a Tay n‰i")
			AddNumText( sceneId, x000169_g_ScriptId, "X·c nhßn l‡m mæi Vı H∞n", 6 , 4001 )
			AddNumText( sceneId, x000169_g_ScriptId, "Oh! –¨ ta xem xÈt l’i „.", 8, 0 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if key == 1001 then
		x000169_UpVoHon(sceneId,selfId, targetId)
	end
	if key == 2001 then
		--x000169_TaySkill(sceneId,selfId, targetId)
	end
	if key == 4001 then
		x000169_RefreshVoHon(sceneId,selfId, targetId)
	end
	if key == 0 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
		return
	end
end
function x000169_UpVoHon(sceneId,selfId, targetId)
		local IDVH = LuaFnGetItemTableIndexByIndex( sceneId, selfId, 0 )
		local _,str=LuaFnGetItemCreator(sceneId,selfId,0)
		local ItemClass = 0
		local ItemSkill = 0
		local ItemLevel = 0
		if IDVH == 10155006 or IDVH == 10155007 or IDVH == 10155008 or IDVH == 10155009 then
			x000169_AddText(sceneId,selfId,targetId, "H„y ti™n h‡nh lÓnh ngµ k€ nÂng cho #YVı H∞n #W sau Û mæi cÛ th¨ thÂng c§p! ")
			return
		end
		for i = 1, getn(ItemList) do
			local Class = ItemList[i]
			for j = 1,getn(Class) do
				local Skill = Class[j]
				for k = 1,getn(Skill) do
					if  IDVH == Skill[k] then
						ItemClass = i
						ItemSkill = j
						ItemLevel = k
						break
					end
				end
			end
		end
		if ItemLevel == 0 then
			x000169_AddText(sceneId,selfId,targetId, "H„y £t #YVı H∞n #Wc¸a c·c h’ v‡o #GÙ ’o c¯ •u tiÍn c¸a Tay n‰i!")
			return
		end
		if ItemLevel >= 5 then
			x000169_AddText(sceneId,selfId,targetId, "#YVı H∞n #Wc¸a c·c h’ „ ’t c§p cao nh§t, khÙng th¨ thÂng c§p thÍm. ")
			return
		end
		if GetGemEmbededCount( sceneId, selfId, 0 ) > 0 then
			x000169_AddText(sceneId,selfId,targetId, "H„y th·o gﬁ t§t c‰ #GB‰o Th’ch trÍn #YVı H∞n!")
			return
		end
		if (LuaFnGetAvailableItemCount( sceneId, selfId, 30505197 ) < LevelPrice[ItemLevel].tv) then
			x000169_AddText( sceneId, selfId, targetId, "C·c h’ khÙng cÛ #Y"..LevelPrice[ItemLevel].tv.." #YThˆi V‡ng#W, ho£c cÛ vßt ph¶m b∏ khÛa! ")
			return
		end
		if (LuaFnGetAvailableItemCount( sceneId, selfId, 30505198 ) < LevelPrice[ItemLevel].lhtp) then
			x000169_AddText( sceneId, selfId, targetId, "C·c h’ khÙng cÛ #Y"..LevelPrice[ItemLevel].lhtp.." #GLinh H∞n To·i Phi™n –’i#W, ho£c cÛ vßt ph¶m b∏ khÛa! ")
			return
		end
		if LuaFnGetAvailableItemCount( sceneId, selfId, LevelPrice[ItemLevel].hbc ) < 1 then
			x000169_AddText( sceneId, selfId, targetId,"C·c h’ khÙng cÛ #Y"..GetItemName( sceneId, LevelPrice[ItemLevel].hbc).." #W, ho£c cÛ vßt ph¶m b∏ khÛa! ")
			return
		end

		local bDelOk = LuaFnDelAvailableItem(sceneId,selfId,IDVH,1)
		if bDelOk < 1  then
			x000169_AddText(sceneId,selfId,targetId, "CÛ l≤i x‰y ra! H„y ki¨m tra vßt ph¶m b∏ khÛa!")
			return
		end
		local ClassItem = ItemList[ItemClass]
		local SkillItem = ClassItem[ItemSkill]
		LuaFnDelAvailableItem(sceneId,selfId, 30505197, LevelPrice[ItemLevel].tv )
		LuaFnDelAvailableItem(sceneId,selfId, 30505198, LevelPrice[ItemLevel].lhtp )
		LuaFnDelAvailableItem(sceneId,selfId, LevelPrice[ItemLevel].hbc, 1 )
		TryRecieveItem( sceneId, selfId, SkillItem[ItemLevel+1], 1 )
		if str~=nil then
			LuaFnSetItemCreator(sceneId,selfId,0,str)
		end
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
		x000169_AddText( sceneId, selfId, targetId, "ThÂng c§p Vı H∞n th‡nh cÙng." )
end
function x000169_TaySkill(sceneId,selfId, targetId)
		local IDVH = LuaFnGetItemTableIndexByIndex( sceneId, selfId, 0 )
		local _,str=LuaFnGetItemCreator(sceneId,selfId,0)
		local ItemClass = 0
		local ItemSkill = 0
		local ItemLevel = 0
		if IDVH == 10155006 or IDVH == 10155007 or IDVH == 10155008 or IDVH == 10155009 then
			x000169_AddText(sceneId,selfId,targetId, "H„y ti™n h‡nh lÓnh ngµ k€ nÂng cho #YVı H∞n #W! ")
			return
		end
		for i = 1, getn(ItemList) do
			local Class = ItemList[i]
			for j = 1,getn(Class) do
				local Skill = Class[j]
				for k = 1,getn(Skill) do
					if  IDVH == Skill[k] then
						ItemClass = i
						ItemSkill = j
						ItemLevel = k
						break
					end
				end
			end
		end
		if ItemLevel == 0 then
			x000169_AddText(sceneId,selfId,targetId, "H„y £t #YVı H∞n #Wc¸a c·c h’ v‡o #GÙ ’o c¯ •u tiÍn c¸a Tay n‰i!")
			return
		end
		if GetGemEmbededCount( sceneId, selfId, 0 ) > 0 then
			x000169_AddText(sceneId,selfId,targetId, "H„y th·o gﬁ t§t c‰ #GB‰o Th’ch trÍn #YVı H∞n!")
			return
		end
		if (LuaFnGetAvailableItemCount( sceneId, selfId, 30700213 ) < 1) then
			x000169_AddText( sceneId, selfId, targetId, "C·c h’ khÙng cÛ #G∫c H∞n Th’ch#W, ho£c cÛ vßt ph¶m b∏ khÛa! ")
			return
		end
		local bDelOk = LuaFnDelAvailableItem(sceneId,selfId,IDVH,1)
		if bDelOk < 1  then
			x000169_AddText(sceneId,selfId,targetId, "CÛ l≤i x‰y ra! H„y ki¨m tra vßt ph¶m b∏ khÛa!")
			return
		end
		local ClassItem = ItemList[ItemClass]
		local SkillItem = ClassItem[random(1,16)]
		LuaFnDelAvailableItem(sceneId,selfId, 30700213, 1)
		TryRecieveItem( sceneId, selfId, SkillItem[ItemLevel], 1 )
		if str~=nil then
			LuaFnSetItemCreator(sceneId,selfId,0,str)
		end
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
		x000169_AddText( sceneId, selfId, targetId, "T¶y k€ nÂng Vı H∞n th‡nh cÙng." )
end
function x000169_LearnSkill(sceneId,selfId, targetId)
		local IDVH = LuaFnGetItemTableIndexByIndex( sceneId, selfId, 0 )
		local _,str=LuaFnGetItemCreator(sceneId,selfId,0)
		local ItemClass = 0
		local ItemSkill = 0
		local ItemLevel = 0
		for i=1,getn(ItemOld) do
			if IDVH == ItemOld[i] then
				ItemClass = i
				break
			end
		end
		if ItemClass == 0 then
			x000169_AddText(sceneId,selfId,targetId, "H„y £t #YVı H∞n #W chﬂa lÓnh ngµ k€ nÂng v‡o Ù •u tiÍn trong Tai n‰i! ")
			return
		end

		if GetGemEmbededCount( sceneId, selfId, 0 ) > 0 then
			x000169_AddText(sceneId,selfId,targetId, "H„y th·o gﬁ t§t c‰ #GB‰o Th’ch trÍn #YVı H∞n!")
			return
		end
		if GetMoney(sceneId, selfId) < 100000 then
			x000169_AddText(sceneId,selfId,targetId, "C·c h’ khÙng cÛ ¸ 10 V‡ng trong ngﬂ∂i!")
			return
		end
		local bDelOk = LuaFnDelAvailableItem(sceneId,selfId,IDVH,1)
		if bDelOk < 1  then
			x000169_AddText(sceneId,selfId,targetId, "CÛ l≤i x‰y ra! H„y ki¨m tra vßt ph¶m b∏ khÛa!")
			return
		end
		local layvang = CostMoney(sceneId,selfId,100000)
		if layvang == -1 then
			x000169_AddText(sceneId,selfId,targetId, "C·c h’ khÙng cÛ ¸ 10 V‡ng trong ngﬂ∂i!")
			return
		end
		local ClassItem = ItemList[ItemClass]
		local SkillItem = ClassItem[random(1,16)]
		TryRecieveItem( sceneId, selfId, SkillItem[1], 1 )
		if str~=nil then
			LuaFnSetItemCreator(sceneId,selfId,0,str)
		end
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
		x000169_AddText( sceneId, selfId, targetId, "LÓnh ngµ k€ nÂng Vı H∞n th‡nh cÙng." )
end
function x000169_RefreshVoHon(sceneId,selfId, targetId)
		local _,str=LuaFnGetItemCreator(sceneId,selfId,0)
		if LuaFnGetBagEquipType( sceneId, selfId, 0 ) ~= 10 then
			x000169_AddText(sceneId,selfId,targetId, "H„y £t #YVı H∞n #Wc¸a c·c h’ v‡o #GÙ ’o c¯ •u tiÍn c¸a Tay n‰i!")
			return
		end
		if GetGemEmbededCount( sceneId, selfId, 0 ) > 0 then
			x000169_AddText(sceneId,selfId,targetId, "H„y th·o gﬁ t§t c‰ #GB‰o Th’ch trÍn #YVı H∞n!")
			return
		end
		local IDVH = LuaFnGetItemTableIndexByIndex( sceneId, selfId, 0 )
		local bDelOk = LuaFnDelAvailableItem(sceneId,selfId,IDVH,1)
		if bDelOk < 1  then
			x000169_AddText(sceneId,selfId,targetId, "CÛ l≤i x‰y ra! H„y ki¨m tra vßt ph¶m b∏ khÛa!")
			return
		end
		TryRecieveItem( sceneId, selfId, IDVH, 1 )
		if str~=nil then
			LuaFnSetItemCreator(sceneId,selfId,0,str)
		end
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
		x000169_AddText( sceneId, selfId, targetId, "L‡m mæi Vı H∞n th‡nh cÙng." )
end
function x000169_WuhunSkillStudy(sceneId, selfId, idBagPos)
	if idBagPos == -1 then
		return
	end
		local IDVH = LuaFnGetItemTableIndexByIndex( sceneId, selfId, idBagPos )
		local _,str=LuaFnGetItemCreator(sceneId,selfId,idBagPos)
		local ItemClass = 0
		local ItemSkill = 0
		local ItemLevel = 0
		for i=1,getn(ItemOld) do
			if IDVH == ItemOld[i] then
				ItemClass = i
				break
			end
		end
		if ItemClass == 0 then
			x000169_NotifyTip(sceneId,selfId, "H„y £t v‡o #YVı H∞n #W chﬂa lÓnh ngµ k€ nÂng.")
			return
		end

		if GetGemEmbededCount( sceneId, selfId, idBagPos ) > 0 then
			x000169_NotifyTip(sceneId,selfId, "H„y th·o gﬁ t§t c‰ #GB‰o Th’ch trÍn #YVı H∞n!")
			return
		end
		if LuaFnIsItemAvailable( sceneId, selfId, idBagPos ) ~= 1 then
			x000169_NotifyTip(sceneId,selfId, "#{WH_090729_07}")
			return
		end
		local ret = LuaFnCostMoneyWithPriority( sceneId, selfId, 100000 )
		if ret < 0 then
			x000169_NotifyTip( sceneId, selfId, "KhÙng ¸ ng‚n lﬂ˛ng." )
			return
		end
		LuaFnEraseItem( sceneId, selfId, idBagPos )
		local ClassItem = ItemList[ItemClass]
		local SkillItem = ClassItem[random(1,16)]
		local xx=TryRecieveItem( sceneId, selfId, SkillItem[1], 1 )
		if str~=nil then
			LuaFnSetItemCreator(sceneId,selfId,xx,str)
		end
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
		x000169_NotifyTip( sceneId, selfId, "#{WH_090729_24}" )
end
function x000169_WuhunSkillRefresh(sceneId,selfId, idBagPos)
	if idBagPos == -1 then
		return
	end
		local IDVH = LuaFnGetItemTableIndexByIndex( sceneId, selfId, idBagPos )
		local _,str=LuaFnGetItemCreator(sceneId,selfId,idBagPos)
		local ItemClass = 0
		local ItemSkill = 0
		local ItemLevel = 0
		if IDVH == 10155010 or IDVH == 10155007 or IDVH == 10155008 or IDVH == 10155009 then
			x000169_NotifyTip(sceneId,selfId, "#{WH_090729_33}")
			return
		end
		for i = 1, getn(ItemList) do
			local Class = ItemList[i]
			for j = 1,getn(Class) do
				local Skill = Class[j]
				for k = 1,getn(Skill) do
					if  IDVH == Skill[k] then
						ItemClass = i
						ItemSkill = j
						ItemLevel = k
						break
					end
				end
			end
		end
		if ItemLevel == 0 then
			x000169_NotifyTip(sceneId,selfId, "H„y £t v‡o #YVı H∞n #W c•n lÓnh ngµ l’i k€ nÂng.")
			return
		end
		if GetGemEmbededCount( sceneId, selfId, idBagPos ) > 0 then
			x000169_NotifyTip(sceneId,selfId, "H„y th·o gﬁ t§t c‰ #GB‰o Th’ch trÍn #YVı H∞n!")
			return
		end
		if (LuaFnGetAvailableItemCount( sceneId, selfId, 30700213 ) < 1) then
			x000169_NotifyTip( sceneId, selfId, "KhÙng cÛ #G∫c H∞n Th’ch#W, ho£c vßt ph¶m b∏ khÛa! ")
			return
		end
		if LuaFnIsItemAvailable( sceneId, selfId, idBagPos ) ~= 1 then
			x000169_NotifyTip(sceneId,selfId, "#{WH_090729_07}")
			return
		end
		local ret = LuaFnCostMoneyWithPriority( sceneId, selfId, 50000 )
		if ret < 0 then
			x000169_NotifyTip( sceneId, selfId, "KhÙng ¸ ng‚n lﬂ˛ng." )
			return
		end
		LuaFnEraseItem( sceneId, selfId, idBagPos )
		local ClassItem = ItemList[ItemClass]
		local SkillItem = ClassItem[random(1,16)]
		LuaFnDelAvailableItem(sceneId,selfId, 30700213, 1)
		local xx=TryRecieveItem( sceneId, selfId, SkillItem[ItemLevel], 1 )
		if str~=nil then
			LuaFnSetItemCreator(sceneId,selfId,xx,str)
		end
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
		x000169_NotifyTip( sceneId, selfId, "#{WH_090729_35}" )
end
function x000169_AddText( sceneId, selfId, targetId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchEventList(sceneId,selfId,targetId)
end
function x000169_NotifyTip( sceneId, selfId, Msg )

	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end