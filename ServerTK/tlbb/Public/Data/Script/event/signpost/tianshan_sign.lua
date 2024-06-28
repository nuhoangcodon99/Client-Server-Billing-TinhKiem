--��ɽ
--��·�ű�
x500068_g_scriptId = 500068

-- ��·���� type: 1 Ϊ�����˵�, 2 Ϊֱ����·
x500068_g_Signpost = {
	{ type=2, name="B�i ki�n ch߷ng m�n", x=91, y=44, tip="Ch߷ng m�n", desc="Ch߷ng m�n �i v�ng, Mai ki�m t�m thay th� nh�ng s� v� trong ng�y. C� � Linh Th�u Cung. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Gia nh�p ph�i Thi�n S�n", x=91, y=44, tip="Mai Ki�m ", desc="Ch߷ng m�n �i v�ng, Mai ki�m t�m thay th� nh�ng s� v� trong ng�y, mu�n v�o ph�i Thi�n S�n ph�i �i t�m C� ta. C� � Linh Th�u Cung. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c ph�i Thi�n S�n k� n�ng chi�n �u", x=88, y=44, tip="H�c ph�i Thi�n S�n k� n�ng chi�n �u", desc="Lan Ki�m � Linh Th�u Cung c� th� d�y ng߽i v� c�ng b�n ph�i. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c ph�i Thi�n S�n k� n�ng cu�c s�ng ph�i", x=119, y=67, tip="H�c ph�i Thi�n S�n k� n�ng cu�c s�ng ph�i", desc="D� B� � ph�a B�c To�i B�ng H� s� d�y � t� Huy�n b�ng thu�t c�a b�n bang. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c ph�i Thi�n S�n k� n�ng h� tr�", x=123, y=67, tip="H�c ph�i Thi�n S�n k� n�ng h� tr�", desc="Th�ch T�u � ph�a B�c To�i B�ng H� s� d�y � t� Th�i B�ng Thu�t c�a b�n bang. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c ph�i Thi�n S�n k� n�ng c��i th�", x=45, y=69, tip="H�c k� n�ng c��i th�", desc="L� V� ��nh � Linh Tuy�n B�c Di�n c� th� d�y ng߽i b�n l�nh c��i �i�u. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Mua v�t c��i", x=39, y=71, tip="Mua v�t c��i", desc="�i�p Phi H�ng c�a Linh Tuy�n B�c Di�n c� th� b�n cho ng߽i v�t c��i c�a b�n ph�i: �i�u. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Nhi�m v� ph�i Thi�n S�n", x=95, y=60, tip="Nhi�m v� ph�i Thi�n S�n", desc="Ph� M�n Nghi �ang t�m � t� b�n bang gi�p ��, �ng � d߾i Huy�n N� �i�u t��ng ph�a Nam Linh Th�u Cung. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Thi�n S�n chuy�n v�n s�", x=90, y=120, tip="Thi�n S�n chuy�n v�n s�", desc="Ng߶i chuy�n ch� c�a ph�i Thi�n S�n � L�o Nh�n c� th� d�n ng߽i t�i L�c D߽ng, ��i L�, T� Ch�u ho�c c�c m�n ph�i kh�c. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Chi�t Mai Phong", x=101, y=44, tip="Chi�t Mai Phong", desc="C�c Ki�m l� ng߶i b�o v� Chi�t Mai Phong, C� � Linh Th�u Cung. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c khinh c�ng ph�i Thi�n S�n", x=98, y=44, tip="Ng߶i d�y khinh c�ng Thi�n S�n", desc="H�c khinh c�ng ph�i Thi�n S�n ph�i t�m Tr�c Ki�m, C� � Linh Th�u Cung. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
}

--**********************************
--�о��¼�
--**********************************
function x500068_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500068_g_Signpost do
		AddNumText(sceneId, x500068_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500068_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500068_g_Signpost[GetNumText()]

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
