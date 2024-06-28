x000172_g_ScriptId = 000172

x000172_g_tbp = 30505908 --tbp cap 3
x000172_g_tbp1 = 30505816 --tbp cap 1
x000172_g_tbp2 = 30505817 --tbp cap 2

x000172_g_lhtp = 30505169
x000172_g_tienvang = 30505167

x000172_g_vh30_lld = 10430330 --v� h�n 30 L�u ly di�m
x000172_g_vh30_ndb = 10431330 --v� h�n 30 L�u ly di�m

x000172_g_item_need_num = 50

x000172_item_doi  = {30505184,30505185,30505186,30505187,30505188,30505189,30505190 --item chuy�n �i sang ph�o hoa
}
x000172_item_phaohoa = {30505123,30505124,30509017,30509018,30509019,30509020,30509021,30509022,30509023,30509024
}

function x000172_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ch�o c�c h�, ta ���c b�n m�n g�i �n ��y � qu�n l� s� ki�n ingame. Chi ti�t c�c h� vui l�ng xem t�i trang ch�. " )
		--AddNumText( sceneId, x000172_g_ScriptId, "Hoa ph�o th�ng thi�n",6 ,1000  )
		--AddNumText( sceneId, x000172_g_ScriptId, "Th�ng c�p l�n Th�n Binh Ph� 2",6 ,2000  )
		--AddNumText( sceneId, x000172_g_ScriptId, "Th�ng c�p l�n Th�n Binh Ph� 3",6 ,3000  )
		AddNumText( sceneId, x000172_g_ScriptId, "Ta ch� gh� qua xem th�i",11 ,0  )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000172_OnEventRequest( sceneId, selfId, targetId, eventId )
	local key = GetNumText()
	
	
	if key == 1000 then --Hoa ph�o th�ng thi�n
		--x000172_hoaphaott( sceneId, selfId, targetId )
	end
	--**************************************************************
	if key == 0 then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
	end
end

function x000172_hoaphaott( sceneId, selfId, targetId )
	--check
	local soluong =0
	for i = 1, getn( x000172_item_doi ) do
		local num = LuaFnGetAvailableItemCount( sceneId, selfId, x000172_item_doi[i] ) 
		if num > 0 then
			soluong = soluong +num
		end
	end
	
	if soluong <x000172_g_item_need_num then
		x000172_AddText( sceneId, selfId, "C�c h� kh�ng c� �� v�t ph�m � chuy�n �i." )
		return
	end
	
	--delete item
	local item_daxoa_num =0
	for i = 1, getn( x000172_item_doi ) do
		local num = LuaFnGetAvailableItemCount( sceneId, selfId, x000172_item_doi[i] ) 
		local num_xoa = num
		if num + item_daxoa_num > x000172_g_item_need_num then --ch� x�a 20 item
			num_xoa = num -(num + item_daxoa_num - x000172_g_item_need_num) --�n gi�n m� m�t �c :-s
		end
		
		if num > 0 and item_daxoa_num+num_xoa <=x000172_g_item_need_num then --ch� x�a 20 item
			
			LuaFnDelAvailableItem(sceneId,selfId, x000172_item_doi[i], num_xoa )
			item_daxoa_num = item_daxoa_num + num_xoa
		end
		--x000172_NotifyFailTips( sceneId, selfId, "x000172_item_doi[i] : ,"..x000172_item_doi[i].." , item_daxoa_num : "..item_daxoa_num..", num : "..num..", num_xoa : "..num_xoa.."" )
	end
	
	
	--rec
	
	local j=random(1,getn( x000172_item_phaohoa ))
	BeginAddItem(sceneId)
		AddItem( sceneId, x000172_item_phaohoa[j], 1 )
	EndAddItem(sceneId,selfId)
	AddItemListToHuman(sceneId,selfId)
	
	x000172_NotifyFailTips( sceneId, selfId, "C�c h� nh�n ���c m�t lo�i ph�o hoa m�ng Qu�c Kh�nh" )
	local tyle=random(1,100)
	
	if tyle >80 and tyle <=95 then
		TryRecieveItem( sceneId, selfId, x000172_g_lhtp, 1 )
		TryRecieveItem( sceneId, selfId, x000172_g_tienvang, 10 )
		x000172_NotifyFailTips( sceneId, selfId, "C�c h� nh�n ���c Linh h�n to�i phi�n v� ti�n v�ng" )
	end
	
	if tyle >70 then
		TryRecieveItem( sceneId, selfId, x000172_g_tbp2, 3 )
		x000172_NotifyFailTips( sceneId, selfId, "C�c h� nh�n ���c Th�n Binh Ph� c�p 2" )
	end
	
	if tyle >95 then
		local menpai = GetMenPai(sceneId, selfId)	
		if menpai == 0 or menpai == 1 or menpai == 2 or menpai == 7 then
			TryRecieveItem( sceneId, selfId, x000172_g_vh30_lld, 1 ) --vh 30
		else
			TryRecieveItem( sceneId, selfId, x000172_g_vh30_ndb, 1 ) --vh 30
		end
		x000172_NotifyFailTips( sceneId, selfId, "C�c h� nh�n ���c V� H�n c�p 30" )
		str = format("#P #{_INFOUSR%s} th�ng qua s� ki�n #GHoa Ph�o Th�ng Thi�n #P�� may m�n nh�n ���c #Y[V� H�n] c�p 30 #P! Th�t l� may m�n !", GetName(sceneId,selfId))
		BroadMsgByChatPipe(sceneId, selfId, str, 4)
	end
	x000172_NotifyFailTips( sceneId, selfId, "Chuy�n �i v�t ph�m th�nh c�ng. Ch�c c�c h� c� m�t Qu�c Kh�nh th�t vui v� !" )
	x000172_AddText( sceneId, selfId, "Chuy�n �i v�t ph�m th�nh c�ng. Ch�c c�c h� c� m�t Qu�c Kh�nh th�t vui v� !" )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
end



function x000172_NotifyFailTips( sceneId, selfId, Tip )

	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end


function x000172_AddText( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchEventList(sceneId,selfId,targetId)
end