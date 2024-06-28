--��CD-KEY����ѯ����������Ԫ��

x888899_g_scriptId = PRIZE_SCRIPT_ID

x888899_g_prizeGems = {
50101001,
50101002,
50102001,
50102002,
50102003,
50102004,
50103001,
50104002,
50111001,
50111002,
50112001,
50112002,
50112003,
50112004,
50113001,
50113002,
50113003,
50113004,
50113005,
50114001
};



--**********************************
-- ��� CDKey
--**********************************
function x888899_AskCDKey( sceneId, selfId )
	GetCharPrize( sceneId, selfId, 1, 980,0,0 )					--��CD-KEY (980��CD-KEY��Billing����Ʒ����)
end

--**********************************
-- ��� �Ƹ���
--**********************************
function x888899_AskNewUserCard( sceneId, selfId, card, op)
	NewUserCard( sceneId, selfId, card, op)									--��Ƹ���/�������¿� (card�ǿ����ַ���)
end

--**********************************
-- ���� Ԫ��
--**********************************
function x888899_AskYuanBao( sceneId, selfId, nYuanBao, nPoint )
	GetCharPrize(sceneId,selfId,3,999,nYuanBao,nPoint);	--��nYuanBao����nPoint���Ԫ��
end

--**********************************
-- ��ѯ ����
--**********************************
function x888899_AskPoint( sceneId, selfId )
	GetCharPrize(sceneId,selfId,2,0,0,0);								--��ѯ�������
end

--**********************************
-- �齱
--**********************************
function x888899_AskPrize( sceneId, selfId )
	GetCharPrize(sceneId,selfId,6,0,0,0);								--�Ȳ�ѯ���ｱƷ
end

--**********************************
-- ��� CDKey �ķ��ػص�����
-- ntype ��ο� enum PRIZE_TYPE_ENUM
--**********************************
function x888899_PrizeRet( sceneId, selfId, ntype, nserial, num )
--	���⣬����û�� targetId����֪��д -1 �᲻��������
	local targetId = -1

	--CD-KEY
	if( 1 == ntype ) then
		SetMissionFlag( sceneId, selfId, MF_GetAwardFlag, 1 )
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    C�c h� �� k�ch ho�t th�nh c�ng �i�u ki�n l�nh th߷ng, c� th� t�i ch� t�i h� nh�n v�t ph�m t�ng th߷ng" )
	--�Ƹ���
	elseif( 3 == ntype ) then
		SetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard, 1 )
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    Xin ch�c m�ng! C�c h� �� k�ch ho�t th�nh c�ng th� t�i ph�, sau khi ��t c�p � nh�t �nh c� th� quay l�i ch� t�i h� l�nh th߷ng.")
	--����
	elseif( 4 == ntype ) then
		--ZengDian(sceneId,selfId,-1,1,nserial*num)
	--��Ʒ
	elseif( 5 == ntype ) then
		LuaFnBeginAddItem( sceneId )
			LuaFnAddItem( sceneId, nserial, num)
		local ret = LuaFnEndAddItem( sceneId, selfId )
		if 1 == ret then
			AddItemListToHuman(sceneId,selfId)
			--���һ�����ֻ�ܲμ�һ�λ
			if( nserial == 30309052 ) then
				SetMissionFlag( sceneId, selfId, MF_ActiveWenZhouCard, 1 )
				BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD:Ch�c m�ng ! vui l�ng l�nh nh�n ph�n th߷ng s� ki�n", 0);
			end
			x888899_NotifyFailBox( sceneId, selfId, targetId, "Ho�n �i th�nh c�ng, �a t� c�c h� �� �ng h� Thi�n Long B�t B�" )
		end
	--�������¿�
	elseif( 6 == ntype ) then
		local prizeItem = x888899_GetSportsPrize()
		if prizeItem then
			LuaFnBeginAddItem( sceneId )
				LuaFnAddItem( sceneId, prizeItem, 1)
			local ret = LuaFnEndAddItem( sceneId, selfId )
			if 1 == ret then
				AddItemListToHuman(sceneId,selfId)
				SetMissionFlag( sceneId, selfId, MF_ActiveSportsCard, 1 )
				--x888899_NotifyFailBox( sceneId, selfId, targetId, "    ��ϲ���ɹ���ȡ�˻����������ա�" )
				BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD: Ch�c m�ng c�c h� �� nh�n gi�i th߷ng th�nh c�ng, xin h�y ki�m tra", 0);
			end
		end
	--���ۻ��
	elseif( 7 == ntype ) then
		LuaFnBeginAddItem( sceneId )
		LuaFnAddItem( sceneId, 30505108, 1 )
		local ret = LuaFnEndAddItem( sceneId, selfId )
		if 1 == ret then
			AddItemListToHuman( sceneId, selfId )
			SetMissionFlag( sceneId, selfId, MF_ActiveJuCard, 1 )
			BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD: Ch�c m�ng c�c h� �� nh�n gi�i th߷ng th�nh c�ng, xin h�y ki�m tra", 0);
		end
		
	elseif( 8 == ntype ) then	
		SetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard666, 1 )
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    Congratulations! You have successfully started the super strong card, after reaching a certain level can go to the cool marble are large (157,164) at the receiving award" )
	end

	return
