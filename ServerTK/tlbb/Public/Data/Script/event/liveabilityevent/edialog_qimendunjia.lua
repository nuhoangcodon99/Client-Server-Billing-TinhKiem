--�Ի��¼� npc��ӱ��

--�ű���
x713619_g_ScriptId = 713512

--�Ի�����
x713619_g_dialog = {"#{event_liveabilityevent_0023}",
			"C�u h�i th� 2",
			"Ch� c�n c�c h� h�c ���c ph߽ng th�c K� M�n еn Gi�p, c� th� ch� ra c�c lo�i ph� �c nh�t v� nh� r�i",
			"�߽ng nhi�n, ��ng c�p k� n�ng c�ng cao, ph� ch� ch� ra c� s�c m�nh c�ng l�n",
			"#{event_liveabilityevent_0024}"}
x713619_g_button = {"N�i v� th�c t� ch�t �i",
			"L�m sao � ch� ph�?",
			"Sau �� ra sao?",
			"K�t qu� th� n�o?",
			}

--**********************************
--������ں���
--**********************************
function x713619_OnDefaultEvent( sceneId, selfId, targetId, MessageNum )	--MessageNum�ǶԻ���ţ����ڵ��ò�ͬ�Ի�
		BeginEvent(sceneId)
			AddText(sceneId, x713619_g_dialog[MessageNum])
			if MessageNum ~= 5 then
				AddNumText(sceneId,MessageNum, x713619_g_button[MessageNum],11,-1)
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--�о��¼�
--**********************************
function x713619_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713619_g_ScriptId,"T�m hi�u K� M�n еn Gi�p",11,-1)
end

--**********************************
--����������
--**********************************
function x713619_CheckAccept( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x713619_OnAccept( sceneId, selfId, AbilityId )
end
