--Chiªn trß¶ng T¯ng Liêu
--T¯ng Hi®u Úy
--Author: Kenvin Sói

--******************--
x910084_g_ScriptId=910084
--******************--
x910084_g_Activity_Index=38
x910084_g_Activity_Liao_Point=1
--******************--

--**********************************--
--*             On Die             *--
--**********************************--
function x910084_OnDie(sceneId,selfId,killerId)

	--******************--
	BeginEvent(sceneId)
		AddText(sceneId,"Ðã giªt chªt T¯ng Hi®u Úy, ði¬m tích lûy cüa các hÕ tång thêm 2 ði¬m!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,killerId)
	--******************--
	local Current_Point=GetMissionData(sceneId,killerId,MD_SONGLIAO_HUMAN_POINT)
	SetMissionData(sceneId,killerId,MD_SONGLIAO_HUMAN_POINT,Current_Point+2)
	local Group_Point=GetActivityParam(sceneId,x910084_g_Activity_Index,x910084_g_Activity_Liao_Point)
	SetActivityParam(sceneId,x910084_g_Activity_Index,x910084_g_Activity_Liao_Point,Group_Point+2)
	--******************--
	local str=format("Ði¬m tích lûy cüa các hÕ tång 2 ði¬m.#rÐi¬m tích lûy cá nhân: %d#rÐi¬m tích lûy phe Liêu: %d",Current_Point+2,Group_Point+2)
	Msg2Player(sceneId,killerId,str,MSG2PLAYER_PARA)
	--******************--
	
end