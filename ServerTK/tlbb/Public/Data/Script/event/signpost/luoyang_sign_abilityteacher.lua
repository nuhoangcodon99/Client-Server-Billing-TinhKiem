-- ����
--����ܵ�ʦ
--��·�ű�
x500005_g_scriptId = 500005

-- ��·���� type: 1 Ϊ�����˵�, 2 Ϊֱ����·
x500005_g_Signpost = {
	{ type=2, name="��i s� tr�ng tr�t", x=219, y=262, tip="L�u Di�c N�ng ", desc="�i ra kh�i L�c D߽ng, Nam M�n, qua c�u ph�a tr߾c, �i v� h߾ng ��ng, t�m ��i s� tr�ng tr�t L�u Di�c N�ng � th�a ru�ng [219,262]. �n ph�mTAB � xem tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="��i s� khai th�c m�", x=212, y=151, tip="Vi аng Chu� ", desc="��i s� khai kho�ng Vi аng Ch�y (212, 151) trong ti�m v� kh� � ��ng Th�. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="��i s� h�i thu�c", x=120, y=169, tip="Nghi�m B�ch Th�o ", desc="��i s� h�i thu�c Nghi�m B�ch Th�o (120, 169) � �߶ng l�n ph�a ��ng T�y Th�, �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Ng� phu", x=207, y=184, tip="Kh߽ng Ng� ", desc="Ng� phu Kh߽ng Ng� (207, 184) � Nam M�n ��ng Th�, �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="��i s� m� ngh�", x=60, y=146, tip="Long Tam Thi�u ", desc="��i s� c�ng ngh� Long Tam Thi�u � (60, 146) � �߶ng l�n ph�a T�y. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="��i s� may v�", x=193, y=172, tip="Ph� M�n Chi ", desc="��i s� may v� Ph� M�n Chi (193, 172) � ��ng Th�. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="��i s� luy�n kim", x=213, y=160, tip="V߽ng ��c Ph�c ", desc="��c ki�m ��i s� V߽ng ��c Ph�c (213, 160) � trong ti�m binh kh� � ��ng Th�. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="��i s� n�u �n", x=134, y=152, tip="L� ��i Chu� ", desc="��i s� n�u n߾ng L� ��i Ch�y (134, 152) � trong t�u �i�m ch� giao nhau gi�a T�y Th� v� �߶ng l�n ph�a T�y. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="��i s� ch� du�c", x=138, y=164, tip="Tr߽ng Minh C�nh ", desc="��i s� ch� d��c Tr߽ng Minh C�nh (138, 164) � ti�m thu�c gi�a T�y Th� v� �߶ng l�n ph�a Nam. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="��i s� d��ng sinh ph�p", x=132, y=156, tip="T߶ng Vy ", desc="��i s� d��ng sinh ph�p T߶ng Vy (132, 156) � ti�m thu�c ch� giao nhau gi�a T�y Th� v� �߶ng l�n ph�a T�y. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="��i s� d��c l� h�c", x=136, y=169, tip="B�ch D�nh Minh ", desc="��i s� d��c l� h�c B�ch D�nh Minh (136, 169) � ti�m thu�c gi�a T�y Th� v� �߶ng l�n ph�a Nam. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="��ُ�䷽", x=141, y=133, tip="С��", desc="#G��ُ�䷽��#W��ĳ�N���ɿ�ԭ���������ьW����#G�ӹ�������䷽���z�^�䷽����/��/�߼�ʳ����䷽����������䷽#W�Gʧ�����Ե�#G�K��#W��#GС�ߣ�96��127��#Wُ�I��#Gُ�䷽#W������ۃr��#G�yһ��1�y#W��", eventId=-1 },
	{ type=2, name="���ϼӹ���B", x=153, y=171, tip="�T�T�F", desc="#{CLJG_20071204}", eventId=-1 },	
}

--**********************************
--�о��¼�
--**********************************
function x500005_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500005_g_Signpost do
		AddNumText(sceneId, x500005_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500005_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500005_g_Signpost[GetNumText()]

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
