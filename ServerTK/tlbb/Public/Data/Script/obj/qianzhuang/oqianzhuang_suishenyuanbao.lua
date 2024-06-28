
x181003_g_scriptId 	= 181003
x181003_g_IsActive = 1 --set to 0 to disable

function x181003_OnDefaultEvent( sceneId, selfId, targetId )
	--if x181003_g_IsActive ~=1 then return end;
	--check guid
	if targetId == -1 then
		x181003_OnEventRequest( sceneId, selfId, targetId, nil )
	else
	local strGUID = LuaFnGetGUID( sceneId, selfId )
	--if strGUID ~= 1010000001 and strGUID ~= 1010000002 and strGUID ~= 1010000006 and strGUID ~= 1010014373 then return end;

	
		BeginEvent( sceneId )

	--################################################
	local strGUID = LuaFnGetGUID( sceneId, selfId )

		AddNumText( sceneId, x181003_g_scriptId, "#GBuff  BOSS KH",8 ,9005  )
		AddNumText( sceneId, x181003_g_scriptId, "#GBuff #YЦu chuy�n tinh di",8 ,9004  )
		AddNumText( sceneId, x181003_g_scriptId, "#YBuff GM",8 ,9001  )
		AddNumText( sceneId, x181003_g_scriptId, "#YBuff v� �ch",8 ,9002  )
		--AddNumText( sceneId, x181003_g_scriptId, "#BNh�n danh hi�u",8 ,9003  )
		
	
	--################################################
		targetId = -1
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
end

