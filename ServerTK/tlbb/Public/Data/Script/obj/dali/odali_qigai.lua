--������ؤ

--�����
x002070_g_MissionId_1 = 706
x002070_g_MissionId_2 = 707
x002070_g_MissionId_3 = 708

x002070_g_scriptId=002070

x002070_g_SignPost = {x = 215, z = 284, tip = "�o�n Di�n Kh�nh "}

function x002070_OnDefaultEvent( sceneId, selfId, targetId )	--����������ִ�д˽ű�
	misIndex_1 = GetMissionIndexByID(sceneId,selfId,x002070_g_MissionId_1)
	misIndex_2 = GetMissionIndexByID(sceneId,selfId,x002070_g_MissionId_2)
	misIndex_3 = GetMissionIndexByID(sceneId,selfId,x002070_g_MissionId_3)
	BeginEvent(sceneId)
		AddText(sceneId,"  Hu hu hu... Ta nh� cha m� qu�, tr�n l� l�t � V� L��ng S�n n�m �� �� h�i ta ph�i lang b�t k� h�, nh� tan c�a n�t! ��nh ph�i � th�nh ��i L� xin �n qua ng�y")
		if	IsHaveMission(sceneId,selfId,x002070_g_MissionId_1) > 0	 then
			if	GetMissionParam( sceneId, selfId, misIndex_1,0) < 1  then
				AddNumText(sceneId,x002070_g_scriptId,"Cho h�n m�t c�i b�nh bao",2,0)
			end
		elseif	IsHaveMission(sceneId,selfId,x002070_g_MissionId_2) > 0	 then
			if	GetMissionParam( sceneId, selfId, misIndex_2,0) < 1  then
				AddNumText(sceneId,x002070_g_scriptId,"Cho h�n m�t chi�c b� y",2,1)
			end
		elseif	IsHaveMission(sceneId,selfId,x002070_g_MissionId_3) > 0	 then
			if	GetMissionParam( sceneId, selfId, misIndex_3,0) < 1  then
				AddNumText(sceneId,x002070_g_scriptId,"Cho h�n m�t chi�c cu�c khai kho�ng",2,2)
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
				AddText(sceneId,"  Th�t c�m �n c�c h� nhi�u l�m#r<Ti�u Kh�t C�i v� v�i chi�c b�nh bao v� �n ng�u nghi�n>")
			EndEvent( )
			DispatchEventList(sceneId,selfId,targetId)
			BeginEvent(sceneId)
				AddText(sceneId,"Nhi�m v� ho�n th�nh!")
			EndEvent( )
			DispatchMissionTips(sceneId,selfId)
			CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId,sceneId, x002070_g_SignPost.x, x002070_g_SignPost.z, x002070_g_SignPost.tip )
		else
			BeginEvent(sceneId)
				AddText(sceneId,"B�nh bao? B�nh bao � ��u?")
			EndEvent( )
			DispatchEventList(sceneId,selfId,targetId)
		end
	elseif	GetNumText()==1	then
		if	HaveItemInBag (  sceneId, selfId, 10113001)	 > 0  then
			DelItem (  sceneId, selfId, 10113001, 1)	
			SetMissionByIndex( sceneId, selfId, misIndex_2, 0, 1)
			SetMissionByIndex( sceneId, selfId, misIndex_2, 1, 1)
			BeginEvent(sceneId)
				AddText(sceneId,"  Th�t c�m �n c�c h� qu�! #r#r<T�n ti�u kh�t c�i qu�n chi�c b� y l�n ng߶i>")
			EndEvent( )
			DispatchEventList(sceneId,selfId,targetId)
			BeginEvent(sceneId)
				AddText(sceneId,"Ho�n t�t nhi�m v�!")
			EndEvent( )
			DispatchMissionTips(sceneId,selfId)
			CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId,sceneId, x002070_g_SignPost.x, x002070_g_SignPost.z, x002070_g_SignPost.tip )
		else
			BeginEvent(sceneId)
				AddText(sceneId,"�o? �o � ��u h�?")
			EndEvent( )
			DispatchEventList(sceneId,selfId,targetId)
		end
	elseif	GetNumText()==2	then
		if	HaveItemInBag (  sceneId, selfId, 10102012)	 > 0  then
			DelItem (  sceneId, selfId, 10102012, 1)	
			SetMissionByIndex( sceneId, selfId, misIndex_3, 0, 1)
			SetMissionByIndex( sceneId, selfId, misIndex_3, 1, 1)
			BeginEvent(sceneId)
				AddText(sceneId,"  �... T�i sao c�c h� l�i cho ta c�i cu�c? #r#rTh�i ���c r�i, ta nh�n cho ng߽i vui, nh�ng ta v�n kh�ng th�ch l�m vi�c, ng�y ng�y xin �n th� n�y c�ng t�t �� th�i!")
			EndEvent( )
			DispatchEventList(sceneId,selfId,targetId)
			BeginEvent(sceneId)
				AddText(sceneId,"Ho�n t�t nhi�m v�!")
			EndEvent( )
			DispatchMissionTips(sceneId,selfId)
			CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId,sceneId, x002070_g_SignPost.x, x002070_g_SignPost.z, x002070_g_SignPost.tip )
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Cu�c? Kh�ng c� th� th�i, v�n ta c�ng kh�ng mu�n l�y")
			EndEvent( )
			DispatchEventList(sceneId,selfId,targetId)
		end
	end
end
