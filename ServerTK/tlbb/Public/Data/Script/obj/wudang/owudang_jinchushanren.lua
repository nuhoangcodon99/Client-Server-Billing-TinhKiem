--�䵱NPC
--����ɢ��
--��ͨ

x012066_g_ScriptId = 012066

--**********************************
--�¼��������
--**********************************
function x012066_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId," Ta c� th� truy�n th� cho khinh c�ng �c bi�t c�a b�n ph�i, c� �i�u c�n t�n 1#-15")
		AddNumText(sceneId, x012066_g_ScriptId, "H�c khinh c�ng ph�i V� �ang",12,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x012066_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText()==0	then
		
		if GetMenPai(sceneId, selfId) == 3 then
			if	HaveSkill( sceneId, selfId, 26)<0	then
				-- ���Ǯ
				if GetMoney(sceneId, selfId)+GetMoneyJZ(sceneId, selfId) < STUDY_MENPAI_QINGGONG_SPEND  then
					BeginEvent(sceneId)
						AddText(sceneId,"  Ng�n l��ng tr�n ng߶i c�c h� kh�ng �� 1#-15, v� v�y kh�ng th� h�c khinh c�ng b�n m�n")
					EndEvent(sceneId)
					DispatchEventList(sceneId,selfId,targetId)
					return
				end
				-- ��Ǯ
				LuaFnCostMoneyWithPriority(sceneId,selfId,STUDY_MENPAI_QINGGONG_SPEND)

				AddSkill( sceneId, selfId, 26 )
				DelSkill( sceneId, selfId, 34 )
				BeginEvent(sceneId)
					AddText(sceneId,"  Ch�c m�ng ng߽i �� h�c ���c khinh c�ng c�a b�n m�n, hy v�ng ng߽i ti�p t�c n� l�c � ph�t huy danh ti�ng b�n m�n")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			else
				BeginEvent(sceneId)
					AddText(sceneId,"Ch�ng ph�i ng߽i �� h�c r�i sao?")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			end
		elseif GetMenPai(sceneId, selfId) == 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"Mu�n h�c khinh c�ng c�a ph�i V� �ang, tr߾c ti�n ph�i gia nh�p ph�i V� �ang tr߾c ��!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Ng߽i kh�ng ph�i l� � t� b�n m�n, ta kh�ng th� truy�n th� khinh c�ng c�a V� �ang cho ng߽i ���c")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	end	
end

--**********************************
--���ܴ�NPC������
--**********************************
function x012066_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--�ܾ���NPC������
--**********************************
function x012066_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
end

--**********************************
--�������Ѿ���������
--**********************************
function x012066_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--�ύ�����������
--**********************************
function x012066_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
end

--**********************************
--�����¼�
--**********************************
function x012066_OnDie( sceneId, selfId, killerId )
end
