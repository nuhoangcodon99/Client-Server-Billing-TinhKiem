--���츱��NPC
--��ͨ

x155000_g_ScriptId = 155000			--�ű�ID--add by xindefeng

x155000_g_eventId_cancel = 0;		--��ûʲô���顭��
x155000_g_eventId_leave = 1;		--��Ҫ��ʱ��ȥһ��
x155000_g_eventId_done = 2;			--���Թر�������
x155000_g_eventId_redeem = 3;		--�����һ�����

x155000_g_invitationDataId_level1  = 30303100;		-- ��ͨ����ID
x155000_g_invitationDataId_level2  = 30303101;		-- �߼�����ID
x155000_g_invitationDataId_level3  = 30303102;		-- ��������ID

x155000_g_gemList = {{id=50101001, rate=24},
					{id=50101002, rate=24},
					{id=50111001, rate=24},
					{id=50111002, rate=24},
					{id=50104002, rate=4}};
					
x155000_g_redeemList = {{id=x155000_g_invitationDataId_level3, gemRate=10, moneyRate=90, money=30000},
						{id=x155000_g_invitationDataId_level2, gemRate=20, moneyRate=80, money=15000},
						{id=x155000_g_invitationDataId_level1, gemRate=10, moneyRate=90, money=10000}}

--**********************************
--�¼��������
--**********************************
function x155000_OnDefaultEvent(sceneId, selfId, targetId)
	BeginEvent(sceneId);
		local selfGUID = LuaFnGetGUID(sceneId, selfId);
		local marryCharGUID_A, marryCharGUID_B;
		marryCharGUID_A = LuaFnGetCopySceneData_Param(sceneId, 6);
		marryCharGUID_B = LuaFnGetCopySceneData_Param(sceneId, 7);
		local bSelfWedding = 0;
		if selfGUID and marryCharGUID_A and marryCharGUID_B then
			if marryCharGUID_A < 0 then
				marryCharGUID_A = marryCharGUID_A + 4294967296;
			end
			if marryCharGUID_B < 0 then
				marryCharGUID_B = marryCharGUID_B + 4294967296;
			end
			if selfGUID == marryCharGUID_A or selfGUID == marryCharGUID_B then
				bSelfWedding = 1;
			end
		end
		if bSelfWedding == 1 then
			AddText(sceneId,"Th� n�o? H�n l� �� c� h�nh xong r�i ch�?");
			AddNumText(sceneId, x155000_g_eventId_done, "#GCh�ng t�i �u b�n c� r�i.", -1, x155000_g_eventId_done);
		else
			AddText(sceneId,"Th� n�o? Tham gia h�n l� c�a b�n h�u r�t vui ph�i kh�ng. Tr߾c khi �i ��ng qu�n c�m thi�p m�i �n nh�t qu� t�ng, b� l� d�p n�y s� kh�ng ���c nh�n l�i ��u");
			AddNumText(sceneId, x155000_g_eventId_redeem, "бi thi�p m�i l�y qu� t�ng", 6, x155000_g_eventId_redeem);
		end
		
		-- ������ڹر��������ܡ���ʱ��ȥ��
		local leaveFlag = LuaFnGetCopySceneData_Param(sceneId, 4);
		if leaveFlag == 0 then
			AddNumText(sceneId, x155000_g_eventId_leave, "T�i h� mu�n t�m ra ngo�i m�t l�t", 9, x155000_g_eventId_leave);
		end
		
		AddNumText(sceneId, x155000_g_eventId_cancel, "T�i h� kh�ng c� vi�c g�...", -1, x155000_g_eventId_cancel);
	EndEvent(sceneId);
	DispatchEventList(sceneId,selfId,targetId);
end


--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x155000_OnEventRequest(sceneId, selfId, targetId, eventId)
	if eventId == x155000_g_eventId_cancel then
		BeginUICommand(sceneId);
		EndUICommand(sceneId);
		DispatchUICommand(sceneId, selfId, 1000);
	elseif eventId == x155000_g_eventId_leave then
		CallScriptFunction( 401030, "PlayerExit", sceneId, selfId);
	elseif eventId == x155000_g_eventId_done then	--����ȷ��ҳ,��ֹ��ҵ����--modify by xindefeng		
		BeginEvent( sceneId )
			AddText( sceneId, "Ng߽i x�c �nh h�n l� �� xong sao? Ng߽i kh�ng th� quay l�i l� �߶ng!" )
			AddNumText(sceneId, x155000_g_ScriptId, "Ta x�c �nh h�n l� �� ch�m d�t.", 8, 100 )
			AddNumText(sceneId, x155000_g_ScriptId, "Ta kh�ng c� chuy�n g�...", 8, 101 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif eventId == x155000_g_eventId_redeem then
		x155000_Redeem(sceneId, selfId, targetId);	
	end
	
	--ʹ��NumText�ж�	--add by xindefeng
	local NumText = GetNumText()	
	if NumText == 100 then	--ȷ�Ͻ���,�뿪����
		--�رմ���
		BeginUICommand( sceneId )			
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )		
		
		--�뿪����
		CallScriptFunction( 401030, "Close", sceneId, selfId)		
	elseif NumText == 101	then	--�����,�رնԻ�����
		BeginUICommand( sceneId )			
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )		
	end
			
