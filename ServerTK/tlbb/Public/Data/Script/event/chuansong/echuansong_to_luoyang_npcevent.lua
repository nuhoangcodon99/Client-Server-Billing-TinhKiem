--�¼�
--���͵�����

--�ű���
x400919_g_ScriptId = 400919

--�����ı�����
x400919_g_MissionName="���һ���ꖰ�"
x400919_g_MissionInfo="�����m�꿤���|���\\�ͼZ�ݵıؽ�֮�أ��F��·�϶���ö��ԭ�ǁ������˚��c�ǰ����Ÿҳ�ȥ�\\���ϡ�"  --��������
x400919_g_MissionTarget="����5ֻ��ԭ��"		--����Ŀ��
x400919_g_ContinueInfo="���ѽ�����5ֻ��ԭ�ǆ᣿�������ڴ�����߅�����߾Ϳ�Ҋ�ˡ�С���c������һȺ�Ǉ���������Ͱ�Ϲ�ˡ�"		--δ��������npc�Ի�
x400919_g_MissionComplete="�x�x���������K춸ҳ��T��"					--�������npc˵���Ļ�

--**********************************
--��ں���
--**********************************
function x400919_OnDefaultEvent( sceneId, selfId, targetId )	--����������ִ�д˽ű�
	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 0, 159, 240)
end

--**********************************
--�о��¼�
--**********************************
function x400919_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x400919_g_ScriptId,x400919_g_MissionName)
end
