--Chiªn trß¶ng T¯ng Liêu
--Liêu sÛ binh
--Author: Kenvin Sói

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
		AddText(sceneId,"Ðã giªt chªt Liêu SÛ Binh, ði¬m tích lûy cüa các hÕ tång thêm 1 ði¬m!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,killerId)
	--******************--
	local Current_Point=GetMissionData(sceneId,killerId,MD_SONGLIAO_HUMAN_POINT)
	SetMissionData(sceneId,killerId,MD_SONGLIAO_HUMAN_POINT,Current_Point+1)
	local Group_Point=GetActivityParam(sceneId,x910089_g_Activity_Index,x910089_g_Activity_Song_Point)
	SetActivityParam(sceneId,x910089_g_Activity_Index,x910089_g_Activity_Song_Point,Group_Point+1)
	--******************--
	local str=format("Ði¬m tích lûy cüa các hÕ tång 1 ði¬m.#rÐi¬m tích lûy cá nhân: %d#rÐi¬m tích lûy phe T¯ng: %d",Current_Point+1,Group_Point+1)
	Msg2Player(sceneId,killerId,str,MSG2PLAYER_PARA)
	--******************--
	
end