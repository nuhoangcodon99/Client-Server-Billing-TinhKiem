--÷��NPC
--��Ҷ
--��ͨ

--**********************************
--�¼��������
--**********************************
function x033006_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Nghe nh�ng l�i c�a Kinh C�c ��i h� ph�p, m�i bi�t m�y ch�c n�m nay s�ng v� �ch. Sau n�y m�i ng߶i �i theo Kinh C�c ��i h� ph�p, d�u s�i l�a b�ng c�ng nguy�n m�t l�ng.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
