--����NPC
--��������
--��ͨ

--**********************************
--�¼��������
--**********************************
function x714006_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Y�u huy�t c�a th� th�i d߽ng ph� kinh bao g�m: trung ph�, v�n m�n, thi�n ph�, hi�p b�ch, x�ch tr�ch, kh�ng t�i, li�t khuy�t, kinh c�, th�i uy�n, ng� t�, thi�u th߽ng")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
