--����NPC
--�����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x002086_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Phu nh�n ta ch�i hay l�m. T�n �c � �o�n Ch�nh Thu�n �߶ng �߶ng phong l�u, l�m nhi�u �i�u oan nghi�t, �n cu�i c�ng con trai con g�i ru�t c�a l�i lo�n lu�n v�i nhau, th�t ��ng l� b� �i v� li�m s� �n t�t �")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
