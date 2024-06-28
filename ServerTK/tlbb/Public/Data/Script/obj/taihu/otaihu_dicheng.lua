--´óÀíNPC
--µÒ³É
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x004005_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Sao l¡m quan quân t¾i thª nhï, ta không dám ra cß¾p ğ° næa.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
