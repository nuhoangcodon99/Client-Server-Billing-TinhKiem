--卫玄望

--任务号
x009017_g_MissionId = 1060

x009017_g_scriptId=009017

function x009017_OnDefaultEvent( sceneId, selfId, targetId )	--点击该任务后执行此脚本
	misIndex = GetMissionIndexByID(sceneId,selfId,x009017_g_MissionId)
	BeginEvent(sceneId)
		AddText(sceneId,"  G 疴y ch� c鋗 th vi甤 g� c鹡g kh鬾g tho鋓 m醝")
		if	IsHaveMission(sceneId,selfId,x009017_g_MissionId) > 0	 then
			if	GetMissionParam( sceneId, selfId, misIndex,0) < 1  and  GetMissionParam( sceneId, selfId, misIndex,3) == 3 then
				AddNumText(sceneId,x009017_g_scriptId,"Cho ng呓i Ti瑄 Ph x� l�",8,0)
			end
		end
	EndEvent( )
	DispatchEventList(sceneId,selfId,targetId)
end

function x009017_OnEventRequest( sceneId, selfId, targetId, eventId )
	misIndex = GetMissionIndexByID(sceneId,selfId,x009017_g_MissionId)
	if	GetNumText()==0	then
		if	HaveItemInBag (  sceneId, selfId, 30202049)	 > 0  then
			DelItem (  sceneId, selfId, 30202049, 1)	
			SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
			BeginEvent(sceneId)
				AddText(sceneId,"C鋗 t� Ti瑄 Ph x� l� c黙 c醕 h�")
			EndEvent( )
			DispatchEventList(sceneId,selfId,targetId)
			BeginEvent(sceneId)
				AddText(sceneId,"Ho鄋 t nhi甿 v�!")
			EndEvent( )
			DispatchMissionTips(sceneId,selfId)
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Ti瑄 Ph x� l�? � 疴u?")
			EndEvent( )
			DispatchEventList(sceneId,selfId,targetId)
		end
	end
end
