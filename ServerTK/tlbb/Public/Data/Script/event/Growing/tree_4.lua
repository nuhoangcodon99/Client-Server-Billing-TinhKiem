--Ti�n hoa c�p 4
--Author: Kenvin S�i
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
			AddText(sceneId,"C�y �ang k�t tr�i, h�y ki�n tr�. C�y s� kh�ng ph� c�ng ng߶i ch�m s�c nu�i n�ng n�...")
		else
			AddText(sceneId,"C�y tr߷ng th�nh, c� th� thu ho�ch ���c r�i...")
			AddText(sceneId,"#YCh� �#W: Khi thu ho�ch c�n ph�i c� ��o c� #GGi� tre h�nh ph�c#W �߽c �an t� #GЯt tre#W l�y t�i r�ng tre c�a #GD� T�y H�#W.")
			local nName=GetName(sceneId,targetId)
			nName=strsub(nName,20,strlen(nName))
			if GetName(sceneId,selfId)==nName then
				AddNumText(sceneId,x910227_g_ScriptId,"Thu ho�ch",6,0)
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
				AddText(sceneId,"Hi�n ch�a �n th�i gian thu ho�ch!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		if LuaFnGetPropertyBagSpace(sceneId,selfId)<1 then
			BeginEvent(sceneId)
				AddText(sceneId,"C�c h� c�n s�p x�p l�i 1 � tr�ng trong � ��o c�!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		if LuaFnDelAvailableItem(sceneId,selfId,x910227_g_Box,1)<1 then
			BeginEvent(sceneId)
				AddText(sceneId,"C�c h� kh�ng c� #GGi� tre h�nh ph�c#W. H�y mau mau ra #GK�nh H�#W ch�t tre � �an gi� sau �� m�i c� th� thu ho�ch ���c!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		BeginEvent(sceneId)
			AddText(sceneId,"Thu ho�ch th�nh c�ng!")
			check2=check+500
			AddText(sceneId,"�i�m ho�t �ng hi�n t�i c�a b�n l�: "..check2.." �i�m !")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		TryRecieveItem(sceneId,selfId,x910227_g_Flower,0)
		SetMissionData(sceneId,selfId,MD_TRUNGTHU_POINT,check2)
		
		LuaFnDeleteMonster(sceneId,targetId)
		
	end
	--*****************--
	
end