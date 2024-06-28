--åÐÒ£NPC
--ÆÕÍ¨µÜ×Ó
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x014030_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Nªu có v¤n ð« gì, xin cÑ ðªn g£p Tri khách sÑ cüa Tiêu Dao")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
