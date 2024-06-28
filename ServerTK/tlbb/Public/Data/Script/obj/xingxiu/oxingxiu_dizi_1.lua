--ÐÇËÞNPC
--ÆÕÍ¨µÜ×Ó
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x016030_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Có b¤t kì v¤n ð« gì chßa rõ, cÑ ðªn höi Tri khách sÑ cüa b±n phái  !!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
