--����NPC
--��ԭ��Ϊ
--��ͨ

--�ű���
x000029_g_scriptId = 000029

--**********************************
--�¼��������
--**********************************
function x000029_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  R�t vui ���c g�p c�c h�, ��i T�ng qu� l� c� m�t �t n߾c xinh �p. Ta r�t th�ch n�i n�y, hy v�ng s� c�n c� c� h�i quay tr� l�i")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
