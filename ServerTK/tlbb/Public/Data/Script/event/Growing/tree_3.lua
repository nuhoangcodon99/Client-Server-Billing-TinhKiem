--Ti�n hoa c�p 3
--Author: Kenvin S�i
--************************--

--************************--
x910226_g_ScriptId = 910226
--************************--
x910226_g_Fertilizer = 30060007
x910226_g_Water_Bottle = 30060008
x910226_g_Air_Bottle = 30060009
x910226_g_Tree_ID = 93
x910226_g_Script_ID = 910227
x910226_g_GrowingNextTime = 1200000
--************************--
x910226_g_Impact = 12748
--************************--

--*****************************--
--*     On Default Event      *--
--*****************************--
function x910226_OnDefaultEvent(sceneId,selfId,targetId)

	BeginEvent(sceneId)
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId,targetId,x910226_g_Impact)>=1 then
			AddText(sceneId,"C�y �ang l�n, h�y ki�n nh�n ch� c�y �� l�n � ch�m s�c...")
			AddText(sceneId,"Ch�m s�c c�y c�n c� #GPh�n b�n#W l�y t�i #GKim Tu�n Th�n#W, #GN߾c su�i#W l�y t�i #GH�c Vi�n Than#W v� #GLinh kh�#W l�y t�i #GV� L��ng Ng�c B�ch#W...")
		else
			AddText(sceneId,"C�y non m�i l�n, r�t c�n ���c ch�m s�c...")
			AddText(sceneId,"Ch�m s�c c�y c�n c� #GPh�n b�n#W l�y t�i #GKim Tu�n Th�n#W, #GN߾c su�i#W l�y t�i #GH�c Vi�n Than#W v� #GLinh kh�#W l�y t�i #GV� L��ng Ng�c B�ch#W...")
			local nName=GetName(sceneId,targetId)
			nName=strsub(nName,20,strlen(nName))
			if GetName(sceneId,selfId)==nName then
				AddNumText(sceneId,x910226_g_ScriptId,"Ch�m s�c",6,0)
			end
		end
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x910226_OnEventRequest(sceneId,selfId,targetId,eventId)
local key = GetNumText()

	--*****************--
	if key == 0 then
		
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId,targetId,x910226_g_Impact)==1 then
			BeginEvent(sceneId)
				AddText(sceneId,"Hi�n ch�a �n th�i gian ch�m s�c!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		if LuaFnGetAvailableItemCount(sceneId,selfId,x910226_g_Fertilizer)<1 or LuaFnGetAvailableItemCount(sceneId,selfId,x910226_g_Water_Bottle)<1 or LuaFnGetAvailableItemCount(sceneId,selfId,x910226_g_Air_Bottle)<1 then
			BeginEvent(sceneId)
				AddText(sceneId,"C�c h� kh�ng �� nguy�n li�u ch�m s�c c�y!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		LuaFnDelAvailableItem(sceneId,selfId,x910226_g_Fertilizer,1)
		LuaFnDelAvailableItem(sceneId,selfId,x910226_g_Water_Bottle,1)
		LuaFnDelAvailableItem(sceneId,selfId,x910226_g_Air_Bottle,1)
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x910226_g_Impact,0)
		local x,y=GetWorldPos(sceneId,selfId)
		local MstId=LuaFnCreateMonster(sceneId,x910226_g_Tree_ID,x,y,3,0,x910226_g_Script_ID)
		SetCharacterName(sceneId,MstId,"Ti�n hoa c�p 4 c�a "..GetName(sceneId,selfId))
		SetCharacterDieTime(sceneId,MstId,x910226_g_GrowingNextTime*2)
		LuaFnSendSpecificImpactToUnit(sceneId,MstId,MstId,MstId,x910226_g_Impact+1,0)
		BeginEvent(sceneId)
			AddText(sceneId,"C�y �� l�n r�i!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		LuaFnDeleteMonster(sceneId,targetId)
		
	end
	--*****************--
	
end