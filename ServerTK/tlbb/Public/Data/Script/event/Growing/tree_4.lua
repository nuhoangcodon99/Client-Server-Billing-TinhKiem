--Tiên hoa c¤p 4
--Author: Kenvin Sói
--************************--

--************************--
x910227_g_ScriptId = 910227
--************************--
x910227_g_Flower = 30060010
x910227_g_Box = 30060018
--************************--
x910227_g_Impact = 12749
--************************--

--*****************************--
--*     On Default Event      *--
--*****************************--
function x910227_OnDefaultEvent(sceneId,selfId,targetId)

	BeginEvent(sceneId)
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId,targetId,x910227_g_Impact)>=1 then
			AddText(sceneId,"Cây ðang kªt trái, hãy kiên trì. Cây s¨ không phø công ngß¶i chåm sóc nuôi n¤ng nó...")
		else
			AddText(sceneId,"Cây trß·ng thành, có th¬ thu hoÕch ðßþc r°i...")
			AddText(sceneId,"#YChú ý#W: Khi thu hoÕch c¥n phäi có ðÕo cø #GGiö tre hÕnh phúc#W ðß½c ðan t× #GÐ¯t tre#W l¤y tÕi r×ng tre cüa #GDÕ Tây H°#W.")
			local nName=GetName(sceneId,targetId)
			nName=strsub(nName,20,strlen(nName))
			if GetName(sceneId,selfId)==nName then
				AddNumText(sceneId,x910227_g_ScriptId,"Thu hoÕch",6,0)
			end
		end
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,targetId)
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x910227_OnEventRequest(sceneId,selfId,targetId,eventId)
local check = GetMissionData(sceneId,selfId,MD_TRUNGTHU_POINT)
local key = GetNumText()

	--*****************--
	if key == 0 then
		
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId,targetId,x910227_g_Impact)==1 then
			BeginEvent(sceneId)
				AddText(sceneId,"Hi®n chßa ðªn th¶i gian thu hoÕch!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		if LuaFnGetPropertyBagSpace(sceneId,selfId)<1 then
			BeginEvent(sceneId)
				AddText(sceneId,"Các hÕ c¥n s¡p xªp lÕi 1 ô tr¯ng trong ô ðÕo cø!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		if LuaFnDelAvailableItem(sceneId,selfId,x910227_g_Box,1)<1 then
			BeginEvent(sceneId)
				AddText(sceneId,"Các hÕ không có #GGiö tre hÕnh phúc#W. Hãy mau mau ra #GKính H°#W ch£t tre ð¬ ðan giö sau ðó m¾i có th¬ thu hoÕch ðßþc!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		BeginEvent(sceneId)
			AddText(sceneId,"Thu hoÕch thành công!")
			check2=check+500
			AddText(sceneId,"Ði¬m hoÕt ðµng hi®n tÕi cüa bÕn là: "..check2.." ði¬m !")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		TryRecieveItem(sceneId,selfId,x910227_g_Flower,0)
		SetMissionData(sceneId,selfId,MD_TRUNGTHU_POINT,check2)
		
		LuaFnDeleteMonster(sceneId,targetId)
		
	end
	--*****************--
	
end