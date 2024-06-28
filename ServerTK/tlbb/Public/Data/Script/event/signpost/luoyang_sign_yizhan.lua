-- ����
--��վ
--��·�ű�
x500002_g_scriptId = 500002

-- ��·���� type: 1 Ϊ�����˵�, 2 Ϊֱ����·
x500002_g_Signpost = {
	{ type=2, name="D�ch tr�m", x=139, y=182, tip="Ng� ��c X߽ng ", desc="�ng ch� D�ch tr�m Ng� ��c X߽ng (139, 182) � D�ch tr�m gi�a �߶ng l�n ph�a Nam v� T�y Th�. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="C�u Ch�u th߽ng h�i v�n chuy�n", x=230, y=129, tip="U�ng H�n", desc="C�u Ch�u th߽ng h�i v�n U�ng H�n (230, 129) � �߶ng l�n ph�a ��ng. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
}

--**********************************
--�о��¼�
--**********************************
function x500002_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500002_g_Signpost do
		AddNumText(sceneId, x500002_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500002_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500002_g_Signpost[GetNumText()]

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
