-- ����
--ѭ������
--��·�ű�
x500026_g_scriptId = 500026

-- ��·���� type: 1 Ϊ�����˵�, 2 Ϊֱ����·
x500026_g_Signpost = {
	{ type=2, name="L� Th�a Phong ", x=111, y=160, tip="L� Th�a Phong ", desc="�ng ch� D�ch tr�m L� Th�a Phong (111, 160) � tr�n �߶ng h߾ng ��ng Nam M�n T�y Th�. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
}

--**********************************
--�о��¼�
--**********************************
function x500026_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500026_g_Signpost do
		AddNumText(sceneId, x500026_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500026_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500026_g_Signpost[GetNumText()]

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
