--����NPC
--��������
--��ͨ

--**********************************
--�¼��������
--**********************************
function x714008_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Y�u huy�t c�a t�c d߽ng minh v� kinh bao g�m: �n b�ch, ��i ��, th�i b�ch, c�ng t�n, th߽ng kh�u, tam �m giao, l�u c�c, huy�t h�i, ki m�n, x�ng m�n, ��i ho�nh, thi�n kh�, ��i bao")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