end

--**********************************
-- �齱�ɹ���������ʾ��Ϣ
--**********************************
function x888899_PrizeRetEnd( sceneId, selfId, retId )
	if retId and retId == 15 then
		x888899_NotifyFailBox( sceneId, selfId, -1, "    Xin ch�c m�ng c�c h� nh�n l�nh ph�n th߶ng c�a ho�t �ng th�nh c�ng, xin h�y nh�n l�y." )
	elseif( retId == 12 ) then
	  x888899_NotifyFailBox( sceneId, selfId, -1, "   Congratulations to receive the event rewards, please check" )
	end
end

--**********************************
-- ���ֿ��������齱�����
--**********************************
function x888899_OpenCard(sceneId,selfId,card)
	if nil == card then return end
	--PrintStr(card)
	local targetId = -1
	local firstbyte = strbyte(card)
	--'k' ������
	if 107 == firstbyte then
		if GetMissionFlag( sceneId, selfId, MF_ActiveSportsCard ) == 1 then
			x888899_NotifyFailBox( sceneId, selfId, targetId, "    C�c h� �� nh�n gi�i th߷ng r�i, kh�ng th� ti�p t�c nh�n n�a." )
			return
		end
	--'t' ���ֿ�
	elseif 116 == firstbyte or 115 == firstbyte then
		if GetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard ) == 1 then
			x888899_NotifyFailBox( sceneId, selfId, targetId, "    C�c h� �� k�ch ho�t Th� T�i Ph�, kh�ng th� k�ch ho�t ti�p n�a" )
			return
		end
	elseif 99 == firstbyte then
		if GetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard666 ) == 1 then
			x888899_NotifyFailBox( sceneId, selfId, targetId, "    C�c h� �� nh�n gi�i th߷ng r�i, kh�ng th� ti�p t�c nh�n n�a." )
			return
		end
	end
	
	x888899_AskNewUserCard( sceneId, selfId, card, 0)
end

--**********************************
-- ���� Ԫ�� �ķ��ػص�����
-- ntype ��ο� enum PRIZE_TYPE_ENUM
-- 1 ���� OPT_YUANBAO_ADD ����Ԫ��
--**********************************
function x888899_BuyRet( sceneId, selfId, ntype, nYuanBao, nLeftPoint )
--	���⣬����û�� targetId����֪��д -1 �᲻��������
	local targetId = -1

	if( 2 == ntype ) then
		--YuanBao(sceneId,selfId,targetId,1,nYuanBao)
		--ZengDian(sceneId,selfId,targetId,1,nYuanBao)
		BuyYuanBaoCount(sceneId,selfId,targetId,1,nYuanBao)
		x888899_NotifyLeftPoint(sceneId,selfId,nLeftPoint)
		
		--���ͻ�����ʾ��Ϣ
		local strText = ""
		BeginEvent(sceneId)
			strText = "C�c h� ho�n �i th�nh c�ng r�i. Nh�n ���c "..tostring(nYuanBao).." �i�m t�ng."
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
		LuaFnMsg2Player( sceneId, selfId,strText,MSG2PLAYER_PARA)
		
		--���ڵ���1200Ԫ�������ز���
		local curTime = GetHourTime()
	--�ʱ��1��21�ա���2��26��
	--if (curTime>75100 and curTime<78750) then
		if (nYuanBao and nYuanBao >=1200) then
			local BagIndex = TryRecieveItem( sceneId, selfId, 30504085, QUALITY_MUST_BE_CHANGE )
				
				if BagIndex == -1 then
					return
				end
				
				LuaFnItemBind(sceneId, selfId,BagIndex)
				
				BeginEvent(sceneId);
					AddText(sceneId, "Congratulations, you receive a carnival turn eggs, please check");
				EndEvent(sceneId);
				DispatchMissionTips(sceneId, selfId);
		end
	--end	

		--200+Ԫ����3���챦ʯ-��
		
		if nYuanBao and nYuanBao >= 200 then
			local countPrize = GetMissionData(sceneId, selfId, MD_YUANBAO_PRIZE_GEM_COUNT);
			if countPrize and countPrize == 0 then
				local BagIndex = TryRecieveItem( sceneId, selfId, 50313004, QUALITY_MUST_BE_CHANGE )
				
				if BagIndex == -1 then
					return
				end
				
				LuaFnItemBind(sceneId, selfId,BagIndex)
					SetMissionData(sceneId, selfId, MD_YUANBAO_PRIZE_GEM_COUNT, countPrize + 1);
				
				BeginEvent(sceneId);
					AddText(sceneId, "Congratulations, you receive a gem, please check");
				EndEvent(sceneId);
				DispatchMissionTips(sceneId, selfId);
			end
		end
	end
	return	

