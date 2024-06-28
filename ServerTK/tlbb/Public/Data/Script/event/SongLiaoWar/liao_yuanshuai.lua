--Chi�n tr߶ng T�ng Li�u
--Li�u Nguy�n So�i
--Author: Kenvin S�i

--******************--
x910094_g_ScriptId=910094
--******************--
x910094_g_Activity_Index=38
x910094_g_Activity_Song_Point=0
--******************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x910094_OnDefaultEvent(sceneId,selfId,targetId)

	--******************--
	--******************--
	
end
--**********************************--
--*             On Die             *--
--**********************************--
function x910094_OnDie(sceneId,selfId,killerId)

	--******************--
	BeginEvent(sceneId)
		AddText(sceneId,"�� gi�t ch�t Li�u Nguy�n So�i, �i�m t�ch l�y c�a c�c h� t�ng th�m 1000 �i�m!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,killerId)
	--******************--
	local Current_Point=GetMissionData(sceneId,killerId,MD_SONGLIAO_HUMAN_POINT)
	SetMissionData(sceneId,killerId,MD_SONGLIAO_HUMAN_POINT,Current_Point+1000)
	local Group_Point=GetActivityParam(sceneId,x910094_g_Activity_Index,x910094_g_Activity_Song_Point)
	SetActivityParam(sceneId,x910094_g_Activity_Index,x910094_g_Activity_Song_Point,Group_Point+2000)
	--******************--
	local str=format("�i�m t�ch l�y c�a c�c h� t�ng 1000 �i�m.#r�i�m t�ch l�y c� nh�n: %d#r�i�m t�ch l�y phe T�ng: %d",Current_Point+1000,Group_Point+2000)
	Msg2Player(sceneId,killerId,str,MSG2PLAYER_PARA)
	--******************--
	local str1=format("%s �� ��nh b�i Li�u Nguy�n So�i, gia t�ng �i�m t�ch l�y to�n phe l�n 2000 �i�m, m�i ng߶i ch�i c�ng phe ���c 150 �i�m.",GetName(sceneId,killerId))
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)									--T�ng s� ng߶i ch�i trong chi�n tr߶ng
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)							--Id ng߶i ch�i th� i
		local Flag=GetMissionData(sceneId,HumanId,MD_SONGLIAO_FLAG)						--Ki�m tra phe ng߶i ch�i
		if Flag==0 then
			Msg2Player(sceneId,HumanId,str1,MSG2PLAYER_PARA)
			BeginEvent(sceneId)
				AddText(sceneId,str1)
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,HumanId)
			local Current_Point=GetMissionData(sceneId,HumanId,MD_SONGLIAO_HUMAN_POINT)
			SetMissionData(sceneId,HumanId,MD_SONGLIAO_HUMAN_POINT,Current_Point+150)
		end
	end
	--******************--
	
end