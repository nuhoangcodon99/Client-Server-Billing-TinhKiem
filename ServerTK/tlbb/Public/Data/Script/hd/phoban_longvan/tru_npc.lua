x000630_g_ScriptId	= 000630
x000630_g_FuBenScriptId = 000618

function x000630_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local text=" Long Trø nh§n ðßþc bäo v®, s×ng sæng b¤t ðµng.  #r xem ra c¥n tiêu di®t toàn bµ quái v§t m¾i có th¬ tiªp tøc ðä thông Long Trø ðßþc."
		AddText(sceneId,text)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
