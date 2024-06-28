-- ����
--pk����Ա
--��·�ű�
x500011_g_scriptId = 500011

-- ��·���� type: 1 Ϊ�����˵�, 2 Ϊֱ����·
x500011_g_Signpost = {
	{ type=2, name="V� tr߶ng L�c D߽ng", x=89, y=173, tip="V� tr߶ng L�c D߽ng", desc="Mu�n h�c h�i v� ngh� h�y t�i v� tr߶ng L�c D߽ng. H�y �n ph�m ph�i � t�m �i th�, l�a ch�n th� chi�n", eventId=-1 },
}

--**********************************
--�о��¼�
--**********************************
function x500011_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500011_g_Signpost do
		AddNumText(sceneId, x500011_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500011_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500011_g_Signpost[GetNumText()]

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