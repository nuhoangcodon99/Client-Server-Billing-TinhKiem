--����NPC
--����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x002002_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Th߽ng S�n b�t m�c thi�n thu h�a, #rNh� H�i v� huy�n v�n c� c�m. #r#rN߾c ��i L� qu� nhi�n l� v�ng �t t�t, V߽ng ��i t߾ng qu�n qu� l� c� nh�n quan tinh t߶ng, l�a ch�n ch�n n�y � �n c�")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
