-- ����NPC
-- �����

x050006_g_scriptId = 050006

--**********************************
--�¼��������
--**********************************
function x050006_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local strText = "    ƫ�p�����£��Ĺŵ���񡣽��L��¶���g���e��һ���塣��̎���ɠ����l�ҹ��Ҳ��ӣ�������g�顣Īָ�Pɽ·����ʹ����A��ˮ���P���|�~Ē���c�³ȡ��Z�S��ů���w�ւ������l�塣�ϧ�ԅ��M�ᣬֱ�������Ϧ��ʮ����̝ӯ��δ�؁��꿴�����ƴ˻�����"
		AddText( sceneId, "ˮ�{���^" )
		AddText( sceneId, strText )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
