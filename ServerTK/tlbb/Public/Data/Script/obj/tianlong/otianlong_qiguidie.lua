--����NPC
--����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x013010_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  G�n ��y ta l�m cho B�n Nh�n ��i s� 1 t�m c� sa, kh�ng bi�t c� v�a hay kh�ng")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
