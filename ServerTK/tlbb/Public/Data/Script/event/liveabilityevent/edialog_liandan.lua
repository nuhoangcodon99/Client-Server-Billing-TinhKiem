--�Ի��¼� npc��ӱ��

--�ű���
x713618_g_ScriptId = 713512

--�Ի�����
x713618_g_dialog = {"#{event_liveabilityevent_0021}",
			"C�u n�i th� hai",
			"Ch� c�n huynh h�c k� n�ng luy�n �an. T�t nhi�n, ��ng c�p c�a huynh c�ng cao, �an d��c luy�n th�nh c�ng m�nh",
			"Ch� c�n h�c ���c k� n�ng luy�n �an, ki�m cho �� nguy�n li�u l� c� th� th�c h�nh luy�n �an r�i",
			"#{event_liveabilityevent_0022}"}
x713618_g_button = {"���c r�i, ���c r�i, n�i g� th�c t� �i",
			"T�i h� l�m th� n�o � luy�n �an?",
			"Sau �� th� sao?",
			"K�t qu� th� n�o?",
			}

--**********************************
--������ں���
--**********************************
function x713618_OnDefaultEvent( sceneId, selfId, targetId, MessageNum )	--MessageNum�ǶԻ���ţ����ڵ��ò�ͬ�Ի�
		BeginEvent(sceneId)
			AddText(sceneId, x713618_g_dialog[MessageNum])
			if MessageNum ~= 5 then
				AddNumText(sceneId,MessageNum, x713618_g_button[MessageNum],11,-1)
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--�о��¼�
--**********************************
function x713618_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713618_g_ScriptId,"T�m hi�u luy�n �an",11,-1)
end

--**********************************
--����������
--**********************************
function x713618_CheckAccept( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x713618_OnAccept( sceneId, selfId, AbilityId )
end
