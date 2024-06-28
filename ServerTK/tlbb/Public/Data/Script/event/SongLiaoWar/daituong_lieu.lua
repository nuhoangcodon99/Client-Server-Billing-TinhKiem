--Chiªn trß¶ng T¯ng Liêu
--Liêu ÐÕi Tß¾ng
--Author: Kenvin Sói

--******************--
x910093_g_ScriptId=910093
--******************--
x910093_g_Activity_Index=38
x910093_g_Activity_Song_Point=0
--******************--

--**********************************--
--*             On Die             *--
--**********************************--
function x910093_OnDie(sceneId,selfId,killerId)

	--******************--
	BeginEvent(sceneId)
		AddText(sceneId,"Ðã giªt chªt Liêu ÐÕi Tß¾ng, ði¬m tích lûy cüa các hÕ tång thêm 100 ði¬m!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,killerId)
	--******************--
	local Current_Point=GetMissionData(sceneId,killerId,MD_SONGLIAO_HUMAN_POINT)
	SetMissionData(sceneId,killerId,MD_SONGLIAO_HUMAN_POINT,Current_Point+100)
	local Group_Point=GetActivityParam(sceneId,x910093_g_Activity_Index,x910093_g_Activity_Song_Point)
	SetActivityParam(sceneId,x910093_g_Activity_Index,x910093_g_Activity_Song_Point,Group_Point+200)
	--******************--
	local str=format("Ði¬m tích lûy cüa các hÕ tång 100 ði¬m.#rÐi¬m tích lûy cá nhân: %d#rÐi¬m tích lûy phe T¯ng: %d",Current_Point+100,Group_Point+200)
	Msg2Player(sceneId,killerId,str,MSG2PLAYER_PARA)
	--******************--
	local str1=format("%s ðã ðánh bÕi Liêu ÐÕi Tß¾ng, gia tång ði¬m tích lûy toàn phe lên 200 ði¬m, m²i ngß¶i ch½i cùng phe ðßþc 15 ði¬m.",GetName(sceneId,killerId))
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)									--T±ng s¯ ngß¶i ch½i trong chiªn trß¶ng
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)							--Id ngß¶i ch½i thÑ i
		local Flag=GetMissionData(sceneId,HumanId,MD_SONGLIAO_FLAG)						--Ki¬m tra phe ngß¶i ch½i
		if Flag==0 then
			Msg2Player(sceneId,HumanId,str1,MSG2PLAYER_PARA)
			BeginEvent(sceneId)
				AddText(sceneId,str1)
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,HumanId)
			local Current_Point=GetMissionData(sceneId,HumanId,MD_SONGLIAO_HUMAN_POINT)
			SetMissionData(sceneId,HumanId,MD_SONGLIAO_HUMAN_POINT,Current_Point+15)
		end
	end
	--******************--
	
end