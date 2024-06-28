--��ңNPC
--ʯ����
--��ͨ

--�ű���
x014012_g_ScriptId = 014012


--**********************************
--�¼��������
--**********************************
function x014012_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  N�u ng߽i l� � t� Ti�u Dao v� mu�n h�c khinh c�ng th��ng th�a, ta s� gi�p ng߽i ch� v�i 1#-15")
		AddNumText(sceneId, x014012_g_ScriptId, "H�c khinh c�ng ph�i Ti�u Dao",12,0)
	EndEvent(sceneId)
	
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x014012_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	if GetNumText()==0	then
		
		if GetMenPai(sceneId, selfId) == 8 then
			if	HaveSkill( sceneId, selfId, 31)<0	then
				-- ���Ǯ
				if GetMoney(sceneId, selfId)+GetMoneyJZ(sceneId, selfId) < STUDY_MENPAI_QINGGONG_SPEND  then
					BeginEvent(sceneId)
						AddText(sceneId,"  Kh�ng c� �� 1#-15 l�m sao c� th� h�c ��y ?")
					EndEvent(sceneId)
					DispatchEventList(sceneId,selfId,targetId)
					return
				end
				-- ��Ǯ
				LuaFnCostMoneyWithPriority(sceneId,selfId,STUDY_MENPAI_QINGGONG_SPEND)

				AddSkill( sceneId, selfId, 31 )
				DelSkill( sceneId, selfId, 34 )
				BeginEvent(sceneId)
					AddText(sceneId,"  Ch�c m�ng, ng߽i �� h�c ���c khinh c�ng c�a ph�i Ti�u Dao")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			else
				BeginEvent(sceneId)
					AddText(sceneId,"Ng߽i �� h�c khinh c�ng n�y r�i !!")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			end
		elseif GetMenPai(sceneId, selfId) == 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ng߽i ph�i l� � t� c�a Ti�u Dao tr߾c �� !")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Ng߽i kh�ng ph�i � t� Ti�u Dao. Ta kh�ng th� truy�n th� cho ng߽i ngo�i ph�i ���c  !")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	end	
end

--**********************************
--���ܴ�NPC������
--**********************************
function x014012_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--�ܾ���NPC������
--**********************************
function x014012_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
end

--**********************************
--�������Ѿ���������
--**********************************
function x014012_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--�ύ�����������
--**********************************
function x014012_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
end

--**********************************
--�����¼�
--**********************************
function x014012_OnDie( sceneId, selfId, killerId )
end
