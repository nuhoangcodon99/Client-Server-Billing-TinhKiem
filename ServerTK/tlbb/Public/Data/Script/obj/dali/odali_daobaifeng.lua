--大理NPC
--刀白凤
--普通

--**********************************
--事件交互入口
--**********************************
function x002006_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Ch�,D� Nhi 餴 l鈛 th� v鏽 ch遖 v�, ta v譨 lo v譨 gi. Giang h� hi琺 醕, m祎 thg nh鉯 ranh nh� n� 疴u c� th� 裯g ph�")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
