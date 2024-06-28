-- ����
--��̨
--��·�ű�
x500048_g_scriptId = 500048

-- ��·���� type: 1 Ϊ�����˵�, 2 Ϊֱ����·
x500048_g_Signpost = {
	{ type=2, name="V� qu�n qu�n ch�", x=96, y=221, tip="Ph�ng Tri�u D߽ng ", desc="L�i ��i l� n�i h�c h�i v� ngh�, c�c h� c� th� t�m ch� qu�n Ph�ng Tri�u D߽ng mu�n t�m hi�u g�p �ng tr�n Th��ng V� ��i. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
}

--**********************************
--�о��¼�
--**********************************
function x500048_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500048_g_Signpost do
		AddNumText(sceneId, x500048_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500048_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500048_g_Signpost[GetNumText()]

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
