--HoÕt ðµng tr°ng cây may m¡n
--Author: Kenvin Sói

--*********************--
x920012_g_scriptId = 920012
x920012_g_active = 0 --1 : kich hoat su kien
--*********************--
x920012_g_Chit = 30060003				--M¥m tiên hoa
x920012_g_FertilizerBag = 30060004		--Túi phân bón r²ng
x920012_g_WaterBottle = 30060005		--Bình ðñng nß¾c r²ng
x920012_g_AirBottle = 30060006			--Bình ðñng linh khí r²ng
x920012_g_Flower = 30060010				--Hoa cüa tiên hoa
x920012_g_Knife = 30060019				--Dao
--*********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x920012_OnDefaultEvent(sceneId,selfId,targetId)

	--*********************--
	local Player_Name=GetName(sceneId,selfId)
	--*********************--
	BeginEvent(sceneId)
		if x920012_g_active ==1 then
			AddText(sceneId,"Xin chào các hÕ, "..Player_Name.."!")
			AddText(sceneId,"G¥n ðây tÕi hÕ có sang nß¾c Vi®t tìm v« ðßþc mµt gi¯ng tiên hoa r¤t th¥n kÏ.")
			AddText(sceneId,"Nªu các hÕ có th¬ tr°ng và chåm sóc nó giúp tÕi hÕ, tÕi hÕ s¨ vô cùng cäm kích.")
			AddNumText(sceneId,x920012_g_scriptId,"Nh§n hÕt gi¯ng tiên hoa",6,1)
			AddNumText(sceneId,x920012_g_scriptId,"Giao lÕi #GHoa cüa Tiên Hoa",6,2)
			AddNumText(sceneId,x920012_g_scriptId,"V« #GTr°ng cây may m¡n",11,0)
			AddNumText(sceneId,x920012_g_scriptId,"Ta chï ði ngang qua...",-1,3)
		else
			AddText(sceneId,"Sñ ki®n chßa b¡t ð¥u. Vui lòng quay lÕi sau.")
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	--*********************--
	
