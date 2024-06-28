--Chiªn trß¶ng T¯ng Liêu
--Liêu Chiªn Xa
--Author: Kenvin Sói

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
		AddText(sceneId,"Ðã giªt chªt Liêu Chiªn Xa, ði¬m tích lûy cüa các hÕ tång thêm 15 ði¬m!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,killerId)
	--******************--
	local Current_Point=GetMissionData(sceneId,killerId,MD_SONGLIAO_HUMAN_POINT)
	SetMissionData(sceneId,killerId,MD_SONGLIAO_HUMAN_POINT,Current_Point+15)
	local Group_Point=GetActivityParam(sceneId,x910092_g_Activity_Index,x910092_g_Activity_Song_Point)
	SetActivityParam(sceneId,x910092_g_Activity_Index,x910092_g_Activity_Song_Point,Group_Point+15)
	--******************--
	local str=format("Ði¬m tích lûy cüa các hÕ tång 15 ði¬m.#rÐi¬m tích lûy cá nhân: %d#rÐi¬m tích lûy phe T¯ng: %d",Current_Point+5,Group_Point+5)
	Msg2Player(sceneId,killerId,str,MSG2PLAYER_PARA)
	--******************--
	
end