--������һ��ķ����ؼ�
--MisDescBegin
--�ű���
x808036_g_ScriptId = 808036
x808036_g_ExchangeXinfaBook_Active = 1

x808036_g_NeedItemCount_Miji = 7
x808036_g_NeedItemCount_Yaojue = 8
x808036_g_NeedItemID = 30505078
--MisDescEnd


--0���� 1���� 2ؤ�� 3�䵱 4���� 5���� 6���� 7��ɽ 8��ң
--************************************
--ȡ�ý����ؼ�ID
--************************************
function x808036_GetAwardItemID_Miji( sceneId, selfId )
    local PlayerMenpai = GetMenPai( sceneId, selfId )
    local ItemID = -1;
    if 0 == PlayerMenpai then    --����
        ItemID = 30308002
    end
    if 1 == PlayerMenpai then    --����
        ItemID = 30308003
    end
    if 2 == PlayerMenpai then    --ؤ��
        ItemID = 30308004
    end
    if 3 == PlayerMenpai then    --�䵱
        ItemID = 30308005
    end
    if 4 == PlayerMenpai then    --����
        ItemID = 30308006
    end
    if 5 == PlayerMenpai then    --����
        ItemID = 30308007
    end
    if 6 == PlayerMenpai then    --����
        ItemID = 30308008
    end
    if 7 == PlayerMenpai then    --��ɽ
        ItemID = 30308009
    end
    if 8 == PlayerMenpai then    --��ң
        ItemID = 30308010
    end

    return ItemID
end

--0���� 1���� 2ؤ�� 3�䵱 4���� 5���� 6���� 7��ɽ 8��ң
--************************************
--ȡ�ý���Ҫ��ID
--************************************
function x808036_GetAwardItemID_Yaojue( sceneId, selfId )
    local PlayerMenpai = GetMenPai( sceneId, selfId )
    local ItemID = -1;
    if 0 == PlayerMenpai then    --����
        ItemID = 30308011
    end
    if 1 == PlayerMenpai then    --����
        ItemID = 30308012
    end
    if 2 == PlayerMenpai then    --ؤ��
        ItemID = 30308013
    end
    if 3 == PlayerMenpai then    --�䵱
        ItemID = 30308014
    end
    if 4 == PlayerMenpai then    --����
        ItemID = 30308015
    end
    if 5 == PlayerMenpai then    --����
        ItemID = 30308016
    end
    if 6 == PlayerMenpai then    --����
        ItemID = 30308017
    end
    if 7 == PlayerMenpai then    --��ɽ
        ItemID = 30308018
    end
    if 8 == PlayerMenpai then    --��ң
        ItemID = 30308019
    end

    return ItemID
end


--**************************************
--���ñ���,����Ѿ�������ؼ�����Ҫ����
--**************************************
function x808036_SetExchangeCompleteFlag( sceneId, selfId )
    SetMissionData( sceneId, selfId, MD_EXCHANGE_MIJIORYAOJUE, 1 )
end
--********************************************
--ȡ���Ƿ��Ѿ�������ؼ�����Ҫ����.0Ϊû�����
--********************************************
function x808036_GetExchangeCompleteFlag( sceneId, selfId )
    local CompleteFlag = GetMissionData( sceneId, selfId, MD_EXCHANGE_MIJIORYAOJUE ) --ȡ����־
    
    if CompleteFlag > 0 then
        return 1
    else
        return 0    
    end
    
end

--**********************************
--����Ƿ����㹻����Ʒ���������ؼ�
--**********************************
function x808036_CheckEnoughItem_Miji( sceneId, selfId )
    local TianshuID = x808036_g_NeedItemID
    
	local ItemCount = LuaFnGetAvailableItemCount( sceneId, selfId, TianshuID )
	if ItemCount < x808036_g_NeedItemCount_Miji then
		return 0
	end
    
    return 1
