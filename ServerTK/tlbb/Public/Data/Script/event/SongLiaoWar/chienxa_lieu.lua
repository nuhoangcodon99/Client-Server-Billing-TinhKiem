--Chi�n tr߶ng T�ng Li�u
--Li�u Chi�n Xa
--Author: Kenvin S�i

--******************--
x910092_g_ScriptId=910092
--******************--
x910092_g_Activity_Index=38
x910092_g_Activity_Song_Point=0
--******************--

--**********************************--
--*             On Die             *--
--**********************************--
function x910092_OnDie(sceneId,selfId,killerId)

	--******************--
	BeginEvent(sceneId)
		AddText(sceneId,"�� gi�t ch�t Li�u Chi�n Xa, �i�m t�ch l�y c�a c�c h� t�ng th�m 15 �i�m!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,killerId)
	--******************--
	local Current_Point=GetMissionData(sceneId,killerId,MD_SONGLIAO_HUMAN_POINT)
	SetMissionData(sceneId,killerId,MD_SONGLIAO_HUMAN_POINT,Current_Point+15)
	local Group_Point=GetActivityParam(sceneId,x910092_g_Activity_Index,x910092_g_Activity_Song_Point)
	SetActivityParam(sceneId,x910092_g_Activity_Index,x910092_g_Activity_Song_Point,Group_Point+15)
	--******************--
	local str=format("�i�m t�ch l�y c�a c�c h� t�ng 15 �i�m.#r�i�m t�ch l�y c� nh�n: %d#r�i�m t�ch l�y phe T�ng: %d",Current_Point+5,Group_Point+5)
	Msg2Player(sceneId,killerId,str,MSG2PLAYER_PARA)
	--******************--
	
end