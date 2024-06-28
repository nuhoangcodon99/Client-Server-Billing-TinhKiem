--Sinh con
--NPC Trß·ng Tôn bà bà
--Author: Sói

--********************--
x910180_g_scriptId=910180
--********************--
x910180_g_Item=30010100
--********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x910180_OnDefaultEvent(sceneId,selfId,targetId)

	--********************--
	BeginEvent(sceneId)
		AddText(sceneId,"Phu thê ð°ng hành ng¥n ¤y nåm, chia ng÷t së bùi g¥n nhß t¤t cä thì cûng ðã ðªn lúc g¡n kªt giao duyên ð¬ sinh con. Con cái là tinh túy kª th×a t× cha m© nên lînh hµi ðßþc r¤t nhi«u kÛ nång. Nªu ðßþc chåm sóc tï mï thì con cái sau này s¨ h² trþ cho vþ ch°ng r¤t nhi«u.")
		AddNumText(sceneId,x910180_g_scriptId,"Tri®u h°i #GBúp Bê G¯m",6,2)
		AddNumText(sceneId,x910180_g_scriptId,"Sinh con",6,1)
		AddNumText(sceneId,x910180_g_scriptId,"V« chÑc nång sinh con",11,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	--********************--
	
end
--**********************************--
--*        On Event Request        *--
--**********************************--
function x910180_OnEventRequest(sceneId,selfId,targetId,eventId)
	
	--********************--
	if GetNumText()==0 then
		BeginEvent(sceneId)
			AddText(sceneId,"Phu thê t× #Gc¤p 50 tr· lên#W t± ðµi ðªn g£p #RTrß·ng Tôn Bà Bà #H(143,176)#W - #GLÕc Dß½ng#W, dùng ph¦m #GBúp Bê G¯m#W (tham gia phø bän thØ thách cüa #GTrß·ng Tôn Bà Bà#W s¨ ðÕt ðßþc) ð¬ thñc hi®n c¥u tñ.")
			AddText(sceneId,"Hoàn thành nhi®m vø ðßþc #GTrß·ng Tôn Bà Bà#W ðßa ra thì 2 phu thê s¨ nh§n ðßþc con.")
			AddText(sceneId,"Trong quá trình phu thê c¥u tñ, nªu ly hôn s¨ khiªn quá trình c¥u tñ th¤t bÕi.")
			AddText(sceneId,"M²i c£p vþ ch°ng chï có th¬ có v¾i nhau #Gmµt con#W, khi ly hôn thì con s¨ tñ ðµng chuy¬n vào #GtrÕi trë m° côi#W.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--********************--
	if GetNumText()==1 then
		if LuaFnIsTeamLeader(sceneId,selfId)~=1 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ta c¥n nói chuy®n v¾i ðµi trß·ng.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		elseif LuaFnHasTeam(sceneId,selfId)~=1 or GetTeamSize(sceneId,selfId)~=2 then
			BeginEvent(sceneId)
				AddText(sceneId,"Phu thê hai ngß¶i c¥n l§p t± ðµi ðªn g£p #GTrß·ng Tôn Bà Bà#W.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		elseif LuaFnGetSpouseGUID(sceneId,GetNearTeamMember(sceneId,selfId,0))~=LuaFnGetGUID(sceneId,GetNearTeamMember(sceneId,selfId,1)) then
			BeginEvent(sceneId)
				AddText(sceneId,"Hai v¸ chßa kªt hôn v¾i nhau, làm sao có th¬ sinh con ðßþc?")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		elseif LuaFnDelAvailableItem(sceneId,selfId,x910180_g_Item,1)<1 then
			BeginEvent(sceneId)
				AddText(sceneId,"Các hÕ không có #GBúp Bê G¯m#W, không ðü ði«u ki®n ð¬ sinh con!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		elseif GetMissionData(sceneId,GetNearTeamMember(sceneId,selfId,0),MD_WIZI_SEX)~=0 or GetMissionData(sceneId,GetNearTeamMember(sceneId,selfId,1),MD_WIZI_SEX)~=0 then
			BeginEvent(sceneId)
				AddText(sceneId,"ChÆng phäi mµt trong hai ngß¶i ðã có con r°i sao?")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		BeginEvent(sceneId)
			AddText(sceneId,"C¥u tñ thành công, mµt em bé ðã chào ð¶i, chúc m×ng hai vþ ch°ng.")
			AddText(sceneId,"Ð¬ tìm hi¬u chi tiªt hãy m· giao di®n Con và theo dõi.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,GetNearTeamMember(sceneId,selfId,0),targetId)
		BeginEvent(sceneId)
			AddText(sceneId,"C¥u tñ thành công, mµt em bé ðã chào ð¶i, chúc m×ng hai vþ ch°ng.")
			AddText(sceneId,"Ð¬ tìm hi¬u chi tiªt hãy m· giao di®n Con và theo dõi.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,GetNearTeamMember(sceneId,selfId,1),targetId)
		CallScriptFunction(910181,"BornAKid",sceneId,GetNearTeamMember(sceneId,selfId,0))
		CallScriptFunction(910181,"BornAKid",sceneId,GetNearTeamMember(sceneId,selfId,1))
	end
	--********************--

end