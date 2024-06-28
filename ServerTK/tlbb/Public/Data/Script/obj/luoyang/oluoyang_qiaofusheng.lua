--洛阳NPC
--乔复盛
--普通
x000109_g_scriptId=000109

--**********************************
--事件交互入口
--**********************************

function x000109_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  C� mu痭 t� m� ti甿 l鄊 鬾g ch� kh鬾g? Ta c� th� d誽 ng呓i")
		AddNumText(sceneId,x000109_g_scriptId,"Ki琺 tra t c� th呓ng 餴猰",6,2)
		if IsShutout( sceneId, selfId, ONOFF_T_PSHOP ) == 0 then
			AddNumText(sceneId,x000109_g_scriptId,"X鈟 d駈g th呓ng 餴猰 ri阯g",6,0)
			
		else
			AddNumText(sceneId,x000109_g_scriptId,"H鼀 gian h鄋g c黙 ta",6,7)
		end
		AddNumText(sceneId,x000109_g_scriptId,"Qu鋘 l� th呓ng 餴猰 ri阯g",6,1)
		AddNumText(sceneId,x000109_g_scriptId,"Ki琺 tra ti甿 餫ng chu b� b醤",6,3)
		AddNumText(sceneId,x000109_g_scriptId,"Gi緄 thi畊 th呓ng ti甿 ng叨i ch絠",11,6)
		AddNumText(sceneId,x000109_g_scriptId,"V� vi甤 mua nguy阯 li畊",11,10)

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************

--事件列表选中一项

--**********************************

function x000109_OnEventRequest( sceneId, selfId, targetId, eventId )

