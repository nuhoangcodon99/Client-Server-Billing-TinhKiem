--��������

--�����
x714014_g_MissionId = 704

x714014_g_SignPost = {x = 160, z = 156, tip = "Tri�u Thi�n S� "}

function x714014_OnDefaultEvent( sceneId, selfId, targetId )	--����������ִ�д˽ű�
	if	IsHaveMission(sceneId,selfId,x714014_g_MissionId)>0	 then
		misIndex = GetMissionIndexByID(sceneId,selfId,x714014_g_MissionId)
	    SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	    SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)
		BeginEvent(sceneId)
			AddText(sceneId,"#{BGDH_81009_01}")
		EndEvent( )
		DispatchMissionTips(sceneId,selfId)
		BeginEvent(sceneId)
			AddText(sceneId,"  C� d�n c�a ��i L� ch� �! T�i nay trong th�nh xu�t hi�n m�t k� b� m�t s� g�y h�i cho tr� con v� n� nhi �c th�n, v� t�i. Xin m�i ng߶i ch� � an to�n")
		EndEvent( )
		DispatchEventList(sceneId,selfId,targetId)
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId,sceneId, x714014_g_SignPost.x, x714014_g_SignPost.z, x714014_g_SignPost.tip )
	else
		BeginEvent(sceneId)
			AddText(sceneId,"C�ch khai m�c ��i h�i V� L�m ch� c�n 7 ng�y")
		EndEvent( )
		DispatchEventList(sceneId,selfId,targetId)
	end
end
