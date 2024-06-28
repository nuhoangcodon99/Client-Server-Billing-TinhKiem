-- ������·�ű�
x500020_g_scriptId = 500020

-- ��·���� type: 1 Ϊ�����˵�, 2 Ϊֱ����·
x500020_g_Signpost = {
		{ type=1, name="L�m sao gia nh�p m�n ph�i?", eventId=500049, x=0, y=0, tip=" ", desc=" " },
		{ type=2, name="Nh�n kinh nghi�m nh�n ��i?", x=164, y=80, tip="Th�m Tr�nh", desc="Ng߽i c� th� � ch� Th�m Tr�nh (164, 80) l�nh g�p ��i kinh nghi�m, �ng � g�n B�c M�n T� Ch�u. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
		{ type=1, name="Mua c�c lo�i v�t ph�m", eventId=500021, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="Ta mu�n r�n luy�n b�n l�nh", eventId=500022, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="H�c k� n�ng s�ng m�n ph�i", eventId=500023, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="Nhi�m v� v� ph� b�n", eventId=500024, x=0, y=0, tip=" ", desc=" " },
			{ type=1, name="Th�", eventId=500025, x=0, y=0, tip=" ", desc=" " },
			{ type=1, name="D�ch tr�m", eventId=500026, x=0, y=0, tip=" ", desc=" " },
			{ type=1, name="Ti�n trang", eventId=500027, x=0, y=0, tip=" ", desc=" " },
			{ type=1, name="Trang b� c߶ng h�a v� gi�m �nh", eventId=500028, x=0, y=0, tip=" ", desc=" " },
			{ type=1, name="T�i tr� s�t kh�", eventId=500029, x=0, y=0, tip=" ", desc=" " },
}
--{ type=2, name="������ջ", x=100.7, y=124.2, tip="���ݶ�����ջ", desc="�������Ŀ�ջ֮һ�����̾����ۼ�֮�ء�" },

--**********************************
--�о��¼�
--**********************************
function x500020_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500020_g_Signpost do
		AddNumText(sceneId, x500020_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500020_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500020_g_Signpost[GetNumText()]

	if GetNumText()==1 then
		BeginEvent(sceneId)
			AddText(sceneId, signpost.name .. ": ")
			AddText(sceneId, "Xin t�i m�i d�ch tr�m c�a c�c th�nh th� (�n Tab c� th� m� b�n � ra tra t�m k� hi�u ch� #GD�ch#W) chuy�n t�i m�n ph�i m� c�c h� mu�n b�i s�. Sau khi t�i m�n ph�i h�y �n v�o #GNg߶i d�n �߶ng cho m�n ph�i #W l� c� th� h�i ���c v� tr� b�i s�. Ho�c �n ph�m TAB m� b�n � t�m k� hi�u ch� #GS� #W.")
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, 111, 160, "L� Th�a Phong " )
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
