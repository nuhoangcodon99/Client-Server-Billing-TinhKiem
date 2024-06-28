-- ����
--ѭ������
--��·�ű�
x500025_g_scriptId = 500025

-- ��·���� type: 1 Ϊ�����˵�, 2 Ϊֱ����·
x500025_g_Signpost = {
	{ type=2, name="Ph߶ng ch� Tr�ng �i�u ph߶ng", x=87, y=142, tip="V�n Phi Phi ", desc="Ph߶ng ch� tr�ng �i�u V�n Phi Phi (87, 142) � Tr�ng �i�u ph߶ng h߾ng B�c �߶ng l�n ph�a T�y. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
}

--**********************************
--�о��¼�
--**********************************
function x500025_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500025_g_Signpost do
		AddNumText(sceneId, x500025_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500025_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500025_g_Signpost[GetNumText()]

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
