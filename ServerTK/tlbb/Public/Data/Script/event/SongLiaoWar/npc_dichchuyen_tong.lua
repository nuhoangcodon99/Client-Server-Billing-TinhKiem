--NPC d¸ch chuy¬n T¯ng

--************************--
x910077_g_ScriptId = 910077
x910077_g_Script_Event = 910072
--************************--
x910077_g_Map_ID=1							--ID map d¸ch chuy¬n v«
x910077_g_Pos_X=291							--T÷a ðµ X
x910077_g_Pos_Y=239							--T÷a ðµ Y
--************************--
x910077_g_Flag_Song=0						--Ðánh d¤u quân T¯ng
x910077_g_Flag_Liao=1						--Ðánh d¤u quân Liêu

--*****************************--
--*     On Default Event      *--
--*****************************--
function x910077_OnDefaultEvent(sceneId,selfId,targetId)

	if GetMissionData(sceneId,selfId,MD_SONGLIAO_FLAG)==x910077_g_Flag_Song then
		BeginEvent(sceneId)
			AddText(sceneId,"N½i chiªn trß¶ng khói lØa, n½i bình yên cö cây hoa lá. Nªu nhß các hÕ ðã th¤y tiªc cho mµt n½i bình yên thì hãy r¶i khöi n½i ðây! ")
			AddText(sceneId,"Tuy nhiên khi hoÕt ðµng chßa kªt thúc thì các hÕ s¨ không nh§n ðßþc chiªn công cüa mình khi bö giæa ch×ng, hãy cân nh¡c kÛ!")
			AddNumText(sceneId,x910077_g_ScriptId,"R¶i khöi",9,0)
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,x910077_g_ScriptId)
	else
		BeginEvent(sceneId)
			AddText(sceneId,"Ta thà chªt chÑ không bán nß¾c giúp kë thù!")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,x910077_g_ScriptId)
	end
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x910077_OnEventRequest(sceneId,selfId,targetId,eventId)

	if GetNumText()==0 then
		CallScriptFunction(x910077_g_Script_Event,"ResetAllParam",sceneId,selfId)
		CallScriptFunction((400900),"TransferFunc",sceneId,selfId,x910077_g_Map_ID,x910077_g_Pos_X,x910077_g_Pos_Y)
	end
	
end
