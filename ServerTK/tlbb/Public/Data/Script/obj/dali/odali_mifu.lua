--大理NPC
--米芾
--普通

--**********************************
--事件交互入口
--**********************************
function x002002_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Th呓ng S絥 b m thi阯 thu h鱝, #rNh� H鋓 v� huy玭 v課 c� c. #r#rN呔c 姓i L� qu� nhi阯 l� v鵱g 黏t t痶, V呓ng 姓i t呔ng qu鈔 qu� l� c� nh鉵 quan tinh t叨ng, l馻 ch鱪 ch痭 n鄖 瓞  c�")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
