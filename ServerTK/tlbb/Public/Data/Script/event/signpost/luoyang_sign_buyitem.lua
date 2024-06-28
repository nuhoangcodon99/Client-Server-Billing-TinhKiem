-- ����
--������Ʒ
--��·�ű�
x500001_g_scriptId = 500001

-- ��·���� type: 1 Ϊ�����˵�, 2 Ϊֱ����·
x500001_g_Signpost = {
	{ type=2, name="Ti�m binh kh�", x=210, y=154, tip="V߽ng ��c Qu� ", desc="�ng ch� ti�m binh kh� V߽ng ��c Qu� (210, 154) trong ti�m v� kh� � ��ng Th�. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="T�p h�a th߽ng nh�n", x=254, y=145, tip="Nhu� Ph�c T߶ng ", desc="Th߽ng nh�n t�p h�a Nhu� Ph�c T߶ng (254, 146) � ��ng M�n N�i. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Ph�c s�c �i�m", x=182, y=183, tip="Ch�n Duy T� ", desc="Tr߷ng qu�y ph�c s�c �i�m Ch�n Duy T� (182, 183) � �߶ng l�n ph�a Nam. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Ti�m trang s�c", x=178, y=177, tip="Gi� T�c Tr�n ", desc="Trang s�c �i�m ch߷ng qu�y Gi� T�c Tr�n (178, 177) � ph�c s�c �i�m �߶ng l�n ph�a Nam. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Ti�m thu�c", x=135, y=164, tip="B�ch Manh Sinh ", desc="��i �߽ng gia c�a T� Sinh �߶ng B�ch Manh Sinh (135, 164) � ti�m thu�c �߶ng l�n ph�a Nam. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="T�u �i�m", x=138, y=140, tip="Ph�m Th�ng ", desc="T�u �i�m ch߷ng qu�y Ph�m Th�ng (138, 140) � h߾ng Nam �߶ng l�n ph�a T�y. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Chu b�o th߽ng nh�n", x=63, y=147, tip="Lang phu nh�n ", desc="Chu b�o th߽ng nh�n Lang phu nh�n (63, 147) � �߶ng l�n ph�a T�y. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
}

--**********************************
--�о��¼�
--**********************************
function x500001_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500001_g_Signpost do
		AddNumText(sceneId, x500001_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500001_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500001_g_Signpost[GetNumText()]

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
