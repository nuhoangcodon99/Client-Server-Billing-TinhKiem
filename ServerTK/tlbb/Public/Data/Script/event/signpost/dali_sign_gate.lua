-- ����
--����
--��·�ű�
x500045_g_scriptId = 500045

-- ��·���� type: 1 Ϊ�����˵�, 2 Ϊֱ����·
x500045_g_Signpost = {
	{ type=2, name="Nam M�n", x=160, y=257, tip="Nam M�n", desc="Nam M�n n�i li�n Nh� H�i, n�u ch�a t�i c�p 25, ��ng n�n �i t�i ��", eventId=-1 },
	{ type=2, name="��ng M�n", x=288, y=152, tip="��ng M�n", desc="��ng M�n n�i li�n V� L��ng S�n, ng߶i ch�i d߾i c�p 10 c� th� t�i ��y", eventId=-1 },
	{ type=2, name="T�y M�n", x=31, y=151, tip="T�y M�n", desc="T�y M�n n�i li�n Ki�m C�c, ng߶i ch�i d߾i c�p 10 c� th� t�i ��y", eventId=-1 },
}

--**********************************
--�о��¼�
--**********************************
function x500045_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500045_g_Signpost do
		AddNumText(sceneId, x500045_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500045_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500045_g_Signpost[GetNumText()]

	if signpost.type == 1 then
		BeginEvent(sceneId)
			AddText(sceneId, signpost.name .. ": ")
			CallScriptFunction( signpost.eventId, "OnEnumerate", sceneId, selfId, targetId )
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
	elseif signpost.type == 2 then
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, signpost.x, signpost.y, signpost.tip )

		BeginEvent(sceneId)
			AddText(sceneId, signpost.desc)
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
	end

end
