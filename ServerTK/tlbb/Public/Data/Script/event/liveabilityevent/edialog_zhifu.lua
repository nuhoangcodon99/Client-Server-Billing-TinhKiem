--�Ի��¼� npc��ӱ��

--�ű���
x713617_g_ScriptId = 713512

--�Ի�����
x713617_g_dialog = {"N�u nh� c�c h� mu�n d�t l�n nh�ng lo�i ph� ch� th�n k� kh�ng gi�ng t� gi�y b�nh th߶ng th� �� c� Ch� Ph� c�a Nga My",
			"C�u h�i s� 2",
			"Ch� c�n c�c h� h�c ���c ph߽ng th�c Ch� Ph� l� c� th� ch� t�o ph� ch� r�i",
			"��ng c�p, c�ng d�ng c�a ph� ch� c�n ph� thu�c v�o ��ng c�p k� n�ng n�a. N�u nh� mu�n ��ng c�p ph� ch� ch� ra c�ng cao, ch�t l��ng c�ng t�t th� c�p � k� n�ng Ch� Ph� c�ng kh�ng ���c th�p",
			"Ph� ch� kh�ng �n gi�n ch� l� m�t t� gi�y. N� c�n c� t�c d�ng r�t l�n h� tr� cho ng߶i s� d�ng n�..."}
x713617_g_button = {"N�i v� th�c t� �i",
			"L�m sao � Ch� Ph�?",
			"Sau �� ra sao?",
			"Ph� ch� c� t�c d�ng g�?",
			}

--**********************************
--������ں���
--**********************************
function x713617_OnDefaultEvent( sceneId, selfId, targetId, MessageNum )	--MessageNum�ǶԻ���ţ����ڵ��ò�ͬ�Ի�
		BeginEvent(sceneId)
			AddText(sceneId, x713617_g_dialog[MessageNum])
			if MessageNum ~= 5 then
				AddNumText(sceneId,MessageNum, x713617_g_button[MessageNum],11,-1)
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--�о��¼�
--**********************************
function x713617_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713617_g_ScriptId,"T�m hi�u Ch� Ph�",11,-1)
end

--**********************************
--����������
--**********************************
function x713617_CheckAccept( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x713617_OnAccept( sceneId, selfId, AbilityId )
end
