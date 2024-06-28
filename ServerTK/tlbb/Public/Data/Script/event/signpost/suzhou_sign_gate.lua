-- ����
--����
--��·�ű�
x500022_g_scriptId = 500022

-- ��·���� type: 1 Ϊ�����˵�, 2 Ϊֱ����·
x500022_g_Signpost = {
	{ type=2, name="Nam M�n", x=182, y=238, tip="Nam M�n", desc="Nam M�n n�i li�n T�y H�", eventId=-1 },
	{ type=2, name="T�y M�n", x=78, y=163, tip="T�y M�n", desc="��ng M�n n�i li�n K�nh H�", eventId=-1 },
	{ type=2, name="B�c M�n", x=183, y=67, tip="B�c M�n", desc="B�c M�n n�i li�n Th�i H�", eventId=-1 },
}

--**********************************
--�о��¼�
--**********************************
function x500022_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500022_g_Signpost do
		AddNumText(sceneId, x500022_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500022_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500022_g_Signpost[GetNumText()]

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
