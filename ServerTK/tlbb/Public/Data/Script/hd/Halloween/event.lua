x000174_g_active = 1 --active event
x000174_g_scriptId = 000174
x000174_g_itemneed = 30504317 --Th� Gi�i Thi�u H�c Mi�u

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
	30008018,--Thanh T�m �an
	30008018,--Thanh T�m �an
	30008019,--Уc X� L�nh
	30008014,--Th�ng Thi�n Linh �an
	30900016,--cao c�p h�p th�nh ph�
	30008030,--th� �n ch�u
	30008048 --kim c߽ng to�
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


function x000174_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local strText = "#WTh� l� l�i 1 m�a Halloween n�a l�i �n. H�y thu th�p v�t ph�m � �i qu� t�ng th� v� t� #GThi�n Long T�nh Ki�m#W nh�.#r Ch�c c�c b�n c� nh�ng ph�t gi�y vui v� v� th�ch th� c�ng b�n b� trong d�p #YHalloween #Wn�y !! "
		AddText( sceneId, strText )
		if x000174_g_active ==1 then
			AddNumText( sceneId, x000174_g_scriptId, "Halloween: #GK�o Halloween", 3, 1)
			AddNumText( sceneId, x000174_g_scriptId, "L�m sao t�m ���c #G K�o Halloween", 11, 2)
		else
			AddText( sceneId, "S� ki�n �� k�t th�c." )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000174_OnEnumerate( sceneId, selfId, targetId )
	if x000174_g_active ==1 then
		--BeginEvent( sceneId )
			local strText = "#WTh� l� l�i 1 m�a Halloween n�a l�i �n. H�y thu th�p v�t ph�m � �i qu� t�ng th� v� t� #GThi�n Long T�nh Ki�m#W nh�.#r Ch�c c�c b�n c� nh�ng ph�t gi�y vui v� v� th�ch th� c�ng b�n b� trong d�p #YHalloween #Wn�y !!"
			AddText( sceneId, strText )
			AddNumText( sceneId, x000174_g_scriptId, "Halloween: #GK�o Halloween", 3, 1)
			AddNumText( sceneId, x000174_g_scriptId, "L�m sao t�m ���c #G K�o Halloween", 11, 2)
		--EndEvent(sceneId)
		--DispatchEventList(sceneId,selfId,targetId)
	end
end