--0.建立自己的商店->显示建店条款->由客户端请求建店
		if GetNumText()==0	then
			--return --vo hieu hoa tao thuong hoi
			--check item tiem hoi thuong thiep
			local number = LuaFnGetAvailableItemCount(sceneId, selfId, 30505256) --THTT
			local number2 = LuaFnGetAvailableItemCount(sceneId, selfId, 30008053) --CCYQ
			local nMoneyJB = GetMoney(sceneId,selfId)
			if nMoneyJB < 500000 then
				
				BeginEvent(sceneId)
					strText = "Kh鬾g 瘘 ng鈔 l唼ng #{_EXCHG500000} "
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
					strText = "C醕 h� kh鬾g c� Ti甿 H癷 Th呓ng Thi猵 ho Ch叻ng C� Y猽 Quy猼 tr阯 ng叨i, kh鬾g th� l 疬㧟 Th呓ng H礽."
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
					strText = "秀 x骯 Ti甿 H癷 Th呓ng Thi猵 tr阯 ng叨i c醕 h�!"
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
			


		--1.管理自己店铺
		elseif	GetNumText()==1	then

			--1.0通过店铺名来判定是否此店已经打开
			strShop0Name = LuaFnGetShopName(sceneId, selfId, 0)
			strShop1Name = LuaFnGetShopName(sceneId, selfId, 1)

			--1.1没店铺直接发错误提示
			if((strShop0Name == "")and(strShop1Name == "")) then
				BeginEvent(sceneId)
					strText = "Xin l瞚, ng呓i h靚h nh� kh鬾g c� ti甿"
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)

			--1.2有店铺根据不同情况不同处理
			else
				--1.2.1有两个店铺，等待进一步选择
				if((strShop0Name ~= "") and (strShop1Name ~= "")) then
						BeginEvent(sceneId)

							AddText(sceneId,"H� h�, t� ra tr叻ng qu t緄 r癷, xin h鰅 c醕 h� mu痭 t緄 xem gian ti甿 n鄌?")

							if GetPlayerShopFrezeType(sceneId, selfId, 0) == 1 then
								AddNumText(sceneId,x000109_g_scriptId,"#cCCCCCCTi甿 1  "..strShop0Name,-1,4)
							else
								AddNumText(sceneId,x000109_g_scriptId,"Ti甿 1  "..strShop0Name,-1,4)
							end
							if GetPlayerShopFrezeType(sceneId, selfId, 1) == 1 then
								AddNumText(sceneId,x000109_g_scriptId,"#cCCCCCCTi甿 2  "..strShop1Name,-1,5)
							else
								AddNumText(sceneId,x000109_g_scriptId,"Ti甿 2  "..strShop1Name,-1,5)
							end

						EndEvent(sceneId)
						DispatchEventList(sceneId,selfId,targetId)

				--1.2.2只有一个直接打开这个
				elseif(strShop0Name ~= "") then
						LuaFnOpenPlayerShop(sceneId, selfId, targetId, 0)

				--1.2.3只有一个直接打开这个
				elseif(strShop1Name ~= "") then
						LuaFnOpenPlayerShop(sceneId, selfId, targetId, 1)
				end

			end

		--2.察看所有商店的列表

		elseif	GetNumText()==2	then

			DispatchPlayerShopList( sceneId, selfId, targetId )

		--3.察看所有盘出商店的列表
		elseif	GetNumText()==3	then

			DispatchPlayerShopSaleOutList( sceneId, selfId, targetId )

		--4.察看自己身上的指定商店
		elseif	GetNumText()==4	then

			LuaFnOpenPlayerShop(sceneId, selfId, targetId, 0)

		--5.察看自己身上的指定商店
		elseif	GetNumText()==5	then

			LuaFnOpenPlayerShop(sceneId, selfId, targetId, 1)
		
		--6.玩家商店介绍
		elseif	GetNumText()==6	then

			BeginEvent(sceneId)
				AddText( sceneId, "#{function_help_048}" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)

		--7.再次确认是否删店
		elseif	GetNumText()==7	then
	
			--1.0通过店铺名来判定是否此店已经打开
			local strShop0Name = LuaFnGetShopName(sceneId, selfId, 0)
			local strShop1Name = LuaFnGetShopName(sceneId, selfId, 1)

			--1.1没店铺直接发错误提示
			if((strShop0Name == "")and(strShop1Name == "")) then
				BeginEvent(sceneId)
					strText = "C醕 h� 韙 nh ph鋓 c� 1 gian h鄋g"
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
			else
				BeginEvent(sceneId)
					AddText(sceneId,"#{UnregisterShopHelp}")
					AddNumText(sceneId,x000109_g_scriptId,"Duy畉",6,8)
					AddNumText(sceneId,x000109_g_scriptId,"R秈 kh鰅",6,9)
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			end

		--7.删!
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
				local msg = format("T鷌 鸢 c 韙 nh "..num_shop.." ch� tr痭g 瓞 th馽 hi畁. C醕 h� h銀 s x猵 t鷌 鸢 r癷 thao t醕 l読.");
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
				
				local msg = format("Ch鷆 m譶g c醕 h� h鼀 b� th鄋h c鬾g, ti玭 v痭 trong gian h鄋g 疸 ho鄋 tr� cho c醕 h�, vui l騨g ki琺 tra l読.");
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
						local msg = format("C醕 h� 疸 nh 疬㧟 Ti甿 H癷 Thi阯 Thi猵.");
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
						local msg = format("C醕 h� 疸 nh 疬㧟 Ch叻ng C� Y猽 Quy猼.");
						BeginEvent( sceneId )
							AddText( sceneId, msg )
						EndEvent( sceneId )
						DispatchMissionTips( sceneId, selfId )
						
						--add diem tang
						--ZengDian(sceneId,selfId,selfId,1,30000);
						--local msg = format("C醕 h� 疸 nh 疬㧟 30k 餴琺 tg");
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
				local msg = format("Th呓ng h礽 c黙 c醕 h� 疸 疬㧟 痼ng b錸g.");
				BeginEvent( sceneId )
					AddText( sceneId, msg )
				EndEvent( sceneId )
				DispatchMissionTips( sceneId, selfId )
			else
				local msg = format("Th呓ng ti甿 c黙 c醕 h� v鏽 c騨 th呓ng ph, khi n鄌 tr痭g h銀 皙n t靘 ta.");
				BeginEvent( sceneId )
					AddText( sceneId, msg )					
				EndEvent( sceneId )
				DispatchMissionTips( sceneId, selfId )
				
				local msg = format("C l鄊 tr痭g th呓ng ti甿 tr呔c khi h鼀 ti甿.");
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

--继续

--**********************************

function x000109_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )

	ApplyPlayerShop( sceneId, selfId, targetId )

end
