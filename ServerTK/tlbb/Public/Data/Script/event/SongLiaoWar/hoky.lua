--NPC hµ kÏ

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
				AddText(sceneId,"Ðây là ðài chiªn kÏ. Các hÕ có th¬ l§p công cho phe T¯ng b¢ng cách ðßa chiªn kÏ ðªn ðài chiªn kÏ bên quân Liêu. Tuy nhiên trên ðß¶ng ði c¦n th§n b¸ t§p kích.")
				AddText(sceneId,"Khi hµ t¯ng chiªn kÏ thành công, bän thân ngß¶i hµ t¯ng s¨ nh§n ðßþc #G100 Ði¬m tích lûy#W, cä phe T¯ng nh§n ðßþc #G200 ði¬m tích lûy#W ð°ng th¶i m²i thành viên phe #GT¯ng#W s¨ nh§n ðßþc #G20 ði¬m tích lûy#W.")
				AddText(sceneId,"Khi ðªn v¸ trí xung quanh ðài chiªn kÏ phe ð¯i phß½ng, hãy c¡m c¶ xu¯ng b¢ng cách ð¯i thoÕi v¾i ðài chiªn kÏ.")
				if LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,x910095_g_Impact_Song_Id)<1 then
					AddNumText(sceneId,x910095_g_ScriptId,"Hµ kÏ",6,0)
				end
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Ð¸ch nhân sao dám mÕo phÕm n½i này?")
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	elseif x==218 and y==215 then
		if Flag==x910089_g_Activity_Liao_Point then
			BeginEvent(sceneId)
				AddText(sceneId,"Ðây là ðài chiªn kÏ. Các hÕ có th¬ l§p công cho phe Liêu b¢ng cách ðßa chiªn kÏ ðªn ðài chiªn kÏ bên quân T¯ng. Tuy nhiên trên ðß¶ng ði c¦n th§n b¸ t§p kích.")
				AddText(sceneId,"Khi hµ t¯ng chiªn kÏ thành công, bän thân ngß¶i hµ t¯ng s¨ nh§n ðßþc #G100 Ði¬m tích lûy#W, cä phe Liêu nh§n ðßþc #G200 ði¬m tích lûy#W ð°ng th¶i m²i thành viên phe #GT¯ng#W s¨ nh§n ðßþc #G20 ði¬m tích lûy#W.")
				AddText(sceneId,"Khi ðªn v¸ trí xung quanh ðài chiªn kÏ phe ð¯i phß½ng, hãy c¡m c¶ xu¯ng b¢ng cách ð¯i thoÕi v¾i ðài chiªn kÏ.")
				if LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,x910095_g_Impact_Liao_Id)<1 then
					AddNumText(sceneId,x910095_g_ScriptId,"Hµ kÏ",6,0)
				end
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Ð¸ch nhân sao dám mÕo phÕm n½i này?")
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	elseif x==36 and y==29 then
		if Flag==x910089_g_Activity_Liao_Point then
			BeginEvent(sceneId)
				AddText(sceneId,"Nªu nhß các hÕ hµ t¯ng chiªn kÏ thành công ðªn t§n ðây, hãy giao cho ta ð¬ ð±i ði¬m tích lûy.")
				if LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,x910095_g_Impact_Liao_Id)>0 then
					AddNumText(sceneId,x910095_g_ScriptId,"Giao chiªn kÏ",6,2)
				end
			EndEvent(senceId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	elseif x==213 and y==218 then
		if Flag==x910089_g_Activity_Song_Point then
			BeginEvent(sceneId)
				AddText(sceneId,"Nªu nhß các hÕ hµ t¯ng chiªn kÏ thành công ðªn t§n ðây, hãy giao cho ta ð¬ ð±i ði¬m tích lûy.")
				if LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,x910095_g_Impact_Song_Id)>0 then
					AddNumText(sceneId,x910095_g_ScriptId,"Giao chiªn kÏ",6,1)
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
			AddText(sceneId,"Mau mau chÕy ðªn ðích ði.")
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
		local str=format("Ði¬m tích lûy cüa các hÕ tång 100 ði¬m.#rÐi¬m tích lûy cá nhân: %d#rÐi¬m tích lûy phe T¯ng: %d",Current_Point+100,Group_Point+200)
		Msg2Player(sceneId,selfId,str,MSG2PLAYER_PARA)
		BeginEvent(sceneId)
			AddText(sceneId,"Hµ kÏ thành công!#r"..str)
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
		local str1=format("%s ðã hµ kÏ thành công, ði¬m tích lûy toàn phe tång 200 ði¬m, m²i ngß¶i ch½i cùng phe ðßþc 20 ði¬m.",GetName(sceneId,selfId))
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
		local str=format("Ði¬m tích lûy cüa các hÕ tång 100 ði¬m.#rÐi¬m tích lûy cá nhân: %d#rÐi¬m tích lûy phe Liêu: %d",Current_Point+100,Group_Point+200)
		Msg2Player(sceneId,selfId,str,MSG2PLAYER_PARA)
		BeginEvent(sceneId)
			AddText(sceneId,"Hµ kÏ thành công!#r"..str)
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
		local str1=format("%s ðã hµ kÏ thành công, ði¬m tích lûy toàn phe tång 200 ði¬m, m²i ngß¶i ch½i cùng phe ðßþc 20 ði¬m.",GetName(sceneId,selfId))
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
