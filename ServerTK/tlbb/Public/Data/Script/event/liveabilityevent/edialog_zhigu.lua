--�Ի��¼� npc��ӱ��

--�ű���
x713615_g_ScriptId = 713512

--�Ի�����
x713615_g_dialog = {"#{event_liveabilityevent_0019}",
			"C�u h�i s� 2",
			"Ch� c�n c�c h� h�c ���c ph߽ng th�c M� Thu�t, c� th� b�o ch� n�n c�c lo�i thu�c c� t�nh m� ho�c c�c cao.",
			"M� Thu�t c�n ph� thu�c v�o ��ng c�p k� n�ng. ��ng c�p k� n�ng c�ng cao, thu�c ch� ra �c t�nh c�ng m�nh",
			"#{event_liveabilityevent_0020}"}
x713615_g_button = {"N�i v� th�c t� �i",
			"L�m sao � ch� thu�c m�?",
			"Sau �� ra sao?",
			"Thu�c m� � l�m g�?",
			}

--**********************************
--������ں���
--**********************************
function x713615_OnDefaultEvent( sceneId, selfId, targetId, MessageNum )	--MessageNum�ǶԻ���ţ����ڵ��ò�ͬ�Ի�
		BeginEvent(sceneId)
			AddText(sceneId, x713615_g_dialog[MessageNum])
			if MessageNum ~= 5 then
				AddNumText(sceneId,MessageNum, x713615_g_button[MessageNum],11,-1)
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--�о��¼�
--**********************************
function x713615_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713615_g_ScriptId,"T�m hi�u ch� �c",11,-1)
end

--**********************************
--����������
--**********************************
function x713615_CheckAccept( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x713615_OnAccept( sceneId, selfId, AbilityId )
end
