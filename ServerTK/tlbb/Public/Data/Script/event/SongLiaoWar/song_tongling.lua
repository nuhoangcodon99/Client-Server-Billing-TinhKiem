--Chiªn trß¶ng T¯ng Liêu
--T¯ng Th¯ng Lînh
--Author: Kenvin Sói

--******************--
x910085_g_ScriptId=910085
--******************--
x910085_g_Activity_Index=38
x910085_g_Activity_Liao_Point=1
--******************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x910085_OnDefaultEvent(sceneId,selfId,targetId)

	--******************--
	--******************--
	
end
--**********************************--
--*             On Die             *--
--**********************************--
function x910085_OnDie(sceneId,selfId,killerId)

	--******************--
	BeginEvent(sceneId)
		AddText(sceneId,"Ðã giªt chªt T¯ng Th¯ng Lînh, ði¬m tích lûy cüa các hÕ tång thêm 5 ði¬m!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,killerId)
	--******************--
	local Current_Point=GetMissionData(sceneId,killerId,MD_SONGLIAO_HUMAN_POINT)
	SetMissionData(sceneId,killerId,MD_SONGLIAO_HUMAN_POINT,Current_Point+5)
	local Group_Point=GetActivityParam(sceneId,x910085_g_Activity_Index,x910085_g_Activity_Liao_Point)
	SetActivityParam(sceneId,x910085_g_Activity_Index,x910085_g_Activity_Liao_Point,Group_Point+5)
	--******************--
	local str=format("Ði¬m tích lûy cüa các hÕ tång 5 ði¬m.#rÐi¬m tích lûy cá nhân: %d#rÐi¬m tích lûy phe Liêu: %d",Current_Point+5,Group_Point+5)
	Msg2Player(sceneId,killerId,str,MSG2PLAYER_PARA)
	--******************--
	
end