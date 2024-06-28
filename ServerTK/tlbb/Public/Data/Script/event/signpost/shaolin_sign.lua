--����
--��·�ű�
x500061_g_scriptId = 500061

-- ��·���� type: 1 Ϊ�����˵�, 2 Ϊֱ����·
x500061_g_Signpost = {
	{ type=2, name="B�i ki�n ph߽ng tr��ng", x=38, y=98, tip="Ph߽ng tr��ng", desc="Ng߽i mu�n b�i ki�n ��i s� Huy�n T�, �ng � ��t Ma Vi�n. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Gia nh�p ph�i Thi�u L�m", x=89, y=72, tip="Gi�m t� Thi�u L�m Huy�n T�nh", desc="Mu�n gia nh�p ph�i Thi�u L�m th� t�m ��i s� Huy�n T�nh, �ng � ��i H�ng b�o �i�n m�n kh�u. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c k� n�ng chi�n �u Thi�u L�m", x=91, y=71, tip="H�c k� n�ng chi�n �u m�n ph�i", desc="Thi�u L�m tuy�t k� danh x߾ng thi�n h�, ��i s� Huy�n N�n c� th� d�y ng߽i, �ng � ��i H�ng B�o �i�n M�n kh�u. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c k� n�ng cu�c s�ng Thi�u L�m", x=128, y=86, tip="H�c k� n�ng cu�c s�ng m�n ph�i", desc="��i s� Huy�n е c� th� d�y ng߽i k� n�ng khai s�ng �c nh�t ph�i Thi�u L�m, �ng � Long Th� Vi�n. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c k� n�ng h� tr� Thi�u L�m", x=135, y=90, tip="H�c k� n�ng h� tr� m�n ph�i", desc="��i s� Huy�n Minh c� th� d�y ng߽i k� n�ng Ph�t Ph�p, �ng � Long Th� Vi�n. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c k� n�ng c��i th� Thi�u L�m", x=57, y=88, tip="H�c k� n�ng c��i th�", desc="��i s� Huy�n Di�t c� th� d�y ng߽i b�n l�nh c��i h�, �ng � ph�a Nam Chung l�u. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Mua v�t c��i", x=60, y=82, tip="Mua v�t c��i", desc="Ng߽i c� th� mua h� � ch� ��i s� Huy�n Sinh, �ng � ph�a Nam Chung l�u. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Nhi�m v� ph�i Thi�u L�m", x=96, y=89, tip="Nhi�m v� m�n ph�i", desc="N�u c�c h� mu�n t�m vi�c � l�m th� t�m Hu� Ph߽ng s� huynh, anh ta � ph�a nam ��i H�ng B�o �i�n. �n ph�m TAB, tr�n b�n � s� hi�n th� �i�m nh�p nh�y bi�u th�.", eventId=-1 },
	{ type=2, name="Thi�u L�m chuy�n v�n s�", x=932, y=131, tip="Ng߶i chuy�n ch� c�a m�n ph�i", desc="S� huynh Tu� Lu�n trong S�n M�n c� th� d�n ng߽i t�i L�c D߽ng, ��i L�, T� Ch�u v� c�c m�n ph�i kh�c. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Th�p L�m", x=61, y=62, tip="Ng߶i b�o v� Th�p L�m", desc="Mu�n th� chi�n Th�p L�m th� t�i Chung L�u t�m ��i s� Huy�n Tr�ng. �n ph�m TAB, tr�n b�n � c� K� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c khinh c�ng Thi�u L�m", x=38, y=102, tip="Ng߶i d�y khinh c�ng Thi�u L�m", desc="H�c khinh c�ng t�i ��t Ma Vi�n t�m Th�i V�n mu�i mu�i. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
}

--**********************************
--�о��¼�
--**********************************
function x500061_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500061_g_Signpost do
		AddNumText(sceneId, x500061_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500061_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500061_g_Signpost[GetNumText()]

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
