-- ����NPC
-- ���

x050005_g_scriptId = 050005

--**********************************
--�¼��������
--**********************************
function x050005_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local strText = "    �����L���ϣ���Ϧ�����Ⱥ����Һ��£����D�����ݡ��L����ƽ�羚���ɢ�����畃�����d�ڱ��ۡ�Ц�Mһ���ƣ�ˮ�{�s�U֎������������m�����M���^�������f���������ʮ�����������������ӣ���������������w·ָ���񡣲��ó��L�R���˘O�����[��"
		AddText( sceneId, "ˮ�{���^" )
		AddText( sceneId, strText )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
