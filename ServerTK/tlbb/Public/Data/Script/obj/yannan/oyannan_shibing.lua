--����NPC
--����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x018006_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"�i theo ��i so�i Ch�ng Th� Ho�nh, c� th� l�p c�ng l�p nghi�p; �i theo gi�m qu�n M� Th�a S�nh, c� th� th�ng quan ph�t t�i. Nh�ng hai vi�c n�y c� c� c�m gi�c l� r�t m�u thu�n.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
