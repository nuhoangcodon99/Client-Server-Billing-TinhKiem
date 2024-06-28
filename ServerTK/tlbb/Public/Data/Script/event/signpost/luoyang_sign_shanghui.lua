-- ����
--�̻�
--��·�ű�
x500009_g_scriptId = 500009

-- ��·���� type: 1 Ϊ�����˵�, 2 Ϊֱ����·
x500009_g_Signpost = {
	{ type=2, name="Th߽ng h�i", x=230, y=156, tip="Ki�u Ph�c Th�nh ", desc="T�ng qu�n C�u Ch�u th߽ng h�i Ki�u Ph�c Th�nh (230, 156) � h߾ng Nam �߶ng l�n ph�a ��ng. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
}

--**********************************
--�о��¼�
--**********************************
function x500009_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500009_g_Signpost do
		AddNumText(sceneId, x500009_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500009_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500009_g_Signpost[GetNumText()]

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
