-- 212220
-- �һ���Ʒ
x212220_g_scriptId = 212220

x212220_g_Stone = {	{level=50,id=20310000,num=15},
										{level=60,id=20310000,num=30},
										{level=70,id=20310000,num=60},}
										
x212220_g_Stone2 = {	{level=50,id=20310003,num=15},
										{level=60,id=20310003,num=30},
										{level=70,id=20310003,num=60},}

										
										
x212220_g_Item = {
	{level=50,id=10410001},{level=50,id=10422013},{level=50,id=10420004},{level=50,id=10423021},
	{level=60,id=10410002},{level=60,id=10422014},{level=60,id=10420005},{level=60,id=10423022},
	{level=70,id=10410003},{level=70,id=10422015},{level=70,id=10420006},{level=70,id=10423023},
}

x212220_g_BossItem = {
	{item=10401002,boss="#{_BOSS33}",scene=0},
	{item=10403002,boss="#{_BOSS33}",scene=0},
	{item=10405001,boss="#{_BOSS33}",scene=0},
	{item=10404002,boss="#{_BOSS33}",scene=0},
				
	{item=10401003,boss="#{_BOSS37}",scene=0},
	{item=10403003,boss="#{_BOSS37}",scene=0},
	{item=10405002,boss="#{_BOSS37}",scene=0},
	{item=10404003,boss="#{_BOSS37}",scene=0},
	
	{item=10401004,boss="#{_BOSS41}",scene=0},
	{item=10403004,boss="#{_BOSS41}",scene=0},
	{item=10405003,boss="#{_BOSS41}",scene=0},
	{item=10404004,boss="#{_BOSS41}",scene=0},
}
--MisDescEnd
--**********************************
--������ں���
--**********************************
function x212220_OnDefaultEvent( sceneId, selfId, targetId )

	local nNum = GetNumText()
	if nNum == 50 or nNum == 60 or nNum == 70   then
		
		local str
		
		if nNum == 50  then
			str = "C�c h� n�u ch�p nh�n d�ng 15 c�i Y�n Huy�n Ng�c giao cho ta l� c� th� ch�n 1 m�n trang b� d߾i ��y:"
		elseif nNum == 60  then
			str = "C�c h� n�u ch�p nh�n d�ng 30 c�i Y�n Huy�n Ng�c giao cho ta l� c� th� ch�n 1 m�n trang b� d߾i ��y:"
		elseif nNum == 70  then
			str = "C�c h� n�u ch�p nh�n d�ng 60 c�i Y�n Huy�n Ng�c giao cho ta l� c� th� ch�n 1 m�n trang b� d߾i ��y:"
	
		end
		BeginEvent(sceneId)
			AddText(sceneId,str);
			for i, temp in x212220_g_Item do
				if temp.level == nNum  then
					AddRadioItemBonus( sceneId, temp.id, 1 )
				end
			end
		EndEvent( )
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x212220_g_scriptId,0)
	end
	

end

--**********************************
--�о��¼�
--**********************************
function x212220_OnEnumerate( sceneId, selfId, targetId )

	AddNumText( sceneId, x212220_g_scriptId, "бi l�y b� trang b� c�p 50", 0, 50 )
	AddNumText( sceneId, x212220_g_scriptId, "бi l�y b� trang b� c�p 60", 0, 60 )
	AddNumText( sceneId, x212220_g_scriptId, "бi l�y b� trang b� c�p 70", 0, 70 )
	
end

