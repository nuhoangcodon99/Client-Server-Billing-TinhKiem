--�Ի��¼� npc��ӱ��

--�ű���
x713616_g_ScriptId = 713512

--�Ի�����
x713616_g_dialog = {"N�u nh� c�c h� mu�n ch� th�nh n�n c�c lo�i �c d��c nguy hi�m, h�y t�m hi�u thu�t Ch� еc c�a Tinh T�c ta",
			"C�u h�i s� 2",
			"Ch� c�n c�c h� h�c ���c ph߽ng th�c Ch� еc, c� th� b�o ch� n�n c�c lo�i �c d��c mang �c t�nh c�c cao.",
			"Ch� еc c�n ph� thu�c v�o ��ng c�p k� n�ng. ��ng c�p k� n�ng c�ng cao, �c d��c ch� ra �c t�nh c�ng m�nh",
			"Kh�ng ph�i ch� �c � �i h�i ng߶i, Tinh T�c ta c�n s� d�ng �c d��c � luy�n c�ng n�a. T�y t�ng lo�i �c d��c n�o s� c� c�ng d�ng ri�ng c�a n�..."}
x713616_g_button = {"N�i v� th�c t� �i",
			"L�m sao � ch� �c?",
			"Sau �� ra sao?",
			"Ch� �c � �i h�i ng߶i?",
			}

--**********************************
--������ں���
--**********************************
function x713616_OnDefaultEvent( sceneId, selfId, targetId, MessageNum )	--MessageNum�ǶԻ���ţ����ڵ��ò�ͬ�Ի�
		BeginEvent(sceneId)
			AddText(sceneId, x713616_g_dialog[MessageNum])
			if MessageNum ~= 5 then
				AddNumText(sceneId,MessageNum, x713616_g_button[MessageNum],11,-1)
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--�о��¼�
--**********************************
function x713616_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713616_g_ScriptId,"T�m hi�u ch� �c",11,-1)
end

--**********************************
--����������
--**********************************
function x713616_CheckAccept( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x713616_OnAccept( sceneId, selfId, AbilityId )
end
