--NPC c§p nh§t kªt quä bên Liêu

--************************--
x910082_g_ScriptId = 910082
--************************--
x910082_g_Flag_Song=0						--Ðánh d¤u quân T¯ng
x910082_g_Flag_Liao=1						--Ðánh d¤u quân Liêu
--************************--
x910082_g_Activity_Index=38							--Ðánh d¤u hoÕt ðµng T¯ng Liêu
x910082_g_Activity_Song_Point=0						--Ði¬m s¯ bên T¯ng
x910082_g_Activity_Liao_Point=1						--Ði¬m s¯ bên Liêu
--************************--

--*****************************--
--*     On Default Event      *--
--*****************************--
function x910082_OnDefaultEvent(sceneId,selfId,targetId)

	if GetMissionData(sceneId,selfId,MD_SONGLIAO_FLAG)==x910082_g_Flag_Liao then
		local nRank=x910082_SelfSongLiaoRank(sceneId,selfId)
		local nPoint=GetMissionData(sceneId,selfId,MD_SONGLIAO_HUMAN_POINT)
		local Kills_Num=GetMissionData(sceneId,selfId,MD_SONGLIAO_HUMAN_KILLS_NUM)
		local Died_Num=GetMissionData(sceneId,selfId,MD_SONGLIAO_HUMAN_DIED_NUM)
		local nPoint_Song=GetActivityParam(sceneId,x910082_g_Activity_Index,x910082_g_Activity_Song_Point)
		local nPoint_Liao=GetActivityParam(sceneId,x910082_g_Activity_Index,x910082_g_Activity_Liao_Point)
		local nNumber=2
		if nPoint_Song<nPoint_Liao then
			nNumber=1
		end
		BeginEvent(sceneId)
			AddText(sceneId,"#YDß¾i ðây là bäng chiªn công cüa các hÕ tính ðªn th¶i ði¬m hi®n tÕi.")
			AddText(sceneId,"   T±ng ði¬m tích lûy cá nhân: #G"..nPoint)
			AddText(sceneId,"   ThÑ hÕng cá nhân: #G"..nRank.."/"..LuaFnGetCopyScene_HumanCount(sceneId))
			AddText(sceneId,"   T±ng s¯ ngß¶i ch½i b¸ giªt: #G"..Kills_Num)
			AddText(sceneId,"   T±ng l¥n tØ nÕn: #G"..Died_Num)
			AddText(sceneId,"   T±ng ði¬m phe Liêu: #G"..nPoint_Liao)
			AddText(sceneId,"   Xªp hÕng phe Liêu: #G"..nNumber)
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	else
		BeginEvent(sceneId)
			AddText(sceneId,"Ta thà chªt chÑ không bán nß¾c giúp kë thù!")
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
end
--**********************************--
--*      Self Song Liao Rank       *--
--**********************************--
function x910082_SelfSongLiaoRank(sceneId,playerId)

	--*****************--
	local nRank=1
	local Point=GetMissionData(sceneId,playerId,MD_SONGLIAO_HUMAN_POINT)					--T±ng ði¬m tích lûy cüa ngß¶i ch½i
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)									--T±ng s¯ ngß¶i ch½i trong chiªn trß¶ng
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)							--Id ngß¶i ch½i thÑ i
		local nPoint=GetMissionData(sceneId,HumanId,MD_SONGLIAO_HUMAN_POINT)				--T±ng s¯ ði¬m tích lûy cüa ngß¶i ch½i thÑ i
		if Point<nPoint then
			nRank=nRank+1																--C§p nh§t rank cüa ngß¶i ch½i
		end
	end
	--*****************--
	return nRank
	--*****************--
	
end