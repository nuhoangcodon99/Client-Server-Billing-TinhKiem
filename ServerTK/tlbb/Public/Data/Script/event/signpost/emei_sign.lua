--����
--��·�ű�
x500065_g_scriptId = 500065

-- ��·���� type: 1 Ϊ�����˵�, 2 Ϊֱ����·
x500065_g_Signpost = {
	{ type=2, name="B�i ki�n ch߷ng m�n", x=96, y=73, tip="Ch߷ng m�n", desc="Ch߷ng m�n � B�c di�n Song Ki�u, c� �i v�o trong s� nh�n th�y b� �y. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Gia nh�p Nga My", x=96, y=51, tip="L� th�p nh� n߽ng", desc="N�u c�c h� mu�n tr� th�nh m�t th�nh vi�n c�a ph�i ta, h�y �i b�i ki�n L� Th�t Nh� N߽ng, b� � tr߾c T�nh �m C�c. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c k� n�ng chi�n �u ph�i Nga My", x=98, y=51, tip="H�c k� n�ng chi�n �u ph�i Nga My", desc="Ch�ng ta �u h�c v� ngh� t� Th�i L�c Hoa t� t� h�c, T� t� � tr߾c Thanh �m C�c. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c k� n�ng cu�c s�ng ph�i Nga My", x=43, y=108, tip="H�c k� n�ng cu�c s�ng ph�i Nga My", desc="H�n t� t� bi�t s� d�ng k� n�ng ch� t�o ph� �c truy�n c�a ph�i ta, ng߽i c� th� t�i La Phong Thanh V�n �i t�m t� t�. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c k� n�ng h� tr� ph�i Nga My", x=39, y=109, tip="H�c k� n�ng h� tr� ph�i Nga My", desc="Linh t�m thu�t l� k� n�ng h� tr� c�a ch� t�o b�a, H� Tam N߽ng c�a La Phong Thanh V�n s� d�y ng߽i . �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c k� n�ng c��i th� ph�i Nga My", x=141, y=51, tip="H�c k� n�ng c��i th�", desc="Ti�u T߽ng Th�y c�a B�ch Th�y Thu Phong s� d�y ng߽i b�n l�nh c��i. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Mua v�t c��i", x=145, y=53, tip="Mua v�t c��i", desc="N�u mu�n mua 1 con Ph�ng Ho�ng, h�y t�i B�ch Th�y Thu Phong t�m Ti�u H߽ng Ng�c. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Nhi�m v� Nga My", x=95, y=86, tip="Nhi�m v� Nga My", desc="S� huynh M�nh Long � Song Ki�u �ang t�m ng߶i gi�p ��. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Ti�n tr�m ph�i Nga My", x=86, y=142, tip="Ti�n tr�m ph�i Nga My", desc="Nghe n�i D߽ng T� N߽ng � Nguy�t Ki�u Nam c� th� d�n ng߽i t�i L�c D߽ng, ��i L�, T� Ch�u ho�c c�c m�n ph�i kh�c. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="��o Hoa Tr�n", x=96, y=73, tip="��o Hoa Tr�n", desc="Mu�n v�o ��o Hoa Tr�n ph�i t�i B�c di�n Song Ki�u t�m ch߷ng m�n. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="H�c khinh c�ng ph�i Nga My", x=105, y=58, tip="Nga My khinh c�ng truy�n th� nh�n", desc="H�c khinh c�ng ph�i ta t�i B�c di�n Song Ki�u t�m T�n Nh� N߽ng. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
}

--**********************************
--�о��¼�
--**********************************
function x500065_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500065_g_Signpost do
		AddNumText(sceneId, x500065_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500065_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500065_g_Signpost[GetNumText()]

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
