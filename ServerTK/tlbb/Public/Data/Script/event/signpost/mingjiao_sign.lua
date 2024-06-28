--����
--��·�ű�
x500062_g_scriptId = 500062

-- ��·���� type: 1 Ϊ�����˵�, 2 Ϊֱ����·
x500062_g_Signpost = {
	{ type=2, name="B�i ki�n gi�o ch�", x=98, y=52, tip="Gi�o ch�", desc="Xin kh�ng n�n l�m phi�n �ng, N�u ng߽i th�c s� mu�n g�p �ng th� t�i Minh T�n ��n. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Gia nh�p Minh Gi�o", x=108, y=56, tip="Gia nh�p Minh Gi�o", desc="N�u ng߽i mu�n gia nh�p gi�o ph�i ta. Xin t�i Minh T�n ��n �i t�m L� S� T߽ng. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c k� n�ng chi�n �u ph�i Minh Gi�o", x=109, y=59, tip="H�c k� n�ng chi�n �u ph�i Minh Gi�o", desc="H�c k� n�ng chi�n �u ph�i Minh Gi�o. Xin t�i Minh T�n ��n �i t�m B�ng V�n Xu�n. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c k� n�ng cu�c s�ng ph�i Minh Gi�o", x=87, y=61, tip="H�c k� n�ng cu�c s�ng ph�i Minh Gi�o", desc="C�u ��o nh�n � Minh T�n ��n c� th� d�y ng߽i th�nh h�a thu�t �c nh�t c�a Minh Gi�o. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c k� n�ng h� tr� ph�i Minh Gi�o", x=87, y=58, tip="H�c k� n�ng h� tr� ph�i Minh Gi�o", desc="Ph߽ng Thi�n иnh � Minh T�n ��n c� th� d�y ng߽i Th�i H�a thu�t �c nh�t c�a Minh Gi�o. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c k� n�ng c��i th� ph�i Minh Gi�o", x=66, y=118, tip="H�c k� n�ng c��i th�", desc="L� Thi�n H�u � ph�a b�c Th�y Kim K� c� th� d�y ng߽i c��i s� t�. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Mua v�t c��i", x=64, y=115, tip="Mua v�t c��i", desc="Ng߽i c� th� t�m Уng Nguy�n Gi�c � ph�a B�c Th�y Kim K�, h�i mua s� t� ch� �ng mua. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Nhi�m v� Minh Gi�o", x=98, y=105, tip="Nhi�m v� Minh Gi�o", desc="L�m Nham Ch�nh � Th�nh H�a ��i t�m ng߶i gi�p �� l�m 1 s� s� v� c�a gi�o n�i. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Ng߶i chuy�n ch� ph�i Minh Gi�o", x=102, y=167, tip="Ng߶i chuy�n ch� ph�i Minh Gi�o", desc="T�ng truy�n s� Th�t Ph�t c�a Minh Gi�o � ��i M�n Kh�u c� th� d�n ng߽i t�i L�c D߽ng, ��i L�, T� Ch�u ho�c c�c m�n ph�i kh�c. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Quang Minh �ng", x=89, y=56, tip="Quang Minh �ng", desc="Quang Minh T� s� Ph߽ng L�p � Minh T�n ��n c� th� d�n ng߽i t�i th� chi�n Quang Minh �ng. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c khinh c�ng ph�i Minh Gi�o", x=133, y=137, tip="Ng߶i truy�n d�y khinh c�ng ph�i Minh Gi�o", desc="Mu�n h�c khinh c�ng ph�i t�m Ph߽ng B�ch Hoa ph�a B�c C�u M�c K�. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
}

--**********************************
--�о��¼�
--**********************************
function x500062_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500062_g_Signpost do
		AddNumText(sceneId, x500062_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500062_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500062_g_Signpost[GetNumText()]

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
