--��ȪNPC
--����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x031010_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Tr� c�a th�n Long T�nh, k�t h�p v�i n߾c su�i c�a H� B�o Th�n, ch�nh l� tr� Long T�nh n�i danh thi�n h�.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
