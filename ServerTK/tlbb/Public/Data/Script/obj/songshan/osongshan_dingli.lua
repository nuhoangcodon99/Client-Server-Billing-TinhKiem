--����NPC
--����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x003006_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Nghe n�i Th�i L�o Gia c�n s�ng, sao l�i th� nh�? N�m Th�i L�o Gia quy ti�n, ch�nh m�t ta nh�n th�y. Tr�n �i l� n�o l�i x�y ra chuy�n nh� v�y. Th�t kh�ng th� tin n�i...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
