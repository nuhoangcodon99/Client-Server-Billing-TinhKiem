--NPC quân nhu Liêu

--************************--
x910080_g_ScriptId = 910080
--************************--
x910080_g_Flag_Song=0						--Ðánh d¤u quân T¯ng
x910080_g_Flag_Liao=1						--Ðánh d¤u quân Liêu
--************************--
x910080_g_Impact_List={32493,32494,32495,32496,32497,32498,32499,32500}
--************************--

--*****************************--
--*     On Default Event      *--
--*****************************--
function x910080_OnDefaultEvent(sceneId,selfId,targetId)

	if GetMissionData(sceneId,selfId,MD_SONGLIAO_FLAG)==x910080_g_Flag_Liao then
		BeginEvent(sceneId)
			AddText(sceneId,"M²i l¥n ngß¶i ch½i s¨ ðßþc nh§n mµt hi®u Ñng h² trþ cho cuµc chiªn cüa mình t°n tÕi trong #G10 phút#W, sau khi hªt #G10 phút#W có th¬ nh§n lÕi cái khác.")
			AddText(sceneId,"Hi®u Ñng h² trþ là mµt trong các loÕi #GBång công#W, #GBång kháng#W, #GHöa công#W, #GHöa kháng#W, #GHuy«n công#W, #GHuy«n kháng#W, #GÐµc công#W, #GÐµc kháng#W s¨ ðßþc ta ngçu nhiên t£ng các hÕ.")
			AddNumText(sceneId,x910080_g_ScriptId,"Nh§n hi®u Ñng h² trþ",6,0)
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	else
		BeginEvent(sceneId)
			AddText(sceneId,"Ta thà chªt chÑ không bán nß¾c giúp kë thù!")
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
					AddText(sceneId,"ChÆng phäi trên ngß¶i các hÕ ðã có trÕng thái h² trþ r°i sao?")
					AddText(sceneId,"Sau khi hªt hi®u Ñng cû hãy g£p ta ð¬ nh§n hi®u Ñng m¾i.")
				EndEvent(senceId)
				DispatchEventList(sceneId,selfId,targetId)
				return
			end
		end
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x910080_g_Impact_List[random(getn(x910080_g_Impact_List))],0)
		BeginEvent(sceneId)
			AddText(sceneId,"Nh§n trÕng thái h² trþ thành công")
			AddText(sceneId,"Sau khi hªt hi®u Ñng cû hãy g£p ta ð¬ nh§n hi®u Ñng m¾i.")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--************************--
	
end
