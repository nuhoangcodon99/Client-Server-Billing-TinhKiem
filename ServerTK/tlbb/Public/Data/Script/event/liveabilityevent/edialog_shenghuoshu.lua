--�Ի��¼� npc��ӱ��

--�ű���
x713612_g_ScriptId = 713512

--�Ի�����
x713612_g_dialog = {"#{event_liveabilityevent_0013}",
			"C�u h�i th� 2",
			"Ch� c�n c�c h� h�c ���c ph߽ng ph�p Th�nh H�a Thu�t, l� c� th� ch� ra c�c lo�i �an d��c r�i",
			"T�t nhi�n, n� c�n ph� thu�c v�o ��ng c�p k� n�ng n�a. ��ng c�p k� n�ng c�ng cao, �an d��c ch� ra s�c m�nh c�ng l�n",
			"#{event_liveabilityevent_0014}"}
x713612_g_button = {"N�i v� th�c t� ch�t �i",
			"L�m th� n�o � ch� �an d��c?",
			"Sau �� ra sao?",
			"K�t qu� th� n�o?",
			}

--**********************************
--������ں���
--**********************************
function x713612_OnDefaultEvent( sceneId, selfId, targetId, MessageNum )	--MessageNum�ǶԻ���ţ����ڵ��ò�ͬ�Ի�
		BeginEvent(sceneId)
			AddText(sceneId, x713612_g_dialog[MessageNum])
			if MessageNum ~= 5 then
				AddNumText(sceneId,MessageNum, x713612_g_button[MessageNum],11,-1)
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--�о��¼�
--**********************************
function x713612_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713612_g_ScriptId,"T�m hi�u Th�nh H�a Thu�t",11,-1)
end

--**********************************
--����������
--**********************************
function x713612_CheckAccept( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x713612_OnAccept( sceneId, selfId, AbilityId )
end
