--星宿NPC
--天璇子
--普通

x016035_g_scriptId = 016035

--**********************************
--事件交互入口
--**********************************
function x016035_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ch鄌 m譶g 疸 t緄 v緄 Tinh T鷆, m鬾 ph醝 l㱮 h読 nh v� 鸬c d唼c !!")
		AddNumText(sceneId,x016035_g_scriptId,"Di畉 Nh畁 鸬c",10,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件列表选中一项
--**********************************
function x016035_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
		if	GetLevel( sceneId, selfId)<51  then	
			BeginEvent( sceneId )
			local strText = "Bg h鎢 c 鹫t t緄 鹌ng c 51 m緄 c� th� v鄌 b鋘 鸢 n鄖 !!"
			AddText( sceneId, strText )
			EndEvent( sceneId )
			DispatchEventList(sceneId,selfId,targetId)
		else
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 146,91,144)
		end
	end
end
