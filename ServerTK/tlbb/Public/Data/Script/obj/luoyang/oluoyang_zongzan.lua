--����NPC
--����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x000026_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  ��i T�ng �� gi�t qu�n qu�n trong l�n ��i h�i t�c c�u tr߾c, l�n n�y n�n �n l��t Th� Ph�n ch�ng ta gi�nh gi�i r�i")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
