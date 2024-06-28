--Sinh con
--NPC Tr߷ng T�n b� b�
--Author: S�i

--********************--
x910180_g_scriptId=910180
--********************--
x910180_g_Item=30010100
--********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x910180_OnDefaultEvent(sceneId,selfId,targetId)

	--********************--
	BeginEvent(sceneId)
		AddText(sceneId,"Phu th� �ng h�nh ng�n �y n�m, chia ng�t s� b�i g�n nh� t�t c� th� c�ng �� �n l�c g�n k�t giao duy�n � sinh con. Con c�i l� tinh t�y k� th�a t� cha m� n�n l�nh h�i ���c r�t nhi�u k� n�ng. N�u ���c ch�m s�c t� m� th� con c�i sau n�y s� h� tr� cho v� ch�ng r�t nhi�u.")
		AddNumText(sceneId,x910180_g_scriptId,"Tri�u h�i #GB�p B� G�m",6,2)
		AddNumText(sceneId,x910180_g_scriptId,"Sinh con",6,1)
		AddNumText(sceneId,x910180_g_scriptId,"V� ch�c n�ng sinh con",11,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	--********************--
	
end
--**********************************--
--*        On Event Request        *--
--**********************************--
function x910180_OnEventRequest(sceneId,selfId,targetId,eventId)
	
	--********************--
	if GetNumText()==0 then
		BeginEvent(sceneId)
			AddText(sceneId,"Phu th� t� #Gc�p 50 tr� l�n#W t� �i �n g�p #RTr߷ng T�n B� B� #H(143,176)#W - #GL�c D߽ng#W, d�ng ph�m #GB�p B� G�m#W (tham gia ph� b�n th� th�ch c�a #GTr߷ng T�n B� B�#W s� ��t ���c) � th�c hi�n c�u t�.")
			AddText(sceneId,"Ho�n th�nh nhi�m v� ���c #GTr߷ng T�n B� B�#W ��a ra th� 2 phu th� s� nh�n ���c con.")
			AddText(sceneId,"Trong qu� tr�nh phu th� c�u t�, n�u ly h�n s� khi�n qu� tr�nh c�u t� th�t b�i.")
			AddText(sceneId,"M�i c�p v� ch�ng ch� c� th� c� v�i nhau #Gm�t con#W, khi ly h�n th� con s� t� �ng chuy�n v�o #Gtr�i tr� m� c�i#W.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--********************--
	if GetNumText()==1 then
		if LuaFnIsTeamLeader(sceneId,selfId)~=1 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ta c�n n�i chuy�n v�i �i tr߷ng.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		elseif LuaFnHasTeam(sceneId,selfId)~=1 or GetTeamSize(sceneId,selfId)~=2 then
			BeginEvent(sceneId)
				AddText(sceneId,"Phu th� hai ng߶i c�n l�p t� �i �n g�p #GTr߷ng T�n B� B�#W.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		elseif LuaFnGetSpouseGUID(sceneId,GetNearTeamMember(sceneId,selfId,0))~=LuaFnGetGUID(sceneId,GetNearTeamMember(sceneId,selfId,1)) then
			BeginEvent(sceneId)
				AddText(sceneId,"Hai v� ch�a k�t h�n v�i nhau, l�m sao c� th� sinh con ���c?")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		elseif LuaFnDelAvailableItem(sceneId,selfId,x910180_g_Item,1)<1 then
			BeginEvent(sceneId)
				AddText(sceneId,"C�c h� kh�ng c� #GB�p B� G�m#W, kh�ng �� �i�u ki�n � sinh con!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		elseif GetMissionData(sceneId,GetNearTeamMember(sceneId,selfId,0),MD_WIZI_SEX)~=0 or GetMissionData(sceneId,GetNearTeamMember(sceneId,selfId,1),MD_WIZI_SEX)~=0 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ch�ng ph�i m�t trong hai ng߶i �� c� con r�i sao?")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		BeginEvent(sceneId)
			AddText(sceneId,"C�u t� th�nh c�ng, m�t em b� �� ch�o �i, ch�c m�ng hai v� ch�ng.")
			AddText(sceneId,"Ь t�m hi�u chi ti�t h�y m� giao di�n Con v� theo d�i.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,GetNearTeamMember(sceneId,selfId,0),targetId)
		BeginEvent(sceneId)
			AddText(sceneId,"C�u t� th�nh c�ng, m�t em b� �� ch�o �i, ch�c m�ng hai v� ch�ng.")
			AddText(sceneId,"Ь t�m hi�u chi ti�t h�y m� giao di�n Con v� theo d�i.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,GetNearTeamMember(sceneId,selfId,1),targetId)
		CallScriptFunction(910181,"BornAKid",sceneId,GetNearTeamMember(sceneId,selfId,0))
		CallScriptFunction(910181,"BornAKid",sceneId,GetNearTeamMember(sceneId,selfId,1))
	end
	--********************--

end