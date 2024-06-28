--¬Â—ÙNPC
--««∏¥ ¢
--∆’Õ®
x000109_g_scriptId=000109

--**********************************
-- ¬º˛Ωªª•»Îø⁄
--**********************************

function x000109_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  CÛ muØn tÒ m∑ tiÆm l‡m Ùng ch¸ khÙng? Ta cÛ th¨ d’y ngﬂΩi")
		AddNumText(sceneId,x000109_g_scriptId,"Ki¨m tra t§t c‰ thﬂΩng i™m",6,2)
		if IsShutout( sceneId, selfId, ONOFF_T_PSHOP ) == 0 then
			AddNumText(sceneId,x000109_g_scriptId,"X‚y dÒng thﬂΩng i™m riÍng",6,0)
			
		else
			AddNumText(sceneId,x000109_g_scriptId,"H¸y gian h‡ng c¸a ta",6,7)
		end
		AddNumText(sceneId,x000109_g_scriptId,"Qu‰n l˝ thﬂΩng i™m riÍng",6,1)
		AddNumText(sceneId,x000109_g_scriptId,"Ki¨m tra tiÆm ang chu¶n b∏ b·n",6,3)
		AddNumText(sceneId,x000109_g_scriptId,"Giæi thiÆu thﬂΩng tiÆm ngﬂ∂i chΩi",11,6)
		AddNumText(sceneId,x000109_g_scriptId,"V´ viÆc mua nguyÍn liÆu",11,10)

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************

-- ¬º˛¡–±Ì—°÷–“ªœÓ

--**********************************

function x000109_OnEventRequest( sceneId, selfId, targetId, eventId )

