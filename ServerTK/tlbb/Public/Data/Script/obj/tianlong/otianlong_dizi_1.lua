--大理NPC
--普通弟子
--普通

--**********************************
--事件交互入口
--**********************************
function x013030_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Thi阯 Long T� l� m祎 n絠 瓞 y阯 t頽h tu h鄋h c黙 c豠 Ph. N猽 ng呓i c gi鷓 疝, h銀 皙n ch� g c豠 Thi阯 Long T� 瓞 t靘 s� Tri Kh醕h nh� gi鷓 疝")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
