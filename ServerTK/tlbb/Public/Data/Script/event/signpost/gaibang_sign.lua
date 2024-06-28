--ؤ��
--��·�ű�
x500063_g_scriptId = 500063

-- ��·���� type: 1 Ϊ�����˵�, 2 Ϊֱ����·
x500063_g_Signpost = {
	{ type=2, name="Gia nh�p C�i Bang", x=91, y=98, tip="Tr�n C� Nh�n ", desc="Ng߽i mu�n gia nh�p Thi�n h� � nh�t ��i bang kh�ng? H�y t�m Tr�n C� Nh�n tr߷ng l�o � T� Ngh�a �߶ng M�n. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c C�i Bang k� n�ng chi�n �u", x=94, y=99, tip="H�c C�i Bang k� n�ng chi�n �u", desc="H� Tam K� tr߷ng l�o c� th� d�y ng߽i k� n�ng c�a b�n bang, �ng � c�ng T� Ngh�a �߶ng M�n. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c k� n�ng cu�c s�ng ph�i C�i Bang", x=114, y=91, tip="H�c k� n�ng cu�c s�ng ph�i C�i Bang", desc="Tr߷ng l�o Ng� Tr߶ng Phong � c�ng Trung Li�t �߶ng M�n c� th� d�y ng߽i k� n�ng l�m r��u. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c k� n�ng h� tr� ph�i C�i Bang", x=131, y=83, tip="H�c k� n�ng h� tr� ph�i C�i Bang", desc="H�y t�i ��o Vi�n, �� Ch� � ��, ng߽i h�i xem �ng c� ch�u d�y ng߽i Li�n Hoa L�c kh�ng. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c k� n�ng c��i th� ph�i C�i Bang", x=38, y=89, tip="H�c k� n�ng c��i th�", desc="T߾ng Quang ��nh � T� T߽ng Ph�ng c� th� d�y ng߽i c�ch c��i s�i. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Mua v�t c��i", x=54, y=86, tip="Mua v�t c��i", desc="Mua v�t c��i t�m L� Nh�t Vi�t � T�y S߽ng Ph�ng. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Nhi�m v� C�i Bang", x=92, y=70, tip="Nhi�m v� C�i Bang", desc="H�ng Th�ng � ph�a sau T� Ngh�a �߶ng, �ng �ang t�m ng߶i gi�p ��. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="C�i Bang chuy�n v�n s�", x=93, y=118, tip="C�i Bang chuy�n v�n s�", desc="Tr߽ng To�n T߶ng � ngo�i T� Ngh�a �߶ng c� th� d�n ng߽i t�i L�c D߽ng, ��i L�, T� Ch�u ho�c c�c m�n ph�i kh�c. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�m r��u", x=41, y=144, tip="H�m r��u", desc="H�m r��u c� ng߶i t�i ph�, t�i Ti�u ��o Vi�n t�m Ph�t �n d�n ng߽i t�i �u�i ch�ng �i. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c khinh c�ng ph�i C�i Bang", x=112, y=90, tip="Ng߶i d�y khinh c�ng C�i Bang", desc="Ng� Tuy�t Ki�u � ngo�i Trung Li�t �߶ng M�n c� th� d�y ng߽i khinh c�ng c�a b�n bang. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
}

--**********************************
--�о��¼�
--**********************************
function x500063_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500063_g_Signpost do
		AddNumText(sceneId, x500063_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500063_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500063_g_Signpost[GetNumText()]

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
