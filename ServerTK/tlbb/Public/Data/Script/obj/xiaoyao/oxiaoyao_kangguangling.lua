--逍遥NPC
--康广陵
--普通

x014001_g_scriptId = 014001

--**********************************
--事件交互入口
--**********************************
function x014001_OnDefaultEvent( sceneId, selfId,targetId )
	x014001_g_MenPai = GetMenPai(sceneId, selfId)
	if x014001_g_MenPai == 8 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{TYJZ_081103_02}")
			AddNumText(sceneId, x014001_g_scriptId, "H鱟 t鈓 ph醦 Ti陁 Dao",12,0)
			AddNumText(sceneId, x014001_g_scriptId, "V� h鱟 t鈓 ph醦 c黙 Ti陁 Dao ph醝",11,10)
			--AddNumText(sceneId, x014001_g_scriptId, "#{JZBZ_081031_02}",11,11)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	else
			BeginEvent(sceneId)
			AddText(sceneId,"Ng呓i kh鬾g ph鋓 甬 t� Ti陁 Dao. Ng呓i 皙n do th醡 b眓 ph醝 h�?")
			
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
end

--**********************************
--事件列表选中一项
--**********************************
function x014001_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 10 then
			BeginEvent(sceneId)	
					
				AddText( sceneId, "#{function_xinfajieshao_001}" )
								
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	elseif GetNumText() == 11 then
		BeginEvent(sceneId)					
			AddText( sceneId, "#{JZBZ_081031_01}" )							
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	DispatchXinfaLevelInfo( sceneId, selfId, targetId, 8 );
end
