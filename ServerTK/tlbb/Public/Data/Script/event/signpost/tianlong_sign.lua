--����
--��·�ű�
x500066_g_scriptId = 500066

-- ��·���� type: 1 Ϊ�����˵�, 2 Ϊֱ����·
x500066_g_Signpost = {
	{ type=2, name="B�i ki�n ph߽ng tr��ng", x=96, y=66, tip="Ph߽ng tr��ng", desc="Ng߽i mu�n b�i ki�n ��i s� B�n Nh�n, �ng �ang � ��i H�ng B�o �i�n. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Gia nh�p Thi�n Long ph�i", x=96, y=66, tip="B�n Nh�n ", desc="Mu�n gia nh�p Thi�n Long ph�i ph�i t�m B�n Nh�n ��i s�, �ng ta � ��i H�ng B�o �i�n. �n ph�m TAB, tr�n b�n � s� hi�n th� �i�m nh�p nh�y bi�u th�.", eventId=-1 },
	{ type=2, name="H�c k� n�ng chi�n �u c�a Thi�n Long ph�i", x=97, y=67, tip="H�c k� n�ng chi�n �u c�a Thi�n Long ph�i", desc="B�n quan c�a M�n kh�u ��i H�ng B�o �i�n s� d�y ng߽i v� c�ng b�n ph�i. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c k� n�ng sinh s�ng c�a Thi�n Long ph�i", x=35, y=86, tip="H�c k� n�ng sinh s�ng c�a Thi�n Long ph�i", desc="B�n T߾ng ��i s� � Kh�ng S�n ��n Ph�ng c� th� d�y ng߽i k� n�ng tr� s�u. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c k� n�ng b� tr� c�a Thi�n Long ph�i", x=64, y=151, tip="H�c k� n�ng b� tr� c�a Thi�n Long ph�i", desc="B�n Tham � Thi�n T�m ��i c� th� d�y ng߽i k� n�ng b�ch quy�t kinh m�ch. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c k� n�ng c��i th� c�a Thi�n Long ph�i", x=148, y=92, tip="H�c k� n�ng c��i th�", desc="Mu�n h�c c��i ng�a th� t�m D߽ng Thanh Ng�u, �ng � Thi�n M� C�u. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Mua v�t c��i", x=146, y=95, tip="Mua v�t c��i", desc="Mu�n mua 1 con ng�a �p ph�i kh�ng? H�y t�i Thi�n M� C�u t�m D߽ng B�ch Ng�u. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Nhi�m v� c�a Thi�n Long ph�i", x=95, y=88, tip="Nhi�m v� c�a Thi�n Long ph�i", desc="��i s� B�n Ph�m �ang c�n � t� b�n bang gi�p ��, �ng ph�a Nam ��i H�ng B�o �i�n. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Ng߶i truy�n tin c�a Thi�n Long ph�i", x=99, y=120, tip="Ng߶i truy�n tin c�a Thi�n Long ph�i", desc="Ph� S�n � S�n M�n Ngo�i c� th� d�n ng߽i t�i L�c D߽ng, ��i L�, T� Ch�u ho�c c�c m�n ph�i kh�c. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Ch�n th�p", x=35, y=86, tip="Ch�n th�p", desc="Ю t� b�n bang m�i ���c ph�p v�o c�c �a, t�m B�n T߾ng ��i s� � Kh�ng S�n ��n Ph�ng. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c khinh c�ng c�a Thi�n Long ph�i", x=35, y=86, tip="Ng߶i d�y khinh c�ng Thi�n Long", desc="Th�nh Nh� Lan � Di�u H߽ng Bi�t Vi�n c� th� d�y ng߽i khinh c�ng b�n ph�i. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
}

--**********************************
--�о��¼�
--**********************************
function x500066_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500066_g_Signpost do
		AddNumText(sceneId, x500066_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500066_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500066_g_Signpost[GetNumText()]

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
