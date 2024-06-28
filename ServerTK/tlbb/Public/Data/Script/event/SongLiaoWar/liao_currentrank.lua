--NPC c�p nh�t k�t qu� b�n Li�u

--************************--
x910082_g_ScriptId = 910082
--************************--
x910082_g_Flag_Song=0						--��nh d�u qu�n T�ng
x910082_g_Flag_Liao=1						--��nh d�u qu�n Li�u
--************************--
x910082_g_Activity_Index=38							--��nh d�u ho�t �ng T�ng Li�u
x910082_g_Activity_Song_Point=0						--�i�m s� b�n T�ng
x910082_g_Activity_Liao_Point=1						--�i�m s� b�n Li�u
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
			AddText(sceneId,"#YD߾i ��y l� b�ng chi�n c�ng c�a c�c h� t�nh �n th�i �i�m hi�n t�i.")
			AddText(sceneId,"   T�ng �i�m t�ch l�y c� nh�n: #G"..nPoint)
			AddText(sceneId,"   Th� h�ng c� nh�n: #G"..nRank.."/"..LuaFnGetCopyScene_HumanCount(sceneId))
			AddText(sceneId,"   T�ng s� ng߶i ch�i b� gi�t: #G"..Kills_Num)
			AddText(sceneId,"   T�ng l�n t� n�n: #G"..Died_Num)
			AddText(sceneId,"   T�ng �i�m phe Li�u: #G"..nPoint_Liao)
			AddText(sceneId,"   X�p h�ng phe Li�u: #G"..nNumber)
		EndEvent(senceId)
		DispatchEventList(sceneId,selfId,targetId)
	else
		BeginEvent(sceneId)
			AddText(sceneId,"Ta th� ch�t ch� kh�ng b�n n߾c gi�p k� th�!")
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
	local Point=GetMissionData(sceneId,playerId,MD_SONGLIAO_HUMAN_POINT)					--T�ng �i�m t�ch l�y c�a ng߶i ch�i
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)									--T�ng s� ng߶i ch�i trong chi�n tr߶ng
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)							--Id ng߶i ch�i th� i
		local nPoint=GetMissionData(sceneId,HumanId,MD_SONGLIAO_HUMAN_POINT)				--T�ng s� �i�m t�ch l�y c�a ng߶i ch�i th� i
		if Point<nPoint then
			nRank=nRank+1																--C�p nh�t rank c�a ng߶i ch�i
		end
	end
	--*****************--
	return nRank
	--*****************--
	
end