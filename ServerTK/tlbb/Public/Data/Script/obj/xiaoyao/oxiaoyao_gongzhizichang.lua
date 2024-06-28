--åÐÒ£NPC
--¹«ÖÎ×Ó³¤
--ÆÕÍ¨

x014035_g_scriptId = 014035

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x014035_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta s¨ dçn ngß½i ðªn thí luy®n v¾i nhæng mµc nhân mÕnh m¨. Ngß½i có dám ði không ??")
		AddNumText(sceneId,x014035_g_scriptId,"Ði ðªn Mµc Nhân ðµng",10,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x014035_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
		if	GetLevel( sceneId, selfId)<81  then	
			BeginEvent( sceneId )
			local strText = "Ít nh¤t phäi ðÕt t¾i c¤p 81 m¾i có th¬ vào bän ð° này ðßþc !!"
			AddText( sceneId, strText )
			EndEvent( sceneId )
			DispatchEventList(sceneId,selfId,targetId)
		else
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 144,51,129)
		end
	end
end
