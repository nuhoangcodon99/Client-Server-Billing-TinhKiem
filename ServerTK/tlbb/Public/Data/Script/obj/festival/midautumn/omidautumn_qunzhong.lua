-- ����NPC
-- Ⱥ��

x050008_g_scriptId = 050008

x050008_g_festivalwords =
{
	"    �ҿ�����������У���죬��~~~",
	"    ��������ÈA����Ŷ�������f�����������ÈA��~~~",
	"    �������¹Ⱑ��",
	"    �����������갡��",
	"    ���@�Y�����@�Y�����@�Y��",
	"    һ�Wһ�W���������M�춼��С���",
	"    �������ﲻ�նY���նY߀�մ����",
	"    ������L�ã�ǧ�ﹲ�Ⱦ�~~~",
	"    �|�Lҹ�Ż�ǧ�䣬�����䣬������~~~",
	"    ���������^���˼s�S����~~~",
	"    ���@����Ǘ����W�ģ���Ҫ��Ҫ��һ����",
	"    ���@����Ǳ����W�ģ���Ҫ��Ҫ��һ����",
	"    ���Л]�ж�ɳ�W������Һ���԰�~~~",
	"    ���Л]�й��A�W������Һ���԰�~~~",	
	"    ���������A�ֈA��������������P���������׃���������Ƕ�ɳ�W��",
	"    �����������ְף����������²������������׃�����á���߀��������",
	"    ���ϵ������@�ӈA�����@�Ӱס�",
	"    ��۳��y�����߀����ģ�",
	"    ���ƣ����ƣ��ö�����������p�°���",
	"    ���ƣ����ƣ��ö���Ů�������p�°���"
}

--**********************************
--�¼��������
--**********************************
function x050008_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local strText = x050008_g_festivalwords[random( getn(x050008_g_festivalwords) )]
		AddText( sceneId, strText )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end