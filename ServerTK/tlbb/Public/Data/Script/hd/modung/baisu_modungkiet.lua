--NPC bái sß Mµ Dung
--Author: mrhong@2gvn
--Date: 1/3/2012

x000503_g_scriptId = 000503

function x000503_OnDefaultEvent( sceneId, selfId,targetId )

	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
		AddText(sceneId,"Trß·ng môn sß huynh có vi®c tr÷ng ðÕi phäi làm, nhæng vi®c nh§n ð° ð® bái sß giao cho ta phø trách")
		local mp = GetMenPai(sceneId, selfId)
		if mp == 9 and GetHumanMenpaiPoint(sceneId, selfId) == 0 then 
			AddNumText(sceneId, x000503_g_scriptId, "Gia nh§p môn phái",6,0)
		end
		AddNumText(sceneId, x000503_g_scriptId, "Gi¾i thi®u môn phái",11,11)
		AddNumText(sceneId, x000503_g_scriptId, "H÷c kÛ nång môn phái",11,12)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000503_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText()==0	then
		if GetLevel( sceneId, selfId ) < 10 then
			BeginEvent(sceneId)
				AddText(sceneId,"Phái Mµ Dung ta, chï thu nh§n ngß¶i t× c¤p 10 tr· lên")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		if GetMenPai(sceneId, selfId) ~= 9  then
			BeginEvent(sceneId)
				AddText(sceneId,"Gã này hay g¾m nhï! ngß½i ðã là ngß¶i cüa môn phái khác, còn t¾i tìm Mµ Dung ta làm gì?")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		if GetHumanMenpaiPoint(sceneId, selfId) ~= 0 then
			BeginEvent(sceneId)
				AddText(sceneId,"Các hÕ ðã gia nh§p Mµ Dung r°i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
			BeginEvent(sceneId)
				AddText(sceneId,"  Hãy s¡p xªp lÕi tay näi, c¥n 1 v¸ trí tr¯ng, ta s¨ thß·ng cho ngß½i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end

		LuaFnJoinMenpai(sceneId, selfId, targetId, 9)
		LuaFnSetXinFaLevel(sceneId,selfId,64,10)
		LuaFnSetXinFaLevel(sceneId,selfId,65,10)
		LuaFnSetXinFaLevel(sceneId,selfId,66,10)
		LuaFnSetXinFaLevel(sceneId,selfId,67,1)
		LuaFnSetXinFaLevel(sceneId,selfId,68,1)
		LuaFnSetXinFaLevel(sceneId,selfId,69,1)
--		LuaFnSetXinFaLevel(sceneId,selfId,70,119)
--		LuaFnSetXinFaLevel(sceneId,selfId,71,119)
		SetHumanMenpaiPoint(sceneId, selfId, 1)
		BeginEvent(sceneId)
	  		AddText(sceneId,"Các hÕ ðã gia nh§p Mµ Dung!");
	  	EndEvent(sceneId)
	  	DispatchEventList(sceneId,selfId, targetId)
	  			
	  	if TryRecieveItem( sceneId, selfId, 10124198, 1 ) >= 0 then
			str		= "#YCác hÕ ðã nh§n ðßþc "..GetItemName( sceneId, 10124001 ).."."
			--x000503_MsgBox( sceneId, selfId, str )				
		end

		LuaFnMsg2Player( sceneId, selfId,"Các hÕ ðã gia nh§p Mµ Dung!",MSG2PLAYER_PARA)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 163, 0)
	end

	if GetNumText()==11 then
		BeginEvent(sceneId)
	  		AddText(sceneId,"  Ð® tØ Mµ Dung thª gia nµi công thâm h§u, chiêu thÑc tinh quái vô cùng.Khi ð® tØ Mµ Dung giao chiªn v¾i ð¸ch thü chiêu g§y ông ð§p lßng ông luôn luôn khiªn ð¯i phß½ng kinh hãi vô cùng, cûng t× ðó là ðÕt th¡ng lþi.");
	  		AddText(sceneId,"  Ð® tØ Mµ Dung giao ð¤u v¾i ð® tØ các môn phái khác thß¶ng nh¡m vào s½ · cüa ð¯i phß½ng mà công kích, xu¤t quÖ nh§p th¥n khiªn ai ai cûng ¾n lÕnh, t× ðó ðßþc sñ kinh n¬ cüa võ lâm ð°ng ðÕo.#r  Ð® tØ Mµ Dung gia nghiên cÑu vån chß½ng t§p luy®n võ công, mµt khi có ngß¶i b¸ Ñc hiªp thì l§p tÑc cu¯ng phong nµ vû n±i lên cho nên thiên hÕ võ lâm nhân sî ð«u không mu¯n giao chính chính di®n v¾i ngß¶i cüa Mµ Dung gia.");
	  		AddText(sceneId,"  Ð® tØ Mµ Dung gia nghiên cÑu vån chß½ng t§p luy®n võ công, mµt khi có ngß¶i b¸ Ñc hiªp thì l§p tÑc cu¯ng phong nµ vû n±i lên cho nên thiên hÕ võ lâm nhân sî ð«u không mu¯n giao chính chính di®n v¾i ngß¶i cüa Mµ Dung gia.");
	  		AddText(sceneId,"  Ð® tØ Mµ Dung gia giöi v« #cff0000nµi công#W và #cff0000công kích thuµc tính Huy«n#W");
	  	EndEvent(sceneId)
	  	DispatchEventList(sceneId, selfId, targetId)
	end
	if GetNumText()==12 then
		BeginEvent(sceneId)
	  		AddText(sceneId,"  Mµ Dung Thanh S½n là cao thü m¾i cüa Mµ Dung gia, các hÕ có th¬ tìm ông ta h÷c võ công. Ông ta · phía Tây Nam Yªn TØ Ô.");
	  	EndEvent(sceneId)
	  	DispatchEventList(sceneId, selfId, targetId)
	end

end

function x000503_AddMsg( sceneId, selfId, targetId, msg)
	BeginEvent(sceneId)
		AddText(sceneId, msg)
	EndEvent(sceneId)
	DispatchEventList(sceneId, selfId, targetId)
end

function x000503_AddTips( sceneId, selfId, tips)
	BeginEvent(sceneId)
		AddText(sceneId, tips)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end