--逍遥NPC
--公治子长
--普通

x014035_g_scriptId = 014035

--**********************************
--事件交互入口
--**********************************
function x014035_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta s� d鏽 ng呓i 皙n th� luy畁 v緄 nh鎛g m礳 nh鈔 m課h m�. Ng呓i c� d醡 餴 kh鬾g ??")
		AddNumText(sceneId,x014035_g_scriptId,"衖 皙n M礳 Nh鈔 鸬ng",10,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件列表选中一项
--**********************************
function x014035_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
		if	GetLevel( sceneId, selfId)<81  then	
			BeginEvent( sceneId )
			local strText = "蛅 nh ph鋓 鹫t t緄 c 81 m緄 c� th� v鄌 b鋘 鸢 n鄖 疬㧟 !!"
			AddText( sceneId, strText )
			EndEvent( sceneId )
			DispatchEventList(sceneId,selfId,targetId)
		else
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 144,51,129)
		end
	end
end
