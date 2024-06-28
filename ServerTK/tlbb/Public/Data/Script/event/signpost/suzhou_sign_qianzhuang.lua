-- ����
--ѭ������
--��·�ű�
x500027_g_scriptId = 500027

-- ��·���� type: 1 Ϊ�����˵�, 2 Ϊֱ����·
x500027_g_Signpost = {
	{ type=2, name="V�n Th� Ti�n Trang l�o b�n", x=93, y=177, tip="V߽ng phu nh�n ", desc="B� ch� ti�n trang V߽ng Phu nh�n (93, 177) � ti�n trang h߾ng nam �߶ng l�n ph�a T�y, n� b�c c�a b� c� th� gi�p ng߽i c�t gi� v�t ph�m v� ng�n l��ng. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
}

--**********************************
--�о��¼�
--**********************************
function x500027_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500027_g_Signpost do
		AddNumText(sceneId, x500027_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500027_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500027_g_Signpost[GetNumText()]

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
