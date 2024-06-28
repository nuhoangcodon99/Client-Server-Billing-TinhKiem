--Sinh con
--NPC Tr߷ng T�n b� b�
--Author: S�i

--********************--
x910182_g_scriptId=910182
--********************--
x910182_g_Item=30010100
--********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x910182_OnDefaultEvent(sceneId,selfId,targetId)

	--********************--
	BeginEvent(sceneId)
		AddText(sceneId,"Phu th� �ng h�nh ng�n �y n�m, chia ng�t s� b�i g�n nh� t�t c� th� c�ng �� �n l�c g�n k�t giao duy�n � sinh con. Con c�i l� tinh t�y k� th�a t� cha m� n�n l�nh h�i ���c r�t nhi�u k� n�ng. N�u ���c ch�m s�c t� m� th� con c�i sau n�y s� h� tr� cho v� ch�ng r�t nhi�u.")
		AddNumText(sceneId,x910182_g_scriptId,"Nh�n con nu�i",6,6)
		AddNumText(sceneId,x910182_g_scriptId,"G�i con v�o tr�i tr� m� c�i",6,7)
		AddNumText(sceneId,x910182_g_scriptId,"Th�ng c�p #GK� n�ng c�a Con",6,1)
		AddNumText(sceneId,x910182_g_scriptId,"V� #GK� n�ng c�a Con",11,0)
		AddNumText(sceneId,x910182_g_scriptId,"Ta ch� �i ngang qua...",-1,9)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	--********************--
	
end
--**********************************--
--*        On Event Request        *--
--**********************************--
function x910182_OnEventRequest(sceneId,selfId,targetId,eventId)
	
	--********************--
	if GetNumText()==0 then
		BeginEvent(sceneId)
			AddText(sceneId,"Con sau khi ��t #GC�p 30#W s� ���c l�nh ng� #G4 k� n�ng c�ng k�ch thu�c t�nh#W l� #GB�ng#W, #GH�a#W, #GHuy�n#W, #Gеc#W.")
			AddText(sceneId,"M�i k� n�ng s� chia th�nh #G10 c�p �#W. Ь th�ng c�p k� n�ng, c�n thu th�p m�t l��ng #GS�ch k� n�ng thu�c t�nh#W nh�t �nh.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--********************--
	if GetNumText()==1 then
		BeginEvent(sceneId)
			AddText(sceneId,"Con sau khi ��t #GC�p 30#W s� ���c l�nh ng� #G4 k� n�ng c�ng k�ch thu�c t�nh#W l� #GB�ng#W, #GH�a#W, #GHuy�n#W, #Gеc#W.")
			AddText(sceneId,"M�i k� n�ng s� chia th�nh #G10 c�p �#W. Ь th�ng c�p k� n�ng, c�n thu th�p m�t l��ng #GS�ch k� n�ng thu�c t�nh#W nh�t �nh.")
			AddNumText(sceneId,x910182_g_scriptId,"Th�ng c�p #GK� n�ng B�ng",6,2)
			AddNumText(sceneId,x910182_g_scriptId,"Th�ng c�p #GK� n�ng H�a",6,3)
			AddNumText(sceneId,x910182_g_scriptId,"Th�ng c�p #GK� n�ng Huy�n",6,4)
			AddNumText(sceneId,x910182_g_scriptId,"Th�ng c�p #GK� n�ng еc",6,5)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--********************--
	if GetNumText()==2 then
		CallScriptFunction(910181,"LevelUpASkill",sceneId,selfId,1)
	end
	--********************--
	if GetNumText()==3 then
		CallScriptFunction(910181,"LevelUpASkill",sceneId,selfId,2)
	end
	--********************--
	if GetNumText()==4 then
		CallScriptFunction(910181,"LevelUpASkill",sceneId,selfId,3)
	end
	--********************--
	if GetNumText()==5 then
		CallScriptFunction(910181,"LevelUpASkill",sceneId,selfId,4)
	end
	--********************--
	if GetNumText()==6 then
		if LuaFnIsMarried(sceneId,selfId)==1 then
			BeginEvent(sceneId)
				AddText(sceneId,"C�c h� �� c� v� ho�c ch�ng, h�y ch�n c�ch C�u t� �i!")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		elseif GetMissionData(sceneId,selfId,MD_WIZI_SEX)~=0 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ch�ng ph�i c�c h� �� c� con r�i sao?")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		elseif LuaFnDelAvailableItem(sceneId,selfId,x910182_g_Item,1)<1 then
			BeginEvent(sceneId)
				AddText(sceneId,"C�c h� kh�ng c� #GB�p B� G�m#W!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		CallScriptFunction(910181,"BornAKid",sceneId,selfId)
		BeginEvent(sceneId)
			AddText(sceneId,"Nh�n con nu�i th�nh c�ng!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--********************--
	if GetNumText()==7 then
		if GetMissionData(sceneId,selfId,MD_WIZI_SEX)==0 then
			BeginEvent(sceneId)
				AddText(sceneId,"C�c h� l�m g� c� con?")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		BeginEvent(sceneId)
			AddText(sceneId,"G�i con v�o tr�i tr� m� c�i �ng ngh�a v�i vi�c c�c h� s� m�t �i n� v�nh vi�n sau n�y, c�c h� ph�i ch�ng kh�ng c�n t�nh c�m n�o v�i con m�nh ch�ng?")
			AddNumText(sceneId,x910182_g_scriptId,"Ta �� quy�t �nh",6,8)
			AddNumText(sceneId,x910182_g_scriptId,"Ti�u th� n�i ��ng, t�i h� �� ngh� l�i...",6,9)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--********************--
	if GetNumText()==8 then
		if GetMissionData(sceneId,selfId,MD_WIZI_SEX)==0 then
			BeginEvent(sceneId)
				AddText(sceneId,"C�c h� l�m g� c� con?")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		elseif GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_1)~=0 or GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_2)~=0 or GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_3)~=0 or GetMissionData(sceneId,selfId,MD_WIZI_EQUIP_4)~=0 then
			BeginEvent(sceneId)
				AddText(sceneId,"H�y g� t�t c� trang b� c�a con xu�ng tr߾c ��!")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		BeginEvent(sceneId)
			AddText(sceneId,"G�i con th�nh c�ng!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		CallScriptFunction(910181,"ReleaseMyBaby",sceneId,selfId)
	end
	--********************--
	if GetNumText()==9 then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,1000)
	end
	--********************--

end