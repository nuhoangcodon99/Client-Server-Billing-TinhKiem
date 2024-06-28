-- ������·�ű�
x500000_g_scriptId = 500000

-- ��·���� type: 1 Ϊ�����˵�, 2 Ϊֱ����·
x500000_g_Signpost = {
		{ type=1, name="Nh�n kinh nghi�m nh�n ��i?", eventId=500049, x=0, y=0, tip=" ", desc=" " },		--�޵����ű�
		{ type=1, name="L�m sao gia nh�p m�n ph�i?", eventId=500049, x=0, y=0, tip=" ", desc=" " },			--�޵����ű�
		{ type=1, name="Mua c�c lo�i v�t ph�m", eventId=500001, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="D�ch tr�m", eventId=500002, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="Ti�n trang, �߽ng ph�, nguy�n b�o", eventId=500003, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="Ta mu�n r�n luy�n b�n l�nh", eventId=500004, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="H�c 1 s� k� n�ng �i s�ng", eventId=500005, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="Nhi�m v� v� ph� b�n", eventId=500006, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="Ta mu�n l�p gia th�t", eventId=500007, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="Bang ph�i", eventId=500008, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="Th߽ng h�i", eventId=500009, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="K�", eventId=500010, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="L�i ��i", eventId=500011, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="B�o Th�ch H�p Th�nh", eventId=500012, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="K�t b�i", eventId=500013, x=0, y=0, tip=" ", desc=" " },
}
--{ type=2, name="������ջ", x=100.7, y=124.2, tip="����������ջ", desc="�������Ŀ�ջ֮һ�����̾����ۼ�֮�ء�" },

--**********************************
--�о��¼�
--**********************************
function x500000_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500000_g_Signpost do
		AddNumText(sceneId, x500000_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500000_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500000_g_Signpost[GetNumText()]

	if GetNumText()==1 then
		BeginEvent(sceneId)
			AddText(sceneId, signpost.name .. ": ")
			AddText(sceneId, "Xin t�i qu�ng tr߶ng � L�c D߽ng [150,91] n�i L�u Ki�n Minh nh�n g�p ��i kinh nghi�m")
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, 150, 91, "L�u Ki�n Minh " )
		return
	end

	if GetNumText()==2 then
		BeginEvent(sceneId)
			AddText(sceneId, signpost.name .. ": ")
			AddText(sceneId, "Xin t�i m�i d�ch tr�m c�a c�c th�nh th� (�n Tab c� th� m� b�n � ra tra t�m k� hi�u ch� #GD�ch#W) chuy�n t�i m�n ph�i m� c�c h� mu�n b�i s�. Sau khi t�i m�n ph�i h�y �n v�o #GNg߶i d�n �߶ng cho m�n ph�i #W l� c� th� h�i ���c v� tr� b�i s�. Ho�c �n ph�m TAB m� b�n � t�m k� hi�u ch� #GS� #W.")
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, 139, 182, "Ng� ��c X߽ng " )
		return
	end

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
