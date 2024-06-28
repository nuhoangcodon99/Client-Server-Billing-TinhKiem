
x000204_g_ScriptId = 000204

x000204_g_EquipList={	

{n=1100,id=30000521},{n=1200,id=30000526},{n=1300,id=30000531},
{n=1100,id=30000522},{n=1200,id=30000527},{n=1300,id=30000532},
{n=1100,id=30000523},{n=1200,id=30000528},{n=1300,id=30000533},
{n=1100,id=30000524},{n=1200,id=30000529},{n=1300,id=30000534},
{n=1100,id=30000525},{n=1200,id=30000530},{n=1300,id=30000535},


{n=2100,id=30000536},{n=2200,id=30000541},{n=2300,id=30000546},
{n=2100,id=30000537},{n=2200,id=30000542},{n=2300,id=30000547},
{n=2100,id=30000538},{n=2200,id=30000543},{n=2300,id=30000548},
{n=2100,id=30000539},{n=2200,id=30000544},{n=2300,id=30000549},
{n=2100,id=30000540},{n=2200,id=30000545},{n=2300,id=30000550},
}
PetEquipDepart = {
			{id = 30000506, Num = 1}, {id = 30000507, Num = 1}, {id = 30000508, Num = 1},{id = 30000509, Num = 1},{id = 30000510, Num = 1},
			{id = 30000511, Num = 1},{id = 30000512, Num = 1},{id = 30000513, Num = 1},{id = 30000514, Num = 1},{id = 30000515, Num = 1},
			{id = 30000516, Num = 1},{id = 30000517, Num = 1},{id = 30000518, Num = 1},{id = 30000519, Num = 1},{id = 30000520, Num = 1},

			{id = 30000521, Num = 25},{id = 30000522, Num = 25},{id = 30000523, Num = 25},{id = 30000524, Num = 25},{id = 30000525, Num = 25},
			{id = 30000526, Num = 25},{id = 30000527, Num = 25},{id = 30000528, Num = 25},{id = 30000529, Num = 25},{id = 30000530, Num = 25},
			{id = 30000531, Num = 25},{id = 30000532, Num = 25},{id = 30000533, Num = 25},{id = 30000534, Num = 25},{id = 30000535, Num = 25},

			{id = 30000536, Num = 90},{id = 30000537, Num = 90},{id = 30000538, Num = 90},{id = 30000539, Num = 90},{id = 30000540, Num = 90},
			{id = 30000541, Num = 90},{id = 30000542, Num = 90},{id = 30000543, Num = 90},{id = 30000544, Num = 90},{id = 30000545, Num = 90},
			{id = 30000546, Num = 90},{id = 30000547, Num = 90},{id = 30000548, Num = 90},{id = 30000549, Num = 90},{id = 30000550, Num = 90},
}
ThanhThuLan = 20301009
x000204_g_StoneList={

{n=1,id=20301009,num=30,str="Thánh Thú Lân"},

{n=2,id=20301009,num=100,str="Thánh Thú Lân"},
}

