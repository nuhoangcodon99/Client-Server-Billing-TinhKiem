--NPC Chï ðß¶ng mp Mµ Dung
--Author: mrhong@2gvn
--Date: 1/3/2012

x000501_g_scriptId = 000501

function x000501_OnDefaultEvent( sceneId, selfId,targetId )

	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
		AddText(sceneId,"#{GUSU_MENPAI_2}")
		AddNumText(sceneId, x000501_g_scriptId, "#{GUSU_MENPAI_3}",11,11)
		AddNumText(sceneId, x000501_g_scriptId, "#{GUSU_MENPAI_4}",11,12)
		AddNumText(sceneId, x000501_g_scriptId, "#{GUSU_MENPAI_5}",11,13)
		AddNumText(sceneId, x000501_g_scriptId, "#{GUSU_MENPAI_6}",11,14)
		AddNumText(sceneId, x000501_g_scriptId, "#{GUSU_MENPAI_7}",11,15)
		AddNumText(sceneId, x000501_g_scriptId, "#{GUSU_MENPAI_8}",11,16)
		AddNumText(sceneId, x000501_g_scriptId, "#{GUSU_MENPAI_9}",11,17)
		AddNumText(sceneId, x000501_g_scriptId, "#{GUSU_MENPAI_10}",11,18)
		AddNumText(sceneId, x000501_g_scriptId, "#{GUSU_MENPAI_11}",11,19)
		AddNumText(sceneId, x000501_g_scriptId, "#{GUSU_MENPAI_12}",11,20)
		AddNumText(sceneId, x000501_g_scriptId, "#{GUSU_MENPAI_13}",11,21)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000501_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	if GetNumText()==11 then
		BeginEvent(sceneId)
	  		AddText(sceneId,"#{GUSU_MENPAI_14}");
	  	EndEvent(sceneId)
	  	DispatchEventList(sceneId, selfId, targetId)
		return
	end

	if GetNumText()==12 then
		BeginEvent(sceneId)
	  		AddText(sceneId,"#{GUSU_MENPAI_15}");
	  	EndEvent(sceneId)
	  	DispatchEventList(sceneId, selfId, targetId)
		return
	end
	if GetNumText()==13 then
		BeginEvent(sceneId)
	  		AddText(sceneId,"#{GUSU_MENPAI_16}");
	  	EndEvent(sceneId)
	  	DispatchEventList(sceneId, selfId, targetId)
		return
	end
	if GetNumText()==14 then
		BeginEvent(sceneId)
	  		AddText(sceneId,"#{GUSU_MENPAI_17}");
	  	EndEvent(sceneId)
	  	DispatchEventList(sceneId, selfId, targetId)
		return
	end
	if GetNumText()==15 then
		BeginEvent(sceneId)
	  		AddText(sceneId,"#{GUSU_MENPAI_18}");
	  	EndEvent(sceneId)
	  	DispatchEventList(sceneId, selfId, targetId)
		return
	end
	if GetNumText()==16 then
		BeginEvent(sceneId)
	  		AddText(sceneId,"#{GUSU_MENPAI_37}");
	  	EndEvent(sceneId)
	  	DispatchEventList(sceneId, selfId, targetId)
		return
	end
	if GetNumText()==17 then
		BeginEvent(sceneId)
	  		AddText(sceneId,"#{GUSU_MENPAI_19}");
	  	EndEvent(sceneId)
	  	DispatchEventList(sceneId, selfId, targetId)
		return
	end
	if GetNumText()==18 then
		BeginEvent(sceneId)
	  		AddText(sceneId,"#{GUSU_MENPAI_20}");
	  	EndEvent(sceneId)
	  	DispatchEventList(sceneId, selfId, targetId)
		return
	end
	if GetNumText()==19 then
		BeginEvent(sceneId)
	  		AddText(sceneId,"#{GUSU_MENPAI_21}");
	  	EndEvent(sceneId)
	  	DispatchEventList(sceneId, selfId, targetId)
		return
	end
	if GetNumText()==20 then
		BeginEvent(sceneId)
	  		AddText(sceneId,"#{GUSU_MENPAI_22}");
	  	EndEvent(sceneId)
	  	DispatchEventList(sceneId, selfId, targetId)
		return
	end
	if GetNumText()==21 then
		BeginEvent(sceneId)
	  		AddText(sceneId,"#{GUSU_MENPAI_23}");
	  	EndEvent(sceneId)
	  	DispatchEventList(sceneId, selfId, targetId)
		return
	end

end