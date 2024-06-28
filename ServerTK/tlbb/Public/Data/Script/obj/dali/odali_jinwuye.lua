--S� gi� ph�n th߷ng BH�C
--Author: Kenvin S�i

--*********************--
x002059_g_scriptId = 002059
--*********************--
x002059_g_Guild = {
	{	Guild_Index=11,	Guild_Master_Index=1050002057	},	--Bang h�i d�nh v� tr� s� 1 v� ID bang ch�
	{	Guild_Index=373,	Guild_Master_Index=1050008284	},	--Bang h�i d�nh v� tr� s� 2 v� ID bang ch�
}
--*********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x002059_OnDefaultEvent(sceneId,selfId,targetId)

	--*********************--
	BeginEvent(sceneId)
		AddText(sceneId,"  H�nh t�u giang h�, �߽ng nhi�n n�m �m ai to ng߶i �� l� ��i gia, nh�ng t�c ng� c�ng n�i, c� ti�n sai khi�n ���c qu� th�n, trong tay c� ti�n v�ng, vi�c kh� l�m c�ng th�nh ra �n gi�n")
		local My_ID=LuaFnGetGUID(sceneId,selfId)
		local My_Guild_ID=GetHumanGuildID(sceneId,selfId)
		if (GetMissionData(sceneId,selfId,MD_GUILDWAR_RECIEVE_BONUS)<=40 and GetTime2Day()<=20150930 and ((My_Guild_ID==x002059_g_Guild[1].Guild_Index and My_ID==x002059_g_Guild[1].Guild_Master_Index)or (My_Guild_ID==x002059_g_Guild[2].Guild_Index and My_ID==x002059_g_Guild[2].Guild_Master_Index))) then
			AddText(sceneId,"K�o d�i �n h�t #G30/09/2015#W, ph�n th߷ng c�c th�nh vi�n bang h�i tham gia #GBang h�i ��i chi�n#W s� c� th� nh�n ���c t�i #GKim Ng� Gia#W!")
			AddText(sceneId,"#YBang ch� ��i di�n cho to�n bang c� th� nh�n ph�n th߷ng � ��y!")
			AddNumText(sceneId,x002059_g_scriptId,"Nh�n ph�n th߷ng #GBang H�i ��i Chi�n",6,1)
			AddNumText(sceneId,x002059_g_scriptId,"Ta ch� �i ngang qua...",-1,0)
		else
			AddText(sceneId,"#YBang c�a c�c h� kh�ng c� ph�n th߷ng c� th� nh�n!")
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
				AddText(sceneId,"�� h�t th�i gian c� th� nh�n th߷ng!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		--hd add check chuc vi bang hoi
		elseif Guildpos ~= GUILD_POSITION_CHIEFTAIN then --bang chu
			BeginEvent(sceneId)
				AddText(sceneId,"C�c h� kh�ng ph�i Bang Ch� �߽ng nhi�m!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		--end --hd add check chuc vi bang hoi
		elseif GetMissionData(sceneId,selfId,MD_GUILDWAR_RECIEVE_BONUS)>40 then
			BeginEvent(sceneId)
				AddText(sceneId,"Bang c�a c�c h� �� nh�n h�t ph�n th߷ng r�i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		elseif LuaFnGetPropertyBagSpace(sceneId,selfId)<30 or LuaFnGetMaterialBagSpace(sceneId,selfId)<30 then
			BeginEvent(sceneId)
				AddText(sceneId,"C�c h� h�y s�p x�p l�i �t nh�t #G30 � tr�ng#W trong � #G��o c�#W v� #G30 � tr�ng#W trong � #GNguy�n li�u#W!")
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
		
		if My_Guild_ID==x002059_g_Guild[1].Guild_Index and My_ID==x002059_g_Guild[1].Guild_Master_Index then		--Bang h�i d�nh v� tr� s� 1
			if nStep>=1 and nStep<=3 then																			--Th� c��i 60 ng�y (x20)
				for i=1,20 do
					TryRecieveItem(sceneId,selfId,10141621,1) --Th� c��i: ��i ��i Si�u C�p Ni�n Th� 60
				end
			elseif nStep==4 then																					--Th�i trang Ng�c V� Thanh Tr� (x10)
				for i=1,10 do
					TryRecieveItem(sceneId,selfId,10124521,1) --Ng�c V� Thanh Tr� 60
				end
			elseif nStep==5 then																					--Ch�n nguy�n ph�ch (x600)
				for i=1,600 do
					TryRecieveItem(sceneId,selfId,30010080,1) --Ch�n Nguy�n Ph�ch
				end
			elseif nStep==6 then																					--Ch�n nguy�n tinh ph�ch (x60)
				for i=1,60 do
					TryRecieveItem(sceneId,selfId,30010081,1) --Ch�n Nguy�n Tinh Ph�ch
				end
			elseif nStep==7 then																					--Ng�c th�i trang (x10)
				local Fashion_Gem_Index=50431000
				for i=1,10 do
					TryRecieveItem(sceneId,selfId,Fashion_Gem_Index+random(5),1) --random ngoc thoi trang
				end
			elseif nStep==8 then																					--Th�i v�ng (x600)
				for i=1,600 do
					TryRecieveItem(sceneId,selfId,30505197,1) --Th�i V�ng
				end
			elseif nStep==9 then																					--Linh h�n to�i phi�n ��i (x60)
				for i=1,60 do
					TryRecieveItem(sceneId,selfId,30505198,1) --Linh H�n To�i Phi�n ��i
				end
			elseif nStep==10 then																					--Ly H�a (x600)														
				for i=1,600 do
					TryRecieveItem(sceneId,selfId,20503062,1) --Ly H�a
				end
			elseif nStep>=11 and nStep<=40 then																		--Trang b� Tinh Th�ng Ph� (x600)
				for i=1,20 do
					TryRecieveItem(sceneId,selfId,20503061,1) --Trang b� Tinh th�ng ph�
				end
			end
		elseif My_Guild_ID==x002059_g_Guild[2].Guild_Index and My_ID==x002059_g_Guild[2].Guild_Master_Index then	--Bang h�i d�nh v� tr� s� 2
			if nStep>=1 and nStep<=3 then																			--Th� c��i 60 ng�y (x10)
				for i=1,10 do
					TryRecieveItem(sceneId,selfId,10141621,1) --Th� c��i: ��i ��i Si�u C�p Ni�n Th� 60
				end
			elseif nStep==4 then																					--Th�i trang Ng�c V� Thanh Tr� (x5)
				for i=1,5 do
					TryRecieveItem(sceneId,selfId,10124521,1) --Ng�c V� Thanh Tr� 60
				end
			elseif nStep==5 then																					--Ch�n nguy�n ph�ch (x300)
				for i=1,300 do
					TryRecieveItem(sceneId,selfId,30010080,1) --Ch�n Nguy�n Ph�ch
				end
			elseif nStep==6 then																					--Ch�n nguy�n tinh ph�ch (x30)
				for i=1,30 do
					TryRecieveItem(sceneId,selfId,30010081,1) --Ch�n Nguy�n Tinh Ph�ch
				end
			elseif nStep==7 then																					--Ng�c th�i trang (x5)
				local Fashion_Gem_Index=50431000
				for i=1,5 do
					TryRecieveItem(sceneId,selfId,Fashion_Gem_Index+random(5),1) --random ngoc thoi trang
				end
			elseif nStep==8 then																					--Th�i v�ng (x300)
				for i=1,300 do
					TryRecieveItem(sceneId,selfId,30505197,1) --Th�i V�ng
				end
			elseif nStep==9 then																					--Linh h�n to�i phi�n ��i (x30)
				for i=1,30 do
					TryRecieveItem(sceneId,selfId,30505198,1) --Linh H�n To�i Phi�n ��i
				end
			elseif nStep==10 then																					--Ly H�a (x300)														
				for i=1,300 do
					TryRecieveItem(sceneId,selfId,20503062,1) --Ly H�a
				end
			elseif nStep>=11 and nStep<=40 then																		--Trang b� Tinh Th�ng Ph� (x300)
				for i=1,10 do
					TryRecieveItem(sceneId,selfId,20503061,1) --Trang b� Tinh th�ng ph�
				end
			end
		end
		
		SetMissionData(sceneId,selfId,MD_GUILDWAR_RECIEVE_BONUS,nStep+1)
		LuaFnSendSpecificImpactToUnit(sceneId,targetId,targetId,selfId,147,0)
		
		BroadMsgByChatPipe(sceneId,selfId,"#RBang ch� c�a b�n bang "..GetName(sceneId,selfId).." nh�n ph�n th߷ng #GBang H�i Chi�n l�n "..nStep.."#R th�nh c�ng!",6)
		
		BeginEvent(sceneId)
			AddText(sceneId,"Nh�n ph�n th߷ng th�nh c�ng!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--*********************--
	
end
