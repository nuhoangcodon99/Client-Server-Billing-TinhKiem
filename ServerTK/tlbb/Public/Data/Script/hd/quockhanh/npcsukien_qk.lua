x000172_g_ScriptId = 000172

x000172_g_tbp = 30505908 --tbp cap 3
x000172_g_tbp1 = 30505816 --tbp cap 1
x000172_g_tbp2 = 30505817 --tbp cap 2

x000172_g_lhtp = 30505169
x000172_g_tienvang = 30505167

x000172_g_vh30_lld = 10430330 --võ h°n 30 Lßu ly di­m
x000172_g_vh30_ndb = 10431330 --võ h°n 30 Lßu ly di­m

x000172_g_item_need_num = 50

x000172_item_doi  = {30505184,30505185,30505186,30505187,30505188,30505189,30505190 --item chuy¬n ð±i sang pháo hoa
}
x000172_item_phaohoa = {30505123,30505124,30509017,30509018,30509019,30509020,30509021,30509022,30509023,30509024
}

function x000172_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Chào các hÕ, ta ðßþc b±n môn gØi ðªn ðây ð¬ quän lý sñ ki®n ingame. Chi tiªt các hÕ vui lòng xem tÕi trang chü. " )
		--AddNumText( sceneId, x000172_g_ScriptId, "Hoa pháo thång thiên",6 ,1000  )
		--AddNumText( sceneId, x000172_g_ScriptId, "Thång c¤p lên Th¥n Binh Phù 2",6 ,2000  )
		--AddNumText( sceneId, x000172_g_ScriptId, "Thång c¤p lên Th¥n Binh Phù 3",6 ,3000  )
		AddNumText( sceneId, x000172_g_ScriptId, "Ta chï ghé qua xem thôi",11 ,0  )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000172_OnEventRequest( sceneId, selfId, targetId, eventId )
	local key = GetNumText()
	
	
	if key == 1000 then --Hoa pháo thång thiên
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
		x000172_AddText( sceneId, selfId, "Các hÕ không có ðü v§t ph¦m ð¬ chuy¬n ð±i." )
		return
	end
	
	--delete item
	local item_daxoa_num =0
	for i = 1, getn( x000172_item_doi ) do
		local num = LuaFnGetAvailableItemCount( sceneId, selfId, x000172_item_doi[i] ) 
		local num_xoa = num
		if num + item_daxoa_num > x000172_g_item_need_num then --chï xóa 20 item
			num_xoa = num -(num + item_daxoa_num - x000172_g_item_need_num) --ð½n giän mà m®t óc :-s
		end
		
		if num > 0 and item_daxoa_num+num_xoa <=x000172_g_item_need_num then --chï xóa 20 item
			
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
	
	x000172_NotifyFailTips( sceneId, selfId, "Các hÕ nh§n ðßþc mµt loÕi pháo hoa m×ng Qu¯c Khánh" )
	local tyle=random(1,100)
	
	if tyle >80 and tyle <=95 then
		TryRecieveItem( sceneId, selfId, x000172_g_lhtp, 1 )
		TryRecieveItem( sceneId, selfId, x000172_g_tienvang, 10 )
		x000172_NotifyFailTips( sceneId, selfId, "Các hÕ nh§n ðßþc Linh h°n toái phiªn và ti«n vàng" )
	end
	
	if tyle >70 then
		TryRecieveItem( sceneId, selfId, x000172_g_tbp2, 3 )
		x000172_NotifyFailTips( sceneId, selfId, "Các hÕ nh§n ðßþc Th¥n Binh Phù c¤p 2" )
	end
	
	if tyle >95 then
		local menpai = GetMenPai(sceneId, selfId)	
		if menpai == 0 or menpai == 1 or menpai == 2 or menpai == 7 then
			TryRecieveItem( sceneId, selfId, x000172_g_vh30_lld, 1 ) --vh 30
		else
			TryRecieveItem( sceneId, selfId, x000172_g_vh30_ndb, 1 ) --vh 30
		end
		x000172_NotifyFailTips( sceneId, selfId, "Các hÕ nh§n ðßþc Võ H°n c¤p 30" )
		str = format("#P #{_INFOUSR%s} thông qua sñ ki®n #GHoa Pháo Thång Thiên #Pðã may m¡n nh§n ðßþc #Y[Võ H°n] c¤p 30 #P! Th§t là may m¡n !", GetName(sceneId,selfId))
		BroadMsgByChatPipe(sceneId, selfId, str, 4)
	end
	x000172_NotifyFailTips( sceneId, selfId, "Chuy¬n ð±i v§t ph¦m thành công. Chúc các hÕ có mµt Qu¯c Khánh th§t vui vë !" )
	x000172_AddText( sceneId, selfId, "Chuy¬n ð±i v§t ph¦m thành công. Chúc các hÕ có mµt Qu¯c Khánh th§t vui vë !" )
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