end
--**********************************--
--*        On Event Request       *--
--**********************************--
function x920012_OnEventRequest(sceneId,selfId,targetId,eventId)
if x920012_g_active ==1 then
	--*********************--
	if GetNumText()==0 then --V« #GTr°ng cây may m¡n
		BeginEvent(sceneId)
			AddText(sceneId,"Nhân ngày #GQu¯c tª Lao Ðµng #Y1/5#W, toàn th¬ ngß¶i ch½i m²i ngày có th¬ tham gia hoÕt ðµng #GTr°ng cây may m¡n#W mµt l¥n.")
			AddText(sceneId,"Khi hoÕt ðµng b¡t ð¥u các hÕ s¨ nh§n ðßþc #GM¥m cüa Tiên Hoa#W và ngoài ra ta s¨ cung c¤p thêm cho các hÕ các loÕi công cø phøc vø cho vi®c tìm thÑc ån cho cây. Các hÕ chï c¥n ðªn ðúng ð¸a ði¬m chï ð¸nh ¤n vào công cø là s¨ tñ ðµng ðßþc thu th§p.")
			AddText(sceneId,"Tiên hoa có #G4 giai ðoÕn#W:")
			AddText(sceneId,"#GGiai ðoÕn ¤u miêu c¤p 1#W, cây m¾i ðßþc tr°ng xu¯ng, c¥n ðßþc chåm sóc ð£c bi®t.")
			AddText(sceneId,"  Giai ðoÕn này t°n tÕi trong #G5 phút#W. Nªu sau #G10 phút#W mà cây không ðßþc chåm sóc ðü thì cây s¨ chªt.")
			AddText(sceneId,"#GGiai ðoÕn ¤u miêu c¤p 2#W, cây ðÕt kích thß¾c v×a, c¥n ðßþc chåm sóc ð£c bi®t.")
			AddText(sceneId,"  Giai ðoÕn này t°n tÕi trong #G10 phút#W. Nªu sau #G20 phút#W mà cây không ðßþc chåm sóc ðü thì cây s¨ chªt.")
			AddText(sceneId,"#GGiai ðoÕn ¤u miêu c¤p 3#W, cây ðÕt kích thß¾c l¾n, c¥n ðßþc chåm sóc ð£c bi®t.")
			AddText(sceneId,"  Giai ðoÕn này t°n tÕi trong #G15 phút#W. Nªu sau #G30 phút#W mà cây không ðßþc chåm sóc ðü thì cây s¨ chªt.")
			AddText(sceneId,"#GGiai ðoÕn thành thøc#W, cây ðã trß·ng thành, lúc này cây ðã trß·ng thành, có th¬ thu hoÕch. Các hÕ hãy ðem hoa cüa cây mang v« ch² ta, ta s¨ t£ng các hÕ mµt ph¥n thß·ng r¤t thú v¸.")
			AddText(sceneId,"  Giai ðoÕn này t°n tÕi trong #G20 phút#W. Nªu sau #G40 phút#W mà cây không ðßþc thu hoÕch thì cây s¨ chªt.")
			AddText(sceneId,"Ð¬ chåm sóc cây, các hÕ c¥n ðem #GBình ðñng phân#W, #GBình ðñng nß¾c#W và #GBình ðñng linh khí#W ðªn các ð¸a ði¬m ðã chï ð¸nh ð¬ l¤y nguyên li®u.")
			AddText(sceneId,"#GChú ý:#Y Khi các hÕ thu th§p ðü các loÕi thÑc ån cho cây, các hÕ hãy nh¤n vào cây và ch÷n møc #GChåm sóc#Y là ðßþc, tß½ng tñ khi cây có th¬ thu hoÕch, chï c¥n nh¤n vào cây ch÷n #GThu hoÕch#W.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--*********************--
	if GetNumText()==1 then --Nh§n hÕt gi¯ng tiên hoa
		if GetMissionData(sceneId,selfId,GROWINGACTIVITY_DAYTIME)==GetDayTime() then
			BeginEvent(sceneId)
				AddText(sceneId,"Hôm nay các hÕ ðã tham gia hoÕt ðµng này r°i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		if LuaFnGetPropertyBagSpace(sceneId,selfId)<5 then
			BeginEvent(sceneId)
				AddText(sceneId,"Các hÕ c¥n s¡p xªp lÕi 5 ô tr¯ng trong ô ðÕo cø!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		SetMissionData(sceneId,selfId,GROWINGACTIVITY_DAYTIME,GetDayTime())
		TryRecieveItem(sceneId,selfId,x920012_g_Chit,1)
		TryRecieveItem(sceneId,selfId,x920012_g_FertilizerBag,1)
		TryRecieveItem(sceneId,selfId,x920012_g_WaterBottle,1)
		TryRecieveItem(sceneId,selfId,x920012_g_AirBottle,1)
		TryRecieveItem(sceneId,selfId,x920012_g_Knife,1)
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ ðã nh§n ðßþc hÕt gi¯ng cây, hãy mau mau tr°ng nó xu¯ng ð¤t ði.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--*********************--
	if GetNumText()==2 then --Giao lÕi #GHoa cüa Tiên Hoa
		if LuaFnDelAvailableItem(sceneId,selfId,x920012_g_Flower,1)<1 then
			BeginEvent(sceneId)
				AddText(sceneId,"Các hÕ không có #GHoa cüa Tiên Hoa#W làm sao có th¬ nh§n thß·ng ðây?")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		if LuaFnGetPropertyBagSpace(sceneId,selfId)<1 then
			BeginEvent(sceneId)
				AddText(sceneId,"Các hÕ c¥n s¡p xªp lÕi 1 ô tr¯ng trong ô ðÕo cø!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		BeginEvent(sceneId)
			AddText(sceneId,"Th§t cäm ½n các hÕ nhi«u l¡m, · ðây có chút ph¥n thß·ng, mong các hÕ nh§n l¤y!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		--trao thß·ng
		if 1~=1 then
			local x,y=random(100),random(100)
			if x==y then
				TryRecieveItem(sceneId,selfId,10124518,1)
				str=format("#cff99cc#{_INFOUSR%s}#cff99cc ðem #GHoa cüa Tiên Hoa#cff99cc giao cho #GÐÕi Lý #YHà Bäo Ng÷c (183,200)#cff99cc ð±i ðßþc #Y[Ng÷c Vû Thanh Trù]#cff99cc, th§t may m¡n",GetName(sceneId,selfId))
				AddGlobalCountNews(sceneId,str)
			elseif abs(x-y)==1 then
				TryRecieveItem(sceneId,selfId,30308282,1)
				str=format("#cff99cc#{_INFOUSR%s}#cff99cc ðem #GHoa cüa Tiên Hoa#cff99cc giao cho #GÐÕi Lý #YHà Bäo Ng÷c (183,200)#cff99cc ð±i ðßþc #Y[TrÑng trân thú: Bách Chiªn Kim Cß½ng]#cff99cc, th§t may m¡n",GetName(sceneId,selfId))
				AddGlobalCountNews(sceneId,str)
			elseif abs(x-y)==2 then
				TryRecieveItem(sceneId,selfId,30308282,1)
				str=format("#cff99cc#{_INFOUSR%s}#cff99cc ðem #GHoa cüa Tiên Hoa#cff99cc giao cho #GÐÕi Lý #YHà Bäo Ng÷c (183,200)#cff99cc ð±i ðßþc #Y[TrÑng trân thú: Bách Chiªn Kim Cß½ng]#cff99cc, th§t may m¡n",GetName(sceneId,selfId))
				AddGlobalCountNews(sceneId,str)
			elseif abs(x-y)==3 then
				TryRecieveItem(sceneId,selfId,30308283,1)
				str=format("#cff99cc#{_INFOUSR%s}#cff99cc ðem #GHoa cüa Tiên Hoa#cff99cc giao cho #GÐÕi Lý #YHà Bäo Ng÷c (183,200)#cff99cc ð±i ðßþc #Y[TrÑng trân thú: Ti¬u Long Næ]#cff99cc, th§t may m¡n",GetName(sceneId,selfId))
				AddGlobalCountNews(sceneId,str)
			elseif abs(x-y)==4 then
				TryRecieveItem(sceneId,selfId,30308284,1)
				str=format("#cff99cc#{_INFOUSR%s}#cff99cc ðem #GHoa cüa Tiên Hoa#cff99cc giao cho #GÐÕi Lý #YHà Bäo Ng÷c (183,200)#cff99cc ð±i ðßþc #Y[TrÑng trân thú: Chiªn Binh Tu La]#cff99cc, th§t may m¡n",GetName(sceneId,selfId))
				AddGlobalCountNews(sceneId,str)
			elseif abs(x-y)==5 then
				TryRecieveItem(sceneId,selfId,10124620,1)
				str=format("#cff99cc#{_INFOUSR%s}#cff99cc ðem #GHoa cüa Tiên Hoa#cff99cc giao cho #GÐÕi Lý #YHà Bäo Ng÷c (183,200)#cff99cc ð±i ðßþc #Y[M£c Vû Ti«m U]#cff99cc, th§t may m¡n",GetName(sceneId,selfId))
				AddGlobalCountNews(sceneId,str)
			elseif abs(x-y)<=10 then
				TryRecieveItem(sceneId,selfId,10141802,1)
				str=format("#cff99cc#{_INFOUSR%s}#cff99cc ðem #GHoa cüa Tiên Hoa#cff99cc giao cho #GÐÕi Lý #YHà Bäo Ng÷c (183,200)#cff99cc ð±i ðßþc #Y[Niên Thú Lôi Ðình]#cff99cc, th§t may m¡n",GetName(sceneId,selfId))
				AddGlobalCountNews(sceneId,str)
			end
		end
		--end trao thß·ng
		local nExp=GetLevel(sceneId,selfId)*random(10000)
		AddExp(sceneId,selfId,nExp)
		AddMoney(sceneId,selfId,100000)
	end
	--*********************--
	if GetNumText()==3 then --Ta chï ði ngang qua...
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,1000)
	end
	--*********************--
end
end
