--����NPC
--Сʫ
--��ͨ

--**********************************
--�¼��������
--**********************************
function x015005_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Ch߷ng m�n t� t� g�n ��y lu�n nh�c t�i m�t ng߶i t�n l� H�n Th� Trung, n�i anh ta l� m�t ��i anh h�ng, c� th� s�nh v�i \"B�c Ki�u Phong\" v� \"Nam M� Dung\"")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
