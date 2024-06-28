--SÑ giä ph¥n thß·ng BHÐC
--Author: Kenvin Sói

--*********************--
x002059_g_scriptId = 002059
--*********************--
x002059_g_Guild = {
	{	Guild_Index=11,	Guild_Master_Index=1050002057	},	--Bang hµi dành v¸ trí s¯ 1 và ID bang chü
	{	Guild_Index=373,	Guild_Master_Index=1050008284	},	--Bang hµi dành v¸ trí s¯ 2 và ID bang chü
}
--*********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x002059_OnDefaultEvent(sceneId,selfId,targetId)

	--*********************--
	BeginEvent(sceneId)
		AddText(sceneId,"  Hành t¦u giang h°, ðß½ng nhiên n¡m ð¤m ai to ngß¶i ðó là ðÕi gia, nhßng tøc ngæ cûng nói, có ti«n sai khiªn ðßþc quÖ th¥n, trong tay có ti«n vàng, vi®c khó làm cûng thành ra ð½n giän")
		local My_ID=LuaFnGetGUID(sceneId,selfId)
		local My_Guild_ID=GetHumanGuildID(sceneId,selfId)
		if (GetMissionData(sceneId,selfId,MD_GUILDWAR_RECIEVE_BONUS)<=40 and GetTime2Day()<=20150930 and ((My_Guild_ID==x002059_g_Guild[1].Guild_Index and My_ID==x002059_g_Guild[1].Guild_Master_Index)or (My_Guild_ID==x002059_g_Guild[2].Guild_Index and My_ID==x002059_g_Guild[2].Guild_Master_Index))) then
			AddText(sceneId,"Kéo dài ðªn hªt #G30/09/2015#W, ph¥n thß·ng các thành viên bang hµi tham gia #GBang hµi ðÕi chiªn#W s¨ có th¬ nh§n ðßþc tÕi #GKim Ngû Gia#W!")
			AddText(sceneId,"#YBang chü ðÕi di®n cho toàn bang có th¬ nh§n ph¥n thß·ng · ðây!")
			AddNumText(sceneId,x002059_g_scriptId,"Nh§n ph¥n thß·ng #GBang Hµi ÐÕi Chiªn",6,1)
			AddNumText(sceneId,x002059_g_scriptId,"Ta chï ði ngang qua...",-1,0)
		else
			AddText(sceneId,"#YBang cüa các hÕ không có ph¥n thß·ng có th¬ nh§n!")
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	--*********************--
	
