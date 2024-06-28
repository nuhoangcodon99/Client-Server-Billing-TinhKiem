--NPC h� k�

--************************--
x910095_g_ScriptId = 910095
x910095_g_Impact_Song_Id = 12750
x910095_g_Impact_Liao_Id = 12751
x910089_g_Activity_Song_Point = 0
x910089_g_Activity_Liao_Point = 1
--************************--

--*****************************--
--*     On Default Event      *--
--*****************************--
function x910095_OnDefaultEvent(sceneId,selfId,targetId)

	--************************--
	local Flag=GetMissionData(sceneId,selfId,MD_SONGLIAO_FLAG)
	local x,y=GetWorldPos(sceneId,targetId)
	if x==41 and y==30 then
		if Flag==x910089_g_Activity_Song_Point then
			BeginEvent(sceneId)
				AddText(sceneId,"��y l� ��i chi�n k�. C�c h� c� th� l�p c�ng cho phe T�ng b�ng c�ch ��a chi�n k� �n ��i chi�n k� b�n qu�n Li�u. Tuy nhi�n tr�n �߶ng �i c�n th�n b� t�p k�ch.")
				AddText(sceneId,"Khi h� t�ng chi�n k� th�nh c�ng, b�n th�n ng߶i h� t�ng s� nh�n ���c #G100 �i�m t�ch l�y#W, c� phe T�ng nh�n ���c #G200 �i�m t�ch l�y#W �ng th�i m�i th�nh vi�n phe #GT�ng#W s� nh�n ���c #G20 �i�m t�ch l�y#W.")
				AddText(sceneId,"Khi �n v� tr� xung quanh ��i chi�n k� phe �i ph߽ng, h�y c�m c� xu�ng b�ng c�ch �i tho�i v�i ��i chi�n k�.")
				if LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,x910095_g_Impact_Song_Id)<1 then
					AddNumText(sceneId,x910095_g_ScriptId,"H� k�",6,0)
				end
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			BeginEvent(sceneId)
				AddText(sceneId,"иch nh�n sao d�m m�o ph�m n�i n�y?")
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	elseif x==218 and y==215 then
		if Flag==x910089_g_Activity_Liao_Point then
			BeginEvent(sceneId)
				AddText(sceneId,"��y l� ��i chi�n k�. C�c h� c� th� l�p c�ng cho phe Li�u b�ng c�ch ��a chi�n k� �n ��i chi�n k� b�n qu�n T�ng. Tuy nhi�n tr�n �߶ng �i c�n th�n b� t�p k�ch.")
				AddText(sceneId,"Khi h� t�ng chi�n k� th�nh c�ng, b�n th�n ng߶i h� t�ng s� nh�n ���c #G100 �i�m t�ch l�y#W, c� phe Li�u nh�n ���c #G200 �i�m t�ch l�y#W �ng th�i m�i th�nh vi�n phe #GT�ng#W s� nh�n ���c #G20 �i�m t�ch l�y#W.")
				AddText(sceneId,"Khi �n v� tr� xung quanh ��i chi�n k� phe �i ph߽ng, h�y c�m c� xu�ng b�ng c�ch �i tho�i v�i ��i chi�n k�.")
				if LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,x910095_g_Impact_Liao_Id)<1 then
					AddNumText(sceneId,x910095_g_ScriptId,"H� k�",6,0)
				end
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			BeginEvent(sceneId)
				AddText(sceneId,"иch nh�n sao d�m m�o ph�m n�i n�y?")
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	elseif x==36 and y==29 then
		if Flag==x910089_g_Activity_Liao_Point then
			BeginEvent(sceneId)
				AddText(sceneId,"N�u nh� c�c h� h� t�ng chi�n k� th�nh c�ng �n t�n ��y, h�y giao cho ta � �i �i�m t�ch l�y.")
				if LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,x910095_g_Impact_Liao_Id)>0 then
					AddNumText(sceneId,x910095_g_ScriptId,"Giao chi�n k�",6,2)
				end
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	elseif x==213 and y==218 then
		if Flag==x910089_g_Activity_Song_Point then
			BeginEvent(sceneId)
				AddText(sceneId,"N�u nh� c�c h� h� t�ng chi�n k� th�nh c�ng �n t�n ��y, h�y giao cho ta � �i �i�m t�ch l�y.")
				if LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,x910095_g_Impact_Song_Id)>0 then
					AddNumText(sceneId,x910095_g_ScriptId,"Giao chi�n k�",6,1)
				end
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	end
	--************************--
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x910095_OnEventRequest(sceneId,selfId,targetId,eventId)

	--************************--
	local key=GetNumText()
	--************************--
	if key==0 then
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,4912,0)
		LuaFnCancelSpecificImpact(sceneId,selfId,4912)
		local Impact
		if GetMissionData(sceneId,selfId,MD_SONGLIAO_FLAG)==x910089_g_Activity_Song_Point then
			Impact=x910095_g_Impact_Song_Id
		else
			Impact=x910095_g_Impact_Liao_Id
		end
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,Impact,0)
		BeginEvent(sceneId)
			AddText(sceneId,"Mau mau ch�y �n ��ch �i.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--************************--
	if key==1 then
		LuaFnCancelSpecificImpact(sceneId,selfId,x910095_g_Impact_Song_Id)
		local Current_Point=GetMissionData(sceneId,selfId,MD_SONGLIAO_HUMAN_POINT)
		SetMissionData(sceneId,selfId,MD_SONGLIAO_HUMAN_POINT,Current_Point+100)
		local Group_Point=GetActivityParam(sceneId,x910089_g_Activity_Index,x910089_g_Activity_Song_Point)
		SetActivityParam(sceneId,x910089_g_Activity_Index,x910089_g_Activity_Song_Point,Group_Point+200)
		local str=format("�i�m t�ch l�y c�a c�c h� t�ng 100 �i�m.#r�i�m t�ch l�y c� nh�n: %d#r�i�m t�ch l�y phe T�ng: %d",Current_Point+100,Group_Point+200)
		Msg2Player(sceneId,selfId,str,MSG2PLAYER_PARA)
		BeginEvent(sceneId)
			AddText(sceneId,"H� k� th�nh c�ng!#r"..str)
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
		local str1=format("%s �� h� k� th�nh c�ng, �i�m t�ch l�y to�n phe t�ng 200 �i�m, m�i ng߶i ch�i c�ng phe ���c 20 �i�m.",GetName(sceneId,selfId))
		local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)			
		for i=0,nHuman-1 do
			local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)					
			local Flag=GetMissionData(sceneId,HumanId,MD_SONGLIAO_FLAG)				
			if Flag==x910089_g_Activity_Song_Point then
				Msg2Player(sceneId,HumanId,str1,MSG2PLAYER_PARA)
				BeginEvent(sceneId)
					AddText(sceneId,str1)
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,HumanId)
				local Current_Point=GetMissionData(sceneId,HumanId,MD_SONGLIAO_HUMAN_POINT)
				SetMissionData(sceneId,HumanId,MD_SONGLIAO_HUMAN_POINT,Current_Point+20)
			end
		end
	end
	--************************--
	if key==2 then
		LuaFnCancelSpecificImpact(sceneId,selfId,x910095_g_Impact_Liao_Id)
		local Current_Point=GetMissionData(sceneId,selfId,MD_SONGLIAO_HUMAN_POINT)
		SetMissionData(sceneId,selfId,MD_SONGLIAO_HUMAN_POINT,Current_Point+100)
		local Group_Point=GetActivityParam(sceneId,x910089_g_Activity_Index,x910089_g_Activity_Liao_Point)
		SetActivityParam(sceneId,x910089_g_Activity_Index,x910089_g_Activity_Liao_Point,Group_Point+200)
		local str=format("�i�m t�ch l�y c�a c�c h� t�ng 100 �i�m.#r�i�m t�ch l�y c� nh�n: %d#r�i�m t�ch l�y phe Li�u: %d",Current_Point+100,Group_Point+200)
		Msg2Player(sceneId,selfId,str,MSG2PLAYER_PARA)
		BeginEvent(sceneId)
			AddText(sceneId,"H� k� th�nh c�ng!#r"..str)
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
		local str1=format("%s �� h� k� th�nh c�ng, �i�m t�ch l�y to�n phe t�ng 200 �i�m, m�i ng߶i ch�i c�ng phe ���c 20 �i�m.",GetName(sceneId,selfId))
		local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)			
		for i=0,nHuman-1 do
			local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)					
			local Flag=GetMissionData(sceneId,HumanId,MD_SONGLIAO_FLAG)				
			if Flag==x910089_g_Activity_Liao_Point then
				Msg2Player(sceneId,HumanId,str1,MSG2PLAYER_PARA)
				BeginEvent(sceneId)
					AddText(sceneId,str1)
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,HumanId)
				local Current_Point=GetMissionData(sceneId,HumanId,MD_SONGLIAO_HUMAN_POINT)
				SetMissionData(sceneId,HumanId,MD_SONGLIAO_HUMAN_POINT,Current_Point+20)
			end
		end
	end
	--************************--
	
end
