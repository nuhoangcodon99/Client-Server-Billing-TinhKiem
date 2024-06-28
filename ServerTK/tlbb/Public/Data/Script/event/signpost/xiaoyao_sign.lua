--��ң
--��·�ű�
x500069_g_scriptId = 500069

-- ��·���� type: 1 Ϊ�����˵�, 2 Ϊֱ����·
x500069_g_Signpost = {
	{ type=2, name="B�i ki�n ch߷ng m�n", x=125, y=144, tip="Ch߷ng m�n", desc="��i L� ch߷ng m�n nh�n T� Tinh H� � Th�nh H߽ng. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Gia nh�p ph�i Ti�u Dao", x=125, y=144, tip="T� Tinh H� ", desc="T�i Th�nh H߽ng t�m ��i L� ch߷ng m�n T� Tinh H� s� ���c gia nh�p b�n ph�i. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c ph�i Ti�u Dao k� n�ng chi�n �u", x=125, y=142, tip="H�c ph�i Ti�u Dao k� n�ng chi�n �u", desc="Khang Qu�ng L�ng c� th� giao cho c�c h� v� c�ng c�a b�n ph�i, �ng � Th�nh H߽ng. �n ph�m TAB, tr�n b�n � s� hi�n th� �i�m nh�p nh�y bi�u th�.", eventId=-1 },
	{ type=2, name="H�c ph�i Ti�u Dao k� n�ng cu�c s�ng ph�i", x=62, y=68, tip="H�c ph�i Ti�u Dao k� n�ng cu�c s�ng ph�i", desc="Ph�ng A Tam c�a ��i Quan c� th� giao cho ng߽i K� M�n еn Gi�p thu�t. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c k� n�ng h� tr� ph�i Ti�u Dao", x=53, y=150, tip="H�c k� n�ng h� tr� ph�i Ti�u Dao", desc="H�c k� n�ng h� tr� ph�i Ti�u Dao c�n ph�i t�i T� �n t�m Th�ch Thanh L�. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c k� n�ng c��i th� ph�i Ti�u Dao", x=53, y=56, tip="H�c k� n�ng c��i th�", desc="Ng� L�nh Qu�n s� d�y ng߽i k� n�ng c��i th�, �ng � th� ph�ng ��. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Mua v�t c��i", x=65, y=55, tip="Mua v�t c��i", desc="Vi�n qu�n l� h߽u th�n C�u еc b�n v�t c��i, �ng � c�nh th� ph�ng. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Nhi�m v� ph�i Ti�u Dao", x=120, y=153, tip="Nhi�m v� ph�i Ti�u Dao", desc="Ng߶i giao nhi�m v� ph�i Ti�u Dao T�n Qu�n � Th�nh H߽ng. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Ti�u Dao chuy�n v�n s�", x=48, y=124, tip="Ti�u Dao chuy�n v�n s�", desc="L�Kh�i Lu� � ph�a ��ng Ph�ng Ho�ng C�m c� th� d�n ng߽i t�i L�c D߽ng, ��i L�, T� Ch�u ho�c c�c m�n ph�i kh�c. c�n th�n �nh m�t �ng �y. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="C�c �a", x=62, y=68, tip="C�c �a", desc="Ph�ng A Tam c�a ��i Quan c� th� d�n � t� b�n bang t�ic�c �a Ti�u Dao. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c khinh c�ng ph�i Ti�u Dao", x=54, y=149, tip="Ng߶i d�y khinh c�ng Ti�u Dao", desc="H�c khinh c�ng ph�i Ti�u Dao ph�i t�i T� �n � �� t�m Th�ch Cam L�m. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
}

--**********************************
--�о��¼�
--**********************************
function x500069_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500069_g_Signpost do
		AddNumText(sceneId, x500069_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500069_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500069_g_Signpost[GetNumText()]

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
