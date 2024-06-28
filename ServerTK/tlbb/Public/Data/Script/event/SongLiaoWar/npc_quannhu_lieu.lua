--NPC qu�n nhu Li�u

--************************--
x910080_g_ScriptId = 910080
--************************--
x910080_g_Flag_Song=0						--��nh d�u qu�n T�ng
x910080_g_Flag_Liao=1						--��nh d�u qu�n Li�u
--************************--
x910080_g_Impact_List={32493,32494,32495,32496,32497,32498,32499,32500}
--************************--

--*****************************--
--*     On Default Event      *--
--*****************************--
function x910080_OnDefaultEvent(sceneId,selfId,targetId)

	if GetMissionData(sceneId,selfId,MD_SONGLIAO_FLAG)==x910080_g_Flag_Liao then
		BeginEvent(sceneId)
			AddText(sceneId,"M�i l�n ng߶i ch�i s� ���c nh�n m�t hi�u �ng h� tr� cho cu�c chi�n c�a m�nh t�n t�i trong #G10 ph�t#W, sau khi h�t #G10 ph�t#W c� th� nh�n l�i c�i kh�c.")
			AddText(sceneId,"Hi�u �ng h� tr� l� m�t trong c�c lo�i #GB�ng c�ng#W, #GB�ng kh�ng#W, #GH�a c�ng#W, #GH�a kh�ng#W, #GHuy�n c�ng#W, #GHuy�n kh�ng#W, #Gеc c�ng#W, #Gеc kh�ng#W s� ���c ta ng�u nhi�n t�ng c�c h�.")
			AddNumText(sceneId,x910080_g_ScriptId,"Nh�n hi�u �ng h� tr�",6,0)
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	else
		BeginEvent(sceneId)
			AddText(sceneId,"Ta th� ch�t ch� kh�ng b�n n߾c gi�p k� th�!")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x910080_OnEventRequest(sceneId,selfId,targetId,eventId)
	
	--************************--
	local key=GetNumText()
	--************************--
	if key==0 then
		for i=1,getn(x910080_g_Impact_List) do
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,x910080_g_Impact_List[i])>0 then
				BeginEvent(sceneId)
					AddText(sceneId,"Ch�ng ph�i tr�n ng߶i c�c h� �� c� tr�ng th�i h� tr� r�i sao?")
					AddText(sceneId,"Sau khi h�t hi�u �ng c� h�y g�p ta � nh�n hi�u �ng m�i.")
				EndEvent(senceId)
				DispatchEventList(sceneId,selfId,targetId)
				return
			end
		end
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x910080_g_Impact_List[random(getn(x910080_g_Impact_List))],0)
		BeginEvent(sceneId)
			AddText(sceneId,"Nh�n tr�ng th�i h� tr� th�nh c�ng")
			AddText(sceneId,"Sau khi h�t hi�u �ng c� h�y g�p ta � nh�n hi�u �ng m�i.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--************************--
	
end