end

--**********************************
--�����һ�����
--**********************************
function x155000_Redeem(sceneId, selfId, targetId)
	local selfGUID = LuaFnGetGUID(sceneId, selfId);
	local marryCharGUID_A, marryCharGUID_B;
	marryCharGUID_A = LuaFnGetCopySceneData_Param(sceneId, 6);
	marryCharGUID_B = LuaFnGetCopySceneData_Param(sceneId, 7);
	if selfGUID then
		if marryCharGUID_A and marryCharGUID_A < 0 then
			marryCharGUID_A = marryCharGUID_A + 4294967296;
		end
		if marryCharGUID_B and marryCharGUID_B < 0 then
			marryCharGUID_B = marryCharGUID_B + 4294967296;
		end
		
		if marryCharGUID_A and selfGUID == marryCharGUID_A then
			x155000_MessageBox(sceneId, selfId, targetId, "Mau ph�t thi�p m�i cho c�c b�ng h�u c�a c�c h� �n nh�n qu� t�ng!");
			return 0;
		end
		
		if marryCharGUID_B and selfGUID == marryCharGUID_B then
			x155000_MessageBox(sceneId, selfId, targetId, "Mau ph�t thi�p m�i cho c�c b�ng h�u c�a c�c h� �n nh�n qu� t�ng!");
			return 0;
		end
	end

	local itemIdList = {x155000_g_invitationDataId_level3, x155000_g_invitationDataId_level2, x155000_g_invitationDataId_level1};
	local itemId;
	local itemPos;
	local haveInvitation = 0;
	for _, itemId in itemIdList do
		local i, maxCount;
		maxCount = 100;
		itemPos = 0;
		for i = 0, maxCount - 1 do
			itemPos = LuaFnGetItemPosByItemDataID(sceneId, selfId, itemId, itemPos + 1);
			if itemPos and itemPos > -1 then
				local creatorGUID = GetBagItemParam(sceneId, selfId, itemPos, 0, 2);
				if creatorGUID then
					if creatorGUID == marryCharGUID_A or creatorGUID == marryCharGUID_B then
						haveInvitation = 1;
						break;
					end
				end
			end
		end
		
		if haveInvitation == 1 then
			break;
		end
	end

	if haveInvitation == 1 then
		local itemDataId = GetItemTableIndexByIndex(sceneId, selfId, itemPos);
		if itemDataId then
			local tempRedeemItem;		
			for _, tempRedeemItem in x155000_g_redeemList do
				if tempRedeemItem.id == itemDataId then
					local retGetName, itemCreatorName = LuaFnGetItemCreator(sceneId, selfId, itemPos);
					local eraseItemRet = EraseItem(sceneId, selfId, itemPos);
					if eraseItemRet and eraseItemRet == 1 then
						local totalRate = tempRedeemItem.gemRate + tempRedeemItem.moneyRate;
						local randValue = random(totalRate);
						if randValue < tempRedeemItem.gemRate then
							local totalGemRate = 0;
							local gemItem;
							for _, gemItem in x155000_g_gemList do
								totalGemRate = totalGemRate + gemItem.rate;
							end
							local randGemValue = random(totalGemRate);
							for _, gemItem in x155000_g_gemList do
								if randGemValue < gemItem.rate then
									LuaFnBeginAddItem(sceneId);
									LuaFnAddItem(sceneId, gemItem.id, 1);
									local addItemRet = LuaFnEndAddItem(sceneId, selfId);
									if addItemRet and addItemRet == 1 then
										LuaFnAddItemListToHuman(sceneId, selfId);
										local selfName = LuaFnGetName(sceneId, selfId);
										local gemTransfer = GetItemTransfer(sceneId, selfId, 0);
										local gemName = GetItemName(sceneId, gemItem.id);
										if selfName and itemCreatorName and gemName and gemTransfer then
											BroadMsgByChatPipe(sceneId, selfId, "#W#{_INFOUSR"..selfName.."}#IT�i #W#{_INFOUSR"..itemCreatorName.."}#I trong H�n L�, �� d�ng thi�p m�i �i ���c 1 vi�n #W#{_INFOMSG"..gemTransfer.."}#I.", 4);
											x155000_MessageBox(sceneId, selfId, targetId, "C�c h� �� �i ���c 1 vi�n "..gemName..".");
										end
									end
									break;
								end
								randGemValue = randGemValue - gemItem.rate;
							end
						else
							LuaFnAddMoney(sceneId, selfId, tempRedeemItem.money);
							x155000_MessageBox(sceneId, selfId, targetId, "C�c h� �� �i ���c #{_MONEY"..tempRedeemItem.money.."}.");
						end
						break;
					end
				end
			end
		end
	else
		x155000_MessageBox(sceneId, selfId, targetId, "Xin l�i, c�c h� kh�ng c� thi�p m�i c�a cu�c h�n l� n�y, v� v�y kh�ng th� �i qu� t�ng.");
	end
end


--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x155000_MessageBox(sceneId, selfId, targetId, msg)
	BeginEvent(sceneId);
		AddText(sceneId, msg);
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);
end

