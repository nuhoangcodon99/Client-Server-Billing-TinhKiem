--����NPC
--������
--��ͨ

--**********************************
--�¼��������
--**********************************
function x023005_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Xin ch�o c�c h�, ng߶i anh h�ng c�a Trung Nguy�n! Ta t�n L�u Ng�o Thi�n. Ta l� h�u du� c�a ng߶i Hung N�, b�n h� l� Loan Ы, c�c h� c� th� g�i ta l� Loan Ы Ng�o Thi�n.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
