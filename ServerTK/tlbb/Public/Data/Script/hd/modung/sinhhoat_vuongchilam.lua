--NPC Truy�n k� n�ng sinh ho�t M� Dung
--Author: mrhong@2gvn
--Date: 1/3/2012

x000510_g_scriptId = 000510

function x000510_OnDefaultEvent( sceneId, selfId,targetId )

	BeginEvent(sceneId)
		AddText(sceneId,"#{GUSU_MENPAI_40}")
		local mp = GetMenPai(sceneId, selfId)
--		if mp == 9 and GetHumanMenpaiPoint(sceneId, selfId) ~= 0 then
--			AddNumText(sceneId, x000510_g_scriptId, "K� n�ng h�c t�p",12,1)
--			AddNumText(sceneId, x000510_g_scriptId, "Th� c��i m�n ph�i",12,2)
--		end
		AddNumText(sceneId, x000510_g_scriptId, "Gi�i thi�u B�i To�n Thu�t",11,11)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000510_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	if GetNumText()==11 then
		BeginEvent(sceneId)
	  		AddText(sceneId," #{GUSU_MENPAI_41}");
	  	EndEvent(sceneId)
	  	DispatchEventList(sceneId, selfId, targetId)
	end

end

function x000510_AddMsg( sceneId, selfId, targetId, msg)
	BeginEvent(sceneId)
		AddText(sceneId, msg)
	EndEvent(sceneId)
	DispatchEventList(sceneId, selfId, targetId)
end

function x000510_AddTips( sceneId, selfId, tips)
	BeginEvent(sceneId)
		AddText(sceneId, tips)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end