function x000204_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{ZSZB_090421_09}")
		--AddNumText(sceneId,x000204_g_scriptId,"#{ZSZBSJ_090706_01}",6, 100)
		AddNumText(sceneId,x000204_g_scriptId,"#{ZSZBSJ_090706_07}",6, 200)
		AddNumText( sceneId, x000204_g_ScriptId, "Ð±i bµ trang phøc Trân Thú", 6, 300 )
		AddNumText( sceneId, x000204_g_ScriptId, "#{ZSZB_090421_08}", 11, 400 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000204_OnDefaultEvent( sceneId, selfId,targetId )
	x000204_UpdateEventList( sceneId, selfId, targetId )
end


function x000204_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	local nNumText = GetNumText()
		if nNumText == 100 then
			x000204_NotifyFailTips(sceneId,selfId,"Tính nång ðang ðßþc c§p nh§t")
		end
		if nNumText == 200 then
			BeginUICommand( sceneId )
				UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 19831205 )
		end
	if nNumText == 300  then
		BeginEvent(sceneId)
			AddText(sceneId, "  #{ZSZBDH_090806_1}")
			AddNumText( sceneId, x000204_g_ScriptId, "#{ZSZBDH_XML_1}", 6, 1000 )
			AddNumText( sceneId, x000204_g_ScriptId, "#{ZSZBDH_XML_2}", 6, 2000 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	if nNumText == 1000  then
		BeginEvent(sceneId)
			AddText(sceneId, "  #{ZSZBDH_090806_2}")
			AddNumText(sceneId, x000204_g_ScriptId, "Mãnh H± Hám S½n Thú", 6, nNumText+100)
			AddNumText(sceneId, x000204_g_ScriptId, "Phi ¿ng Tß¶ng Không Thú", 6, nNumText+200)
			AddNumText(sceneId, x000204_g_ScriptId, "Cñ Hùng Hao Lµ Thú", 6, nNumText+300)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if nNumText == 2000  then
		BeginEvent(sceneId)
			AddText(sceneId, "  #{ZSZBDH_090806_3}")
			AddNumText(sceneId, x000204_g_ScriptId, "Hùng Sß Ngh¸ch Lân Thú", 6, nNumText+100)
			AddNumText(sceneId, x000204_g_ScriptId, "Côn B¢ng D¸ Vû Thú", 6, nNumText+200)
			AddNumText(sceneId, x000204_g_ScriptId, "Huy«n Quy KÏ Huyªt Thú", 6, nNumText+300)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if nNumText > 1000 and nNumText < 3000  then
		BeginEvent(sceneId)
			local nLevel = 0
			if nNumText > 1000 then
				nLevel = 1
			end
			if nNumText > 2000 then
				nLevel = 2
			end
			AddText(sceneId, "#{ZSZBDH_090806_4}")
			for i, item in x000204_g_EquipList do
				if item.n == nNumText  then
					AddRadioItemBonus( sceneId, item.id, 4 )
				end
			end
    		EndEvent(sceneId)
    		DispatchMissionContinueInfo(sceneId,selfId,targetId, x000204_g_ScriptId, 0)
	end
	if nNumText == 400  then
		BeginEvent(sceneId)
			AddNumText( sceneId, x000204_g_ScriptId, "#{ZSZB_XML_1}", 11, 401 )
			AddNumText( sceneId, x000204_g_ScriptId, "#{ZSZBSJ_090706_13}", 11, 402 )
			AddNumText( sceneId, x000204_g_ScriptId, "#{ZSZBSJ_090706_15}", 11, 403 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	if nNumText == 401  then
		BeginEvent(sceneId)
			AddText(sceneId, "  #{ZSZB_090820_1}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	if nNumText == 402  then
		BeginEvent(sceneId)
			AddText(sceneId, "  #{ZSZBSJ_090706_14}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	if nNumText == 403  then
		BeginEvent(sceneId)
			AddText(sceneId, "  #{ZSZBSJ_090706_16}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
end

function x000204_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )

end

function x000204_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )

end


function x000204_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )

end

function x000204_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	local nItemIndex = -1
	for i, item in x000204_g_EquipList do
		if item.id == selectRadioId  then
			nItemIndex = i
		end
	end
	if nItemIndex == -1  then
		return
	end

	local nLevel = 0
	if x000204_g_EquipList[nItemIndex].n > 1000 then
		nLevel = 1
	end
	if x000204_g_EquipList[nItemIndex].n > 2000 then
		nLevel = 2
	end
	local bStoneOk = 0
	if GetItemCount(sceneId, selfId, x000204_g_StoneList[nLevel].id) >= x000204_g_StoneList[nLevel].num  then
		bStoneOk = 1
	end
	if  bStoneOk == 0 then
		BeginEvent(sceneId)
				strText = "#{ZSZBDH_090806_7}"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	local StoneCount = LuaFnGetAvailableItemCount(sceneId, selfId, x000204_g_StoneList[nLevel].id)
	BeginAddItem(sceneId)
		AddItem(sceneId, selectRadioId, 1)
	local bBagOk = EndAddItem(sceneId, selfId)
	if bBagOk < 1 then
		BeginEvent(sceneId)
			strText = "#{JPZB_0610_11}"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	local bDelOk = 0
	bDelOk = LuaFnDelAvailableItem(sceneId,selfId, x000204_g_StoneList[nLevel].id, x000204_g_StoneList[nLevel].num)
	if bDelOk < 1  then
		BeginEvent(sceneId)
			strText = "#{JPZB_0610_12}"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	else
		TryRecieveItem( sceneId, selfId, x000204_g_EquipList[nItemIndex].id, 1 );
		BeginEvent(sceneId)
			strText = "#{ZSZBDH_090806_9}"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)
		return
	end
end
function x000204_PhanGiaiItem(sceneId,selfId,targetId)
			local Id1 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, 0 )
			if (Id1 >= 30000506) and (Id1 <= 30000520) then
				if LuaFnGetAvailableItemCount( sceneId, selfId, Id1 ) < 1 then
					BeginEvent(sceneId)						
						AddText(sceneId,"Hãy ð£t trang b¸ c¥n phân giäi vào ô ðÕo cø ð¥u tiên trong khung ðÕo cø ho£c ki¬m tra v§t ph¦m b¸ khóa!")
					EndEvent(sceneId)
					DispatchEventList(sceneId,selfId,targetId)
					return
				end
				if LuaFnGetMaterialBagSpace( sceneId, selfId ) < 1 then
					BeginEvent(sceneId)						
						AddText(sceneId,"C¥n 1 ô tr¯ng · khung nguyên li®u")
					EndEvent(sceneId)
					DispatchEventList(sceneId,selfId,targetId)
					return
				end
				LuaFnDelAvailableItem(sceneId,selfId, Id1, 1 )
				TryRecieveItem( sceneId, selfId, 20301009, 1 )
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
				BeginEvent(sceneId)						
					AddText(sceneId,"#{ZSZBSJ_090706_10} "..GetItemName( sceneId, 20301009))
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
				return
			else
				BeginEvent(sceneId)						
					AddText(sceneId,"#GChï có bµ trang b¸ Trân Thú c¤p 75 m¾i có th¬ phân giäi")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
				return
			end