--**********************************
--����������
--**********************************
function x212220_CheckAccept( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x212220_OnAccept( sceneId, selfId )

end

--**********************************
--����
--**********************************
function x212220_OnAbandon( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x212220_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--����Ƿ�����ύ
--**********************************
function x212220_CheckSubmit( sceneId, selfId )
end

--**********************************
--�ύ
--**********************************
function x212220_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
	-- ��⴫���������ֵ�ǲ�����Ч��
	local logNum1 = 0
	local logNum2 = 0
	local item
	local stone
	local stone2
	local bHaveItem = 0
	local bHaveStone = 0
	local temp
	local temp1
	for i, temp in x212220_g_Item do
		if temp.id == selectRadioId  then
			item = temp
			bHaveItem = 1
		end
	end
	
	-- �ύ����Ʒ����Ӧ��ֱ�ӷ��أ���������
	if bHaveItem == 0  then
		return
	end
	
	for i, temp1 in x212220_g_Stone do
		if temp1.level == item.level   then
			stone = temp1
			bHaveStone = 1
		end
	end
	
	for i, temp1 in x212220_g_Stone2 do
		if temp1.level == item.level   then
			stone2 = temp1
			bHaveStone = 1
		end
	end
	
	-- �Ҳ�����Ӧ��ʯͷ��ֱ�ӷ���
	if bHaveStone == 0    then
		return
	end
	
	-- 1�������������ǲ�����λ���ܹ�������Ʒ
	BeginAddItem(sceneId)
		AddItem( sceneId, item.id, 1 )
	local ret = EndAddItem(sceneId,selfId)

	if ret < 1 then
		BeginEvent(sceneId)
			strText = "Tay n�i �� �y, kh�ng th� trao �i."
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	-- 2������ʯͷ����
	local selfStoneCount = GetItemCount(sceneId,selfId, stone.id) + GetItemCount(sceneId,selfId, stone2.id)
	if stone.num > selfStoneCount   then
		BeginEvent(sceneId)
			strText = "C�c h� kh�ng �� nguy�n li�u � �i v�t ph�m n�y."
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
		
	end
	
	
	-- 3����ⱳ���У������ʯͷ�������Ͳ���ִ����ȥ
	if LuaFnGetAvailableItemCount( sceneId, selfId, stone.id ) + LuaFnGetAvailableItemCount( sceneId, selfId, stone2.id ) < stone.num  then
		BeginEvent(sceneId)
			strText = "Trao �i th�t b�i, vui l�ng ki�m tra l�i v�t ph�m ph�i ch�ng �� kh�a"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end	
	
	local BangdingNum = LuaFnGetAvailableItemCount( sceneId, selfId, stone.id );
	if(BangdingNum >= stone.num) then
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, stone.id, stone.num)
		if ret1 < 1  then
			BeginEvent(sceneId)
				strText = "X�a b� th�t b�i, vui l�ng ki�m tra l�i v�t ph�m ph�i ch�ng �� kh�a"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		logNum1 = stone.num;
	elseif(BangdingNum == 0) then
	
	local ret1 = LuaFnDelAvailableItem(sceneId,selfId, stone2.id, stone2.num)
		if ret1 < 1  then
			BeginEvent(sceneId)
				strText = "X�a b� th�t b�i, vui l�ng ki�m tra l�i v�t ph�m ph�i ch�ng �� kh�a"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		logNum2 = stone2.num;	
	
	else
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, stone.id, BangdingNum)
		if ret1 < 1  then
			BeginEvent(sceneId)
				strText = "X�a b� th�t b�i, vui l�ng ki�m tra l�i v�t ph�m ph�i ch�ng �� kh�a"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		logNum1 = BangdingNum;
		
		--ɾû�󶨵�
		local Delete = stone.num - BangdingNum;
		ret1 = LuaFnDelAvailableItem(sceneId,selfId, stone2.id, Delete)
		if ret1 < 1  then
			BeginEvent(sceneId)
				strText = "X�a b� th�t b�i, vui l�ng ki�m tra l�i v�t ph�m ph�i ch�ng �� kh�a"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		logNum2 = Delete;
	end
	-- 4��ɾ����Ʒ
	
	
	
	-- ������
	AddItemListToHuman(sceneId,selfId)

	-- ��¼Log
	LuaFnAuditYanXuanYuExchange(sceneId, selfId, stone.id, logNum1, item.id)
	LuaFnAuditYanXuanYuExchange(sceneId, selfId, stone2.id, logNum2, item.id)
	
	-- �����繫��
	local szItem = GetItemTransfer(sceneId,selfId,0)
	local randMessage = random(3);

	if randMessage == 1 then
   	message = format("#Y M�c ��o#cff99cc d�ng m�i ch�m v�o#Y Y�n Huy�n Ng�c#cff99cc c�a#{_INFOUSR%s}#cff99cc mang �n h�t 1 h�i s�u. M�t l�c sau g�t �u n�i: h�ng nh�t ph�m, c�i #{_INFOMSG%s}#cff99cc n�y thu�c v� c�c h�.", 
   										GetName(sceneId, selfId), szItem);

	elseif randMessage == 2 then		
		message = format("#Y M�c ��o#cff99cc l�y #YY�n Huy�n Ng�c#W#cff99cc c�a #{_INFOUSR%s}#cff99cc mang �n th�i 1 h�i, v�o r�i � l�n tai nghe sau �� g�t �u n�i: r�t thu�n khi�t, c�i #{_INFOMSG%s}#cff99cc n�y thu�c v� c�c h�.", 
											GetName(sceneId, selfId), szItem);
	else
		message = format("#Y M�c ��o#cff99cc l�y #YY�n Huy�n Ng�c#W#cff99cc c�a#{_INFOUSR%s}#cff99cc mang �n, soi d߾i �nh n�ng m�t tr�i g�t �u n�i: l� th�t, c�i #{_INFOMSG%s}#cff99cc n�y thu�c v� c�c h�.", 
											GetName(sceneId, selfId), szItem);
	end
	
	AddGlobalCountNews( sceneId, message )
	
	