--0.Ω®¡¢◊‘º∫µƒ…ÃµÍ->œ‘ æΩ®µÍÃıøÓ->”…øÕªß∂À«Î«ÛΩ®µÍ
		if GetNumText()==0	then
			--return --vo hieu hoa tao thuong hoi
			--check item tiem hoi thuong thiep
			local number = LuaFnGetAvailableItemCount(sceneId, selfId, 30505256) --THTT
			local number2 = LuaFnGetAvailableItemCount(sceneId, selfId, 30008053) --CCYQ
			local nMoneyJB = GetMoney(sceneId,selfId)
			if nMoneyJB < 500000 then
				
				BeginEvent(sceneId)
					strText = "KhÙng ¸ ng‚n lﬂ˛ng #{_EXCHG500000} "
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				
				BeginEvent(sceneId)
					AddText(sceneId, strText)
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
				return
			end
			
			if number <1 or number2<1 then
				BeginEvent(sceneId)
					strText = "C·c h’ khÙng cÛ TiÆm H∞i ThﬂΩng Thi™p ho£c Chﬂ∑ng CÒ Y™u Quy™t trÍn ngﬂ∂i, khÙng th¨ lßp ﬂ˛c ThﬂΩng Hµi."
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				
				BeginEvent(sceneId)
					AddText(sceneId, strText)
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
				return
			else
				LuaFnDelAvailableItem(sceneId,selfId,30505256,2) --xoa item
				BeginEvent(sceneId)
					strText = "–„ xÛa TiÆm H∞i ThﬂΩng Thi™p trÍn ngﬂ∂i c·c h’!"
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				
				--khung tao thuong hoi
				BeginEvent(sceneId)
					AddText(sceneId,"#{PS_OPEN_SHOP_NOTICE}")
				EndEvent(sceneId)
				DispatchMissionDemandInfo(sceneId,selfId,targetId,x000109_g_scriptId,0,1)
				--end khung tao thuong hoi
			end
		
			--end check
			


		--1.π‹¿Ì◊‘º∫µÍ∆Ã
		elseif	GetNumText()==1	then

			--1.0Õ®π˝µÍ∆Ã√˚¿¥≈–∂® «∑Ò¥ÀµÍ“—æ≠¥Úø™
			strShop0Name = LuaFnGetShopName(sceneId, selfId, 0)
			strShop1Name = LuaFnGetShopName(sceneId, selfId, 1)

			--1.1√ªµÍ∆Ã÷±Ω”∑¢¥ÌŒÛÃ· æ
			if((strShop0Name == "")and(strShop1Name == "")) then
				BeginEvent(sceneId)
					strText = "Xin l≤i, ngﬂΩi hÏnh nhﬂ khÙng cÛ tiÆm"
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)

			--1.2”–µÍ∆Ã∏˘æ›≤ªÕ¨«Èøˆ≤ªÕ¨¥¶¿Ì
			else
				--1.2.1”–¡Ω∏ˆµÍ∆Ã£¨µ»¥˝Ω¯“ª≤Ω—°‘Ò
				if((strShop0Name ~= "") and (strShop1Name ~= "")) then
						BeginEvent(sceneId)

							AddText(sceneId,"H‡ h‡, tÈ ra trﬂ∑ng qu•y tæi r∞i, xin hˆi c·c h’ muØn tæi xem gian tiÆm n‡o?")

							if GetPlayerShopFrezeType(sceneId, selfId, 0) == 1 then
								AddNumText(sceneId,x000109_g_scriptId,"#cCCCCCCTiÆm 1  "..strShop0Name,-1,4)
							else
								AddNumText(sceneId,x000109_g_scriptId,"TiÆm 1  "..strShop0Name,-1,4)
							end
							if GetPlayerShopFrezeType(sceneId, selfId, 1) == 1 then
								AddNumText(sceneId,x000109_g_scriptId,"#cCCCCCCTiÆm 2  "..strShop1Name,-1,5)
							else
								AddNumText(sceneId,x000109_g_scriptId,"TiÆm 2  "..strShop1Name,-1,5)
							end

						EndEvent(sceneId)
						DispatchEventList(sceneId,selfId,targetId)

				--1.2.2÷ª”–“ª∏ˆ÷±Ω”¥Úø™’‚∏ˆ
				elseif(strShop0Name ~= "") then
						LuaFnOpenPlayerShop(sceneId, selfId, targetId, 0)

				--1.2.3÷ª”–“ª∏ˆ÷±Ω”¥Úø™’‚∏ˆ
				elseif(strShop1Name ~= "") then
						LuaFnOpenPlayerShop(sceneId, selfId, targetId, 1)
				end

			end

		--2.≤Ïø¥À˘”–…ÃµÍµƒ¡–±Ì

		elseif	GetNumText()==2	then

			DispatchPlayerShopList( sceneId, selfId, targetId )

		--3.≤Ïø¥À˘”–≈Ã≥ˆ…ÃµÍµƒ¡–±Ì
		elseif	GetNumText()==3	then

			DispatchPlayerShopSaleOutList( sceneId, selfId, targetId )

		--4.≤Ïø¥◊‘º∫…Ì…œµƒ÷∏∂®…ÃµÍ
		elseif	GetNumText()==4	then

			LuaFnOpenPlayerShop(sceneId, selfId, targetId, 0)

		--5.≤Ïø¥◊‘º∫…Ì…œµƒ÷∏∂®…ÃµÍ
		elseif	GetNumText()==5	then

			LuaFnOpenPlayerShop(sceneId, selfId, targetId, 1)
		
		--6.ÕÊº“…ÃµÍΩÈ…‹
		elseif	GetNumText()==6	then

			BeginEvent(sceneId)
				AddText( sceneId, "#{function_help_048}" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)

		--7.‘Ÿ¥Œ»∑»œ «∑Ò…æµÍ
		elseif	GetNumText()==7	then
	
			--1.0Õ®π˝µÍ∆Ã√˚¿¥≈–∂® «∑Ò¥ÀµÍ“—æ≠¥Úø™
			local strShop0Name = LuaFnGetShopName(sceneId, selfId, 0)
			local strShop1Name = LuaFnGetShopName(sceneId, selfId, 1)

			--1.1√ªµÍ∆Ã÷±Ω”∑¢¥ÌŒÛÃ· æ
			if((strShop0Name == "")and(strShop1Name == "")) then
				BeginEvent(sceneId)
					strText = "C·c h’ Ìt nh§t ph‰i cÛ 1 gian h‡ng"
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
			else
				BeginEvent(sceneId)
					AddText(sceneId,"#{UnregisterShopHelp}")
					AddNumText(sceneId,x000109_g_scriptId,"DuyÆt",6,8)
					AddNumText(sceneId,x000109_g_scriptId,"R∂i khˆi",6,9)
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			end

		--7.…æ!
		elseif	GetNumText()==8	then
			--check so tiem
			strShop0Name = LuaFnGetShopName(sceneId, selfId, 0)
			strShop1Name = LuaFnGetShopName(sceneId, selfId, 1)
			local num_shop =2
			if(strShop0Name == "") then
				num_shop = num_shop-1;
			end
			if (strShop1Name == "") then
				num_shop = num_shop-1;
			end
			if num_shop == 0 then return end;
			--check slot
			local slot =LuaFnGetPropertyBagSpace( sceneId, selfId)
			if slot < num_shop*2 then
				local msg = format("T˙i ∞ c•n Ìt nh§t "..num_shop.." ch≤ trØng ¨ thÒc hiÆn. C·c h’ h„y s°p x™p t˙i ∞ r∞i thao t·c l’i.");
				BeginEvent( sceneId )
					AddText( sceneId, msg )
				EndEvent( sceneId )
				DispatchMissionTips( sceneId, selfId )
				return
			end
			--end check slot
			local canErase = CanErasePlayerShop(sceneId, selfId)
			
			
			if(canErase == 1) then
				BeginUICommand(sceneId)
				EndUICommand(sceneId)
				DispatchUICommand(sceneId,selfId, 1000)
				ErasePlayerShop(sceneId,selfId)
				
				local msg = format("Ch˙c m◊ng c·c h’ h¸y bˆ th‡nh cÙng, ti´n vØn trong gian h‡ng „ ho‡n tr‰ cho c·c h’, vui lÚng ki¨m tra l’i.");
				BeginEvent( sceneId )
					AddText( sceneId, msg )
				EndEvent( sceneId )
				DispatchMissionTips( sceneId, selfId )
				
				
				--hd add 29/5/2014
				local iditem_recv = 30505256 --item Tiem hoi thien thiep
				for i=1,num_shop do	
					local BagPos = TryRecieveItem( sceneId, selfId, iditem_recv, QUALITY_MUST_BE_CHANGE )
					if -1 ~= BagPos then
						LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
						local msg = format("C·c h’ „ nhßn ﬂ˛c TiÆm H∞i ThiÍn Thi™p.");
						BeginEvent( sceneId )
							AddText( sceneId, msg )
						EndEvent( sceneId )
						DispatchMissionTips( sceneId, selfId )
					end
				end
				--end hd add 29/5/2014
				
				--hd add 24/05/2015
				local iditem_recv = 30008053 --item CCYQ
				for i=1,num_shop do	
					local BagPos = TryRecieveItem( sceneId, selfId, iditem_recv, QUALITY_MUST_BE_CHANGE )
					if -1 ~= BagPos then
						LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
						local msg = format("C·c h’ „ nhßn ﬂ˛c Chﬂ∑ng CÒ Y™u Quy™t.");
						BeginEvent( sceneId )
							AddText( sceneId, msg )
						EndEvent( sceneId )
						DispatchMissionTips( sceneId, selfId )
						
						--add diem tang
						--ZengDian(sceneId,selfId,selfId,1,30000);
						--local msg = format("C·c h’ „ nhßn ﬂ˛c 30k i¨m t£ng");
						--BeginEvent( sceneId )
						--	AddText( sceneId, msg )
						--EndEvent( sceneId )
						--DispatchMissionTips( sceneId, selfId )
						
					end
				end
				--end hd add 24/05/2015
				
				
				BeginUICommand(sceneId)
				EndUICommand(sceneId)
				DispatchUICommand(sceneId,selfId, 19810222)
			elseif canErase == -1 then
				local msg = format("ThﬂΩng hµi c¸a c·c h’ „ ﬂ˛c Ûng bÂng.");
				BeginEvent( sceneId )
					AddText( sceneId, msg )
				EndEvent( sceneId )
				DispatchMissionTips( sceneId, selfId )
			else
				local msg = format("ThﬂΩng tiÆm c¸a c·c h’ vÁn cÚn thﬂΩng ph¶m, khi n‡o trØng h„y ™n tÏm ta.");
				BeginEvent( sceneId )
					AddText( sceneId, msg )					
				EndEvent( sceneId )
				DispatchMissionTips( sceneId, selfId )
				
				local msg = format("C•n l‡m trØng thﬂΩng tiÆm trﬂæc khi h¸y tiÆm.");
				BeginEvent( sceneId )
					AddText( sceneId, msg )					
				EndEvent( sceneId )
				DispatchMissionTips( sceneId, selfId )
			end
		elseif	GetNumText()==9	then
			BeginUICommand(sceneId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1000)
		elseif	GetNumText()==10	then
			BeginEvent(sceneId)
				AddText( sceneId, "#{function_help_101}" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end

end



--**********************************

--ºÃ–¯

--**********************************

function x000109_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )

	ApplyPlayerShop( sceneId, selfId, targetId )

end
