--�Ի��¼� npc��ӱ��

--�ű���
x713614_g_ScriptId = 713512

--�Ի�����
x713614_g_dialog = {"#{event_liveabilityevent_0017}",
			"C�u h�i s� 2",
			"Ch� c�n c�c h� h�c ���c ph߽ng th�c Huy�n B�ng Thu�t l� c� th� ch� ra �an d��c c� s�c m�nh kh�ng khi�p",
			"N�i l� v�y ch� th�t ra ch�ng �n gi�n �n th�. ��ng c�p Huy�n B�ng Thu�t c�ng cao, �an d��c ch� ra c�ng m�nh",
			"#{event_liveabilityevent_0018}"}
x713614_g_button = {"N�i v� th�c t� �i",
			"L�m sao � ch� �an d��c?",
			"Sau �� ra sao?",
			"K�t qu� th� n�o?",
			}

--**********************************
--������ں���
--**********************************
function x713614_OnDefaultEvent( sceneId, selfId, targetId, MessageNum )	--MessageNum�ǶԻ���ţ����ڵ��ò�ͬ�Ի�
		BeginEvent(sceneId)
			AddText(sceneId, x713614_g_dialog[MessageNum])
			if MessageNum ~= 5 then
				AddNumText(sceneId,MessageNum, x713614_g_button[MessageNum],11,-1)
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--�о��¼�
--**********************************
function x713614_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713614_g_ScriptId,"T�m hi�u Huy�n B�ng Thu�t",11,-1)
end

--**********************************
--����������
--**********************************
function x713614_CheckAccept( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x713614_OnAccept( sceneId, selfId, AbilityId )
end
