-- ����
--��ʦ����
--��·�ű�
x500049_g_scriptId = 500049

-- ��·���� type: 1 Ϊ�����˵�, 2 Ϊֱ����·
x500049_g_Signpost = {
	{ type=2, name="B�i s�", x=141, y=133, tip="Nhi�p Ch�nh ", desc="Ng߶i gi�i thi�u b�i s� � Ng� Hoa ��n, �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
}

--**********************************
--�о��¼�
--**********************************
function x500049_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500049_g_Signpost do
		AddNumText(sceneId, x500049_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500049_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500049_g_Signpost[GetNumText()]

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