end
--**********************************
--����Ƿ����㹻����Ʒ��������Ҫ��
--**********************************
function x808036_CheckEnoughItem_Yaojue( sceneId, selfId )
    local TianshuID = x808036_g_NeedItemID
    
	local ItemCount = LuaFnGetAvailableItemCount( sceneId, selfId, TianshuID )
	if ItemCount < x808036_g_NeedItemCount_Yaojue then
		return 0
	end

    return 1
end

--**********************************
--�һ��ؼ���Ҫ��
--**********************************
function x808036_Exchange_MijiAndYaojue( sceneId, selfId, targetId, ItemDesc, AddAward )
    --ItemDesc 1Ϊ�ؼ�2ΪҪ��
    local Item_Miji = 1
    local Item_Yaojue = 2
    
    local CompleteFlag = x808036_GetExchangeCompleteFlag( sceneId, selfId )
    if 1 == CompleteFlag then
         local strDirText05 = "Xin l�i, c� h�i trao �i m�t t�ch v� y�u quy�t ch� c� m�t l�n."
		BeginEvent(sceneId)
			AddText( sceneId, strDirText05 )
		EndEvent()
		DispatchEventList( sceneId, selfId, targetId )
		return    
    end
    
    local strDirText00 = ""
    if Item_Miji == ItemDesc then
        local CanExchange = x808036_CheckEnoughItem_Miji( sceneId, selfId )
		if 1 ~= CanExchange then
	        strDirText00 = "Trao �i m�t t�ch c�n 7 trang c�n thi�u c�a Thi�n th�, s� l��ng c�a c�c h� ch�a ��. H�y t�p h�p �� r�i quay l�i t�m t�i h�."    
		end
    end
    
    if Item_Yaojue == ItemDesc then
        local CanExchange = x808036_CheckEnoughItem_Yaojue( sceneId, selfId )
		if 1 ~= CanExchange then
		    strDirText00 = "Trao �i y�u quy�t c�n 8 trang c�n thi�u c�a Thi�n th�, s� l��ng c�a c�c h� ch�a ��. H�y t�p h�p �� r�i quay l�i t�m t�i h�."
		end        
    end
    
    if "" ~= strDirText00 then
        BeginEvent(sceneId)
				AddText( sceneId, strDirText00 )
		EndEvent()
		DispatchEventList( sceneId, selfId, targetId )
		return
    end
    
    
    local PlayerLevel = GetLevel( sceneId, selfId )
    if PlayerLevel < 30 then
		BeginEvent( sceneId )
		    local strDirText04 = "Ch� c� t� c�p � 30 tr� l�n m�i c� th� s� d�ng c�c trang Thi�n th� c�n thi�u � trao �i m�t t�ch v� y�u quy�t"
		    AddText( sceneId, strDirText04 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
		return    
    end
    
	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < 1 ) then
		BeginEvent( sceneId )
		    local strDirText01 = "T�i ��ng � c�a c�c h� kh�ng �� r�ng, kh�ng th� nh�n ���c v�t ph�m gi�i th߷ng. H�y s�a l�i t�i ��ng � r�i quay l�i t�m t�i h�."
		    AddText( sceneId, strDirText01 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
		return
	end
	
	if 0 == AddAward then  --������������Ʒ,ֻ����һ�μ��
		BeginEvent(sceneId)
			local strDirText02 = "C� h�i trao �i t�m ph�p m�t t�ch ch� c� 1 l�n, sau khi �i m�t lo�i t�m ph�p ho�c m�t t�ch b�t k� s� kh�ng th� �i sang lo�i kh�c. C�c h� �ng � trao �i kh�ng?"
			local strDirText03 = "Duy�t"
	        
			AddText( sceneId, strDirText02 )
	        
			if Item_Yaojue == ItemDesc then
				AddNumText(sceneId, x808036_g_ScriptId, strDirText03, 1, 4 )
			end
			if Item_Miji == ItemDesc then
				AddNumText(sceneId, x808036_g_ScriptId, strDirText03, 1, 3 )
			end
	        
		EndEvent()
		DispatchEventList( sceneId, selfId, targetId )
    end
    
    if 1 == AddAward then   --��ʱ�������Ʒ
		if Item_Yaojue == ItemDesc then
			x808036_SetAward_Yaojue( sceneId, selfId, targetId )
		end
		if Item_Miji == ItemDesc then
		    x808036_SetAward_Miji( sceneId, selfId, targetId )
		end    
    end
        
end

--**********************************
--�һ��ؼ�
--**********************************
function x808036_Exchange_Miji( sceneId, selfId, targetId )
    x808036_Exchange_MijiAndYaojue( sceneId, selfId, targetId, 1, 0 )	
end

--**********************************
--�һ�Ҫ��
--**********************************
function x808036_Exchange_Yaojue( sceneId, selfId, targetId )
    x808036_Exchange_MijiAndYaojue( sceneId, selfId, targetId, 2, 0 )
end


--**********************************
--�����Ҫ��
--**********************************
function x808036_SetAward_Yaojue( sceneId, selfId, targetId )
	local CompleteFlag = x808036_GetExchangeCompleteFlag( sceneId, selfId )

	if( CompleteFlag ~= 1 ) then    --��־Ϊ1Ϊ�ɹ�
		x808036_SetExchangeCompleteFlag( sceneId, selfId )
		local Ret = LuaFnDelAvailableItem(sceneId, selfId, x808036_g_NeedItemID, x808036_g_NeedItemCount_Yaojue )
	    
	    if Ret > 0 then      --ɾ��������Ҫ������һ��	        	      
			local AwardID = x808036_GetAwardItemID_Yaojue( sceneId, selfId )			    
			if -1 ~= AwardID then
				BeginAddItem(sceneId)        --�������Ҫ��
					AddItem( sceneId, AwardID, 1 )
				local Ret = EndAddItem(sceneId,selfId)
				if Ret > 0 then
					AddItemListToHuman(sceneId,selfId)
					local szItemTransfer = GetItemTransfer(sceneId,selfId,0)
					local PlayerName = GetName( sceneId, selfId )
					local PlayerInfoName = "#{_INFOUSR"..PlayerName .."}"
					local ItemInfo = "#{_INFOMSG".. szItemTransfer .."}"
					
					local SysStr = PlayerInfoName.."S� d�ng "..(x808036_g_NeedItemCount_Yaojue).." c�c trang Thi�n th� c�n thi�u, trao �i th�nh c�ng v�i Cung Th�i V�n(170,122) � ��i L� "..ItemInfo.." M�t quy�n"
					BroadMsgByChatPipe( sceneId, selfId, SysStr, 4 )
	
				end
				
			end
		end
		
	end
end

--**********************************
--������ؼ�
--**********************************
function x808036_SetAward_Miji( sceneId, selfId, targetId )
	local CompleteFlag = x808036_GetExchangeCompleteFlag( sceneId, selfId )

	if( CompleteFlag ~= 1 ) then    --��־Ϊ1Ϊ�ɹ�
		x808036_SetExchangeCompleteFlag( sceneId, selfId )
		local Ret = LuaFnDelAvailableItem(sceneId, selfId, x808036_g_NeedItemID, x808036_g_NeedItemCount_Miji )
	    
	    if Ret > 0 then      --ɾ��������Ҫ������һ��	        	      
			local AwardID = x808036_GetAwardItemID_Miji( sceneId, selfId )			    
			if -1 ~= AwardID then
				BeginAddItem(sceneId)        --��������ؼ�
					AddItem( sceneId, AwardID, 1 )
				local Ret = EndAddItem(sceneId,selfId)
				if Ret > 0 then
					AddItemListToHuman(sceneId,selfId)
					local szItemTransfer = GetItemTransfer(sceneId,selfId,0)
					local PlayerName = GetName( sceneId, selfId )
					local PlayerInfoName = "#{_INFOUSR"..PlayerName .."}"
					local ItemInfo = "#{_INFOMSG".. szItemTransfer .."}"
					
					local SysStr = PlayerInfoName.."S� d�ng "..(x808036_g_NeedItemCount_Miji).." c�c trang Thi�n th� c�n thi�u, trao �i th�nh c�ng v�i Cung Th�i V�n(170,122) � ��i L� "..ItemInfo.." m�t quy�n"
					BroadMsgByChatPipe( sceneId, selfId, SysStr, 4 )
	
				end
				
				
			end
		end
		
	end
	    
end


--**********************************
--������ں���
--**********************************
function x808036_OnDefaultEvent( sceneId, selfId, targetId )
    
    x808036_CheckRightTime()
    
    if 1 ~= x808036_g_ExchangeXinfaBook_Active then    --û���ʱ��Ͳ�ִ��(�ݴ�����,��ȷ���̲�Ӧ���õ�����)
        return
    end
    
    local TextNum = GetNumText()
    if TextNum == 1 then        --���˶һ��ؼ�
        x808036_Exchange_Miji( sceneId, selfId, targetId )
    end
    
    if TextNum == 2 then        --���˶һ�Ҫ��
        x808036_Exchange_Yaojue( sceneId, selfId, targetId )
	end
	
	if TextNum == 3 then        --���˶һ��ؼ� --ȷ��	    
	    x808036_Exchange_MijiAndYaojue( sceneId, selfId, targetId, 1, 1 )
    end
    
    if TextNum == 4 then        --���˶һ�Ҫ�� --ȷ��
        x808036_Exchange_MijiAndYaojue( sceneId, selfId, targetId, 2, 1 )
	end
	
    if TextNum == 5 then
        local strContex = "#{EXCHANGEXFMJ_HELP_001}"
        BeginEvent(sceneId)
            AddText( sceneId, strContex )
        EndEvent()
        DispatchEventList( sceneId, selfId, targetId )
	end
end

--**********************************
--����Ƿ���ȷ�Ļʱ��
--**********************************
function x808036_CheckRightTime()
    local DayTime = GetDayTime()
    
    if DayTime < 7107 then      --07��107��(4��18��)
       x808036_g_ExchangeXinfaBook_Active = 0
       return 0    --��ǰ�ǻʱ��
    end
    
    if DayTime >= 7123 then      --07��114��(5��4��)
       x808036_g_ExchangeXinfaBook_Active = 0
       return 0    --�˺��Ѿ�����
    end
    
    x808036_g_ExchangeXinfaBook_Active = 1
    return 1
    
end

--**********************************
--�о��¼�
--**********************************
function x808036_OnEnumerate( sceneId, selfId, targetId )
    
    x808036_CheckRightTime()
    
    if 1 ~= x808036_g_ExchangeXinfaBook_Active then
        return
    end
    
    local strMiji = "Ho�n �i b� t�ch 35"
    local strYaojue = "Ho�n �i y�u quy�t 65"
    
    AddNumText(sceneId, x808036_g_ScriptId, strMiji, 1, 1 )
    AddNumText(sceneId, x808036_g_ScriptId, strYaojue, 1, 2 )
    
 AddNumText(sceneId, x808036_g_ScriptId, "бi m�t t�ch, y�u quy�t", 11, 5 )
    
end

--**********************************
--����������
--**********************************
function x808036_CheckAccept( sceneId, selfId )

end

--**********************************
--����
--**********************************
function x808036_OnAccept( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x808036_OnAbandon( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x808036_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--����Ƿ�����ύ
--**********************************
function x808036_CheckSubmit( sceneId, selfId )
end

--**********************************
--�ύ
--**********************************
function x808036_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--ɱ����������
--**********************************
function x808036_OnKillObject( sceneId, selfId, objdataId ,objId )

end

--**********************************
--���������¼�
--**********************************
function x808036_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x808036_OnItemChanged( sceneId, selfId, itemdataId )
end