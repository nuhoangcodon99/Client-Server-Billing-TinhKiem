--����NPC
--��������
--��ͨ

--**********************************
--�¼��������
--**********************************
function x000048_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  ��i T�ng c� r�t nhi�u �i�u ��ng cho ch�ng t�i h�c h�i, �c bi�t l� <<T�n T� binh ph�p>>, qua ��i h�i t�c c�u n�y hy v�ng hai n߾c c� th� giao l�u trao �i nhi�u v�i nhau")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
