--�Ի��¼� npc��ӱ��

--�ű���
x713613_g_ScriptId = 713512

--�Ի�����
x713613_g_dialog = {"#{event_liveabilityevent_0015}",
			"C�u n�i th� hai",
			"Ch� c�n huynh h�c k� n�ng n�u r��u l� c� th� n�u r��u ngay. T�t nhi�n, ��ng c�p c�a huynh c�ng cao, lo�i r��u n�u l�n c�ng th�m",
			"Ch� c�n h�c ���c k� n�ng n�u r��u, c� �� nguy�n li�u, l�a ch�n ph߽ng th�c n�u r��u l� c� th� th�c thi r�i!",
			"#{event_liveabilityevent_0016}"}
x713613_g_button = {"���c r�i, ���c r�i, n�i g� th�c t� �i",
			"T�i h� l�m th� n�o � n�u r��u?",
			"Sau �� th� sao?",
			"K�t qu� th� n�o?",
			}

--**********************************
--������ں���
--**********************************
function x713613_OnDefaultEvent( sceneId, selfId, targetId, MessageNum )	--MessageNum�ǶԻ���ţ����ڵ��ò�ͬ�Ի�
		BeginEvent(sceneId)
			AddText(sceneId, x713613_g_dialog[MessageNum])
			if MessageNum ~= 5 then
				AddNumText(sceneId,MessageNum, x713613_g_button[MessageNum],11,-1)
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--�о��¼�
--**********************************
function x713613_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713613_g_ScriptId,"T�m hi�u n�u r��u",11,-1)
end

--**********************************
--����������
--**********************************
function x713613_CheckAccept( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x713613_OnAccept( sceneId, selfId, AbilityId )
end
