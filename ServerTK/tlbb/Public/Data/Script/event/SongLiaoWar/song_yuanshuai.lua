--Chiªn trß¶ng T¯ng Liêu
--T¯ng Nguyên Soái
--Author: Kenvin Sói

--******************--
x910088_g_ScriptId=910088
--******************--
x910088_g_Activity_Index=38
x910088_g_Activity_Liao_Point=1
--******************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x910088_OnDefaultEvent(sceneId,selfId,targetId)

	--******************--
	--******************--
	
end
--**********************************--
--*             On Die             *--
--**********************************--
function x910088_OnDie(sceneId,selfId,killerId)

	--******************--
	BeginEvent(sceneId)
		AddText(sceneId,"Ðã giªt chªt T¯ng Nguyên Soái, ði¬m tích lûy cüa các hÕ tång thêm 1000 ði¬m!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,killerId)
	--******************--
	local Current_Point=GetMissionData(sceneId,killerId,MD_SONGLIAO_HUMAN_POINT)
	SetMissionData(sceneId,killerId,MD_SONGLIAO_HUMAN_POINT,Current_Point+1000)
	local Group_Point=GetActivityParam(sceneId,x910088_g_Activity_Index,x910088_g_Activity_Liao_Point)
	SetActivityParam(sceneId,x910088_g_Activity_Index,x910088_g_Activity_Liao_Point,Group_Point+2000)
	--******************--
	local str=format("Ði¬m tích lûy cüa các hÕ tång 1000 ði¬m.#rÐi¬m tích lûy cá nhân: %d#rÐi¬m tích lûy phe Liêu: %d",Current_Point+1000,Group_Point+2000)
	Msg2Player(sceneId,killerId,str,MSG2PLAYER_PARA)
	--******************--
	local str1=format("%s ðã ðánh bÕi T¯ng Nguyên Soái, gia tång ði¬m tích lûy toàn phe lên 2000 ði¬m, m²i ngß¶i ch½i cùng phe ðßþc 150 ði¬m.",GetName(sceneId,killerId))
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)									--T±ng s¯ ngß¶i ch½i trong chiªn trß¶ng
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)							--Id ngß¶i ch½i thÑ i
		local Flag=GetMissionData(sceneId,HumanId,MD_SONGLIAO_FLAG)						--Ki¬m tra phe ngß¶i ch½i
		if Flag==1 then
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