-- ����NPC
-- ��ͥ��

x050003_g_scriptId = 050003

--**********************************
--�¼��������
--**********************************
function x050003_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local strText = "    ����o�ꡣ����������Xȥ��Ц����_���׶�����Ҋ��ǰ�꽭�⡣��Ů�����ֵܕ�����ҹ�ǘǡ�С�x����ο���^��"
		AddText( sceneId, "�p��ľ�m��" )
		AddText( sceneId, strText )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
