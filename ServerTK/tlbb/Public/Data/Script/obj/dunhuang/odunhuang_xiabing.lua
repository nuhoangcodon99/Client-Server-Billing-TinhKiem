--����NPC
--��������
--��ͨ

--**********************************
--�¼��������
--**********************************
function x008009_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Kh�ng bi�t v� sao ho�ng � l�i cho l�p ��o qu�n ng߶i H�n, ��o qu�n ��ng H�ng ch�ng t�i v��t xa ng߶i H�n v� s�c chi�n �u m�")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

