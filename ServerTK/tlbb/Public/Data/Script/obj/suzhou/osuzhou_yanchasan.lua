--����NPC
--�ղ�ɢ
--һ��

--**********************************
--�¼��������
--**********************************
function x001033_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Cu�c thi l�n n�y, hi�n t�i kh�p c�c n�i t�p trung v� T� Ch�u, th�t s� ta ch�ng c� ch�t n�m ch�c ph�n th�ng trong tay n�o c�")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
