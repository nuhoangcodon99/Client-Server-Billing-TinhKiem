-- ����
--Ǯׯ
--��·�ű�
x500003_g_scriptId = 500003

-- ��·���� type: 1 Ϊ�����˵�, 2 Ϊֱ����·
x500003_g_Signpost = {
	{ type=2, name="Ti�m c�m �", x=95, y=152, tip="H� Sinh T�i ", desc="�ng ch� ti�m c�m � H� Sinh T�i (95, 152) trong ti�m c�m � � �߶ng l�n ph�a T�y. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Ti�n trang", x=80, y=152, tip="D߽ng Hy B�nh ", desc="V�n kim ti�n trang l�o b�n D߽ng Hy B�nh (80, 152) � Ti�n Trang trong �߶ng l�n ph�a T�y, n� b�c c�a �ng c� th� gi�p c�c h� c�t gi� v�t ph�m v� ng�n l��ng. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Kim Nguy�n B�o Th߽ng", x=206, y=172, tip="Kim L�c Gia ", desc="Kim Nguy�n B�o Th߽ng Nh�n Kim L�c Gia (206, 172) � ��ng Th�. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
}

--**********************************
--�о��¼�
--**********************************
function x500003_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500003_g_Signpost do
		AddNumText(sceneId, x500003_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500003_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500003_g_Signpost[GetNumText()]

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
