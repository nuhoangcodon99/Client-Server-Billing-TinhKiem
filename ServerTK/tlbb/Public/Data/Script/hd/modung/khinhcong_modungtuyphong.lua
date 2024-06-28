--NPC Truy�n kinh c�ng M� Dung
--Author: mrhong@2gvn
--Date: 1/3/2012

x000511_g_scriptId = 000511

function x000511_OnDefaultEvent( sceneId, selfId,targetId )

	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
		AddText(sceneId,"#{GUSU_MENPAI_30}")
		local mp = GetMenPai(sceneId, selfId)
		if mp == 9 and GetHumanMenpaiPoint(sceneId, selfId) ~= 0 then
			AddNumText(sceneId, x000511_g_scriptId, "H�c kinh c�ng M� Dung",12,3)
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000511_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 3 then
		if GetMenPai(sceneId, selfId) == 9 and GetHumanMenpaiPoint(sceneId, selfId) ~= 0 then
			if HaveSkill( sceneId, selfId, 110)<0 then
				if GetMoney(sceneId, selfId)+GetMoneyJZ(sceneId, selfId) < STUDY_MENPAI_QINGGONG_SPEND  then
					x000511_AddMsg( sceneId, selfId, targetId, "  Ng�n l��ng tr�n ng߶i c�c h� kh�ng �� 1#-15, v� v�y kh�ng th� h�c khinh c�ng b�n m�n")
					return
				end
				LuaFnCostMoneyWithPriority(sceneId,selfId,STUDY_MENPAI_QINGGONG_SPEND)
				DelSkill( sceneId, selfId, 34 )
				AddSkill( sceneId, selfId, 110 )
				x000511_AddMsg( sceneId, selfId, targetId, "  Ch�c m�ng ng߽i �� h�c ���c khinh c�ng c�a b�n m�n, hy v�ng ng߽i ti�p t�c n� l�c � ph�t huy danh ti�ng b�n m�n")
			else
				x000511_AddMsg( sceneId, selfId, targetId, "Ch�ng ph�i ng߽i �� h�c r�i sao?")
			end
		else
			x000511_AddMsg( sceneId, selfId, targetId, "Ng߽i kh�ng ph�i l� � t� c�a b�n m�n, ta kh�ng th� d�y ng߽i khinh c�ng c�a M� Dung")
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