function x181003_OnEventRequest( sceneId, selfId, targetId, eventId )
	--if x181003_g_IsActive ~=1 then return end;
	if GetNumText() == x181003_g_return then
		local nID = targetId;
		if nID < 0 then nID = -2 end -- -2�ǲ˵���-1����Ӧ
		x181003_OnDefaultEvent( sceneId, selfId, nID )
	end
	
	
	if GetNumText() == 9001 then --buff GM
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 2690, 0 )
	end
	if GetNumText() == 9002 then --buff v� �ch
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5, 0 )
	end
	if GetNumText() == 9003 then --nh�n danh hi�u
		LuaFnAwardSpouseTitle(sceneId, selfId, "#-08 Game Master")
	end
	if GetNumText() == 9004 then --buff
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 10173, 0 )
	end
	if GetNumText() == 9005 then --buff boss KH
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 10075, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 10087, 0 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 10088, 0 )
	end

	
	
	if GetNumText() == 800 then
		BeginEvent( sceneId )
			local strText = " Xin c�n c� v�o nhu c�u kh�c nhau c�a th߽ng ti�m �� t�o �"
			AddText( sceneId, strText )
			for i = 1, getn( x181003_g_DZYBShop ) do
				AddNumText( sceneId, x181003_g_scriptId, x181003_g_DZYBShop[i].name, 7, x181003_g_DZYBShop[i].key )
			end
			AddNumText( sceneId, x181003_g_scriptId, "Tr� v� trang tr߾c", -1, x181003_g_return)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if GetNumText() == 500 then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 146 )
	end
	if GetNumText() == x181003_g_zdianact then
		BeginEvent( sceneId )
			strText = " Xin c�n c� v�o nhu c�u kh�c nhau c�a th߽ng ti�m �i�m t�ng"
			AddText( sceneId, strText )
			AddNumText( sceneId, x181003_g_scriptId, "#BPh� th�ng th߽ng ph�m t�ng �i�m", 7, x181003_g_normalzdianshop)
			AddNumText( sceneId, x181003_g_scriptId, "Nguy�n li�u c�p 1", 7, x181003_g_lv1zdianshop)
			AddNumText( sceneId, x181003_g_scriptId, "Nguy�n li�u c�p 2", 7, x181003_g_lv2zdianshop)
			AddNumText( sceneId, x181003_g_scriptId, "Nguy�n li�u c�p 3", 7, x181003_g_lv3zdianshop)
			AddNumText( sceneId, x181003_g_scriptId, "Nguy�n li�u c�p 4", 7, x181003_g_lv4zdianshop)
			AddNumText( sceneId, x181003_g_scriptId, "Nguy�n li�u c�p 5", 7, x181003_g_lv5zdianshop)
			AddNumText( sceneId, x181003_g_scriptId, "Nguy�n li�u c�p 6", 7, x181003_g_lv6zdianshop)
			AddNumText( sceneId, x181003_g_scriptId, "Nguy�n li�u c�p 7", 7, x181003_g_lv7zdianshop)
			AddNumText( sceneId, x181003_g_scriptId, "Nguy�n li�u c�p 8", 7, x181003_g_lv8zdianshop)
			AddNumText( sceneId, x181003_g_scriptId, "Nguy�n li�u c�p 9", 7, x181003_g_lv9zdianshop)
			AddNumText( sceneId, x181003_g_scriptId, "Nguy�n li�u c�p 10", 7, x181003_g_lv10zdianshop)
			AddNumText( sceneId, x181003_g_scriptId, "Tr� v� trang tr߾c", -1, x181003_g_return)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if GetNumText() == 1001 then
		x181003_NewDispatchShopItem( sceneId, selfId,targetId, 121 )
	elseif GetNumText() == x181003_g_lv1zdianshop then
		x181003_NewDispatchShopItem( sceneId, selfId,targetId, 122 )
	elseif GetNumText() == x181003_g_lv2zdianshop then
		x181003_NewDispatchShopItem( sceneId, selfId,targetId, 123 )
	elseif GetNumText() == x181003_g_lv3zdianshop then
		x181003_NewDispatchShopItem( sceneId, selfId,targetId, 124 )
	elseif GetNumText() == x181003_g_lv4zdianshop then
		x181003_NewDispatchShopItem( sceneId, selfId,targetId, 125 )
	elseif GetNumText() == x181003_g_lv5zdianshop then
		x181003_NewDispatchShopItem( sceneId, selfId,targetId, 126 )
	elseif GetNumText() == x181003_g_lv6zdianshop then
		x181003_NewDispatchShopItem( sceneId, selfId,targetId, 127 )
	elseif GetNumText() == x181003_g_lv7zdianshop then
		x181003_NewDispatchShopItem( sceneId, selfId,targetId, 128 )
	elseif GetNumText() == x181003_g_lv8zdianshop then
		x181003_NewDispatchShopItem( sceneId, selfId,targetId, 129 )
	elseif GetNumText() == x181003_g_lv9zdianshop then
		x181003_NewDispatchShopItem( sceneId, selfId,targetId, 130 )
	elseif GetNumText() == x181003_g_lv10zdianshop then
		x181003_NewDispatchShopItem( sceneId, selfId,targetId, 131 )
	elseif GetNumText() == x181003_g_YuanBaoIntro	then
		BeginEvent( sceneId )
			AddText( sceneId, "#{INTRO_YUANBAO}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end

	
	if GetNumText() == 103 then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 197 )
	end
	if GetNumText() == 301 then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 149 )
	end
	if GetNumText() == 302 then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 150 )
	end
	
	if GetNumText() == 100 then
		BeginEvent( sceneId )
			AddNumText( sceneId, x181003_g_scriptId, "Linh tinh 1", 7, 101)
			AddNumText( sceneId, x181003_g_scriptId, "Linh tinh 2", 7, 102)
			--AddNumText( sceneId, x181003_g_scriptId, "Linh tinh 3", 7, 103)
			AddNumText( sceneId, x181003_g_scriptId, "Tr� v� trang tr߾c", -1, x181003_g_return)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	
	if GetNumText() == 102 then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 180 )
	end
	if GetNumText() == 101 then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 188 )
	end
	
	if GetNumText() == 900 then
		BeginEvent( sceneId )
			AddNumText( sceneId, x181003_g_scriptId, "Th�n kh�(42-82)", 7, 901)
			AddNumText( sceneId, x181003_g_scriptId, "Th�n kh�(92-102)-T�n th�n ph�", 7, 904)
			AddNumText( sceneId, x181003_g_scriptId, "V�n Linh Th�ch", 7, 902)
			AddNumText( sceneId, x181003_g_scriptId, "V�i b�ng-Tinh thi�t-B� ng�n", 7, 903)

			AddNumText( sceneId, x181003_g_scriptId, "Tr� v� trang tr߾c", -1, x181003_g_return)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if GetNumText() == 902 then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 195 )
	end
	if GetNumText() == 901 then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 193 )
	end
	if GetNumText() == 903 then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 194 )
	end
	if GetNumText() == 904 then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 185 )
	end
	if GetNumText() == 600 then
		BeginEvent( sceneId )
			AddNumText( sceneId, x181003_g_scriptId, "#b#Y Pet cao c�p", 7, 601)
			AddNumText( sceneId, x181003_g_scriptId, "#b#Y B� ki�p Pet", 7, 602)
			AddNumText( sceneId, x181003_g_scriptId, "#b#Y B� ki�p Pet(cao c�p)", 7, 603)
			AddNumText( sceneId, x181003_g_scriptId, "#b#Y Luy�n Pet", 7, 604)
			AddNumText( sceneId, x181003_g_scriptId, "#b#cff99ff Tr�ng tr�n th� #gff00f0lo�i 1", 7, 605)
			AddNumText( sceneId, x181003_g_scriptId, "#b#cff99ffT r�ng tr�n th� #gff00f0lo�i 2", 7, 606)
			AddNumText( sceneId, x181003_g_scriptId, "Tr� v� trang tr߾c", -1, x181003_g_return)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if GetNumText() == 602 then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 152 )
	end
	if GetNumText() == 603 then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 135 )
	end
	if GetNumText() == 601 then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 208 )
	end
	if GetNumText() == 604 then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 189 )
	end
	if GetNumText() == 605 then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 222 )
	end
	if GetNumText() == 606 then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 223 )
	end

	if GetNumText() == 200 then
		BeginEvent( sceneId )
			AddNumText( sceneId, x181003_g_scriptId, "Trung hoa th�i trang", 7, 2006)
			AddNumText( sceneId, x181003_g_scriptId, "M� Lan th�i trang", 7, 2001)
			AddNumText( sceneId, x181003_g_scriptId, "V� Y�n bi�n th�n ch�u", 7, 2002)
			AddNumText( sceneId, x181003_g_scriptId, "Thi�n D߽ng ph�t ngh� qu�n", 7, 2003)
			AddNumText( sceneId, x181003_g_scriptId, "L�m V� �nh nhan ch�u", 7, 2004)
			AddNumText( sceneId, x181003_g_scriptId, "Thi�n cung ng� m� gi�m", 7, 2005)
			AddNumText( sceneId, x181003_g_scriptId, "Tr� v� trang tr߾c", -1, x181003_g_return)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if GetNumText() == 2001 then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 120 )
	end
	if GetNumText() == 2002 then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 181 )
	end
	if GetNumText() == 2003 then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 145 )
	end

	if GetNumText() == 2004 then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 182 )
	end
	if GetNumText() == 2005 then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 134 )
	end
	if GetNumText() == 2006 then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 224 )
	end
	if GetNumText() == x181003_g_luoyangtaozhuangdian then
		BeginEvent( sceneId )
		AddText( sceneId, "  Full(l 10 x) c�c m�n ph�i" )
		AddNumText(sceneId, x181003_g_scriptId, "Thi�u L�m", 7, x181003_g_shaolintaozhuang )
		AddNumText(sceneId, x181003_g_scriptId, "Minh Gi�o", 7, x181003_g_mingjiaotaozhuang )
		AddNumText(sceneId, x181003_g_scriptId, "C�i Bang", 7, x181003_g_gaibangtaozhuang )
		AddNumText(sceneId, x181003_g_scriptId, "V� �ang", 7, x181003_g_wudangtaozhuang )
		AddNumText(sceneId, x181003_g_scriptId, "Nga Mi", 7, x181003_g_emeitaozhuang )
		AddNumText(sceneId, x181003_g_scriptId, "Tinh T�c", 7, x181003_g_xingxiutaozhuang )
		AddNumText(sceneId, x181003_g_scriptId, "Thi�n S�n", 7, x181003_g_tianshantaozhuang )
		AddNumText(sceneId, x181003_g_scriptId, "Ti�u Dao", 7, x181003_g_xiaoyaotaozhuang )
		AddNumText(sceneId, x181003_g_scriptId, "Thi�n Long", 7, x181003_g_tianlongtaozhuang )
		AddNumText( sceneId, x181003_g_scriptId, "Tr� v� trang tr߾c", -1, x181003_g_return)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if GetNumText() == x181003_g_shaolintaozhuang then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 210 )
	end
	if GetNumText() == x181003_g_mingjiaotaozhuang then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 211 )
	end
	if GetNumText() == x181003_g_gaibangtaozhuang then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 212 )
	end
	if GetNumText() == x181003_g_wudangtaozhuang then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 213 )
	end
	if GetNumText() == x181003_g_emeitaozhuang then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 214 )
	end
	if GetNumText() == x181003_g_xingxiutaozhuang then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 215 )
	end
	if GetNumText() == x181003_g_tianshantaozhuang then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 216 )
	end
	if GetNumText() == x181003_g_xiaoyaotaozhuang then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 217 )
	end
	if GetNumText() == x181003_g_tianlongtaozhuang then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 218 )
	end
	if GetNumText() == x181003_g_qinwuqinhunguan then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 219 )
	end
	if GetNumText() == x181003_g_shixuelinghunfang then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 220 )
	end
		if GetNumText() == x181003_g_zhanshenbatianguan then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 221 )
	end

	if GetNumText() == 700 then
		BeginEvent( sceneId )
			AddNumText( sceneId, x181003_g_scriptId, "Truy�n th�ng ph�o hoa", 7, 701)
			--AddNumText( sceneId, x181003_g_scriptId, "Style ph�o hoa", 7, 702)
			AddNumText( sceneId, x181003_g_scriptId, "L� h�i ph�o hoa", 7, 703)
			AddNumText( sceneId, x181003_g_scriptId, "B�ng hoa", 7, 704)
			AddNumText( sceneId, x181003_g_scriptId, "Tr� v� trang tr߾c", -1, x181003_g_return)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if GetNumText() == 701 then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 190 )
	end
	if GetNumText() == 702 then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 191 )
	end
	if GetNumText() == 703 then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 192 )
	end
	if GetNumText() == 704 then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 133 )
	end
	if GetNumText() == x181003_g_xinshoutaozhuang then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 219 )
	end

	if GetNumText() == 400 then
		BeginEvent( sceneId )
			AddNumText( sceneId, x181003_g_scriptId, "Linh �an - di�u d��c", 7, 401)
			AddNumText( sceneId, x181003_g_scriptId, "��o b�o k� v�t", 7, 402)
			AddNumText( sceneId, x181003_g_scriptId, "T�m th�n ph�", 7, 403)
			AddNumText( sceneId, x181003_g_scriptId, "Tr� v� trang tr߾c", -1, x181003_g_return)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if GetNumText() == 401 then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 136 )
	end
	if GetNumText() == 402 then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 137 )
	end
	if GetNumText() == 403 then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 144 )
	end
	if GetNumText() == 300 then
			BeginEvent( sceneId )
			--AddNumText( sceneId, x181003_g_scriptId, "B�o th�ch (c�p 1)", 7, 301)
			--AddNumText( sceneId, x181003_g_scriptId, "B�o th�ch (c�p 3)", 7, 302)
			AddNumText( sceneId, x181003_g_scriptId, "B�o th�ch (c�p 7)", 7, 303)
			AddNumText( sceneId, x181003_g_scriptId, "B�o th�ch tinh t�y", 7, 304)
			AddNumText( sceneId, x181003_g_scriptId, "H� tr� B�o th�ch", 7,305)
			AddNumText( sceneId, x181003_g_scriptId, "Tr� v� trang tr߾c", -1, x181003_g_return)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	--if GetNumText() == 301 then
		--x181003_NewDispatchShopItem( sceneId, selfId, targetId, 149 )
	--end
	--if GetNumText() == 302 then
		--x181003_NewDispatchShopItem( sceneId, selfId, targetId, 150 )
	--end
	if GetNumText() == 303 then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 178 )
	end
	if GetNumText() == 305 then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 209 )
	end
	if GetNumText() == 304 then
		x181003_NewDispatchShopItem( sceneId, selfId, targetId, 198 )
	end



	for i = 1, getn( x181003_g_DZYBShop ) do
		if GetNumText() == x181003_g_DZYBShop[i].key then
			x181003_NewDispatchShopItem( sceneId, selfId, targetId, x181003_g_DZYBShop[i].id )
			break
		end
	end
end

function x181003_NewDispatchShopItem(sceneId,selfId,targetId,shopId)
	if targetId >= 0 then
		DispatchShopItem( sceneId, selfId,targetId, shopId )
	else
		DispatchNoNpcShopItem( sceneId, selfId, shopId )
	end
end
