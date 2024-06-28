x001094_g_scriptId = 001094
x001094_Item_VIP={
	30505121,--trÑng xí nga vß½ng
	10124518,--th¶i trang 30 ngày Ng÷c Vû Thanh Trù
	30309092,--trÑng trân thú Thái Thßþng Long TØ
	30309093,--Côn luân tiên tu¤n
	30309094,--Thánh Trang
	30309095,--Mao mao Ngßu
	30309096,--Giän Ti¬u Hoa
	10141507,--Cánh: Viêm Vû 30
	10141535,--T÷a kÜ: Thß½ng Häi Long Câu 30
}
x001094_item_cuibap={
	30008048,--Kim Cß½ng töa
	30505219,--Ti¬u LÕt Bá
	30505216,--Th± Linh Châu
	
	30008014,--Thông Thiên Linh Ðan
--yq bt 8
30308111,
30308112,
30308113,
30308114,
30308115,
30308116,
30308117,
30308118,
30308119,

30308121,
30308122,
30308123,
30308124,
30308125,
30308126,
30308127,
30308128,
30308129
}


x001094_g_yeuquyet_bt8 = {
30308111,
30308112,
30308113,
30308114,
30308115,
30308116,
30308117,
30308118,
30308119,

30308121,
30308122,
30308123,
30308124,
30308125,
30308126,
30308127,
30308128,
30308129
}


function x001094_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local strText = "#WNgày 1-4 ðâu chï có nói d¯i nhau, hãy mang #GChú H« Tinh Quái#W t¾i ðây, ta s¨ dành ph¥n thß·ng th§t sñ cho b¢ng hæu!"
		AddText( sceneId, strText )
		AddNumText( sceneId, x001094_g_scriptId, "Ngày cá tháng Tß", 3, 1)
		AddNumText( sceneId, x001094_g_scriptId, "#GÐ±i Yªu Quyªt c¯ ð¸nh", 3, 3)
		AddNumText( sceneId, x001094_g_scriptId, "V« event Ngày cá tháng Tß", 11, 2)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x001094_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText()==1 then
		local lao = LuaFnGetAvailableItemCount(sceneId, selfId,30505199)-- ðªm s¯ Chú h«
		local slot =LuaFnGetPropertyBagSpace( sceneId, selfId)
		if lao<10 then
			x001094_Tips(sceneId,selfId,targetId,"B¢ng hæu không ðü 10 Chú H« Tinh Quái")
			x001094_FailTips(sceneId,selfId,"B¢ng hæu không ðü 10 Chú H« Tinh Quái")
			return
		end
		if slot <1 then
			--x001094_Tips(sceneId, selfId,targetId,"B¢ng hæu hãy ð¬ ít nh¤t 1 ô tr¯ng trong tay näi!!")
			x001094_FailTips(sceneId,selfId,"B¢ng hæu hãy ð¬ ít nh¤t 1 ô tr¯ng trong tay näi!!")
			return
		end

		local bonus = random(100)
		LuaFnDelAvailableItem(sceneId,selfId,30505199,10) --xoa item
		if bonus > 95 then				
			--Pt vip
			local BagPos = TryRecieveItem( sceneId, selfId, x001094_Item_VIP[random(getn(x001094_Item_VIP))], QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item
			end				
		elseif bonus > 80 then
			--Pt bt
			local BagPos = TryRecieveItem( sceneId, selfId, x001094_item_cuibap[random(getn(x001094_item_cuibap))], QUALITY_MUST_BE_CHANGE )
			if -1 ~= BagPos then
				LuaFnItemBind( sceneId, selfId, BagPos) --co dinh item

			end
			
		else
			--Xit
		end
		if random(2)==1 then-- nh§n ðc và nói nh§n ðßþc
			x001094_Tips(sceneId, selfId,targetId,"#3#3Chúc bÕn may m¡n l¥n sau #3#3")
			x001094_FailTips(sceneId,selfId,"#3#3Chúc bÕn may m¡n l¥n sau #3#3")
		else
			x001094_Tips(sceneId, selfId,targetId,"#1 BÕn v×a nh§n ðßþc ph¥n thß·ng #1")
			x001094_FailTips(sceneId, selfId,"#1 BÕn v×a nh§n ðßþc ph¥n thß·ng #1")
		end
	end

	if GetNumText()==2 then
		BeginEvent( sceneId )
			local text1 ="Tham gia các hoÕt ðµng Trân Long KÏ Cuµc, Ác T£c, Ác Bá, Lâu Lan T¥m Bäo, Tô Châu 1 2 3, Sát Tinh.... B¢ng hæu có tï l® nh§n ðßþc v§t ph¦m #YChú H« Tinh Quái#r"
			local text2="#WMang ðü 10 v§t ph¦m #YChú H« Tinh Quái#W ðªn g£p tÕi hÕ, r¤t nhi«u v§t ph¦m b¤t ng¶ ðang ch¶ b¢ng hæu chinh phøc#r"
			local text3="#GChúc b¢ng hæu có ngày Cá tháng Tß vui vë và không b¸ ån nhi«u cú l×a!!!"
			
			AddText(sceneId,text1)
			AddText(sceneId,text2)
			AddText(sceneId,text3)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if GetNumText() == 3 then --doi yeu quyet co dinh
		BeginEvent(sceneId)
			strText = " Ngày Cá Tháng Tß ðã qua r°i tuy nhiên ta vçn · ðây ð¬ giúp các hÕ ð±i các loÕi Yªu Quyªt Môn Phái c¯ ð¸nh mà ta ðã t£ng."
			AddText( sceneId, strText )
			AddText(sceneId,"Hãy mang Yªu Quyªt ph¥n thß·ng b¸ c¯ ð¸nh ðªn ðây, ta s¨ giúp các hÕ ð±i lÕi. Các hÕ có ð°ng ý không ?")
			AddNumText(sceneId,x001094_g_scriptId,"Ð°ng ý",4,4)
			AddNumText(sceneId,x001094_g_scriptId,"Ta chï ghé qua thôi",4,0)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if GetNumText() == 4 then
		x001094_DoiYeuQuyetbt8( sceneId, selfId, targetId )
	end
	if GetNumText() == 0 then --kªt thúc
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		return
	end
end

function x001094_DoiYeuQuyetbt8( sceneId, selfId, targetId )
	local ok =0
	for i=1,getn(x001094_g_yeuquyet_bt8) do
		local num = LuaFnGetAvailableItemCount( sceneId, selfId, x001094_g_yeuquyet_bt8[i] ) --check so luong
		if num >=1 then --neu co
			LuaFnDelAvailableItem(sceneId,selfId, x001094_g_yeuquyet_bt8[i], num ) --thi xoa
			for j=1,num do
				local BagIndex =  TryRecieveItem( sceneId, selfId, x001094_g_yeuquyet_bt8[i], 1 ) --add lai
				if BagIndex <0 then
					x001094_FailTips( sceneId, selfId,  "Túi ðñng ð° ðã ð¥y !" )
				else
					x001094_FailTips( sceneId, selfId,  "Hoán ð±i thành công  #Y#{_ITEM" ..x001094_g_yeuquyet_bt8[i].. "}")
				end
			end
			ok =1;
		end
	end
	if ok==0 then
		x001094_FailTips( sceneId, selfId,  "Thiªu v§t ph¦m c¥n thiªt ho£c v§t ph¦m b¸ khoá !" )
	else
		x001094_FailTips( sceneId, selfId,  "Hoán ð±i hoàn t¤t !" )
	end
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)
	return
	
end

function x001094_Tips(sceneId, selfId,targetId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x001094_FailTips(sceneId, selfId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end
