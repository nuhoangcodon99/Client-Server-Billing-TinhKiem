--大理乞丐

--任务号
x002070_g_MissionId_1 = 706
x002070_g_MissionId_2 = 707
x002070_g_MissionId_3 = 708

x002070_g_scriptId=002070

x002070_g_SignPost = {x = 215, z = 284, tip = "衞鄋 Di阯 Kh醤h "}

function x002070_OnDefaultEvent( sceneId, selfId, targetId )	--点击该任务后执行此脚本
	misIndex_1 = GetMissionIndexByID(sceneId,selfId,x002070_g_MissionId_1)
	misIndex_2 = GetMissionIndexByID(sceneId,selfId,x002070_g_MissionId_2)
	misIndex_3 = GetMissionIndexByID(sceneId,selfId,x002070_g_MissionId_3)
	BeginEvent(sceneId)
		AddText(sceneId,"  Hu hu hu... Ta nh� cha m� qu�, tr l� l鴗 � V� L唼ng S絥 n錷 痼 疸 h読 ta ph鋓 lang b誸 k� h�, nh� tan c豠 n醫! 朽nh ph鋓 � th鄋h 姓i L� xin 錸 qua ng鄖")
		if	IsHaveMission(sceneId,selfId,x002070_g_MissionId_1) > 0	 then
			if	GetMissionParam( sceneId, selfId, misIndex_1,0) < 1  then
				AddNumText(sceneId,x002070_g_scriptId,"Cho h m祎 c醝 b醤h bao",2,0)
			end
		elseif	IsHaveMission(sceneId,selfId,x002070_g_MissionId_2) > 0	 then
			if	GetMissionParam( sceneId, selfId, misIndex_2,0) < 1  then
				AddNumText(sceneId,x002070_g_scriptId,"Cho h m祎 chi猚 b� y",2,1)
			end
		elseif	IsHaveMission(sceneId,selfId,x002070_g_MissionId_3) > 0	 then
			if	GetMissionParam( sceneId, selfId, misIndex_3,0) < 1  then
				AddNumText(sceneId,x002070_g_scriptId,"Cho h m祎 chi猚 cu痗 khai kho醤g",2,2)
			end
		end
	EndEvent( )
	DispatchEventList(sceneId,selfId,targetId)
end

function x002070_OnEventRequest( sceneId, selfId, targetId, eventId )
	misIndex_1 = GetMissionIndexByID(sceneId,selfId,x002070_g_MissionId_1)
	misIndex_2 = GetMissionIndexByID(sceneId,selfId,x002070_g_MissionId_2)
	misIndex_3 = GetMissionIndexByID(sceneId,selfId,x002070_g_MissionId_3)
	if	GetNumText()==0	then
		if	HaveItemInBag (  sceneId, selfId, 30101001)	 > 0  then
			DelItem (  sceneId, selfId, 30101001, 1)	
			SetMissionByIndex( sceneId, selfId, misIndex_1, 0, 1)
			SetMissionByIndex( sceneId, selfId, misIndex_1, 1, 1)
			BeginEvent(sceneId)
				AddText(sceneId,"  Th c鋗 絥 c醕 h� nhi玼 l#r<Ti瑄 Kh C醝 v� v礽 chi猚 b醤h bao v� 錸 ng nghi猲>")
			EndEvent( )
			DispatchEventList(sceneId,selfId,targetId)
			BeginEvent(sceneId)
				AddText(sceneId,"Nhi甿 v� ho鄋 th鄋h!")
			EndEvent( )
			DispatchMissionTips(sceneId,selfId)
			CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId,sceneId, x002070_g_SignPost.x, x002070_g_SignPost.z, x002070_g_SignPost.tip )
		else
			BeginEvent(sceneId)
				AddText(sceneId,"B醤h bao? B醤h bao � 疴u?")
			EndEvent( )
			DispatchEventList(sceneId,selfId,targetId)
		end
	elseif	GetNumText()==1	then
		if	HaveItemInBag (  sceneId, selfId, 10113001)	 > 0  then
			DelItem (  sceneId, selfId, 10113001, 1)	
			SetMissionByIndex( sceneId, selfId, misIndex_2, 0, 1)
			SetMissionByIndex( sceneId, selfId, misIndex_2, 1, 1)
			BeginEvent(sceneId)
				AddText(sceneId,"  Th c鋗 絥 c醕 h� qu�! #r#r<T阯 ti瑄 kh c醝 qu chi猚 b� y l阯 ng叨i>")
			EndEvent( )
			DispatchEventList(sceneId,selfId,targetId)
			BeginEvent(sceneId)
				AddText(sceneId,"Ho鄋 t nhi甿 v�!")
			EndEvent( )
			DispatchMissionTips(sceneId,selfId)
			CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId,sceneId, x002070_g_SignPost.x, x002070_g_SignPost.z, x002070_g_SignPost.tip )
		else
			BeginEvent(sceneId)
				AddText(sceneId,"羙? 羙 � 疴u h�?")
			EndEvent( )
			DispatchEventList(sceneId,selfId,targetId)
		end
	elseif	GetNumText()==2	then
		if	HaveItemInBag (  sceneId, selfId, 10102012)	 > 0  then
			DelItem (  sceneId, selfId, 10102012, 1)	
			SetMissionByIndex( sceneId, selfId, misIndex_3, 0, 1)
			SetMissionByIndex( sceneId, selfId, misIndex_3, 1, 1)
			BeginEvent(sceneId)
				AddText(sceneId,"  �... T読 sao c醕 h� l読 cho ta c醝 cu痗? #r#rTh鬷 疬㧟 r癷, ta nh cho ng呓i vui, nh遪g ta v鏽 kh鬾g th韈h l鄊 vi甤, ng鄖 ng鄖 xin 錸 th� n鄖 c鹡g t痶 痼 th鬷!")
			EndEvent( )
			DispatchEventList(sceneId,selfId,targetId)
			BeginEvent(sceneId)
				AddText(sceneId,"Ho鄋 t nhi甿 v�!")
			EndEvent( )
			DispatchMissionTips(sceneId,selfId)
			CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId,sceneId, x002070_g_SignPost.x, x002070_g_SignPost.z, x002070_g_SignPost.tip )
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Cu痗? Kh鬾g c� th� th鬷, v痭 ta c鹡g kh鬾g mu痭 l")
			EndEvent( )
			DispatchEventList(sceneId,selfId,targetId)
		end
	end
end
