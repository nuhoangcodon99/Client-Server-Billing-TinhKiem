-- ����
--������Ʒ
--��·�ű�
x500021_g_scriptId = 500021

-- ��·���� type: 1 Ϊ�����˵�, 2 Ϊֱ����·
x500021_g_Signpost = {
	{ type=2, name="Ph�c s�c �i�m", x=217, y=88, tip="T� Qu� Cao ", desc="�ng ch� ph�c s�c �i�m T� Qu� Cao (217, 88) � g�n B�c Th�. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Ti�m trang s�c", x=217, y=81, tip="T� V� Song ", desc="B� ch� ti�m trang s�c T� V� Song (217, 81) � g�n B�c Th�. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="C�a h�ng Tr�n Th�", x=87, y=142, tip="V�n Phi Phi ", desc="Ph߶ng ch� tr�ng �i�u V�n Phi Phi (87, 142) � Tr�ng �i�u ph߶ng h߾ng B�c �߶ng l�n ph�a T�y. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Ti�m thu�c", x=99, y=155, tip="H� Ph�n ", desc="�ng ch� ti�m thu�c H� Ph�n (99, 155) � Nam M�n T�y th�. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="T�u �i�m", x=190, y=168, tip="Bao Th� Vinh ", desc="�ng ch� t�u �i�m Bao Th� Vinh (190, 168) � c�a t�u �i�m ph�a Nam Tr�ng Nguy�n tr߶ng. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Ti�m t�p h�a", x=128, y=173, tip="T�n T� V� ", desc="�ng ch� ti�m t�p h�a T�n T� V� (128, 173) � h߾ng Nam �߶ng Ph�ng Ki�u. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="B�o Th�ch th߽ng nh�n", x=110, y=133, tip="Ph�m ��i Th�nh ", desc="Th߽ng nh�n B�o Th�ch Ph�m ��i Th�nh (110, 133) � �߶ng l�n ph�a ��ng T�y Th�. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
}

--**********************************
--�о��¼�
--**********************************
function x500021_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500021_g_Signpost do
		AddNumText(sceneId, x500021_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500021_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500021_g_Signpost[GetNumText()]

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
