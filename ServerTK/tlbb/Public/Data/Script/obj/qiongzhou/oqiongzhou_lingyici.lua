--����NPC
--�����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x035003_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"L�o Tam l�c n�o c�ng mu�n ta �n Qu�nh Ch�u, nh�ng b�ch t�ch c�a L�u C�u �ang ch�u �n d�ch ho�nh h�nh, ta th�c s� kh�ng th� b� m�c m� �i. #r#rL�n n�y ta �n Qu�nh Ch�u, ch� y�u v� nghe T� Kh�m n�i Nam H�i c� m�t v� th�n y Nh�c Tr�ng Th�, d�ng v� gi�ng c�y l� ch�a ���c �n d�ch. ��i ta n�m v�ng ���c k� thu�t n�y c�n ph�i quay v� L�u C�u ch�a b�nh cho b� t�nh.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
