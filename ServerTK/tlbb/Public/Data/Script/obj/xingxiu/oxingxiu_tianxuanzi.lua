--ÐÇËÞNPC
--Ììè¯×Ó
--ÆÕÍ¨

x016035_g_scriptId = 016035

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x016035_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Chào m×ng ðã t¾i v¾i Tinh Túc, môn phái lþi hÕi nh¤t v« ðµc dßþc !!")
		AddNumText(sceneId,x016035_g_scriptId,"Di®t Nh®n ðµc",10,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x016035_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
		if	GetLevel( sceneId, selfId)<51  then	
			BeginEvent( sceneId )
			local strText = "B¢ng hæu c¥n ðÕt t¾i ðÆng c¤p 51 m¾i có th¬ vào bän ð° này !!"
			AddText( sceneId, strText )
			EndEvent( sceneId )
			DispatchEventList(sceneId,selfId,targetId)
		else
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 146,91,144)
		end
	end
end
