--����NPC
--����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x023006_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"G�n ��y tr�n Ho�ng Long kh�ng ���c y�n t�nh, nghe n�i qu�i v�t �u b� M�ng C�i h�y di�t, ch�ng ta s�p g�p tai h�a m�t �u �n n�i..")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
