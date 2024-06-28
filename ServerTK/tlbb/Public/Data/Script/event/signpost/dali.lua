-- ������·�ű�
x500040_g_scriptId = 500040

-- ��·���� type: 1 Ϊ�����˵�, 2 Ϊֱ����·
x500040_g_Signpost = {
		{ type=1, name="L�m sao gia nh�p m�n ph�i?", eventId=500049, x=0, y=0, tip=" ", desc=" " },		--ע�⣬��һ�����ǵ�����һ���ű��ķ�ʽ�������ڱ��ļ���ֱ���жϡ�������ʹ�ô��ַ�ʽ
		{ type=1, name="Ng߶i ��a tin c�u ��i ph�i", eventId=500041, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="Mua c�c lo�i v�t ph�m", eventId=500042, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="D�ch tr�m", eventId=500043, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="Ti�n trang, �߽ng ph�", eventId=500044, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="Ta mu�n r�n luy�n b�n l�nh", eventId=500045, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="H�c 1 s� k� n�ng �i s�ng", eventId=500046, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="Nhi�m v� v� ph� b�n", eventId=500047, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="L�i ��i", eventId=500048, x=0, y=0, tip=" ", desc=" " },
		{ type=1, name="B�i s�", eventId=500049, x=0, y=0, tip=" ", desc=" " },
}

--{ type=2, name="������ջ", x=100.7, y=124.2, tip="��������ջ", desc="�������Ŀ�ջ֮һ�����̾����ۼ�֮�ء�" },
--{ type=2, name="�ϕN", x=180.0, y=120.0, tip="�ϕN��Ȣ�ް�ʦ������ʦ�ĺ�ȥ����", desc="�ϕN����ʵ������������롫����" },


--**********************************
--�о��¼�
--**********************************
function x500040_OnEnumerate( sceneId, selfId, targetId )
--	AddNumText(sceneId, x500040_g_scriptId, "�˺Ű�ȫ", -1, 1009)   --�ʺ�  to  �˺�
	for i, signpost in x500040_g_Signpost do
		AddNumText(sceneId, x500040_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500040_OnDefaultEvent( sceneId, selfId, targetId )

--	if GetNumText() == 1009 then
--		OpenWorldReference(sceneId, selfId,"AccountSafe")
--		return
--	end
	signpost = x500040_g_Signpost[GetNumText()]
	
	if GetNumText()==1 then
		BeginEvent(sceneId)
			AddText(sceneId, signpost.name .. ": ")
			AddText(sceneId, "Xin t�i m�i d�ch tr�m c�a c�c th�nh th� (�n Tab c� th� m� b�n � ra tra t�m k� hi�u ch� #GD�ch#W) chuy�n t�i m�n ph�i m� c�c h� mu�n b�i s�. Sau khi t�i m�n ph�i h�y �n v�o #GNg߶i d�n �߶ng cho m�n ph�i #W l� c� th� h�i ���c v� tr� b�i s�. Ho�c �n ph�m TAB m� b�n � t�m k� hi�u ch� #GS� #W.")
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, 241, 136, "�޷��" )
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