end

--**********************************
--ɱ����������
--**********************************
function x212220_OnKillObject( sceneId, selfId, objdataId ,objId )
end

--**********************************
--���������¼�
--**********************************
function x212220_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x212220_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--ɱ��BOSSʰȡװ�������繫��
--**********************************
function x212220_ItemBulletin( sceneId, selfId, itemId, bagidx, bGem )
	local bHaveItem = 0
	local bossitem
	for i, temp in x212220_g_BossItem do
		if temp.item == itemId  then
			bossitem = temp
			bHaveItem = 1
		end
	end
	
	if bHaveItem == 0  then
		return
	end
	
	local szItem = GetBagItemTransfer(sceneId, selfId, bagidx)
	
	local randMessage = random(3);
	
	randMessage =3
	
	
	if randMessage == 1 then
   	message = format("#{_INFOUSR%s}#cff99cc �#G%s#cff99cc d�ng \"Oa T�m C߾c\" �� tr�ng ch�n c�a #Y%s#cff99cc,gi�nh ���c ph�n th�ng, nh�n ���c 1 m�n #{_INFOMSG%s}.", 
   										GetName(sceneId, selfId), GetSceneName(sceneId), bossitem.boss, szItem );

	elseif randMessage == 2 then		
		message = format("#{_INFOUSR%s}#cff99cc �#G%s#cff99cc xu�t 1 chi�u \"L�c M�ch Th�n Ki�m\" h� g�c#Y%s#cff99cc, nh�t ���c #Y%s#cff99cc ��nh r�i c�a#{_INFOMSG%s}#cff99cc r�i c߶i to b� �i.", 
											GetName(sceneId, selfId), GetSceneName(sceneId), bossitem.boss, bossitem.boss, szItem);
	else
		message = format("#Y%s#cff99cc �#G%s#cff99cc b�#W#{_INFOUSR%s}#cff99cc ch߷ng m�nh t� ph�a sau, ��nh ph�i giao n�p 1#{_INFOMSG%s}#cff99cc.", 
											bossitem.boss, GetSceneName(sceneId), GetName(sceneId, selfId), szItem);
	end
	
	AddGlobalCountNews( sceneId, message )
	
end

