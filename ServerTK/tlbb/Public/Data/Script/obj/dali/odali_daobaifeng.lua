--����NPC
--���׷�
--��ͨ

--**********************************
--�¼��������
--**********************************
function x002006_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Ch�,D� Nhi �i l�u th� v�n ch�a v�, ta v�a lo v�a gi�n. Giang h� hi�m �c, m�t th�ng nh�i ranh nh� n� ��u c� th� �ng ph�")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
