--����NPC
--�ڿ���
--��ͨ

--**********************************
--�¼��������
--**********************************
function x000042_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Kh�ng bi�t ��i h�i t�c c�u n�m nay b�n n�o s� th�ng, th�t h�i h�p!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
