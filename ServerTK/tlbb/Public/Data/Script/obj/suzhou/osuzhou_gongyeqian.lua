--����NPC
--��ұǬ
--һ��

--**********************************
--�¼��������
--**********************************
function x001017_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  C�ng t� gia tr߾c nay n�i s�p kh�ng bi�n s�c, l�n n�y kh�c h�n, nh�t �nh g�p ph�i chuy�n g� c�c k� quan tr�ng")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
