x001085_g_scriptId = 001085
function x001085_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local strText = "#WT¤t cä b¢ng hæu trong thª gi¾i Thiên Long Bát Bµ Tình Kiªm hãy ði thu th§p ðü 4 chæ  #YÐoàn - Tø - Sum - V¥y #Wvà mang t¾i sÑ giä sñ ki®n ð¬ ð±i mâm bánh phù hþp"
		AddText( sceneId, strText )
		AddNumText( sceneId, x001085_g_scriptId, "Ð±i mâm bánh", 3, 1)
		AddNumText( sceneId, x001085_g_scriptId, "V« event #GÐ±i mâm bánh", 11, 2)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
function x001085_OnEventRequest( sceneId, selfId, targetId, eventId )
	local sum = LuaFnGetAvailableItemCount(sceneId, selfId,20700042)-- ðªm s¯ chæ Sum
	local vay= LuaFnGetAvailableItemCount(sceneId, selfId,20700043)-- ðªm s¯ chæ V¥y
	local doan = LuaFnGetAvailableItemCount(sceneId, selfId,20700044)-- ðªm s¯ chæ Ðoàn
	local tu = LuaFnGetAvailableItemCount(sceneId, selfId,20700045)-- ðªm s¯ chæ Tø
	
	if GetNumText()==1 then
	local slot =LuaFnGetPropertyBagSpace( sceneId, selfId)
		if slot <1 then
			x001085_Tips(sceneId, selfId,targetId,"B¢ng hæu hãy ð¬ ít nh¤t 1 ô tr¯ng trong tay näi!!")
			x001085_FailTips(sceneId,selfId,"B¢ng hæu hãy ð¬ ít nh¤t 1 ô tr¯ng trong tay näi!!")
			return
		end
		BeginEvent( sceneId )
			local strText = "#WM¶i các hÕ lña ch÷n kích cÞ mâm bánh mu¯n ð±i"
			AddText( sceneId, strText )
			AddNumText( sceneId, x001085_g_scriptId, "Ð±i mâm bánh ti¬u", 3, 3)
			AddNumText( sceneId, x001085_g_scriptId, "Ð±i mâm bánh trung", 3, 4)
			AddNumText( sceneId, x001085_g_scriptId, "Ð±i mâm bánh ðÕi", 3, 5)
			AddNumText( sceneId, x001085_g_scriptId, "Liên quan t¾i kích cÞ mâm bánh", 11, 6)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if GetNumText()==3 then
		if sum<1 or vay<1 or doan<1 or tu<1 then
			x001085_Tips(sceneId, selfId,targetId,"B¢ng hæu không ðü 4 loÕi chæ!!")
			x001085_FailTips(sceneId, selfId,"B¢ng hæu không ðü 4 loÕi chæ!!")
			return
		else
			local slot =LuaFnGetPropertyBagSpace( sceneId, selfId)
			LuaFnDelAvailableItem(sceneId,selfId,20700042,1)
			LuaFnDelAvailableItem(sceneId,selfId,20700043,1)
			LuaFnDelAvailableItem(sceneId,selfId,20700044,1)
			LuaFnDelAvailableItem(sceneId,selfId,20700045,1)

			local BagPos = TryRecieveItem( sceneId, selfId, 30006015, QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			x001085_Tips(sceneId, selfId,targetId,"Ð±i mâm bánh thành công")
			x001085_FailTips(sceneId,selfId,"Ð±i mâm bánh thành công")
			return
		end
	end
			
	if GetNumText()==4 then
		if sum<10 or vay<10 or doan<10 or tu<10 then
			x001085_Tips(sceneId, selfId,targetId,"B¢ng hæu không ðü 4 loÕi chæ!!")
			x001085_FailTips(sceneId, selfId,"B¢ng hæu không ðü 4 loÕi chæ!!")
			return
		else
	
			LuaFnDelAvailableItem(sceneId,selfId,20700042,10)
			LuaFnDelAvailableItem(sceneId,selfId,20700043,10)
			LuaFnDelAvailableItem(sceneId,selfId,20700044,10)
			LuaFnDelAvailableItem(sceneId,selfId,20700045,10)

			local BagPos = TryRecieveItem( sceneId, selfId, 30006016, QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			x001085_Tips(sceneId, selfId,targetId,"Ð±i mâm bánh thành công")
			x001085_FailTips(sceneId,selfId,"Ð±i mâm bánh thành công")
			return
		end
	end
	
	if GetNumText()==5 then
		if sum<50 or vay<50 or doan<50 or tu<50 then
			x001085_Tips(sceneId, selfId,targetId,"B¢ng hæu không ðü 4 loÕi chæ!!")
			x001085_FailTips(sceneId, selfId,"B¢ng hæu không ðü 4 loÕi chæ!!")
			return
		else
			local slot =LuaFnGetPropertyBagSpace( sceneId, selfId)

			LuaFnDelAvailableItem(sceneId,selfId,20700042,50)
			LuaFnDelAvailableItem(sceneId,selfId,20700043,50)
			LuaFnDelAvailableItem(sceneId,selfId,20700044,50)
			LuaFnDelAvailableItem(sceneId,selfId,20700045,50)

			local BagPos = TryRecieveItem( sceneId, selfId, 30006017, QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end
			x001085_Tips(sceneId, selfId,targetId,"Ð±i mâm bánh thành công")
			x001085_FailTips(sceneId,selfId,"Ð±i mâm bánh thành công")
			return
		end
	end
	
	if GetNumText()==6 then
		BeginEvent( sceneId )
			local text1 ="#GMâm bánh Ti¬u #Wc¥n #YÐoàn - Tø - Sum - V¥y#W m²i loÕi 1 chæ. #r#GMâm bánh Trung c¥n Ðoàn - Tø - Sum - V¥y#W m²i loÕi 10 chæ#r"
			local text2 = "#GMâm bánh ÐÕi #Wc¥n #YÐoàn - Tø - Sum - V¥y#W m²i loÕi 50 chæ. L¨ dî nhiên, ph¥n thß·ng cüa t×ng mâm bánh s¨ khác nhau."
			AddText(sceneId,text1)
			AddText(sceneId,text2)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if GetNumText()==2 then
		BeginEvent( sceneId )
			local text1 ="#WTham gia các hoÕt ðµng #GTrân Long KÏ Cuµc, Ác T£c, Ác Bá, Lâu Lan T¥m Bäo, Tô Châu 1 2 3.... #WB¢ng hæu có tï l® nh§n ðßþc các ký tñ có tên: #YÐoàn - Tø - Sum - V¥y#r"
			local text2="#WMang ðü 4 ký tñ #YÐoàn - Tø - Sum - V¥y, #Wðªn g£p tÕi hÕ, r¤t nhi«u v§t ph¦m b¤t ng¶ t× Thiên Long Bát Bµ Tình Kiªm ðang ch¶ ðón b¢ng hæu !!"
			AddText(sceneId,text1)
			AddText(sceneId,text2)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
end

function x001085_Tips(sceneId, selfId,targetId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x001085_FailTips(sceneId, selfId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end
