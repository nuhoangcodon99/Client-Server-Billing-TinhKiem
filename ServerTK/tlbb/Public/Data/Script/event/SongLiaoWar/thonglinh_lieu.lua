--Chiªn trß¶ng T¯ng Liêu
--Liêu Th¯ng Lînh
--Author: Kenvin Sói

--******************--
x910091_g_ScriptId=910091
--******************--
x910091_g_Activity_Index=38
x910091_g_Activity_Song_Point=0
--******************--

--**********************************--
--*             On Die             *--
--**********************************--
function x910091_OnDie(sceneId,selfId,killerId)

	--******************--
	BeginEvent(sceneId)
		AddText(sceneId,"Ðã giªt chªt Liêu Th¯ng Lînh, ði¬m tích lûy cüa các hÕ tång thêm 5 ði¬m!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,killerId)
	--******************--
	local Current_Point=GetMissionData(sceneId,killerId,MD_SONGLIAO_HUMAN_POINT)
	SetMissionData(sceneId,killerId,MD_SONGLIAO_HUMAN_POINT,Current_Point+5)
	local Group_Point=GetActivityParam(sceneId,x910091_g_Activity_Index,x910091_g_Activity_Song_Point)
	SetActivityParam(sceneId,x910091_g_Activity_Index,x910091_g_Activity_Song_Point,Group_Point+5)
	--******************--
	local str=format("Ði¬m tích lûy cüa các hÕ tång 5 ði¬m.#rÐi¬m tích lûy cá nhân: %d#rÐi¬m tích lûy phe T¯ng: %d",Current_Point+5,Group_Point+5)
	Msg2Player(sceneId,killerId,str,MSG2PLAYER_PARA)
	--******************--
	
end