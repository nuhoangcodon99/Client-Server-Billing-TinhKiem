--星宿NPC
--施全
--普通

x016007_g_scriptId = 016007

--**********************************
--事件交互入口
--**********************************
function x016007_OnDefaultEvent( sceneId, selfId,targetId )
	x016007_g_MenPai = GetMenPai(sceneId, selfId)
	if x016007_g_MenPai == 5 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{XXJZ_081103_01}")
			AddNumText(sceneId, x016007_g_scriptId, "H鱟 t鈓 ph醦",12,0)
			
			AddNumText(sceneId, x016007_g_scriptId, "V� h鱟 t鈓 ph醦",11,10)
			--AddNumText(sceneId, x016007_g_scriptId, "#{JZBZ_081031_02}",11,11)
			
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	else
			BeginEvent(sceneId)
			AddText(sceneId,"Thi To鄋, s� ph� n鈔g c t鈓 ph醦 c黙 Tinh T鷆 !")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
end

--**********************************
--事件列表选中一项
--**********************************
function x016007_OnEventRequest( sceneId, selfId, targetId, eventId )

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

	DispatchXinfaLevelInfo( sceneId, selfId, targetId, 5 );
end
