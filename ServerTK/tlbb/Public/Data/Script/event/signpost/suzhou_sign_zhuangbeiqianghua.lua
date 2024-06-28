-- ����
--ѭ������
--��·�ű�
x500028_g_scriptId = 500028

-- ��·���� type: 1 Ϊ�����˵�, 2 Ϊֱ����·
x500028_g_Signpost = {
	{ type=2, name="��i t�ng s�", x=266, y=139, tip="�u D� T�", desc="�u D� T� (266, 139) c� th� gi�p ng߽i c߶ng h�a trang b� v� gi�m �nh t� ch�t trang b�. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
}

--**********************************
--�о��¼�
--**********************************
function x500028_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500028_g_Signpost do
		AddNumText(sceneId, x500028_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500028_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500028_g_Signpost[GetNumText()]

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
