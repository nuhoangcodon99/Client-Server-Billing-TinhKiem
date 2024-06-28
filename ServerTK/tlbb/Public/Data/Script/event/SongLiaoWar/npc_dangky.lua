--NPC ðång ký

--************************--
x910075_g_ScriptId = 910075
x910075_g_eventlist = {910072}
--************************--
x910075_g_LimitedMember=1							--S¯ ngß¶i t¯i thi¬u m²i bên
x910075_g_MemberCompare=10							--Ðµ chênh l®ch t¯i ða giæa quân s¯ 2 bên
--************************--
x910075_g_Flag_Song=0								--Ðánh d¤u phe T¯ng
x910075_g_Flag_Liao=1								--Ðánh d¤u phe Liêu

--*****************************--
--*     On Default Event      *--
--*****************************--
function x910075_OnDefaultEvent(sceneId,selfId,targetId)

	BeginEvent(sceneId)
		local Song_Mem=x910075_CheckSongMember(sceneId)							--Quân s¯ bên T¯ng
		local Liao_Mem=x910075_CheckLiaoMember(sceneId)							--Quân s¯ bên Liêu
		AddText(sceneId,"N½i này là ði¬m báo danh #GChiªn trß¶ng T¯ng Liêu#W. Tình hình quân s¯ hai bên hi®n tÕi nhß sau:")
		AddText(sceneId,"#YQuân T¯ng:#G "..Song_Mem)
		AddText(sceneId,"#YQuân Liêu:#G "..Liao_Mem)
		AddText(sceneId,"Nªu m²i bên quân s¯ không ðü t¯i thi¬u #G"..x910075_g_LimitedMember.." ngß¶i#W ho£c chênh l®ch quân s¯ hai bên quá #G"..x910075_g_MemberCompare.." ngß¶i#W thì tr§n ð¤u s¨ b¸ hüy bö!")
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
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)									--T±ng s¯ ngß¶i ch½i trong chiªn trß¶ng
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)							--Id ngß¶i ch½i thÑ i
		local Flag=GetMissionData(sceneId,HumanId,MD_SONGLIAO_FLAG)						--Ki¬m tra phe ngß¶i ch½i
		if Flag==x910075_g_Flag_Song then
			Song_Mem=Song_Mem+1															--Tång s¯ ngß¶i ch½i bên T¯ng
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
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)									--T±ng s¯ ngß¶i ch½i trong chiªn trß¶ng
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)							--Id ngß¶i ch½i thÑ i
		local Flag=GetMissionData(sceneId,HumanId,MD_SONGLIAO_FLAG)						--Ki¬m tra phe ngß¶i ch½i
		if Flag==x910075_g_Flag_Liao then
			Liao_Mem=Liao_Mem+1															--Tång s¯ ngß¶i ch½i bên Liêu
		end
	end
	--*****************--
	return Liao_Mem
	--*****************--

end
