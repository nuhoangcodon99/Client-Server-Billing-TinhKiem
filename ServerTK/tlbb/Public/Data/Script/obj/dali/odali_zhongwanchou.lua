--大理NPC
--钟万仇
--普通

--**********************************
--事件交互入口
--**********************************
function x002086_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Phu nh鈔 ta ch豬 hay l. T阯 醕 鸢 衞鄋 Ch韓h Thu 疬秐g 疬秐g phong l遳, l鄊 nhi玼 餴玼 oan nghi畉, 皙n cu痠 c鵱g con trai con g醝 ru祎 c黙 l読 lo課 lu鈔 v緄 nhau, th 瘊ng l� b� 眎 v� li阭 s� 皙n t祎 鸬")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
