--NPC Truy«n kinh công Mµ Dung
--Author: mrhong@2gvn
--Date: 1/3/2012

x000511_g_scriptId = 000511

function x000511_OnDefaultEvent( sceneId, selfId,targetId )

	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
		AddText(sceneId,"#{GUSU_MENPAI_30}")
		local mp = GetMenPai(sceneId, selfId)
		if mp == 9 and GetHumanMenpaiPoint(sceneId, selfId) ~= 0 then
			AddNumText(sceneId, x000511_g_scriptId, "H÷c kinh công Mµ Dung",12,3)
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000511_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 3 then
		if GetMenPai(sceneId, selfId) == 9 and GetHumanMenpaiPoint(sceneId, selfId) ~= 0 then
			if HaveSkill( sceneId, selfId, 110)<0 then
				if GetMoney(sceneId, selfId)+GetMoneyJZ(sceneId, selfId) < STUDY_MENPAI_QINGGONG_SPEND  then
					x000511_AddMsg( sceneId, selfId, targetId, "  Ngân lßþng trên ngß¶i các hÕ không ðü 1#-15, vì v§y không th¬ h÷c khinh công b±n môn")
					return
				end
				LuaFnCostMoneyWithPriority(sceneId,selfId,STUDY_MENPAI_QINGGONG_SPEND)
				DelSkill( sceneId, selfId, 34 )
				AddSkill( sceneId, selfId, 110 )
				x000511_AddMsg( sceneId, selfId, targetId, "  Chúc m×ng ngß½i ðã h÷c ðßþc khinh công cüa b±n môn, hy v÷ng ngß½i tiªp tøc n² lñc ð¬ phát huy danh tiªng b±n môn")
			else
				x000511_AddMsg( sceneId, selfId, targetId, "ChÆng phäi ngß½i ðã h÷c r°i sao?")
			end
		else
			x000511_AddMsg( sceneId, selfId, targetId, "Ngß½i không phäi là ð® tØ cüa b±n môn, ta không th¬ dÕy ngß½i khinh công cüa Mµ Dung")
		end
	end
end
function x000511_AddMsg( sceneId, selfId, targetId, msg)
	BeginEvent(sceneId)
		AddText(sceneId, msg)
	EndEvent(sceneId)
	DispatchEventList(sceneId, selfId, targetId)
end

function x000511_AddTips( sceneId, selfId, tips)
	BeginEvent(sceneId)
		AddText(sceneId, tips)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end