--		local randidx = random(100)
--		�һ�Ԫ������ʯ
-- 		ֻ��50%�ļ��ʻ�ñ�ʯ
--		if nYuanBao and nYuanBao >= 600 then
--			local countPrize = GetMissionData(sceneId, selfId, MD_YUANBAO_PRIZE_GEM_COUNT);
--			if countPrize and countPrize == 0 then
--				if randidx <= 50 then
--					local maxIndex = getn(x888899_g_prizeGems);
--					local randIndex = random(maxIndex) - 1;
--					if not x888899_g_prizeGems[randIndex] then
--						randIndex = 0;
--					end
--					local itemDataId = x888899_g_prizeGems[randIndex];
--					LuaFnBeginAddItem(sceneId);
--					LuaFnAddItem(sceneId, itemDataId, 1);
--					local addItemRet = LuaFnEndAddItem(sceneId, selfId);
--					if addItemRet and addItemRet == 1 then
--						SetMissionData(sceneId, selfId, MD_YUANBAO_PRIZE_GEM_COUNT, countPrize + 1);
--						
--						LuaFnAddItemListToHuman(sceneId, selfId);
--						BeginEvent(sceneId);
--							AddText(sceneId, "��ϲ��������ʯһ�ţ�����ա�");
--						EndEvent(sceneId);
--						DispatchMissionTips(sceneId, selfId);
--					else
--						BeginEvent(sceneId);
--							AddText(sceneId, "�Բ������ı���û���㹻�ռ��������͵ı�ʯ��");
--						EndEvent(sceneId);
--						DispatchMissionTips(sceneId, selfId);
--					end
--				else
--					SetMissionData(sceneId, selfId, MD_YUANBAO_PRIZE_GEM_COUNT, countPrize + 1);
--				end
--			end
--		end
end

--**********************************
-- ��ѯ���� �ķ��ػص�����
--**********************************
function x888899_PointRet( sceneId, selfId, nLeftPoint )
	x888899_NotifyLeftPoint(sceneId,selfId,nLeftPoint)
end

--**********************************
-- ��齱Ʒ ��ʼ�Ļص�����
--**********************************
function x888899_CheckRetBegin(sceneId,selfId)
	LuaFnBeginAddItem( sceneId )
end
--**********************************
-- ��齱Ʒ ��Ӽ����Ʒ�Ļص�����
--**********************************
function x888899_CheckAddItem(sceneId,selfId,itemid,num)
	LuaFnAddItem( sceneId, itemid, num)
end

--**********************************
-- ��齱Ʒ �����Ļص�����
--**********************************
function x888899_CheckRetEnd(sceneId,selfId)
	local ret = LuaFnEndAddItem( sceneId, selfId )
	if 1 == ret then
		--���ɹ�����ʼ�齱
		x888899_NotifyFailBox( sceneId, selfId, -1, "    Ki�m tra th�nh c�ng, xin ��i... �ang l�nh th߷ng." )
		GetCharPrize(sceneId,selfId,4,0,0,0);		--��ѯ��������ӵ�еĽ�Ʒ
	else
		x888899_NotifyFailBox( sceneId, selfId, -1, "    Xin l�i, c�c h� kh�ng �� � tr�ng, xin s�p x�p l�i r�i h�y �n nh�n." )
	end
end

--**********************************
-- ��Ƭ��齱Ʒ �����Ļص�����
--**********************************
function x888899_CardCheckRetEnd(sceneId,selfId)
	local ret = LuaFnEndAddItem( sceneId, selfId )
	if 1 == ret then
		--���ɹ�����ʼ����
		x888899_NotifyFailBox( sceneId, selfId, -1, "    Ki�m tra th�nh c�ng...�ang ch� l�nh th߷ng." )
		x888899_AskNewUserCard( sceneId, selfId, "MagicString", 1);
	else
		x888899_NotifyFailBox( sceneId, selfId, -1, "    Sorry, you do not have enough items column space, and then organize to claim." )
	end
