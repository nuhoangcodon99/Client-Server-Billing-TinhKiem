-- ����
--��������
--��·�ű�
x500007_g_scriptId = 500007

-- ��·���� type: 1 Ϊ�����˵�, 2 Ϊֱ����·
x500007_g_Signpost = {
	{ type=2, name="Nguy�t l�o l�o nh�n", x=46, y=62, tip="Nguy�t L�o ", desc="Nguy�t l�o l�o nh�n � g�c T�y B�c trong th�nh L�c D߽ng. mu�n ng߶i m�i t� ch�c h�n l�, c� t�m �ng. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
}

--**********************************
--�о��¼�
--**********************************
function x500007_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500007_g_Signpost do
		AddNumText(sceneId, x500007_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500007_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500007_g_Signpost[GetNumText()]

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
