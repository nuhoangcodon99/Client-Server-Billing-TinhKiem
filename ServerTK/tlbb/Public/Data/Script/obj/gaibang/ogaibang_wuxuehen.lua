--ؤ��NPC
--��ѩ��
--��ͨ

x010013_g_ScriptId = 010013

--**********************************
--�¼��������
--**********************************
function x010013_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Ta c� th� truy�n th� cho khinh c�ng �c bi�t c�a b�n ph�i, c� �i�u c�n t�n 1 #-15")
		AddNumText(sceneId, x010013_g_ScriptId, "H�c khinh c�ng ph�i C�i Bang",12,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x010013_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText()==0	then
		
		if GetMenPai(sceneId, selfId) == 2 then
			if	HaveSkill( sceneId, selfId, 25)<0	then
				-- ���Ǯ
				if GetMoney(sceneId, selfId)+GetMoneyJZ(sceneId, selfId) < STUDY_MENPAI_QINGGONG_SPEND  then
					BeginEvent(sceneId)
						AddText(sceneId,"  Ng�n l��ng tr�n ng߶i c�c h� kh�ng �� 1 #-15, v� v�y kh�ng th� h�c khinh c�ng b�n m�n")
					EndEvent(sceneId)
					DispatchEventList(sceneId,selfId,targetId)
					return
				end
				-- ��Ǯ
				LuaFnCostMoneyWithPriority(sceneId,selfId,STUDY_MENPAI_QINGGONG_SPEND)
				
				AddSkill( sceneId, selfId, 25 )
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
				AddText(sceneId,"H�c khinh c�ng C�i Bang tr߾c ti�n c�n gia nh�p C�i Bang!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Ng߽i kh�ng ph�i l� � t� c�a b�n bang, ta l� kh�ng th� d�y ng߽i khinh c�ng c�a C�i Bang ���c")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	end	
end

--**********************************
--���ܴ�NPC������
--**********************************
function x010013_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--�ܾ���NPC������
--**********************************
function x010013_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
end

--**********************************
--�������Ѿ���������
--**********************************
function x010013_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--�ύ�����������
--**********************************
function x010013_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
end

--**********************************
--�����¼�
--**********************************
function x010013_OnDie( sceneId, selfId, killerId )
end
