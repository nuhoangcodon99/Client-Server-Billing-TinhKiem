--��ϪNPC
--��ķ��
--��ͨ

--**********************************
--�¼��������
--**********************************
function x027001_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"L�o phu n�m �y tr� trung c߶ng tr�ng, t�ng l�m m�t �ng Th�n Chung Qu� bi�t b�t chu�t cho Th�m ��i nh�n xem. Kh�ng bi�t l� c�c h� th�y �p th�t hay c� t�nh b�u gi�u ta, chuy�n n�y �� ���c c�c h� ghi ch�p trong M�ng kh� b�t ��m. B�y gi� nh�n l�i �ng Th�n Chung Qu� ��, th�y ch�ng kh�c g� � ch�i c�a tr� con...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
