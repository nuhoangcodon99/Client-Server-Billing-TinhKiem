--Tiên hoa c¤p 2
--Author: Kenvin Sói
--************************--

--************************--
x910225_g_ScriptId = 910225
--************************--
x910225_g_Fertilizer = 30060007
x910225_g_Water_Bottle = 30060008
x910225_g_Air_Bottle = 30060009
x910225_g_Empty_Fertilizer = 30060004
x910225_g_Empty_Water_Bottle = 30060005
x910225_g_Empty_Air_Bottle = 30060006
x910225_g_Tree_ID = 92
x910225_g_Script_ID = 910226
x910225_g_GrowingNextTime = 900000
--************************--
x910225_g_Impact = 12747
--************************--

--*****************************--
--*     On Default Event      *--
--*****************************--
function x910225_OnDefaultEvent(sceneId,selfId,targetId)

	BeginEvent(sceneId)
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId,targetId,x910225_g_Impact)>=1 then
			AddText(sceneId,"Cây ðang l¾n, hãy kiên nhçn ch¶ cây ðü l¾n ð¬ chåm sóc...")
			AddText(sceneId,"Chåm sóc cây c¥n có #GPhân bón#W l¤y tÕi #GKim Tu¤n Thôn#W, #GNß¾c su¯i#W l¤y tÕi #GH¡c Viên Than#W và #GLinh khí#W l¤y tÕi #GVô Lßþng Ng÷c Bích#W...")
		else
			AddText(sceneId,"Cây non m¾i l¾n, r¤t c¥n ðßþc chåm sóc...")
			AddText(sceneId,"Chåm sóc cây c¥n có #GPhân bón#W l¤y tÕi #GKim Tu¤n Thôn#W, #GNß¾c su¯i#W l¤y tÕi #GH¡c Viên Than#W và #GLinh khí#W l¤y tÕi #GVô Lßþng Ng÷c Bích#W...")
			local nName=GetName(sceneId,targetId)
			nName=strsub(nName,20,strlen(nName))
			if GetName(sceneId,selfId)==nName then
				AddNumText(sceneId,x910225_g_ScriptId,"Chåm sóc",6,0)
			end
		end
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x910225_OnEventRequest(sceneId,selfId,targetId,eventId)
local key = GetNumText()

	--*****************--
	if key == 0 then
		
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId,targetId,x910225_g_Impact)>=1 then
			BeginEvent(sceneId)
				AddText(sceneId,"Hi®n chßa ðªn th¶i gian chåm sóc!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		if LuaFnGetAvailableItemCount(sceneId,selfId,x910225_g_Fertilizer)<1 or LuaFnGetAvailableItemCount(sceneId,selfId,x910225_g_Water_Bottle)<1 or LuaFnGetAvailableItemCount(sceneId,selfId,x910225_g_Air_Bottle)<1 then
			BeginEvent(sceneId)
				AddText(sceneId,"Các hÕ không ðü nguyên li®u chåm sóc cây!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		LuaFnDelAvailableItem(sceneId,selfId,x910225_g_Fertilizer,1)
		LuaFnDelAvailableItem(sceneId,selfId,x910225_g_Water_Bottle,1)
		LuaFnDelAvailableItem(sceneId,selfId,x910225_g_Air_Bottle,1)
		TryRecieveItem(sceneId,selfId,x910225_g_Empty_Fertilizer,1)
		TryRecieveItem(sceneId,selfId,x910225_g_Empty_Water_Bottle,1)
		TryRecieveItem(sceneId,selfId,x910225_g_Empty_Air_Bottle,1)
		local x,y=GetWorldPos(sceneId,selfId)
		local MstId=LuaFnCreateMonster(sceneId,x910225_g_Tree_ID,x,y,3,0,x910225_g_Script_ID)
		SetCharacterName(sceneId,MstId,"Tiên hoa c¤p 3 cüa "..GetName(sceneId,selfId))
		SetCharacterDieTime(sceneId,MstId,x910225_g_GrowingNextTime*2)
		LuaFnSendSpecificImpactToUnit(sceneId,MstId,MstId,MstId,x910225_g_Impact+1,0)
		BeginEvent(sceneId)
			AddText(sceneId,"Cây con ðã l¾n r°i!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		LuaFnDeleteMonster(sceneId,targetId)
		
	end
	--*****************--
	
end