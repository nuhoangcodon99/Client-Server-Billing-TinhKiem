-- ����
--ѭ������
--��·�ű�
x500024_g_scriptId = 500024

-- ��·���� type: 1 Ϊ�����˵�, 2 Ϊֱ����·
x500024_g_Signpost = {
	{ type=2, name="T� Ch�u T�o v�n s�", x=234, y=78, tip="L�c S� Tranh", desc="T� Ch�u T�o v�n S� L�c S� Tranh (234, 78) � b�n c�nh b�n ph�a ��ng B�c th�nh T� Ch�u. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Thu� lao", x=243, y=215, tip="H� Di�n B�o ", desc="H� Di�n B�o (243, 215) � tr߾c ph� nha Th�nh ��ng Nam, t�m t�i �ng c� th� Nh�n nhi�m v� b�nh ph�n lo�n thu� tr�i. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Nhi�m v� tr� hung", x=127, y=133, tip="Ng� Gi�i ", desc="T�ng b� �u T� Ch�u V߽ng Gi�i [127,133] � �߶ng Ph�ng Ki�u, �ng �ang t�m ng߶i gi�p �ng tr�ng tr� hung �, c� kh� n�ng l�y ���c b�n � B�o Th�ch. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="V�n c�", x=174, y=147, tip="Tr߽ng D�ch Qu�c", desc="K� cu�c ho�t �ng s� Tr߽ng D�ch Qu�c [174,147] � Tr�ng Nguy�n Tr߶ng. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Hoa S�n lu�n ki�m", x=194, y=139, tip="T� Ki�m L�nh ", desc="Lu�n ki�m s� Hoa S�n T� Ki�m L�nh (194, 139) � Tr�ng Nguy�n Tr߶ng. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Li�n ho�n ph� b�n", x=62, y=162, tip="Ti�n H�ng V� ", desc="Hi�u �y T� Ch�u Ti�n H�ng V� (62, 162) � ngo�i ��ng M�n th�nh T� Ch�u, c� th� t�m �ng l�nh nhi�m v� ph� b�n li�n ho�n. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
}

--**********************************
--�о��¼�
--**********************************
function x500024_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500024_g_Signpost do
		AddNumText(sceneId, x500024_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500024_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500024_g_Signpost[GetNumText()]

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
