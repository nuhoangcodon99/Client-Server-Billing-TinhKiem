--Chi�n tr߶ng T�ng Li�u
--Li�u s� binh
--Author: Kenvin S�i

--******************--
x910089_g_ScriptId=910089
--******************--
x910089_g_Activity_Index=38
x910089_g_Activity_Song_Point=0
--******************--

--**********************************--
--*             On Die             *--
--**********************************--
function x910089_OnDie(sceneId,selfId,killerId)

	--******************--
	BeginEvent(sceneId)
		AddText(sceneId,"�� gi�t ch�t Li�u S� Binh, �i�m t�ch l�y c�a c�c h� t�ng th�m 1 �i�m!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,killerId)
	--******************--
	local Current_Point=GetMissionData(sceneId,killerId,MD_SONGLIAO_HUMAN_POINT)
	SetMissionData(sceneId,killerId,MD_SONGLIAO_HUMAN_POINT,Current_Point+1)
	local Group_Point=GetActivityParam(sceneId,x910089_g_Activity_Index,x910089_g_Activity_Song_Point)
	SetActivityParam(sceneId,x910089_g_Activity_Index,x910089_g_Activity_Song_Point,Group_Point+1)
	--******************--
	local str=format("�i�m t�ch l�y c�a c�c h� t�ng 1 �i�m.#r�i�m t�ch l�y c� nh�n: %d#r�i�m t�ch l�y phe T�ng: %d",Current_Point+1,Group_Point+1)
	Msg2Player(sceneId,killerId,str,MSG2PLAYER_PARA)
	--******************--
	
end