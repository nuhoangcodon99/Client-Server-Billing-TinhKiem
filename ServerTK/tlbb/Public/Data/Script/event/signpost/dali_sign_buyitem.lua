-- ����
--������Ʒ
--��·�ű�
x500042_g_scriptId = 500042

-- ��·���� type: 1 Ϊ�����˵�, 2 Ϊֱ����·
x500042_g_Signpost = {
	{ type=2, name="Ti�m binh kh�", x=216, y=133, tip="B� L߽ng ", desc="Ti�m binh kh� � h߾ng B�c �߶ng l�n ph�a ��ng. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Ph�c s�c �i�m", x=238, y=171, tip="Ho�ng C�ng ��o ", desc="Ph�c s�c �i�m � L� Nam �߶ng l�n ph�a ��ng. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Ti�m trang s�c", x=248, y=171, tip="Ti�u Thoa ", desc="Ti�m trang s�c � L� Nam �߶ng l�n ph�a ��ng. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="C�a h�ng Tr�n Th�", x=265, y=128, tip="V�n Phi�u Phi�u ", desc="Ti�m tr�n th� � L� B�c �߶ng l�n ph�a ��ng, h߾ng ��ng B�c c�a D�ch tr�m. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Ti�m thu�c", x=102, y=131, tip="L� Tam Th�t ", desc="Ti�m thu�c � L� B�c �߶ng l�n ph�a T�y. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="T�u �i�m", x=110, y=159, tip="в T� Тng ", desc="T�u �i�m � L� Nam �߶ng l�n ph�a T�y, � �� c� th� mua ���c c�c lo�i th�c ph�m � h�i ph�c. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Ti�m t�p h�a", x=57, y=131, tip="Cao Th�ng T߶ng ", desc="Ti�m t�p h�a � �߶ng l�n ph�a T�y, c�nh ru�ng, �i v� h߾ng B�c. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
}

--**********************************
--�о��¼�
--**********************************
function x500042_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500042_g_Signpost do
		AddNumText(sceneId, x500042_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500042_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500042_g_Signpost[GetNumText()]

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
