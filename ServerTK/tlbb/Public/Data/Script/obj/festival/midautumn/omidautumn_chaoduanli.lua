-- ����NPC
-- �˶���

x050004_g_scriptId = 050004

--**********************************
--�¼��������
--**********************************
function x050004_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local strText = "    �µ�����ҹ��߀�لeҹ�A���ߺ�ɪɪ�D��P����ʮ���m��̎���Ժ��������F��ߝ����x��ۺ��������M�ǲ��Ⱦꡣ���pĪ�o�KϦ���ӽ��ꡣ"
		AddText( sceneId, "�ϸ���" )
		AddText( sceneId, strText )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
