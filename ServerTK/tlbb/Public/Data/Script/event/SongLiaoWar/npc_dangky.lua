--NPC ��ng k�

--************************--
x910075_g_ScriptId = 910075
x910075_g_eventlist = {910072}
--************************--
x910075_g_LimitedMember=1							--S� ng߶i t�i thi�u m�i b�n
x910075_g_MemberCompare=10							--е ch�nh l�ch t�i �a gi�a qu�n s� 2 b�n
--************************--
x910075_g_Flag_Song=0								--��nh d�u phe T�ng
x910075_g_Flag_Liao=1								--��nh d�u phe Li�u

--*****************************--
--*     On Default Event      *--
--*****************************--
function x910075_OnDefaultEvent(sceneId,selfId,targetId)

	BeginEvent(sceneId)
		local Song_Mem=x910075_CheckSongMember(sceneId)							--Qu�n s� b�n T�ng
		local Liao_Mem=x910075_CheckLiaoMember(sceneId)							--Qu�n s� b�n Li�u
		AddText(sceneId,"N�i n�y l� �i�m b�o danh #GChi�n tr߶ng T�ng Li�u#W. T�nh h�nh qu�n s� hai b�n hi�n t�i nh� sau:")
		AddText(sceneId,"#YQu�n T�ng:#G "..Song_Mem)
		AddText(sceneId,"#YQu�n Li�u:#G "..Liao_Mem)
		AddText(sceneId,"N�u m�i b�n qu�n s� kh�ng �� t�i thi�u #G"..x910075_g_LimitedMember.." ng߶i#W ho�c ch�nh l�ch qu�n s� hai b�n qu� #G"..x910075_g_MemberCompare.." ng߶i#W th� tr�n �u s� b� h�y b�!")
		for i,eventId in x910075_g_eventlist do
			CallScriptFunction(eventId,"OnEnumerate",sceneId,selfId,targetId)
		end
	EndEvent(senceId)
	DispatchEventList(sceneId,selfId,x910075_g_ScriptId)
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x910075_OnEventRequest(sceneId,selfId,targetId,eventId)

	for i,findId in x910075_g_eventlist do
		if eventId==findId then
			CallScriptFunction(eventId,"OnDefaultEvent",sceneId,selfId,targetId)
			return
		end
	end
	
end
--*****************************--
--*     Check Song Member     *--
--*****************************--
function x910075_CheckSongMember(sceneId)														

	--*****************--
	local Song_Mem=0
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)									--T�ng s� ng߶i ch�i trong chi�n tr߶ng
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)							--Id ng߶i ch�i th� i
		local Flag=GetMissionData(sceneId,HumanId,MD_SONGLIAO_FLAG)						--Ki�m tra phe ng߶i ch�i
		if Flag==x910075_g_Flag_Song then
			Song_Mem=Song_Mem+1															--T�ng s� ng߶i ch�i b�n T�ng
		end
	end
	--*****************--
	return Song_Mem
	--*****************--

end
--*****************************--
--*     Check Liao Member     *--
--*****************************--
function x910075_CheckLiaoMember(sceneId)														

	--*****************--
	local Liao_Mem=0
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)									--T�ng s� ng߶i ch�i trong chi�n tr߶ng
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)							--Id ng߶i ch�i th� i
		local Flag=GetMissionData(sceneId,HumanId,MD_SONGLIAO_FLAG)						--Ki�m tra phe ng߶i ch�i
		if Flag==x910075_g_Flag_Liao then
			Liao_Mem=Liao_Mem+1															--T�ng s� ng߶i ch�i b�n Li�u
		end
	end
	--*****************--
	return Liao_Mem
	--*****************--

end
