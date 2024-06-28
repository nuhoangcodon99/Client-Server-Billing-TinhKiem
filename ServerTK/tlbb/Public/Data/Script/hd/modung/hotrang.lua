--NPC Hµ trang phái Mµ Dung
--Author: mrhong@2gvn
--Date: 1/3/2012

x000512_g_scriptId = 000512

function x000512_OnDefaultEvent( sceneId, selfId,targetId )

	BeginEvent(sceneId)
		AddText(sceneId,"#{GUSU_MENPAI_25}")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000512_OnEventRequest( sceneId, selfId, targetId, eventId )
end
