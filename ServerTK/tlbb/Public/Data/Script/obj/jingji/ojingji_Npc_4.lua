-- 125014
-- 修理装备

--脚本号
x125014_g_scriptId = 125014

--所拥有的事件ID列表
x125014_g_eventList={}

--**********************************
--事件列表
--**********************************
function x125014_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"T読 h� c� th� s豠 ch鎍 t c� c醕 trang b� tr阯 40, bao g癿 c醕 lo読 v� kh� v� 鸢 trang s裞, nh遪g khi t読 h� s豠 ch鎍 t� l� th鄋h c鬾g kh鬾g ph鋓 l� 100% , n猽 c醕 h� kh鬾g c� b k� ph鋘 鸨i n鄌 th� 瓞 t鬷 s� ch鎍 gi鷓 c醕 h�")
		AddNumText(sceneId,x125014_g_scriptId,"T鬷 mu痭 s豠 ch鎍 trang b�",6,1)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--事件列表选中一项
--**********************************
function x125014_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 1 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, -1 )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 19810313 )	
	end
end

