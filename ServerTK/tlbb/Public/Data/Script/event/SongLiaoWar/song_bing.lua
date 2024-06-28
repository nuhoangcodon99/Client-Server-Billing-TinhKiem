--Chiªn trß¶ng T¯ng Liêu
--T¯ng sÛ binh
--Author: Kenvin Sói

--******************--
x910083_g_ScriptId=910083
--******************--
x910083_g_Activity_Index=38
x910083_g_Activity_Liao_Point=1
--******************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x910083_OnDefaultEvent(sceneId,selfId,targetId)

	--******************--
	--******************--
	
end
--**********************************--
--*             On Die             *--
--**********************************--
function x910083_OnDie(sceneId,selfId,killerId)

	--******************--
	BeginEvent(sceneId)
		AddText(sceneId,"Ðã giªt chªt T¯ng SÛ Binh, ði¬m tích lûy cüa các hÕ tång thêm 1 ði¬m!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,killerId)
	--******************--
	local Current_Point=GetMissionData(sceneId,killerId,MD_SONGLIAO_HUMAN_POINT)
	SetMissionData(sceneId,killerId,MD_SONGLIAO_HUMAN_POINT,Current_Point+1)
	local Group_Point=GetActivityParam(sceneId,x910083_g_Activity_Index,x910083_g_Activity_Liao_Point)
	SetActivityParam(sceneId,x910083_g_Activity_Index,x910083_g_Activity_Liao_Point,Group_Point+1)
	--******************--
	local str=format("Ði¬m tích lûy cüa các hÕ tång 1 ði¬m.#rÐi¬m tích lûy cá nhân: %d#rÐi¬m tích lûy phe Liêu: %d",Current_Point+1,Group_Point+1)
	Msg2Player(sceneId,killerId,str,MSG2PLAYER_PARA)
	--******************--
	
end