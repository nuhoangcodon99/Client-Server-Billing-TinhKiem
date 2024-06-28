x000174_g_active = 1 --active event
x000174_g_scriptId = 000174
x000174_g_itemneed = 30504317 --Thß Gi¾i Thi®u H¡c Miêu

x000174_YQ8={
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

x000174_ThuCuoi_PET ={
	10141567, --T÷a kÜ: Xích Luy®n Câu 30 ngay
	10141590, --T÷a kÜ: Bích Giáp Huy«n Quy 30 ngay
	10141505,--Thú cßÞi: ¿ng Long Huy­n H°n
	10141521,--T÷a kÜ: Nhung Tuyªt Th¥n Ngßu
	30309092,-- TrÑng trân thú : Thái Thßþng Long TØ
	30309095, --TrÑng trân thú : Mao Mao Ngßu
	30309093 , --TrÑng trân thú : Côn Luân Tiên Tu¤n
	10141476,--Thú cßÞi: Ám Viêm Minh Sß
	10141483,--Thú cßÞi: Hß Không Hùng H°n
	
}

x000174_NLLongVan={
	
	30504316, --keo Halloween
	30504316, --keo Halloween
	30504316, --keo Halloween
	30504316, --keo Halloween
	30504316, --keo Halloween
	30504316, --keo Halloween
	30504316, --keo Halloween
	30504316, --keo Halloween
	30504316, --keo Halloween
	30504316, --keo Halloween
	30504316, --keo Halloween
	30504316, --keo Halloween
	30504316, --keo Halloween
	30504316, --keo Halloween
	30504316, --keo Halloween
	30504316, --keo Halloween
	30504316, --keo Halloween
	30504316, --keo Halloween
	30504316, --keo Halloween
	30504316, --keo Halloween
	30504316, --keo Halloween
	30504316, --keo Halloween
	30504316, --keo Halloween
	30504316, --keo Halloween
	30504316, --keo Halloween
	30504316, --keo Halloween
	30008018,--Thanh Tâm Ðan
	30008018,--Thanh Tâm Ðan
	30008019,--Ð£c Xá L®nh
	30008014,--Thông Thiên Linh Ðan
	30900016,--cao c¤p hþp thành phù
	30008030,--th± ðµn châu
	30008048 --kim cß½ng toä
	20310180,-- T¸ch Vân Thüy
	20310180,-- T¸ch Vân Thüy
	20310180,-- T¸ch Vân Thüy
	20310180,-- T¸ch Vân Thüy
	20310180,-- T¸ch Vân Thüy
	20310181,--Xuyªt Long ThÕch_Nguyên
	20310182,--Xuyªt Long ThÕch_BÕo
	20310183,--Xuyªt Long ThÕch_Thß½ng
	--38000152,--chu van tinh ngoc +5
	38000184,--chu van tinh ngoc +5 khong co dinh
}


function x000174_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local strText = "#WThª là lÕi 1 mùa Halloween næa lÕi ðªn. Hãy thu th§p v§t ph¦m ð¬ ð±i quà t£ng thú v¸ t× #GThiên Long Tình Kiªm#W nhé.#r Chúc các bÕn có nhæng phút giây vui vë và thích thú cùng bÕn bè trong d¸p #YHalloween #Wnày !! "
		AddText( sceneId, strText )
		if x000174_g_active ==1 then
			AddNumText( sceneId, x000174_g_scriptId, "Halloween: #GK©o Halloween", 3, 1)
			AddNumText( sceneId, x000174_g_scriptId, "Làm sao tìm ðßþc #G K©o Halloween", 11, 2)
		else
			AddText( sceneId, "Sñ ki®n ðã kªt thúc." )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000174_OnEnumerate( sceneId, selfId, targetId )
	if x000174_g_active ==1 then
		--BeginEvent( sceneId )
			local strText = "#WThª là lÕi 1 mùa Halloween næa lÕi ðªn. Hãy thu th§p v§t ph¦m ð¬ ð±i quà t£ng thú v¸ t× #GThiên Long Tình Kiªm#W nhé.#r Chúc các bÕn có nhæng phút giây vui vë và thích thú cùng bÕn bè trong d¸p #YHalloween #Wnày !!"
			AddText( sceneId, strText )
			AddNumText( sceneId, x000174_g_scriptId, "Halloween: #GK©o Halloween", 3, 1)
			AddNumText( sceneId, x000174_g_scriptId, "Làm sao tìm ðßþc #G K©o Halloween", 11, 2)
		--EndEvent(sceneId)
		--DispatchEventList(sceneId,selfId,targetId)
	end
end

function x000174_OnEventRequest( sceneId, selfId, targetId, eventId )
	local item = LuaFnGetAvailableItemCount(sceneId, selfId,x000174_g_itemneed)-- ðªm s¯ item
	local slot =LuaFnGetPropertyBagSpace( sceneId, selfId)
	local slot2 =LuaFnGetMaterialBagSpace( sceneId, selfId) --check slot bag nl
	if GetNumText()==1 then
		BeginEvent( sceneId )
			local strText = "#WB¢ng hæu hãy lña ch÷n s¯ lßþng #GThß Gi¾i Thi®u H¡c Miêu#W tß½ng Ñng ð¬ có th¬ nh§n quà!!!! "
			AddText( sceneId, strText )
			AddNumText( sceneId, x000174_g_scriptId, "Ð±i #Y10 #GThß Gi¾i Thi®u H¡c Miêu l¤y 1 ph¥n quà", 3, 10)
			AddNumText( sceneId, x000174_g_scriptId, "Ð±i #Y20 #GThß Gi¾i Thi®u H¡c Miêu l¤y 1 ph¥n quà", 3, 20)
			AddNumText( sceneId, x000174_g_scriptId, "Ð±i #Y50 #GThß Gi¾i Thi®u H¡c Miêu l¤y 1 ph¥n quà", 3, 50)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if GetNumText()==10 then
		if slot <1 then
			x000174_Tips(sceneId, selfId,targetId,"B¢ng hæu hãy ð¬ ít nh¤t 1 ô tr¯ng trong tay näi!!")
			x000174_FailTips(sceneId,selfId,"B¢ng hæu hãy ð¬ ít nh¤t 1 ô tr¯ng trong tay näi!!")
			return
		elseif  item<10 then
			x000174_Tips(sceneId, selfId,targetId,"B¢ng hæu không ðü s¯ lßþng #GThß Gi¾i Thi®u H¡c Miêu")
			x000174_FailTips(sceneId, selfId,"B¢ng hæu không ðü s¯ lßþng #GThß Gi¾i Thi®u H¡c Miêu")
			return
			
		end
		LuaFnDelAvailableItem(sceneId,selfId,x000174_g_itemneed,10)

		---------------------a Hd edit cho nh§n v§t ph¦m cùi b¡p · mÑc này----------------------------------------------
		local ran = random(getn(x000174_YQ8))
		local BagPos = TryRecieveItem(sceneId,selfId,x000174_YQ8[ran], QUALITY_MUST_BE_CHANGE )
		
		--end phan thuong
		x000174_Tips(sceneId, selfId,targetId,"Nh§n thß·ng thành công")
		x000174_FailTips(sceneId,selfId,"Nh§n thß·ng thành công")
	end
	if GetNumText()==20 then
		if slot <1 then
			x000174_Tips(sceneId, selfId,targetId,"B¢ng hæu hãy ð¬ ít nh¤t 1 ô tr¯ng trong tay näi!!")
			x000174_FailTips(sceneId,selfId,"B¢ng hæu hãy ð¬ ít nh¤t 1 ô tr¯ng trong tay näi!!")
			return
		elseif  item<20 then
			x000174_Tips(sceneId, selfId,targetId,"B¢ng hæu không ðü s¯ lßþng #GThß Gi¾i Thi®u H¡c Miêu")
			x000174_FailTips(sceneId, selfId,"B¢ng hæu không ðü s¯ lßþng #GThß Gi¾i Thi®u H¡c Miêu")
			return
			
		end
		LuaFnDelAvailableItem(sceneId,selfId,x000174_g_itemneed,20)

		---------------------a Hd edit cho nh§n v§t ph¦m h½i h½i ngon · mÑc này----------------------------------------------
		local ran = random(getn(x000174_ThuCuoi_PET))
		local BagPos = TryRecieveItem(sceneId,selfId,x000174_ThuCuoi_PET[ran], QUALITY_MUST_BE_CHANGE )
		
		--end phan thuong
		
		x000174_Tips(sceneId, selfId,targetId,"Nh§n thß·ng thành công")
		x000174_FailTips(sceneId,selfId,"Nh§n thß·ng thành công")
	end
	if GetNumText()==50 then
		if slot <1 or slot2 <1 then
			x000174_Tips(sceneId, selfId,targetId,"B¢ng hæu hãy ð¬ ít nh¤t 1 ô tr¯ng ðÕo cø và nguyên li®u trong tay näi !")
			x000174_FailTips(sceneId,selfId,"B¢ng hæu hãy ð¬ ít nh¤t 1 ô tr¯ng ðÕo cø và nguyên li®u trong tay näi!!")
			return
		elseif  item<50 then
			x000174_Tips(sceneId, selfId,targetId,"B¢ng hæu không ðü s¯ lßþng #GThß Gi¾i Thi®u H¡c Miêu")
			x000174_FailTips(sceneId, selfId,"B¢ng hæu không ðü s¯ lßþng #GThß Gi¾i Thi®u H¡c Miêu")
			return
			
		end
		LuaFnDelAvailableItem(sceneId,selfId,x000174_g_itemneed,50)

		---------------------a Hd edit cho nh§n v§t ph¦m ngon · mÑc này----------------------------------------------
		local ran = random(getn(x000174_NLLongVan))
		local BagPos = TryRecieveItem(sceneId,selfId,x000174_NLLongVan[ran], QUALITY_MUST_BE_CHANGE )
		local transfer = GetBagItemTransfer(sceneId,selfId,BagPos)
		local str = format("#cff99cc#{_INFOUSR%s} v¤t vä tham gia sñ ki®n #Y[Halloween: K©o Halloween] #P. Tri«u ðình ban thß·ng #{_INFOMSG%s} xem nhß là món quà khích l®. ", GetName(sceneId,selfId),transfer)
		if ran >= (getn(x000174_NLLongVan) - 8)then
			BroadMsgByChatPipe(sceneId, selfId, str, 4) --he thong
		else
			BroadMsgByChatPipe(sceneId, selfId, str, 0) ---lan can
		end
		--end phan thuong
		
		x000174_Tips(sceneId, selfId,targetId,"Nh§n thß·ng thành công")
		x000174_FailTips(sceneId,selfId,"Nh§n thß·ng thành công")
	end
	if GetNumText()==2 then
		BeginEvent( sceneId )
			local text1 ="#WTham gia các hoÕt ðµng #GTrân Long KÏ Cuµc, Ác T£c, Ác Bá, Lâu Lan T¥m Bäo, Tô Châu 1 2 3.... #WB¢ng hæu có tï l® nh§n ðßþc v§t ph¦m #YK©o Halloween#r"
			local text2="#WMang ðü s¯ lßþng #YThß Gi¾i Thi®u H¡c Miêu#W nh¤t ð¸nh ðªn g£p NPC sñ ki®n tiªn hành ð±i quà t£ng."
			AddText(sceneId,text1)
			AddText(sceneId,text2)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
end

function x000174_Tips(sceneId, selfId,targetId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000174_FailTips(sceneId, selfId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end
