x000173_g_active = 1 --active event
x000173_g_scriptId = 000173
x000173_YQ8={
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

x000173_ThuCuoi_PET ={
	10141567, --T�a k�: X�ch Luy�n C�u 30 ngay
	10141590, --T�a k�: B�ch Gi�p Huy�n Quy 30 ngay
	10141505,--Th� c��i: �ng Long Huy�n H�n
	10141521,--T�a k�: Nhung Tuy�t Th�n Ng�u
	30309092,-- Tr�ng tr�n th� : Th�i Th��ng Long T�
	30309095, --Tr�ng tr�n th� : Mao Mao Ng�u
	30309093 , --Tr�ng tr�n th� : C�n Lu�n Ti�n Tu�n
	10141476,--Th� c��i: �m Vi�m Minh S�
	10141483,--Th� c��i: H� Kh�ng H�ng H�n
	
}
x000173_ThuCuoi_PET_358 ={
	30308284, --Tr�ng tr�n th� : Chien Binh Tu La
	
	10124606, --L� H� Lan Ph߽ng
	10124610, --D�c Huy�t H�n Phong
	10124614, --B�ch Thu� H�m Ph߽ng
	10124625, --D� C�m Thi�n Lan
	10124630, --T� V�n Huy�n Th߽ng
	10124633, --Th߽ng V�n S߽ng Nguy�t


	10124624, --Ng�c C�m Kim Sa (nhuom)
	10124620, ----M�c V� Ti�m U
	
	
	10141599, --T�a k�: SC Nien Thu 7
	10141603,--T�a k�: TC Nien Thu 7
	10141607,--T�a k�: CC Nien Thu 7
	10141611,--T�a k�: SiC Nien Thu 7
	10141615,--T�a k�: DSC Nien Thu 7
	10141619,--T�a k�: DDSC Nien Thu 7
	10141623,--T�a k�: SC Th�i Th��ng Long 7
	10141627,--T�a k�: TC Th�i Th��ng Long 7
	10141631,--T�a k�: CC Th�i Th��ng Long 7
	10141635,--T�a k�: SC Th�i Th��ng Long 7
	10141639,--T�a k�: DSC Th�i Th��ng Long 7
	10141643,--T�a k�: SC C�n L�n Ti�n Tu�n 7
	10141647,--T�a k�: TC C�n L�n Ti�n Tu�n 7
	10141651,--T�a k�: CC C�n L�n Ti�n Tu�n 7
	10141655,--T�a k�: SiC C�n L�n Ti�n Tu�n 7
	10141659,--T�a k�: DSC C�n L�n Ti�n Tu�n 7
	10141703,--T�a k�: Tinh V� Du Long 7
	10141708,--T�a k�: Th߽ng Lan V� D�c 7
	10141713,--T�a k�: V�n Ti�u V� D�c 7
	
}

x000173_NLLongVan={
	
	30308284, --Tr�ng tr�n th� : Chien Binh Tu La
	
	10124606, --L� H� Lan Ph߽ng
	10124610, --D�c Huy�t H�n Phong
	10124614, --B�ch Thu� H�m Ph߽ng
	10124625, --D� C�m Thi�n Lan
	10124630, --T� V�n Huy�n Th߽ng
	10124633, --Th߽ng V�n S߽ng Nguy�t


	10124624, --Ng�c C�m Kim Sa (nhuom)
	10124620, ----M�c V� Ti�m U
	
	
	10141599, --T�a k�: SC Nien Thu 7
	10141603,--T�a k�: TC Nien Thu 7
	10141607,--T�a k�: CC Nien Thu 7
	10141611,--T�a k�: SiC Nien Thu 7
	10141615,--T�a k�: DSC Nien Thu 7
	10141619,--T�a k�: DDSC Nien Thu 7
	10141623,--T�a k�: SC Th�i Th��ng Long 7
	10141627,--T�a k�: TC Th�i Th��ng Long 7
	10141631,--T�a k�: CC Th�i Th��ng Long 7
	10141635,--T�a k�: SC Th�i Th��ng Long 7
	10141639,--T�a k�: DSC Th�i Th��ng Long 7
	10141643,--T�a k�: SC C�n L�n Ti�n Tu�n 7
	10141647,--T�a k�: TC C�n L�n Ti�n Tu�n 7
	10141651,--T�a k�: CC C�n L�n Ti�n Tu�n 7
	10141655,--T�a k�: SiC C�n L�n Ti�n Tu�n 7
	10141659,--T�a k�: DSC C�n L�n Ti�n Tu�n 7
	10141703,--T�a k�: Tinh V� Du Long 7
	10141708,--T�a k�: Th߽ng Lan V� D�c 7
	10141713,--T�a k�: V�n Ti�u V� D�c 7
	20310180,-- T�ch V�n Th�y
	20310180,-- T�ch V�n Th�y
	20310180,-- T�ch V�n Th�y
	20310180,-- T�ch V�n Th�y
	20310180,-- T�ch V�n Th�y
	20310181,--Xuy�t Long Th�ch_Nguy�n
	20310182,--Xuy�t Long Th�ch_B�o
	20310183,--Xuy�t Long Th�ch_Th߽ng
	--38000152,--chu van tinh ngoc +5
	38000184,--chu van tinh ngoc +5 khong co dinh
}


function x000173_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local strText = "#WH�y thu th�p 1 s� l��ng nh�t �nh #GTh�t Th�i H�t #Wv� mang t�i t�m ta. Ta s� trao cho b�ng h�u nh�ng ph�n qu� h�p d�n "
		AddText( sceneId, strText )
		AddNumText( sceneId, x000173_g_scriptId, "бi ph�n th߷ng #GTh�t Th�i H�t", 3, 1)
			AddNumText( sceneId, x000173_g_scriptId, "V� event t�m ki�m #G Th�t Th�i H�t", 11, 2)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000173_OnEnumerate( sceneId, selfId, targetId )
	if x000173_g_active ==1 then
		--BeginEvent( sceneId )
			local strText = "#WH�y thu th�p 1 s� l��ng nh�t �nh #GTh�t Th�i H�t #Wv� mang t�i t�m ta. Ta s� trao cho b�ng h�u nh�ng ph�n qu� h�p d�n "
			AddText( sceneId, strText )
			AddNumText( sceneId, x000173_g_scriptId, "бi ph�n th߷ng #GTh�t Th�i H�t", 3, 1)
			AddNumText( sceneId, x000173_g_scriptId, "V� event t�m ki�m #G Th�t Th�i H�t", 11, 2)
		--EndEvent(sceneId)
		--DispatchEventList(sceneId,selfId,targetId)
	end
end

function x000173_OnEventRequest( sceneId, selfId, targetId, eventId )
	local item = LuaFnGetAvailableItemCount(sceneId, selfId,20600019)-- �m s� item th�t th�i h�t
	local slot =LuaFnGetPropertyBagSpace( sceneId, selfId)
	local slot2 =LuaFnGetMaterialBagSpace( sceneId, selfId) --check slot bag nl
	if GetNumText()==1 then
		BeginEvent( sceneId )
			local strText = "#WB�ng h�u h�y l�a ch�n s� l��ng #G Th�t Th�i H�t#W t߽ng �ng � c� th� nh�n qu�!!!! "
			AddText( sceneId, strText )
			AddNumText( sceneId, x000173_g_scriptId, "бi #Y10 #GTh�t Th�i H�t l�y 1 ph�n qu�", 3, 10)
			AddNumText( sceneId, x000173_g_scriptId, "бi #Y20 #GTh�t Th�i H�t l�y 1 ph�n qu�", 3, 20)
			AddNumText( sceneId, x000173_g_scriptId, "бi #Y50 #GTh�t Th�i H�t l�y 1 ph�n qu�", 3, 50)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if GetNumText()==10 then
		if slot <1 then
			x000173_Tips(sceneId, selfId,targetId,"B�ng h�u h�y � �t nh�t 1 � tr�ng trong tay n�i!!")
			x000173_FailTips(sceneId,selfId,"B�ng h�u h�y � �t nh�t 1 � tr�ng trong tay n�i!!")
			return
		elseif  item<10 then
			x000173_Tips(sceneId, selfId,targetId,"B�ng h�u kh�ng �� s� l��ng #GTh�t Th�i H�t")
			x000173_FailTips(sceneId, selfId,"B�ng h�u kh�ng �� s� l��ng #GTh�t Th�i H�t")
			return
			
		end
		LuaFnDelAvailableItem(sceneId,selfId,20600019,10)

		---------------------a Hd edit cho nh�n v�t ph�m c�i b�p � m�c n�y----------------------------------------------
		local ran = random(getn(x000173_YQ8))
		local BagPos = TryRecieveItem(sceneId,selfId,x000173_YQ8[ran], QUALITY_MUST_BE_CHANGE )
		
		--end phan thuong
		x000173_Tips(sceneId, selfId,targetId,"Nh�n th߷ng th�nh c�ng")
		x000173_FailTips(sceneId,selfId,"Nh�n th߷ng th�nh c�ng")
	end
	if GetNumText()==20 then
		if slot <1 then
			x000173_Tips(sceneId, selfId,targetId,"B�ng h�u h�y � �t nh�t 1 � tr�ng trong tay n�i!!")
			x000173_FailTips(sceneId,selfId,"B�ng h�u h�y � �t nh�t 1 � tr�ng trong tay n�i!!")
			return
		elseif  item<20 then
			x000173_Tips(sceneId, selfId,targetId,"B�ng h�u kh�ng �� s� l��ng #GTh�t Th�i H�t")
			x000173_FailTips(sceneId, selfId,"B�ng h�u kh�ng �� s� l��ng #GTh�t Th�i H�t")
			return
			
		end
		LuaFnDelAvailableItem(sceneId,selfId,20600019,20)

		---------------------a Hd edit cho nh�n v�t ph�m h�i h�i ngon � m�c n�y----------------------------------------------
		local ran = random(getn(x000173_ThuCuoi_PET))
		local BagPos = TryRecieveItem(sceneId,selfId,x000173_ThuCuoi_PET[ran], QUALITY_MUST_BE_CHANGE )
		
		--end phan thuong
		
		x000173_Tips(sceneId, selfId,targetId,"Nh�n th߷ng th�nh c�ng")
		x000173_FailTips(sceneId,selfId,"Nh�n th߷ng th�nh c�ng")
	end
	if GetNumText()==50 then
		if slot <1 or slot2 <1 then
			x000173_Tips(sceneId, selfId,targetId,"B�ng h�u h�y � �t nh�t 1 � tr�ng ��o c� v� nguy�n li�u trong tay n�i !")
			x000173_FailTips(sceneId,selfId,"B�ng h�u h�y � �t nh�t 1 � tr�ng ��o c� v� nguy�n li�u trong tay n�i!!")
			return
		elseif  item<50 then
			x000173_Tips(sceneId, selfId,targetId,"B�ng h�u kh�ng �� s� l��ng #GTh�t Th�i H�t")
			x000173_FailTips(sceneId, selfId,"B�ng h�u kh�ng �� s� l��ng #GTh�t Th�i H�t")
			return
			
		end
		LuaFnDelAvailableItem(sceneId,selfId,20600019,50)

		---------------------a Hd edit cho nh�n v�t ph�m ngon � m�c n�y----------------------------------------------
		local ran = random(getn(x000173_NLLongVan))
		local BagPos = TryRecieveItem(sceneId,selfId,x000173_NLLongVan[ran], QUALITY_MUST_BE_CHANGE )
		local transfer = GetBagItemTransfer(sceneId,selfId,BagPos)
		local str = format("#cff99cc#{_INFOUSR%s} v�t v� tham gia s� ki�n #Y[Truy T�m Th�t Th�i H�t] #P. Tri�u ��nh ban th߷ng #{_INFOMSG%s} xem nh� l� m�n qu� kh�ch l�. ", GetName(sceneId,selfId),transfer)
		if ran >= (getn(x000173_NLLongVan) - 8)then
			BroadMsgByChatPipe(sceneId, selfId, str, 4) --he thong
		else
			BroadMsgByChatPipe(sceneId, selfId, str, 0) ---lan can
		end
		--end phan thuong
		
		x000173_Tips(sceneId, selfId,targetId,"Nh�n th߷ng th�nh c�ng")
		x000173_FailTips(sceneId,selfId,"Nh�n th߷ng th�nh c�ng")
	end
	if GetNumText()==2 then
		BeginEvent( sceneId )
			local text1 ="#WTham gia c�c ho�t �ng #GTr�n Long K� Cu�c, �c T�c, �c B�, L�u Lan T�m B�o, T� Ch�u 1 2 3.... #WB�ng h�u c� t� l� nh�n ���c v�t ph�m #G Th�t Th�i H�t#r"
			local text2="#WMang �� s� l��ng #GTh�t Th�i H�t#W nh�t �nh �n g�p NPC s� ki�n ti�n h�nh �i qu� t�ng."
			AddText(sceneId,text1)
			AddText(sceneId,text2)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
end

function x000173_Tips(sceneId, selfId,targetId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000173_FailTips(sceneId, selfId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end
