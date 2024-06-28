--Sinh con
--NPC Trß·ng Tôn bà bà
--Author: Sói

--********************--
x910182_g_scriptId=910182
--********************--
x910182_g_Item=30010100
--********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x910182_OnDefaultEvent(sceneId,selfId,targetId)

	--********************--
	BeginEvent(sceneId)
		AddText(sceneId,"Phu thê ð°ng hành ng¥n ¤y nåm, chia ng÷t së bùi g¥n nhß t¤t cä thì cûng ðã ðªn lúc g¡n kªt giao duyên ð¬ sinh con. Con cái là tinh túy kª th×a t× cha m© nên lînh hµi ðßþc r¤t nhi«u kÛ nång. Nªu ðßþc chåm sóc tï mï thì con cái sau này s¨ h² trþ cho vþ ch°ng r¤t nhi«u.")
		AddNumText(sceneId,x910182_g_scriptId,"Nh§n con nuôi",6,6)
		AddNumText(sceneId,x910182_g_scriptId,"GØi con vào trÕi trë m° côi",6,7)
		AddNumText(sceneId,x910182_g_scriptId,"Thång c¤p #GKÛ nång cüa Con",6,1)
		AddNumText(sceneId,x910182_g_scriptId,"V« #GKÛ nång cüa Con",11,0)
		AddNumText(sceneId,x910182_g_scriptId,"Ta chï ði ngang qua...",-1,9)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	--********************--
	
end
--**********************************--
--*        On Event Request        *--
--**********************************--
function x910182_OnEventRequest(sceneId,selfId,targetId,eventId)
	
	--********************--
	if GetNumText()==0 then
		BeginEvent(sceneId)
			AddText(sceneId,"Con sau khi ðÕt #GC¤p 30#W s¨ ðßþc lînh ngµ #G4 kÛ nång công kích thuµc tính#W là #GBång#W, #GHöa#W, #GHuy«n#W, #GÐµc#W.")
			AddText(sceneId,"M²i kÛ nång s¨ chia thành #G10 c¤p ðµ#W. Ð¬ thång c¤p kÛ nång, c¥n thu th§p mµt lßþng #GSách kÛ nång thuµc tính#W nh¤t ð¸nh.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--********************--
	if GetNumText()==1 then
		BeginEvent(sceneId)
			AddText(sceneId,"Con sau khi ðÕt #GC¤p 30#W s¨ ðßþc lînh ngµ #G4 kÛ nång công kích thuµc tính#W là #GBång#W, #GHöa#W, #GHuy«n#W, #GÐµc#W.")
			AddText(sceneId,"M²i kÛ nång s¨ chia thành #G10 c¤p ðµ#W. Ð¬ thång c¤p kÛ nång, c¥n thu th§p mµt lßþng #GSách kÛ nång thuµc tính#W nh¤t ð¸nh.")
			AddNumText(sceneId,x910182_g_scriptId,"Thång c¤p #GKÛ nång Bång",6,2)
			AddNumText(sceneId,x910182_g_scriptId,"Thång c¤p #GKÛ nång Höa",6,3)
			AddNumText(sceneId,x910182_g_scriptId,"Thång c¤p #GKÛ nång Huy«n",6,4)
			AddNumText(sceneId,x910182_g_scriptId,"Thång c¤p #GKÛ nång Ðµc",6,5)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--********************--
	if GetNumText()==2 then
		CallScriptFunction(910181,"LevelUpASkill",sceneId,selfId,1)
	end
	--********************--
	if GetNumText()==3 then
		CallScriptFunction(910181,"LevelUpASkill",sceneId,selfId,2)
	end
	--********************--
	if GetNumText()==4 then
		CallScriptFunction(910181,"LevelUpASkill",sceneId,selfId,3)
	end
	--********************--
	if GetNumText()==5 then
		CallScriptFunction(910181,"LevelUpASkill",sceneId,selfId,4)
	end
	--********************--
	if GetNumText()==6 then
		if LuaFnIsMarried(sceneId,selfId)==1 then
			BeginEvent(sceneId)
				AddText(sceneId,"Các hÕ ðã có vþ ho£c ch°ng, hãy ch÷n cách C¥u tñ ði!")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		elseif GetMissionData(sceneId,selfId,MD_WIZI_SEX)~=0 then
			BeginEvent(sceneId)
				AddText(sceneId,"ChÆng phäi các hÕ ðã có con r°i sao?")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		elseif LuaFnDelAvailableItem(sceneId,selfId,x910182_g_Item,1)<1 then
			BeginEvent(sceneId)
				AddText(sceneId,"Các hÕ không có #GBúp Bê G¯m#W!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		CallScriptFunction(910181,"BornAKid",sceneId,selfId)
		BeginEvent(sceneId)
			AddText(sceneId,"Nh§n con nuôi thành công!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--********************--
	if GetNumText()==7 then
		if GetMissionData(sceneId,selfId,MD_WIZI_SEX)==0 then
			BeginEvent(sceneId)
				AddText(sceneId,"Các hÕ làm gì có con?")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		BeginEvent(sceneId)
			AddText(sceneId,"GØi con vào trÕi trë m° côi ð°ng nghîa v¾i vi®c các hÕ s¨ m¤t ði nó vînh vi­n sau này, các hÕ phäi chång không còn tình cäm nào v¾i con mình chång?")
			AddNumText(sceneId,x910182_g_scriptId,"Ta ðã quyªt ð¸nh",6,8)
			AddNumText(sceneId,x910182_g_scriptId,"Ti¬u thß nói ðúng, tÕi hÕ ðã nghî lÕi...",6,9)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--********************--
	if GetNumText()==8 then
		if GetMissionData(sceneId,selfId,MD_WIZI_SEX)==0 then
			BeginEvent(sceneId)
				AddText(sceneId,"Các hÕ làm gì có con?")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		elseif GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_1)~=0 or GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_2)~=0 or GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_3)~=0 or GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_4)~=0 then
			BeginEvent(sceneId)
				AddText(sceneId,"Hãy gÞ t¤t cä trang b¸ cüa con xu¯ng trß¾c ðã!")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		BeginEvent(sceneId)
			AddText(sceneId,"GØi con thành công!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		CallScriptFunction(910181,"ReleaseMyBaby",sceneId,selfId)
	end
	--********************--
	if GetNumText()==9 then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,1000)
	end
	--********************--

end