--����NPC
--Ԫ����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x035002_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Bang ch� Ng�c ng� bang c�a b�n ta, ch�nh l� \"Nam H�i Ng�c Th�n\" Nh�c L�o Tam. L�n n�y ta ph�ng l�nh Tam ca, �i L�u C�u ��o ��n Tam t�u v� Qu�nh Ch�u. Gi� Tam t�u �� v�, ch�ng ta ch�nh �n l�i m�t ch�t s� �n Ng�c Ng� Bang t�m Tam ca.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