end
function x000204_OnPetEquipSuitDepart(sceneId, selfId, idBagPos)
	if idBagPos == -1 then
		return
	end
	local ItemID = LuaFnGetItemTableIndexByIndex( sceneId, selfId, idBagPos )
	local nMaterialID,nMaterialNum = -1,0
	for i, itm in PetEquipDepart do
		if ItemID == itm.id then
			nMaterialID = ItemID
			nMaterialNum = itm.Num
		end
	end
	if nMaterialID == -1 then
		x000204_NotifyFailTips(sceneId,selfId, "#{ZSZBSJ_090706_08}")
		return
	end
	if LuaFnGetMaterialBagSpace( sceneId, selfId ) < 1 then
		x000204_NotifyFailTips(sceneId,selfId, "#{ZSZBSJ_090706_09}")
		return
	end
	if LuaFnIsItemAvailable( sceneId, selfId, idBagPos ) ~= 1 then
		x000204_NotifyFailTips(sceneId,selfId, "#{ZSZBSJ_090706_02}")
		return
	end
	LuaFnEraseItem( sceneId, selfId, idBagPos )
	for i =1,nMaterialNum do
		TryRecieveItem( sceneId, selfId, ThanhThuLan, 1 )
	end
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
	x000204_NotifyFailTips( sceneId, selfId, "#{ZSZBSJ_090706_10} "..nMaterialNum.." #{ZSZBSJ_090706_11}" )
end
function x000204_OnDie( sceneId, selfId, killerId )
end
function x000204_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