end
--**********************************
-- ��Ƭ��齱Ʒ �����Ļص�����,����ʹ����ų���������־ By Vega 20090121
--**********************************
function x888899_CardCheckRetEndTSLB(sceneId,selfId)
	local ret = LuaFnEndAddItem( sceneId, selfId )
	if 1 == ret then
		--���ɹ�����ʼ����
		x888899_NotifyFailBox( sceneId, selfId, -1, "    Ki�m tra th�nh c�ng...�ang ch� l�nh th߷ng." )
		x888899_AskNewUserCard( sceneId, selfId, "MagicString", 1);

		local guid = LuaFnObjId2Guid(sceneId, selfId);
		
		if guid ~= nil then
			--local LogInfo = format("0X%08X,", guid);
			ScriptGlobal_AuditGeneralLog(LUAAUDIT_TSLBOUT, guid);
		end
	else
		x888899_NotifyFailBox( sceneId, selfId, -1, "    Sorry, you do not have enough items column space, and then to receive order" )
	end
end

--**********************************
-- ��� CDKey �ĳ����ػص�����
--**********************************
function x888899_PrizeRetErr( sceneId, selfId, retId )
--enum	UserPrizeResult
--{
--	UPR_SUCCESS,							//�齱��Ϣ�ɹ�
--	UPR_ASKPOINT_SUCCESS,			//��ѯ�����ɹ�
--	UPR_ASKBUY_SUCCESS,				//����ɹ�
--
--	UPR_ERR_NO_PRIZE,					//û���н�
--	UPR_ERR_PRE_REQUEST,			//���ڴ����ϴε�������Ϣ
--	UPR_ERR_PRIZE_BUSY,				//�ȴ�������콱��Ϣ����
--	UPR_ERR_TIME_OUT,					//�����콱��Ϣ��ʱ
--	UPR_ERR_EXPIRE_PRIZE,			//��Ʒ����
--	UPR_ERR_CANT_NOW,					//���ڲ��ܴ���齱����
--	UPR_ERR_NOENOUGH_POINT,		//��������
--	UPR_ERR_GOODSCODE_ERR,		//��Ʒ�������
--	UPR_ERR_ALREADYGET_PRIZE,	//�Ѿ��콱
--	UPR_NEWUSERCARD_SUCCESS,	//�Ƹ����ɹ�
--	UPR_ERR_WRONGCARDNUMBER,	//���Ŵ���
--	UPR_ERR_OTHERUSERUSE,		//�������Ѿ�ʹ��
--	};
	local targetId = -1

	if retId == 3 then								-- û�� CD-Key
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    CDK c�a c�c h� kh�ng k�ch ho�t, xin l�n trang http://tl.gate.vn � ki�m tra" )
	elseif retId == 4 then
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    �ang x� l�, xin ch�" )
	elseif retId == 5 then
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    H� th�ng b�n, ch� m�t l�t h�y th� l�i" )
	elseif retId == 6 then
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    X� l� qu� th�i gian, ch� m�t l�t h�y th� l�i" )
	elseif retId == 9 then
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    S� B�C c�a c�c h� kh�ng ��" )
	elseif retId == 11 then
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    Account c�a c�c h� �� t�ng nh�n t�ng th߷ng, kh�ng th� k�ch ho�t th�m �i�u ki�n nh�n th߷ng" )
	elseif retId == 13 then
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    Xin l�i, chu�i k� t� th� c�a c�c h� l� chu�i v� hi�u, xin ki�m tra l�i r�i h�y nh�p l�i." )
	elseif retId == 14 then
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    Chu�i k� t� th� c�a c�c h� �� s� d�ng qua r�i, h�y ki�m tra l�i." )
	elseif retId == 16 then
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    M�y ph�c v� kh�ng khai th�ng ch�c n�ng b�c th�m tr�ng th߷ng, xin x�c nh�n" )
	elseif retId == 17 then
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    T�i kho�n n�y �� qua c�p 10, kh�ng th� s� d�ng l�i th� t�i ph�." )
	elseif retId == 20 then
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    Xin l�i, c�c h� kh�ng c� ph�n th߷ng � nh�n l�nh" )
	else
		x888899_NotifyFailBox( sceneId, selfId, targetId, "    Quy �i th�t b�i, xin ch� m�t l�t h�y th� l�i. N�u thao t�c kh�ng th�nh c�ng, xin li�n h� v�i nh�n vi�n ph�c v� � x� l�" )
	end
end

--**********************************
-- �Ի�������Ϣ��ʾ
--**********************************
function x888899_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ֪ͨ�ͻ���ʣ�����
--**********************************
function x888899_NotifyLeftPoint(sceneId,selfId,nLeftPoint)
	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, nLeftPoint)
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 2003 )
end

--**********************************
-- �������¿������ý�Ʒ
--**********************************
function x888899_GetSportsPrize()
	local total = getn(SPORTS_CARD_PRIZE)
	if total and total >= 1 then
		local idx = random(1,total)
		return SPORTS_CARD_PRIZE[idx]
	else
		return nil
	end
end
