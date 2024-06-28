--NPC Võ Ð°ng
--Author: phihong
--Date:2/10

x000202_g_scriptId = 000202


function x000202_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{WH_090817_14}")
		AddNumText(sceneId,x000202_g_scriptId,"#{WH_xml_XX(49)}",6, 100)
		AddNumText(sceneId,x000202_g_scriptId,"Trao ð±i sang #GThöi Vàng",6, 200)
		AddNumText(sceneId,x000202_g_scriptId,"Trao ð±i sang #GLinh H°n Toái Phiªn ÐÕi",6, 300)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end


function x000202_OnEventRequest( sceneId, selfId, targetId, eventId )
		if GetNumText() == 100 then
			BeginEvent(sceneId)						
				AddText(sceneId,"#GHãy ð£t 5 #YH°n Bång Châu#G cùng loÕi c¥n thång c¤p vào #Bô ðÕo cø ð¥u tiên trong khung nguyên li®u")
				AddNumText(sceneId, x000202_g_scriptId,"#{WH_xml_XX(49)}", 6, 101)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
		if GetNumText() == 101 then
			local Id1 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, 30 )
			if (Id1 >= 20310117) and (Id1 <= 20310121) then
				if Id1 == 20310121 then
					BeginEvent(sceneId)						
						AddText(sceneId,"#YH°n Bång Châu #Ghi®n tÕi ðã ðÕt mÑc gi¾i hÕn, không th¬ thång c¤p thêm!")
					EndEvent(sceneId)
					DispatchEventList(sceneId,selfId,targetId)
					return
				end
				if LuaFnGetAvailableItemCount( sceneId, selfId, Id1 ) < 5 then
					BeginEvent(sceneId)						
						AddText(sceneId,"Các hÕ không mang ðü 5 #Y"..GetItemName( sceneId, Id1).." #G ho£c có v§t ph¦m b¸ khóa!")
					EndEvent(sceneId)
					DispatchEventList(sceneId,selfId,targetId)
					return
				end
				LuaFnDelAvailableItem(sceneId,selfId, Id1, 5 )
				TryRecieveItem( sceneId, selfId, Id1+1, 1 )
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
				BeginEvent(sceneId)						
					AddText(sceneId,"#GThång c¤p lên #Y"..GetItemName( sceneId, Id1+1).." #Gthành công!")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
				return
			else
				BeginEvent(sceneId)						
					AddText(sceneId,"#GHãy ð£t 5 #YH°n Bång Châu#G cùng loÕi c¥n thång c¤p vào #Bô ðÕo cø ð¥u tiên trong khung nguyên li®u")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
				return
			end
		end
		if GetNumText() == 200 then
				if LuaFnGetAvailableItemCount( sceneId, selfId, 30505167 ) < 100 then
					BeginEvent(sceneId)						
						AddText(sceneId,"Các hÕ không mang ðü 100 #YTi«n Vàng #W ho£c có v§t ph¦m b¸ khóa!")
					EndEvent(sceneId)
					DispatchEventList(sceneId,selfId,targetId)
					return
				end
				LuaFnDelAvailableItem(sceneId,selfId, 30505167, 100 )
				TryRecieveItem( sceneId, selfId, 30505197, 1 )
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
				BeginEvent(sceneId)						
					AddText(sceneId,"Trao ð±i thành công, nh§n ðßþc 1 Thöi Vàng!")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
				return
		end
		if GetNumText() == 300 then
				if LuaFnGetAvailableItemCount( sceneId, selfId, 30505169 ) < 100 then
					BeginEvent(sceneId)						
						AddText(sceneId,"Các hÕ không mang ðü 100 #YLinh H°n Toái Phiªn #W ho£c có v§t ph¦m b¸ khóa!")
					EndEvent(sceneId)
					DispatchEventList(sceneId,selfId,targetId)
					return
				end
				LuaFnDelAvailableItem(sceneId,selfId, 30505169, 100 )
				TryRecieveItem( sceneId, selfId, 30505198, 1 )
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
				BeginEvent(sceneId)						
					AddText(sceneId,"Trao ð±i thành công, nh§n ðßþc 1 Linh H°n Toái Phiªn ÐÕi!")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
				return
		end
end
--Soi add thay doi trang bi
--*********************************--
--*********************************--
function x000202_ChangeEquip(sceneId,selfId,Equip_Old_Pos,Equip_New_Index)

	--****************--
	local First_Material_Index=LuaFnGetItemTableIndexByIndex(sceneId,selfId,30)
	LuaFnEraseItem(sceneId,selfId,30)
	--****************--
	local Equip_Old_Index=LuaFnGetItemTableIndexByIndex(sceneId,selfId,Equip_Old_Pos)
	local _,Author=LuaFnGetItemCreator(sceneId,selfId,Equip_Old_Pos)
	local nStiletto=GetBagGemCount(sceneId,selfId,Equip_Old_Pos)
	local Gem_ID={}
	Gem_ID[1]=GetGemEmbededType(sceneId,selfId,Equip_Old_Pos,0)
	Gem_ID[2]=GetGemEmbededType(sceneId,selfId,Equip_Old_Pos,1)
	Gem_ID[3]=GetGemEmbededType(sceneId,selfId,Equip_Old_Pos,2)
	Gem_ID[4]=GetGemEmbededType(sceneId,selfId,Equip_Old_Pos,3)
	local Is_Bind=LuaFnGetItemBindStatus(sceneId,selfId,Equip_Old_Pos)
	--****************--
	LuaFnEraseItem(sceneId,selfId,Equip_Old_Pos)
	--****************--
	local Equip_New_Pos=TryRecieveItem(sceneId,selfId,Equip_New_Index,1)
	--****************--
	LuaFnSetItemCreator(sceneId,selfId,Equip_New_Pos,Author)
	--****************--
	for i=0,nStiletto-1 do
		AddBagItemSlotFour(sceneId,selfId,Equip_New_Pos)
		if Gem_ID[i+1]~=-1 then
			TryRecieveItem(sceneId,selfId,Gem_ID[i+1],1)
			GemEnchasing(sceneId,selfId,30,Equip_New_Pos)
		end
	end
	--****************--
	if Is_Bind==1 then
		LuaFnItemBind(sceneId,selfId,Equip_New_Pos)
	end
	--****************--
	if First_Material_Index~=0 then
		TryRecieveItem(sceneId,selfId,First_Material_Index,1)
	end
	--****************--

end
