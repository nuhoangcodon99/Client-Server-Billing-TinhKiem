--大理公告牌

--任务号
x714014_g_MissionId = 704

x714014_g_SignPost = {x = 160, z = 156, tip = "Tri畊 Thi阯 S� "}

function x714014_OnDefaultEvent( sceneId, selfId, targetId )	--点击该任务后执行此脚本
	if	IsHaveMission(sceneId,selfId,x714014_g_MissionId)>0	 then
		misIndex = GetMissionIndexByID(sceneId,selfId,x714014_g_MissionId)
	    SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	    SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
		BeginEvent(sceneId)
			AddText(sceneId,"#{BGDH_81009_01}")
		EndEvent( )
		DispatchMissionTips(sceneId,selfId)
		BeginEvent(sceneId)
			AddText(sceneId,"  C� d鈔 c黙 姓i L� ch� �! T痠 nay trong th鄋h xu hi畁 m祎 k� b� m s� g鈟 h読 cho tr� con v� n� nhi 鸬c th鈔, v� t礽. Xin m鱥 ng叨i ch� � an to鄋")
		EndEvent( )
		DispatchEventList(sceneId,selfId,targetId)
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId,sceneId, x714014_g_SignPost.x, x714014_g_SignPost.z, x714014_g_SignPost.tip )
	else
		BeginEvent(sceneId)
			AddText(sceneId,"C醕h khai m誧 姓i h礽 V� L鈓 ch� c騨 7 ng鄖")
		EndEvent( )
		DispatchEventList(sceneId,selfId,targetId)
	end
end
