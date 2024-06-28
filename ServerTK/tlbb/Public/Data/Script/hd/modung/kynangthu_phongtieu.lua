--NPC Truy«n kÛ nång kÜ Mµ Dung
--Author: mrhong@2gvn
--Date: 1/3/2012

x000507_g_scriptId = 000507

function x000507_OnDefaultEvent( sceneId, selfId,targetId )

	BeginEvent(sceneId)
		AddText(sceneId,"#{GUSU_MENPAI_34}")
		if	(0==LuaFnHaveSpecificEquitation(  sceneId, selfId, 1097))	then
			AddNumText(sceneId, x000507_g_scriptId, "H÷c kÜ thu§t: Linh Dß½ng",12,1)
		end
		if	(0==LuaFnHaveSpecificEquitation(  sceneId, selfId, 1098))	then
			AddNumText(sceneId, x000507_g_scriptId, "H÷c kÜ thu§t: Tuyªt Linh Dß½ng",12,2)
		end
		if	(0==LuaFnHaveSpecificEquitation(  sceneId, selfId, 1099))	then
			AddNumText(sceneId, x000507_g_scriptId, "H÷c kÜ thu§t: U Quang Linh",12,3)
		end
		AddNumText(sceneId, x000507_g_scriptId, "#{GUSU_MENPAI_42}",11,11)
		AddNumText(sceneId, x000507_g_scriptId, "#{QS_0408_1}",11,12)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000507_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText()==11 then
		BeginEvent(sceneId)
	  		AddText(sceneId,"#{GUSU_MENPAI_43}");
	  	EndEvent(sceneId)
	  	DispatchEventList(sceneId, selfId, targetId)
		return
	end	
	if GetNumText()==12 then
		BeginEvent(sceneId)
	  		AddText(sceneId,"#{GUSU_MENPAI_35}");
	  	EndEvent(sceneId)
	  	DispatchEventList(sceneId, selfId, targetId)
		return
	end

end
function x000507_AddMsg( sceneId, selfId, targetId, msg)
	BeginEvent(sceneId)
		AddText(sceneId, msg)
	EndEvent(sceneId)
	DispatchEventList(sceneId, selfId, targetId)
end

function x000507_AddTips( sceneId, selfId, tips)
	BeginEvent(sceneId)
		AddText(sceneId, tips)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end