--�Ի��¼� npc��ӱ��

--�ű���
x713611_g_ScriptId = 713512

--�Ի�����
x713611_g_dialog = {"#{event_liveabilityevent_0011}",
			"C�u n�i th� hai",
			"Ch� c�n huynh h�c khai kho�ng l� c� th� khai kho�ng r�i. T�t nhi�n, ��ng c�p c�a huynh c�ng cao, ch�ng lo�i kho�ng th�ch khai th�c ���c c�ng c� gi� tr�",
			"Ch� c�n h�c ���c k� n�ng khai kho�ng, t�i m�ch kho�ng n�o �� mi�n sao �� ��ng c�p k� n�ng l� c� th� ti�n h�nh khai th�c lo�i kho�ng ��",
			"#{event_liveabilityevent_0012}"}
x713611_g_button = {"���c r�i, ���c r�i, n�i g� th�c t� �i",
			"T�i h� l�m th� n�o � khai kho�ng?",
			"Sau �� th� sao?",
			"Kho�ng th�ch sau �� � l�m g�?",
			}

--**********************************
--������ں���
--**********************************
function x713611_OnDefaultEvent( sceneId, selfId, targetId, MessageNum )	--MessageNum�ǶԻ���ţ����ڵ��ò�ͬ�Ի�
		BeginEvent(sceneId)
			AddText(sceneId, x713611_g_dialog[MessageNum])
			if MessageNum ~= 5 then
				AddNumText(sceneId,MessageNum, x713611_g_button[MessageNum],11,-1)
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--�о��¼�
--**********************************
function x713611_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713611_g_ScriptId,"T�m hi�u khai kho�ng",11,-1)
end

--**********************************
--����������
--**********************************
function x713611_CheckAccept( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x713611_OnAccept( sceneId, selfId, AbilityId )
end
