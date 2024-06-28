-- ����
--Ǯׯ
--��·�ű�
x500044_g_scriptId = 500044

-- ��·���� type: 1 Ϊ�����˵�, 2 Ϊֱ����·
x500044_g_Signpost = {
	{ type=2, name="Ti�n trang", x=211, y=172, tip="V߽ng D�nh ", desc="�ng ch� V߽ng c�a Ti�n Trang � h߾ng Nam �߶ng l�n ph�a ��ng c�ch Ng� Hoa ��n kh�ng xa, �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y. N� b�c � Ti�n Trang c� th� gi�p c�c h� c�t gi� v�t ph�m v� ng�n l��ng", eventId=-1 },
	{ type=2, name="Ti�m c�m �", x=81, y=162, tip="H�n V�nh An ", desc="�ng ch� H�n V�nh An c�a ti�m c�m � � h߾ng Nam �߶ng l�n ph�a T�y. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
}

--**********************************
--�о��¼�
--**********************************
function x500044_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500044_g_Signpost do
		AddNumText(sceneId, x500044_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500044_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500044_g_Signpost[GetNumText()]

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
