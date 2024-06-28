--NPC Giao nhi®m vø Mµ Dung
--Author: mrhong@2gvn
--Date: 1/3/2012

x000504_g_scriptId = 000504

function x000504_OnDefaultEvent( sceneId, selfId,targetId )

	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
		AddText(sceneId,"#{GUSU_MENPAI_24}")

--		if mp == 9 and GetHumanMenpaiPoint(sceneId, selfId) == 0 then 
--			AddNumText(sceneId, x000504_g_scriptId, "Gia nh§p môn phái",6,0)
--		end

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000504_OnEventRequest( sceneId, selfId, targetId, eventId )

end

function x000504_AddMsg( sceneId, selfId, targetId, msg)
	BeginEvent(sceneId)
		AddText(sceneId, msg)
	EndEvent(sceneId)
	DispatchEventList(sceneId, selfId, targetId)
end

function x000504_AddTips( sceneId, selfId, tips)
	BeginEvent(sceneId)
		AddText(sceneId, tips)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end