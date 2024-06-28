--����NPC
--������
--��ͨ

--�ű���
x016005_g_ScriptId = 016005

--**********************************
--�¼��������
--**********************************
function x016005_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Ta s� d�y cho b�ng h�u khinh c�ng ph�i Tinh T�c. Ch� c�n ��a ta 1 #-15 h�c ph� m� th�i !")
		AddNumText(sceneId, x016005_g_ScriptId, "H�c khinh c�ng ph�i Tinh T�c",12,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x016005_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText()==0	then
		
		if GetMenPai(sceneId, selfId) == 5 then
			if	HaveSkill( sceneId, selfId, 28)<0	then
				-- ���Ǯ
				if GetMoney(sceneId, selfId)+GetMoneyJZ(sceneId, selfId) < STUDY_MENPAI_QINGGONG_SPEND  then
					BeginEvent(sceneId)
						AddText(sceneId,"  B�ng h�u kh�ng c� �� 1#-15. Ta kh�ng th� d�y kh�ng c�ng ���c !!")
					EndEvent(sceneId)
					DispatchEventList(sceneId,selfId,targetId)
					return
				end
				-- ��Ǯ
				LuaFnCostMoneyWithPriority(sceneId,selfId,STUDY_MENPAI_QINGGONG_SPEND)

				AddSkill( sceneId, selfId, 28 )
				DelSkill( sceneId, selfId, 34 )
				BeginEvent(sceneId)
					AddText(sceneId,"  Xin ch�c m�ng, b�ng h�u �� h�c ���c khinh c�ng ph�i Tinh T�c ta !")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			else
				BeginEvent(sceneId)
					AddText(sceneId,"B�ng h�u �� ���c h�c ���c khinh c�ng b�n m�n r�i !")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			end
		elseif GetMenPai(sceneId, selfId) == 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"N�u mu�n h�c khinh c�ng Tinh T�c, b�ng h�u ph�i l� � t� c�a ph�i Tinh T�c �� !")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			BeginEvent(sceneId)
				AddText(sceneId,"B�ng h�u kh�ng ph�i � t� ph�i Tinh T�c. Ta kh�ng th� truy�n th� khinh c�ng cho b�ng h�u !")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	end	
end

--**********************************
--���ܴ�NPC������
--**********************************
function x016005_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--�ܾ���NPC������
--**********************************
function x016005_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
end

--**********************************
--�������Ѿ���������
--**********************************
function x016005_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--�ύ�����������
--**********************************
function x016005_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
end

--**********************************
--�����¼�
--**********************************
function x016005_OnDie( sceneId, selfId, killerId )
end
