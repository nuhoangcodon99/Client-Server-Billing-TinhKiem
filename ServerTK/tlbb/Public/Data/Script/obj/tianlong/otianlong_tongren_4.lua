--����NPC
--��������
--��ͨ

--**********************************
--�¼��������
--**********************************
function x714009_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Y�u huy�t c�a t�c d߽ng minh v� kinh bao g�m: th�a l�p, t� b�ch, gi�p xa, h� quan, kh� h�, l߽ng m�n, quan m�n, th�i �t, thi�n khu, ph�c th�, �m th�, t�c tam l�, n�i ��nh")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
