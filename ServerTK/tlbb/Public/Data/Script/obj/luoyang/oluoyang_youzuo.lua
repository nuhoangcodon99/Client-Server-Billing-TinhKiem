--����NPC
--����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x000039_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  L�u l�m kh�ng g�p �n s�, th�t mong nh� bi�t bao! #r#r�n s� d�y d� ch�ng ta r�t t�n t�y, gi�p ch�ng ta l�nh ng� ���c r�t nhi�u ��o l� th� gian, h�m nay �c bi�t t�i v�n an �n s�")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
