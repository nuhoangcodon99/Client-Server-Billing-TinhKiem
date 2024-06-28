--����
--��·�ű�
x500067_g_scriptId = 500067

-- ��·���� type: 1 Ϊ�����˵�, 2 Ϊֱ����·
x500067_g_Signpost = {
	{ type=2, name="B�i ki�n ch߷ng m�n", x=142, y=55, tip="Ch߷ng m�n", desc="Tinh T�c l�o ti�n, ��c ph�i thi�n �a, uy ch�n ho�n v�, c� kim v� t�. L�o ti�n � Th�n M�c ��nh, t�i b�i ki�n, ng߽i ph�i c�n th�n, kh�ng kh�o b� �ng ta b�o ch� th�nh thu�c. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Gia nh�p ph�i Tinh T�c", x=95, y=75, tip="H�n Th� Trung", desc="V� l�m thi�n h�, �u b�t ngu�n t� ph�i Tinh T�c ta, ch� c� v� c�ng ph�i Tinh T�c, m�i th�c s� l� ch�nh th�ng, nh�ng ph�i kh�c �u l� ngo�i ��o t� ma. t�i V�n Ti�n Cung t�m H�n Th� Chung gia nh�p ph�i Tinh T�c ta! �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c k� n�ng chi�n �u ph�i Tinh T�c", x=87, y=70, tip="H�c k� n�ng chi�n �u ph�i Tinh T�c", desc="T�m Th� To�n � V�n Ti�n Cung h�c v� c�ng ph�i Tinh T�c. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c k� n�ng cu�c s�ng ph�i Tinh T�c", x=101, y=87, tip="H�c k� n�ng cu�c s�ng ph�i Tinh T�c", desc="Gia nh�p Tinh T�c l�m g� kh�ng bi�t ch� �c, mau t�i Doanh Ch�u �i�n t�m Tr�ch Tinh T�. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c k� n�ng h� tr� ph�i Tinh T�c", x=101, y=89, tip="H�c k� n�ng h� tr� ph�i Tinh T�c", desc="S� H�ng T� � Doanh Ch�u �i�n c� th� d�y ng߽i thu�t d�n tr�ng. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c k� n�ng c��i th� ph�i Tinh T�c", x=94, y=46, tip="H�c k� n�ng c��i th�", desc="Ph� Qu�n T� � Nh�t nguy�t cung c� th� d�y ng߽i c��i b� T�y T�ng. c� y�n t�m, tr�n ng߶i b� T�y T�ng kh�ng c� �c. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Mua v�t c��i", x=97, y=46, tip="Mua v�t c��i", desc="N�u mu�n d�ng 1 con b� T�y T�ng l�m v�t c��i, h�y t�i Nh�t nguy�t cung t�m Thi�n �ng T�, tr� �t ti�n, �ng ta kh�ng ch�u ��u, c�n th�n c�n b� giao 1 con tr�u d�n �c. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Nhi�m v� ph�i Tinh T�c", x=96, y=92, tip="Nhi�m v� ph�i Tinh T�c", desc="Ng߶i giao nhi�m v� � gi�a Ph߽ng Tr��ng �i�n v� Doanh Ch�u �i�n, �ng �ang c�n ng߶i gi�p �� . �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Tinh T�c chuy�n v�n s�", x=99, y=150, tip="Tinh T�c chuy�n v�n s�", desc="Thi�n Lang T� � M�n Kh�u g�n ph�a Nam nh�t c� th� d�n ng߽i t�i L�c D߽ng, ��i L�, T� Ch�u ho�c c�c m�n ph�i kh�c. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Ng� Th�n еng", x=128, y=78, tip="Ng� Th�n еng", desc="S� mu�i H�ng Ng�c � Li�n Lai �i�n, s� mu�i H�ng Ng�c � Li�n Lai �i�n... s� mu�i H�ng Ng�c... ha ha, ha ha... �, ��ng r�i, t�i Ng� Th�n еng s� t�m ���c mu�i �y. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c khinh c�ng ph�i Tinh T�c", x=90, y=88, tip="Ng߶i d�y khinh c�ng Tinh T�c", desc="Ph߽ng tr��ng Xu�t Tr�n T� � Ti�m M�n Kh�u c� th� d�y ng߽i khinh c�ng b�n ph�i. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
}

--**********************************
--�о��¼�
--**********************************
function x500067_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500067_g_Signpost do
		AddNumText(sceneId, x500067_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500067_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500067_g_Signpost[GetNumText()]

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
