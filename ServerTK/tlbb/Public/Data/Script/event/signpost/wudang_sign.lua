--�䵱
--��·�ű�
x500064_g_scriptId = 500064

-- ��·���� type: 1 Ϊ�����˵�, 2 Ϊֱ����·
x500064_g_Signpost = {
	{ type=2, name="B�i ki�n ch߷ng m�n", x=77, y=85, tip="Ch߷ng m�n", desc="Ch߷ng m�n � trong T� Ti�u ��i �i�n, ng߽i mu�n t�i b�i ki�n �ng? �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Gia nh�p V� �ang", x=77, y=85, tip="Tr߽ng Huy�n T� ", desc="Ch߷ng m�n � T� Ti�u ��i �i�n, N�u mu�n gia nh�p ph�i ta th� t�i � ��. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c k� n�ng chi�n �u ph�i V� �ang", x=82, y=84, tip="H�c k� n�ng chi�n �u ph�i V� �ang", desc="Du Vi�n S�n � T� Ti�u ��i �i�n c� th� d�y ng߽i k� n�ng c�a ph�i V� �ang. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c k� n�ng cu�c s�ng ph�i V� �ang", x=44, y=56, tip="H�c k� n�ng cu�c s�ng ph�i V� �ang", desc="H�c V�n ��o nh�n c� th� d�y ng߽i luy�n �an, qua Thi�n ki�u c� th� t�m ���c �ng. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c V� �ang k� n�ng h� tr�", x=41, y=58, tip="H�c V� �ang k� n�ng h� tr�", desc="Ninh H� T�n nh�n c� th� d�y ng߽i ��o Ph�p, qua Thi�n ki�u c� th� t�m ���c �ng. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c k� n�ng c��i th� ph�i V� �ang", x=102, y=112, tip="H�c k� n�ng c��i th�", desc="Tr߽ng Qu�n Phu � Nham Ngh�a �i�n s� d�y ng߽i b�n l�nh c��i �i�u. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Mua v�t c��i", x=101, y=115, tip="Mua v�t c��i", desc="Ng߽i c� th� �n Tr߽ng Qu�n M� mua th� c��i Ti�n �i�u, �ng � Nham Ngh�a �i�n. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Nhi�m v� V� �ang", x=78, y=92, tip="Nhi�m v� V� �ang", desc="N�u ng߽i mu�n l�m ch�t g� cho b�n ph�i, h�y t�i tr߾c ��i �i�n T� Ti�u t�m Tr߽ng Trung H�nh. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Ng߶i chuy�n ch� c�a ph�i V� �ang", x=101, y=136, tip="Ng߶i chuy�n ch� c�a ph�i V� �ang", desc="M�c Th�i Xung c�a Ki�m H� Ki�u B�c c� th� d�n ng߽i t�i L�c D߽ng, ��i L�, T� Ch�u ho�c c�c m�n ph�i kh�c. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Linh T�nh Phong", x=58, y=73, tip="Linh T�nh Phong", desc="��i s� huynh L�m Linh T� qu�n l� vi�c ra v�o Linh T�nh Phong, �ng � gi�a Thi�n gi� v� ��i �i�n T� Ti�u. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c khinh c�ng ph�i V� �ang", x=65, y=109, tip="Ng߶i d�y khinh c�ng V� �ang", desc="T�nh S� T�n Nh�n c�a Tam Thanh �i�n c� th� giao cho ng߽i khinh c�ng b�n ph�i. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
}

--**********************************
--�о��¼�
--**********************************
function x500064_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500064_g_Signpost do
		AddNumText(sceneId, x500064_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500064_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500064_g_Signpost[GetNumText()]

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
