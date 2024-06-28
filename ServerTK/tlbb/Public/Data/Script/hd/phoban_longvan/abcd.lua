x000621_g_scriptId = 000621
x000621_g_tyle_longvan =20 --ty le mo ra long van

x000621_Item_Ruong=
{
20310180,--T¸ch Vân Thüy
30900016,--cao c¤p hþp thành phù
30008030,--th± ðµn châu
}
x000621_Item_Donate=
{
	
	
	
	
	
	30900016,--cao c¤p hþp thành phù
	20310180,-- T¸ch Vân Thüy
	20310180,-- T¸ch Vân Thüy
	20310180,-- T¸ch Vân Thüy
	20310180,-- T¸ch Vân Thüy
	20310180,-- T¸ch Vân Thüy
	20310180,-- T¸ch Vân Thüy
	20310180,-- T¸ch Vân Thüy
	20310180,-- T¸ch Vân Thüy
	20310180,-- T¸ch Vân Thüy
	20310180,-- T¸ch Vân Thüy
	20310180,-- T¸ch Vân Thüy
	20310180,-- T¸ch Vân Thüy
	20310180,-- T¸ch Vân Thüy
	20310180,-- T¸ch Vân Thüy
	20310180,-- T¸ch Vân Thüy
	20310180,-- T¸ch Vân Thüy
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
function x000621_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "#{CSFB_KVK_110623_74}" )
		AddNumText( sceneId, x000621_g_scriptId, "#{CSFB_KVK_110623_75}", 3, 1)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
function x000621_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() ==1 then
		local number = LuaFnGetAvailableItemCount(sceneId, selfId, 20309019)
		local slot =LuaFnGetPropertyBagSpace( sceneId, selfId) --check slot bag
		local slot2 =LuaFnGetMaterialBagSpace( sceneId, selfId) --check slot bag nl
		if slot<2 or slot2 <2 then
			BeginEvent(sceneId)
				AddText(sceneId, "Hãy ð¬ ít nh¤t #G2 #Wô tr¯ng ô ðÕo cø và nguyên li®u ð¬ m· rß½ng!!")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId, selfId)
			
				BeginUICommand(sceneId)
				EndUICommand(sceneId)
				DispatchUICommand(sceneId,selfId, 1000)
			return
		end
		if number <1 then
			BeginEvent(sceneId)
				AddText(sceneId, "Mu¯n m· rß½ng phäi có #YChìa Khóa Bäo Rß½ng #Wm¾i m· ðßþc!!")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId, selfId)
			BeginUICommand(sceneId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1000)
			return
		end
			
		LuaFnDelAvailableItem(sceneId,selfId,20309019,1)-- tru 1 chia khoa
		--AddItem(sceneId,selfId,20310180)
		local ran =random(100)				
		if ran < x000621_g_tyle_longvan then
			local BagPos = TryRecieveItem(sceneId,selfId,10157002, QUALITY_MUST_BE_CHANGE )--add long van
			--local randomit = random(getn(x000621_Item_Ruong))
			--local BagPos = TryRecieveItem(sceneId,selfId,x000621_Item_Ruong[randomit], QUALITY_MUST_BE_CHANGE )
				x000621_FailTips(sceneId, selfId,"M· Bäo Rß½ng thành công")
				x000621_FailTips(sceneId, selfId,"#1 BÕn v×a nh§n ðßþc 1 #Y[Long Vån]#W #1")
				BeginUICommand(sceneId)
				EndUICommand(sceneId)
				DispatchUICommand(sceneId,selfId, 1000)
				
				--hd add thong bao khi nhat duoc long van
				local transfer = GetBagItemTransfer(sceneId,selfId,BagPos)
				local str = format("#cff99cc#{_INFOUSR%s} cùng ð°ng ðµi v¤t vä ðµt kích, phá giäi #YPhøng Minh Vß½ng Lång #Pphø bän. Ðµt nhiên t× trong túi r¾t ra #{_INFOMSG%s} th§t là may m¡n! ", GetName(sceneId,selfId),transfer)
				BroadMsgByChatPipe(sceneId, selfId, str, 4)
		else
			--for i=1,2 do
				local ranit2 = random(getn(x000621_Item_Donate))
				local BagPos = TryRecieveItem(sceneId,selfId,x000621_Item_Donate[ranit2], QUALITY_MUST_BE_CHANGE )
				x000621_FailTips(sceneId,selfId,"#11 Th§t ðáng tiªc #Y[Long Vån]#W chßa xu¤t hi®n #11")
				BeginUICommand(sceneId)
				EndUICommand(sceneId)
				DispatchUICommand(sceneId,selfId, 1000)
				--hd add thong bao khi nhat duoc long van
				local transfer = GetBagItemTransfer(sceneId,selfId,BagPos)
				local str = format("#cff99cc#{_INFOUSR%s} cùng ð°ng ðµi v¤t vä ðµt kích, phá giäi #YPhøng Minh Vß½ng Lång #P. T× trong túi r¾t ra #{_INFOMSG%s} cûng an üi ph¥n nào! ", GetName(sceneId,selfId),transfer)
				if ranit2 >= (getn(x000621_Item_Donate) - 8)then
					BroadMsgByChatPipe(sceneId, selfId, str, 4) --he thong
				else
					BroadMsgByChatPipe(sceneId, selfId, str, 1) ---ðµi ngû
				end
			--end
		end
	end
end
function x000621_Tips(sceneId, selfId,targetId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000621_FailTips(sceneId, selfId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end
