--����NPC
--�Ϲ�
--��ͨ

--�ű���
x001062_g_scriptId = 001062

--��ӵ�е��¼�ID�б�
x001062_g_eventList={200011,200014}


--**********************************
--�¼��������
--**********************************
function x001062_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Men theo con �߶ng n�y, c� �i th�ng s� t�i ���c Y�n T� �")

		for i, eventId in x001062_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
-- ѡ��һ��
--**********************************
function x001062_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x001062_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end

end