end
--**********************************--
--*        On Event Request       *--
--**********************************--
function x002059_OnEventRequest(sceneId,selfId,targetId,eventId)
	
	--*********************--
	if GetNumText()==0 then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,1000)
	end
	--*********************--
	if GetNumText()==1 then
	
		local Guildpos = GetGuildPos(sceneId, selfId)
		
		if GetTime2Day()>20150930 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ðã hªt th¶i gian có th¬ nh§n thß·ng!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		--hd add check chuc vi bang hoi
		elseif Guildpos ~= GUILD_POSITION_CHIEFTAIN then --bang chu
			BeginEvent(sceneId)
				AddText(sceneId,"Các hÕ không phäi Bang Chü ðß½ng nhi®m!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		--end --hd add check chuc vi bang hoi
		elseif GetMissionData(sceneId,selfId,MD_GUILDWAR_RECIEVE_BONUS)>40 then
			BeginEvent(sceneId)
				AddText(sceneId,"Bang cüa các hÕ ðã nh§n hªt ph¥n thß·ng r°i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		elseif LuaFnGetPropertyBagSpace(sceneId,selfId)<30 or LuaFnGetMaterialBagSpace(sceneId,selfId)<30 then
			BeginEvent(sceneId)
				AddText(sceneId,"Các hÕ hãy s¡p xªp lÕi ít nh¤t #G30 ô tr¯ng#W trong ô #GÐÕo cø#W và #G30 ô tr¯ng#W trong ô #GNguyên li®u#W!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		local My_ID=LuaFnGetGUID(sceneId,selfId)
		local My_Guild_ID=GetHumanGuildID(sceneId,selfId)
		
		local nStep=GetMissionData(sceneId,selfId,MD_GUILDWAR_RECIEVE_BONUS)
		if nStep==0 then
			nStep=1
		end
		
		if My_Guild_ID==x002059_g_Guild[1].Guild_Index and My_ID==x002059_g_Guild[1].Guild_Master_Index then		--Bang hµi dành v¸ trí s¯ 1
			if nStep>=1 and nStep<=3 then																			--Thú cßÞi 60 ngày (x20)
				for i=1,20 do
					TryRecieveItem(sceneId,selfId,10141621,1) --Thú cßÞi: ÐÕi ÐÕi Siêu C¤p Niên Thú 60
				end
			elseif nStep==4 then																					--Th¶i trang Ng÷c Vû Thanh Trù (x10)
				for i=1,10 do
					TryRecieveItem(sceneId,selfId,10124521,1) --Ng÷c Vû Thanh Trù 60
				end
			elseif nStep==5 then																					--Chân nguyên phách (x600)
				for i=1,600 do
					TryRecieveItem(sceneId,selfId,30010080,1) --Chân Nguyên Phách
				end
			elseif nStep==6 then																					--Chân nguyên tinh phách (x60)
				for i=1,60 do
					TryRecieveItem(sceneId,selfId,30010081,1) --Chân Nguyên Tinh Phách
				end
			elseif nStep==7 then																					--Ng÷c th¶i trang (x10)
				local Fashion_Gem_Index=50431000
				for i=1,10 do
					TryRecieveItem(sceneId,selfId,Fashion_Gem_Index+random(5),1) --random ngoc thoi trang
				end
			elseif nStep==8 then																					--Thöi vàng (x600)
				for i=1,600 do
					TryRecieveItem(sceneId,selfId,30505197,1) --Thöi Vàng
				end
			elseif nStep==9 then																					--Linh h°n toái phiªn ðÕi (x60)
				for i=1,60 do
					TryRecieveItem(sceneId,selfId,30505198,1) --Linh H°n Toái Phiªn ÐÕi
				end
			elseif nStep==10 then																					--Ly Höa (x600)														
				for i=1,600 do
					TryRecieveItem(sceneId,selfId,20503062,1) --Ly Höa
				end
			elseif nStep>=11 and nStep<=40 then																		--Trang b¸ Tinh Thông Phù (x600)
				for i=1,20 do
					TryRecieveItem(sceneId,selfId,20503061,1) --Trang b¸ Tinh thông phù
				end
			end
		elseif My_Guild_ID==x002059_g_Guild[2].Guild_Index and My_ID==x002059_g_Guild[2].Guild_Master_Index then	--Bang hµi dành v¸ trí s¯ 2
			if nStep>=1 and nStep<=3 then																			--Thú cßÞi 60 ngày (x10)
				for i=1,10 do
					TryRecieveItem(sceneId,selfId,10141621,1) --Thú cßÞi: ÐÕi ÐÕi Siêu C¤p Niên Thú 60
				end
			elseif nStep==4 then																					--Th¶i trang Ng÷c Vû Thanh Trù (x5)
				for i=1,5 do
					TryRecieveItem(sceneId,selfId,10124521,1) --Ng÷c Vû Thanh Trù 60
				end
			elseif nStep==5 then																					--Chân nguyên phách (x300)
				for i=1,300 do
					TryRecieveItem(sceneId,selfId,30010080,1) --Chân Nguyên Phách
				end
			elseif nStep==6 then																					--Chân nguyên tinh phách (x30)
				for i=1,30 do
					TryRecieveItem(sceneId,selfId,30010081,1) --Chân Nguyên Tinh Phách
				end
			elseif nStep==7 then																					--Ng÷c th¶i trang (x5)
				local Fashion_Gem_Index=50431000
				for i=1,5 do
					TryRecieveItem(sceneId,selfId,Fashion_Gem_Index+random(5),1) --random ngoc thoi trang
				end
			elseif nStep==8 then																					--Thöi vàng (x300)
				for i=1,300 do
					TryRecieveItem(sceneId,selfId,30505197,1) --Thöi Vàng
				end
			elseif nStep==9 then																					--Linh h°n toái phiªn ðÕi (x30)
				for i=1,30 do
					TryRecieveItem(sceneId,selfId,30505198,1) --Linh H°n Toái Phiªn ÐÕi
				end
			elseif nStep==10 then																					--Ly Höa (x300)														
				for i=1,300 do
					TryRecieveItem(sceneId,selfId,20503062,1) --Ly Höa
				end
			elseif nStep>=11 and nStep<=40 then																		--Trang b¸ Tinh Thông Phù (x300)
				for i=1,10 do
					TryRecieveItem(sceneId,selfId,20503061,1) --Trang b¸ Tinh thông phù
				end
			end
		end
		
		SetMissionData(sceneId,selfId,MD_GUILDWAR_RECIEVE_BONUS,nStep+1)
		LuaFnSendSpecificImpactToUnit(sceneId,targetId,targetId,selfId,147,0)
		
		BroadMsgByChatPipe(sceneId,selfId,"#RBang chü cüa b±n bang "..GetName(sceneId,selfId).." nh§n ph¥n thß·ng #GBang Hµi Chiªn l¥n "..nStep.."#R thành công!",6)
		
		BeginEvent(sceneId)
			AddText(sceneId,"Nh§n ph¥n thß·ng thành công!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--*********************--
	
end
