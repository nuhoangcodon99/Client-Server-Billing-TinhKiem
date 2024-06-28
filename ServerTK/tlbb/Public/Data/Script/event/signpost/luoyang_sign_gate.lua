-- ����
--����
--��·�ű�
x500004_g_scriptId = 500004

-- ��·���� type: 1 Ϊ�����˵�, 2 Ϊֱ����·
x500004_g_Signpost = {
	{ type=2, name="Nam M�n", x=159, y=251, tip="Nam M�n", desc="Nam M�n n�i li�n Tung S�n, g�p � ng߶i ch�i t� c�p 15-20 th�ng ti�n", eventId=-1 },
	{ type=2, name="��ng M�n", x=260, y=134, tip="��ng M�n", desc="��ng M�n n�i li�n Nh�n Nam, g�p � ng߶i ch�i t� c�p 30~36 th�ng ti�n", eventId=-1 },
	{ type=2, name="T�y M�n", x=58, y=135, tip="T�y M�n", desc="T�y M�n n�i li�n ��n Ho�ng, g�p � ng߶i ch�i t� c�p 9~16 th�ng ti�n", eventId=-1 },
}

--**********************************
--�о��¼�
--**********************************
function x500004_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500004_g_Signpost do
		AddNumText(sceneId, x500004_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500004_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500004_g_Signpost[GetNumText()]

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
