--����NPC
--����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x000036_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Sau khi l�o gia ho�n th�nh <<T� tr� th�ng gi�m>>, s�c kh�e �� r�t suy nh��c, l�i th߶ng xuy�n b�n r�n vi�c n߾c, th�t khi�n m�i ng߶i lo l�ng")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
