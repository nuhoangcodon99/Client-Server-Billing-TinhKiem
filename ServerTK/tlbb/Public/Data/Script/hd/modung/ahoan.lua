--NPC A Hoàn Mµ Dung
--Author: mrhong@2gvn
--Date: 1/3/2012

x000506_g_scriptId = 000506

function x000506_OnDefaultEvent( sceneId, selfId,targetId )

	BeginEvent(sceneId)
	if random(1,2) == 1 then
		AddText(sceneId,"#{GUSU_MENPAI_28}")
	else
		AddText(sceneId,"#{GUSU_MENPAI_29}")
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000506_OnEventRequest( sceneId, selfId, targetId, eventId )

end