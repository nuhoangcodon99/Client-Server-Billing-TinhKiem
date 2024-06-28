--NPC ð±i hoa 8-3-2014
x001098_g_scriptId = 001098
function x001098_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local strText ="TÕi hÕ là ngß¶i giúp nhæng bông hoa h°ng bé nhö kia thêm rñc rÞ. B¢ng hæu có hoa h°ng không, mang chúng t¾i ðây ta s¨ giúp...!!!"
		AddText( sceneId, strText )
		AddNumText( sceneId, x001098_g_scriptId, "Dùng hoa h°ng nhö kªt thành ðóa hoa l¾n", 3, 1)
		AddNumText( sceneId, x001098_g_scriptId, "#V« sñ ki®n mùng 8 tháng 3",11 , 8)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
function x001098_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 1 then
		BeginEvent( sceneId )
				AddText( sceneId, "M¶i b¢ng hæu lña ch÷n hình thÑc ð±i hoa" )
				AddNumText( sceneId, x001098_g_scriptId, "#RDùng #Y400#W bông hoa nhö #Wð±i l¤y #G999 ðóa h°ng", 3, 2)
				AddNumText( sceneId, x001098_g_scriptId, "#RDùng #Y10 bông hoa nhö #Wð±i 1 bó hoa #G10 bông h°ng", 3, 3)
				AddNumText( sceneId, x001098_g_scriptId, "#RDùng #Y15 bông hoa nhö #Wð±i 1 bó #G15 ðóa Mai Khôi", 3, 4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if GetNumText() == 2 then -- doi 400 bong
			
		local number = LuaFnGetAvailableItemCount(sceneId, selfId, 30509008)
		local slot =LuaFnGetPropertyBagSpace( sceneId, selfId)
		if number < 400 then
			
			local strText = "B¢ng hæu phäi có ðü #400 bông h°ng nhö #Wthì ta m¾i giúp b¢ng hæu ðßþc"
			x001098_Tips(sceneId,selfId,targetId,strText)
			
			return
		elseif slot < 1 then
				x001098_Tips(sceneId,selfId,targetId,"Tay näi cüa b¢ng hæu không ðü ch² tr¯ng!")
				x001098_FailTips(sceneId,selfId,"Tay näi cüa b¢ng hæu không ðü ch² tr¯ng!")
			return
		else
			LuaFnDelAvailableItem(sceneId,selfId,30509008,400) --xoa item
			local BagPos = TryRecieveItem( sceneId, selfId, 30509011, QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
		end		
		x001098_Tips(sceneId,selfId,targetId,"B¢ng hæu v×a nh§n ðßþc 1 #G999 ðóa h°ng")
		x001098_FailTips(sceneId,selfId,"B¢ng hæu v×a nh§n ðßþc #G999 ðóa h°ng")
		return
	end
	if GetNumText() == 3 then-- doi 10 bong
			
		local number = LuaFnGetAvailableItemCount(sceneId, selfId, 30509008)
		local slot =LuaFnGetPropertyBagSpace( sceneId, selfId) --check slot bag
		if number<10 then
				local text = "B¢ng hæu phäi có ðü #R10 bông h°ng nhö #Wthì ta m¾i giúp b¢ng hæu ðßþc"
				x001098_Tips(sceneId,selfId,targetId,text)
			return
		elseif slot<1 then
				x001098_Tips(sceneId,selfId,targetId,"Tay näi cüa b¢ng hæu không ðü ch² tr¯ng!")
				x001098_FailTips(sceneId,selfId,"Tay näi cüa b¢ng hæu không ðü ch² tr¯ng!")
			return
		else
			LuaFnDelAvailableItem(sceneId,selfId,30509008,10) --xoa item
			local BagPos = TryRecieveItem( sceneId, selfId, 30509013, QUALITY_MUST_BE_CHANGE )
				if -1 ~= BagPos then
					LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
				end
		end		
		x001098_FailTips(sceneId,selfId,"B¢ng hæu v×a nh§n ðßþc 1 bó #Y10 bông h°ng")
		x001098_Tips(sceneId,selfId,targetId,"B¢ng hæu v×a nh§n ðßþc 1 bó#Y 10 bông h°ng")
			
		return
	end

	if GetNumText() == 4 then-- doi 15 bong
			
		local number = LuaFnGetAvailableItemCount(sceneId, selfId, 30509008)
		local slot =LuaFnGetPropertyBagSpace( sceneId, selfId) --check slot bag
		if number<15 then
				local text = "B¢ng hæu phäi có ðü #R15 bông h°ng nhö #Wthì ta m¾i giúp b¢ng hæu ðßþc"
				x001098_Tips(sceneId,selfId,targetId,text)
			return
		elseif slot<1 then
				x001098_Tips(sceneId,selfId,targetId,"Tay näi cüa b¢ng hæu không ðü ch² tr¯ng!")
				x001098_FailTips(sceneId,selfId,"Tay näi cüa b¢ng hæu không ðü ch² tr¯ng!")
			return
		else
			LuaFnDelAvailableItem(sceneId,selfId,30509008,15) --xoa item
			local BagPos = TryRecieveItem( sceneId, selfId, 30509014, QUALITY_MUST_BE_CHANGE )
				if -1 ~= BagPos then
					LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
				end
		end		
		x001098_FailTips(sceneId,selfId,"B¢ng hæu v×a nh§n ðßþc 1 bó #Y15 ðóa Mai Khôi")
		x001098_Tips(sceneId,selfId,targetId,"B¢ng hæu v×a nh§n ðßþc 1 bó #Y15 ðóa Mai Khôi")
			
		return
	end


	if GetNumText() == 8 then --huong dan su kien
		BeginEvent( sceneId )
			local strText1="Hoa h°ng nhö có th¬ thu th§p ðßþc b¢ng cách tham gia các phø bän: Ác T£c, Ác Bá, Q 123 Tô Châu ho£c mua trong ti®m KNB. #rT£ng hoa: Khi t£ng ð¯i phß½ng 1 bó 999 ðóa h°ng, cä b¢ng hæu và ð¯i phß½ng ð«u có c½ hµi nhân ðßþc nhæng v§t ph¦m b¤t ng¶ nhân d¸p Qu¯c tª Phø næ 8-3"
			--local strText2="T£ng hoa: Khi t£ng ð¯i phß½ng 1 bó 999 ðóa h°ng, cä b¢ng hæu và ð¯i phß½ng ð«u có c½ hµi nhân ðßþc nhæng v§t ph¦m b¤t ng¶ nhân d¸p Qu¯c tª Phø næ 8-3"
			local strText3="Nªu không có ði«u ki®n ð¬ có ðßþc 1 bó 999 ðóa h°ng, b¢ng hæu cûng có th¬ dùng 1 bông h°ng, 10 bông h°ng ho£c 15 ðóa Mai Khôi ðem t£ng ngß¶i ¤y."
			localstrText4="Cûng s¨ có nhæng món quà khi b¢ng hæu t£ng ð¯i phß½ng nhæng bông hoa nhö xinh x¡n ðó ð¤y!!!#r Ðây cûng là d¸p r¤t t¯t ð¬ b¢ng hæu bày tö t¤m chân tình v¾i ngß¶i ¤y ðó. Còn ngÕi ng¥n gì næa mà không thØ?????"
		--	local strText5="Ðây cûng là d¸p r¤t t¯t ð¬ b¢ng hæu bày tö t¤m chân tình v¾i ngß¶i ¤y ðó. Còn ngÕi ng¥n gì næa mà không thØ?????"
				AddText(sceneId,strText1)
				AddText(sceneId,strText2)
				AddText(sceneId,strText3)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--end hd
end
function x001098_Tips(sceneId, selfId,targetId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x001098_FailTips(sceneId, selfId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end
