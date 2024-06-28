-- ����
--��ʯ�ϳ�
--��·�ű�
x500012_g_scriptId = 500012

-- ��·���� type: 1 Ϊ�����˵�, 2 Ϊֱ����·
x500012_g_Signpost = {
	{ type=2, name="B�o Th�ch H�p Th�nh", x=177, y=184, tip="B�nh Ho�i Ng�c ", desc="Th� m� ngh� h�p th�nh B�o Th�ch B�nh Ho�i Ng�c (177, 184) � ph�c s�c �i�m gi�a �߶ng l�n ph�a Nam v� ��ng Th�. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
}

--**********************************
--�о��¼�
--**********************************
function x500012_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500012_g_Signpost do
		AddNumText(sceneId, x500012_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500012_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500012_g_Signpost[GetNumText()]

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
