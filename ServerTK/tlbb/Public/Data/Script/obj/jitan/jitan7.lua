--�½ű�������

--�ű���
x900016_g_ScriptId = 900016

--������ƷID

x900016_g_ItemId = 20309019

--**********************************
--�¼��б�
--**********************************
function x900016_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText(sceneId,"    #W�˴�Ϊ����ǰ�߱���ű꣬����#G���貿��ǰ��ָ�ӹ�#W�ڴ˷���ʩ�#Gע���ڴ��ύ10�������������������ͷ��ǰ��") 
		AddNumText( sceneId, x900016_g_scriptId, "����50����������", 6, 10)
		AddNumText( sceneId, x900016_g_scriptId, "������ս����", 11, 11)
		AddNumText( sceneId, x900016_g_ScriptId, "����׷ѰŮ�ʯ", 11, 12 )
		AddNumText( sceneId, x900016_g_scriptId, "����׷ѰŮ���ʯ", 11, 13)
        EndEvent(sceneId)
        DispatchEventList(sceneId,selfId,targetId)

  end


--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x900016_OnEventRequest( sceneId, selfId, targetId, eventId )
  
  if GetNumText()  == 10 then
	  --�������Ƿ���λ��
	if GetItemCount(sceneId, selfId, x900016_g_ItemId) < 50  then
	BeginEvent( sceneId )
		AddText(sceneId,"�����ϱ�����10��#cFF0000�������#W�ſ�������#cff99cc����ͷ��#W��ǰ��")
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	return
	end
	LuaFnDelAvailableItem(sceneId,selfId,x900016_g_ItemId,50)	--ɾ����Ʒ
	--ɾ������Ʒ
		
	local bRet = 0;
		
	local	bagpos = GetItemBagPos( sceneId, selfId, 20309019, 0 )
	
	if LuaFnLockCheck( sceneId, selfId, bagpos, 0 ) < 1 then
		local nItemNum = LuaFnGetAvailableItemCount( sceneId, selfId, 20309019 );		
		if nItemNum <= 0 then
			x900016_MsgBox( sceneId, selfId, targetId, "����Ʒ�ѱ�������" )
			return 0;
		end
	end


--��ʼִ������¼�
		BeginEvent( sceneId )
		LuaFnCreateMonster(549, 15702, 70, 36, 17, 0, 402030)
		local playername = GetName(sceneId, selfId)
		local strText = format("#b#cff00f0�����峤:����˭�����Ҵӳ�˯�и������ˣ����Ҵ�����˯�������ǻ�Ϊ�˸������۵ġ�", playername)		
		BroadMsgByChatPipe(sceneId, selfId, strText, 4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end

  if GetNumText()  == 11 then
	BeginEvent( sceneId )
		      AddText( sceneId, "   ��Ⱥ���#G���貿��#W����#G����#W,����ϣ���ռ�ɢ������Ƭ�����У���#G�����ʯ#W����������#Y����ʯ#W�������µ�#G����#W,����ϣ����Ѱ�����֮�����������,�������־��ݴ�½��������������ͼ������ֻ����������ԭ�ĸ�λ��ʿ���е���" )
		      AddText( sceneId, "   ÿ��#G10ʱ��10ʱ30��#W��#G16ʱ��16ʱ30��#W��#G20ʱ��20ʱ30��#W,����Ĺž���#G����#W�ж�����ִ�����#cff99cc����սʿ#W����ɱ#cff99cc����սʿ��ɻ��#Y��������#W�Լ�#Y����ʯ#W������#Y����ʯ#W��ǰ��#G������#cff99cc������#W����#G����#W����Ϊ#G�Ϲ�������" )
		      AddText( sceneId, "   ͬʱ,��ɱ#cff99cc����սʿ#W�ɻ��#Y��������#W��ʹ�û��ܵ�#Y��������#W������ʱ��#G����#W�е�#cff99cc�����̳#W�Լ�#cff99cc�����Ϲż�̳#W���ٻ�#cff99cc����ͷ��#W��#cff99cc�����峤#W,��ɱ#cff99cc����ͷ��#W��#cff99cc�����峤#W�ɻ�ô�����#Y����ʯ#W��" )
		      AddText( sceneId, "��#cff99cc�����м�̳#W��ʹ��#G10��#Y��������#W���ɽ��ٻ�#cff99cc����ͷ��#Wǰ��ӭս,����#cff99cc������̳#W������Ҫʹ��#G50��#Y��������#W�����ٻ�#cff99cc�����峤#Wǰ��ӭս��" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end

		if GetNumText()  == 12 then
	BeginEvent( sceneId )
		 AddText( sceneId, "#Y����׷ѰŮ�ʯ��" )
		 AddText( sceneId, "      " )
		 AddText( sceneId, "  #YŮ�ʯ#W��Ϊ����#G����������#W�Ľ�����Ҫ����,���ֻ�е���#G����#W��,��#cff99ccǬԪ����ͷ��#W��#cff99cc̫������ͷ��#W��#cff99cc���վ���ͷ��#W��#cff99cc���¾���ͷ��#W��#cff99cc���Ǿ���ͷ��#W��#cff99cc���ƾ���ͷ��#W��������Ҫ�ֱ��ռ���ܺ����ľ���Ԫ����" )
		 AddText( sceneId, "#W�ռ�����#G���־���Ԫ��#W�ȿɷ���#G�����㳡#W,����ȡ#YŮ�ʯ" )
		 EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end

		if GetNumText()  == 13 then
	BeginEvent( sceneId )
		 AddText( sceneId, "#Y����׷ѰŮ���ʯ��" )
		 AddText( sceneId, "      " )
		 AddText( sceneId, "   #YŮ���ʯ#W��Ϊ����#G����������#W�Ľ�����Ҫ����,���ֻ�е���#G����#W��,��#cff99ccǬԪ����ͷ��#W��#cff99cc̫������ͷ��#W��#cff99cc���վ���ͷ��#W�����¾���ͷ��#W�����Ǿ���ͷ��#W�����ƾ���ͷ��#W��������Ҫ�ֱ��ռ���ܺ����ľ���Ԫ����" )
		 AddText( sceneId, "#W�ռ�����#G���־���Ԫ��#W�ȿɷ���#G�����㳡#W,����ȡ#YŮ���ʯ" )
		 AddText( sceneId, "#Wʹ��#YŮ���ʯ#W���׵����ǵ�#G����#W,��ʹ��#Y����ʯ#W,��#G����#W,��������#Gͨ��#W��#Gͨ��#W֮�������,�����׸���һ�������#G����#W,ͬʱ���Ҳ�����#G�Ĵ�102��#W��������ۣ����Ը���ǿ��" )
		 EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
  
 end