function x000174_OnEventRequest( sceneId, selfId, targetId, eventId )
	local item = LuaFnGetAvailableItemCount(sceneId, selfId,x000174_g_itemneed)-- �m s� item
	local slot =LuaFnGetPropertyBagSpace( sceneId, selfId)
	local slot2 =LuaFnGetMaterialBagSpace( sceneId, selfId) --check slot bag nl
	if GetNumText()==1 then
		BeginEvent( sceneId )
			local strText = "#WB�ng h�u h�y l�a ch�n s� l��ng #GTh� Gi�i Thi�u H�c Mi�u#W t߽ng �ng � c� th� nh�n qu�!!!! "
			AddText( sceneId, strText )
			AddNumText( sceneId, x000174_g_scriptId, "бi #Y10 #GTh� Gi�i Thi�u H�c Mi�u l�y 1 ph�n qu�", 3, 10)
			AddNumText( sceneId, x000174_g_scriptId, "бi #Y20 #GTh� Gi�i Thi�u H�c Mi�u l�y 1 ph�n qu�", 3, 20)
			AddNumText( sceneId, x000174_g_scriptId, "бi #Y50 #GTh� Gi�i Thi�u H�c Mi�u l�y 1 ph�n qu�", 3, 50)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	if GetNumText()==10 then
		if slot <1 then
			x000174_Tips(sceneId, selfId,targetId,"B�ng h�u h�y � �t nh�t 1 � tr�ng trong tay n�i!!")
			x000174_FailTips(sceneId,selfId,"B�ng h�u h�y � �t nh�t 1 � tr�ng trong tay n�i!!")
			return
		elseif  item<10 then
			x000174_Tips(sceneId, selfId,targetId,"B�ng h�u kh�ng �� s� l��ng #GTh� Gi�i Thi�u H�c Mi�u")
			x000174_FailTips(sceneId, selfId,"B�ng h�u kh�ng �� s� l��ng #GTh� Gi�i Thi�u H�c Mi�u")
			return
			
		end
		LuaFnDelAvailableItem(sceneId,selfId,x000174_g_itemneed,10)

		---------------------a Hd edit cho nh�n v�t ph�m c�i b�p � m�c n�y----------------------------------------------
		local ran = random(getn(x000174_YQ8))
		local BagPos = TryRecieveItem(sceneId,selfId,x000174_YQ8[ran], QUALITY_MUST_BE_CHANGE )
		
		--end phan thuong
		x000174_Tips(sceneId, selfId,targetId,"Nh�n th߷ng th�nh c�ng")
		x000174_FailTips(sceneId,selfId,"Nh�n th߷ng th�nh c�ng")
	end
	if GetNumText()==20 then
		if slot <1 then
			x000174_Tips(sceneId, selfId,targetId,"B�ng h�u h�y � �t nh�t 1 � tr�ng trong tay n�i!!")
			x000174_FailTips(sceneId,selfId,"B�ng h�u h�y � �t nh�t 1 � tr�ng trong tay n�i!!")
			return
		elseif  item<20 then
			x000174_Tips(sceneId, selfId,targetId,"B�ng h�u kh�ng �� s� l��ng #GTh� Gi�i Thi�u H�c Mi�u")
			x000174_FailTips(sceneId, selfId,"B�ng h�u kh�ng �� s� l��ng #GTh� Gi�i Thi�u H�c Mi�u")
			return
			
		end
		LuaFnDelAvailableItem(sceneId,selfId,x000174_g_itemneed,20)

		---------------------a Hd edit cho nh�n v�t ph�m h�i h�i ngon � m�c n�y----------------------------------------------
		local ran = random(getn(x000174_ThuCuoi_PET))
		local BagPos = TryRecieveItem(sceneId,selfId,x000174_ThuCuoi_PET[ran], QUALITY_MUST_BE_CHANGE )
		
		--end phan thuong
		
		x000174_Tips(sceneId, selfId,targetId,"Nh�n th߷ng th�nh c�ng")
		x000174_FailTips(sceneId,selfId,"Nh�n th߷ng th�nh c�ng")
	end
	if GetNumText()==50 then
		if slot <1 or slot2 <1 then
			x000174_Tips(sceneId, selfId,targetId,"B�ng h�u h�y � �t nh�t 1 � tr�ng ��o c� v� nguy�n li�u trong tay n�i !")
			x000174_FailTips(sceneId,selfId,"B�ng h�u h�y � �t nh�t 1 � tr�ng ��o c� v� nguy�n li�u trong tay n�i!!")
			return
		elseif  item<50 then
			x000174_Tips(sceneId, selfId,targetId,"B�ng h�u kh�ng �� s� l��ng #GTh� Gi�i Thi�u H�c Mi�u")
			x000174_FailTips(sceneId, selfId,"B�ng h�u kh�ng �� s� l��ng #GTh� Gi�i Thi�u H�c Mi�u")
			return
			
		end
		LuaFnDelAvailableItem(sceneId,selfId,x000174_g_itemneed,50)

		---------------------a Hd edit cho nh�n v�t ph�m ngon � m�c n�y----------------------------------------------
		local ran = random(getn(x000174_NLLongVan))
		local BagPos = TryRecieveItem(sceneId,selfId,x000174_NLLongVan[ran], QUALITY_MUST_BE_CHANGE )
		local transfer = GetBagItemTransfer(sceneId,selfId,BagPos)
		local str = format("#cff99cc#{_INFOUSR%s} v�t v� tham gia s� ki�n #Y[Halloween: K�o Halloween] #P. Tri�u ��nh ban th߷ng #{_INFOMSG%s} xem nh� l� m�n qu� kh�ch l�. ", GetName(sceneId,selfId),transfer)
		if ran >= (getn(x000174_NLLongVan) - 8)then
			BroadMsgByChatPipe(sceneId, selfId, str, 4) --he thong
		else
			BroadMsgByChatPipe(sceneId, selfId, str, 0) ---lan can
		end
		--end phan thuong
		
		x000174_Tips(sceneId, selfId,targetId,"Nh�n th߷ng th�nh c�ng")
		x000174_FailTips(sceneId,selfId,"Nh�n th߷ng th�nh c�ng")
	end
	if GetNumText()==2 then
		BeginEvent( sceneId )
			local text1 ="#WTham gia c�c ho�t �ng #GTr�n Long K� Cu�c, �c T�c, �c B�, L�u Lan T�m B�o, T� Ch�u 1 2 3.... #WB�ng h�u c� t� l� nh�n ���c v�t ph�m #YK�o Halloween#r"
			local text2="#WMang �� s� l��ng #YTh� Gi�i Thi�u H�c Mi�u#W nh�t �nh �n g�p NPC s� ki�n ti�n h�nh �i qu� t�ng."
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
