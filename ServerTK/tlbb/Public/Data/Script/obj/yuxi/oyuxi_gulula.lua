--玉溪NPC
--古鲁拉
--普通

--**********************************
--事件交互入口
--**********************************
function x027002_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"L鉶 gi� 痼 t� tr呔c t緄 nay kh鬾g bao gi� quan t鈓 皙n v� con, m祎 l騨g ch� ngh� 皙n con m� La B痗 痼. #r#r, 詉, nh� l読 h癷 x遖 疣n 鬾g theo 饀眎 ta 饀眎 餴 kh鬾g h猼, sao ta l読 ch鱪 m祎 l鉶 gi� nh� v ch�!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
