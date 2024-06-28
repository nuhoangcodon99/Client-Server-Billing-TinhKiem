-- ����
--�����
--��·�ű�
x500023_g_scriptId = 500023

-- ��·���� type: 1 Ϊ�����˵�, 2 Ϊֱ����·
x500023_g_Signpost = {
		{ type=2, name="��i s� tr�ng tr�t", x=64, y=200, tip="L�m Ho� T�nh ", desc="Ra kh�i T� Ch�u ��ng M�n �i v� h߾ng Nam, qua 1 c�y c�u nh� s� nh�n th�y ��i s� tr�ng tr�t L�m H�a T�nh (64, 200) . �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
		{ type=2, name="��i s� khai th�c m�", x=259, y=132, tip="Tr߽ng Ti�u H� ", desc="��i s� khai kho�ng Tr߽ng Ti�u H� (259, 132) trong ti�m v� kh� � Th�nh ��ng. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
		{ type=2, name="��i s� h�i thu�c", x=106, y=109, tip="V߽ng Th�m Chi ", desc="��i s� h�i th�o d��c V߽ng Th�m Chi (106, 109) � T�y Th�. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
		{ type=2, name="��i s� c�u c�", x=238, y=77, tip="T߷ng B�nh ", desc="��i s� c�u c� T߷ng B�nh (238, 77) � b�n B�c ��ng th�nh. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
		{ type=2, name="��i s� m� ngh�", x=109, y=130, tip="T�ng Tam T�nh ", desc="��i s� c�ng ngh� T�ng Tam T�nh (109, 130) � T�y Th�. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
		{ type=2, name="��i s� may v�", x=211, y=90, tip="D� Ho� Long ", desc="��i s� may m�c D� H�a Long (211, 90) � g�n B�c Th�. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
		{ type=2, name="��i s� luy�n kim", x=251, y=151, tip="Ti�t Ch�c ", desc="��c ki�m ��i s� Ti�t Ch�c (251, 151) � ti�m v� kh� th�nh ��ng. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
		{ type=2, name="��i s� n�u �n", x=189, y=173, tip="Tr� Ho� ", desc="��i s� n�u n߾ng Tr� Ho� (189, 173) � c�a ti�m thu�c ph�a B�c Tr�ng Vi�n Tr߶ng. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
		{ type=2, name="��ُ�䷽", x=96, y=127, tip="С��", desc="#G��ُ�䷽��#W��ĳ�N���ɿ�ԭ���������ьW����#G�ӹ�������䷽���z�^�䷽����/��/�߼�ʳ����䷽����������䷽#W�Gʧ�����Ե�#G�K��#W��#GС�ߣ�96��127��#Wُ�I��#Gُ�䷽#W������ۃr��#G�yһ��1�y#W��", eventId=-1 },
		{ type=2, name="���ϼӹ���B", x=-1, y=-1, tip="", desc="#{CLJG_20071204}", eventId=-1 },	
}

--**********************************
--�о��¼�
--**********************************
function x500023_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500023_g_Signpost do
		AddNumText(sceneId, x500023_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500023_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500023_g_Signpost[GetNumText()]

	if signpost.type == 1 then
		BeginEvent(sceneId)
			AddText(sceneId, signpost.name .. "��")
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
