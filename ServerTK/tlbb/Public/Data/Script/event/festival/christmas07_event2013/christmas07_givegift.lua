--�����
--ʥ����Ԫ���-�ռ����ɵ��߻�����

--�ű���
--NPC  Gia cat khong minh - Lac Duong
x050026_g_ScriptId = 050026



x050026_g_HeKaId = {
	                 20310011,
	                 20310017,
	                 20310012,
	                 20310019,
	                 20310014,
	                 20310018,
	                 20310015,
	                 20310016,
	                 20310013,	
}			                                   --�ؿ�ID

x050026_g_GiftId = {
	                30509051,            --Lao �ng t�i quang vinh
	                30509050,            --Trang sinh hi�u m�ng
			30501125,            --Dich Dung �an: C�y Gi�ng Sinh
	                30008014,            --Th�ng Thi�n Linh �an
			30900016,	--cao c�p h�p th�nh ph�
			30008019,	--Уc X� L�nh
	                10141140,            --Th� c��i: H�c Th�
	                10141136,            --Th� c��i: B�ch V�n
			
}			                                   --��ƷID

--**********************************
--������ں���
--**********************************
function x050026_OnDefaultEvent( sceneId, selfId, targetId )

	local isTime = x050026_CheckRightTime()
	if 1 ~= isTime then
		return
	end

	local NumText = GetNumText()


	if NumText == 111 then
	  BeginEvent(sceneId)
			AddText(sceneId, "#{CHRISTMAS_LUOYANG_HTJS_2}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 112 then
	  BeginEvent(sceneId)
	    local getgiftcount = x050026_GetGiftCount(sceneId, selfId) + 1
	    local str
	    if getgiftcount > 10 then          --������6����Ϊ��Խ�ϰ��Ӧ����ʱ��Ϊ 10 ��ʾ�ϻ��е�С���⵫�ǹ�������
	       str = "C�c h� �� nh�n s� l��ng Thi�p Ch�c ��, do �� kh�ng th� nh�n th�m ���c n�a."
	    else
	       str = format("C�c h� quy�t �nh s� d�ng Thi�p ch�c ng�y l� c�a C�u ��i m�n ph�i ti�n h�nh �i l�n %d c�a ng�y h�m nay kh�ng ?", getgiftcount);
			end
			AddText(sceneId, str);
			AddNumText(sceneId, x050026_g_ScriptId,"Duy�t", 8, 113);
			AddNumText(sceneId, x050026_g_ScriptId,"Hu�", 8, 114);
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 113 then
	  x050026_GivePlayerGift( sceneId, selfId, targetId )	
	elseif NumText == 114 then
	  -- �رմ���
	  BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
	end
	
end

--**********************************
--�о��¼�
--**********************************
function x050026_OnEnumerate( sceneId, selfId, targetId )
  
  --���ʱ���Ƿ���ȷ
	local isTime = 1 -- x050026_CheckRightTime()
	if 1 ~= isTime then
		return
	end

	AddNumText(sceneId, x050026_g_ScriptId, "Gi�i thi�u �i l� ph�m", 6, 111 )
	AddNumText(sceneId, x050026_g_ScriptId, "бi l� ph�m", 6, 112 )													
end

--**********************************
--���ʱ���Ƿ���ȷ
--**********************************
function x050026_CheckRightTime( sceneId )
	  
	local today = GetDayTime()						--��ǰʱ��
	local firstDay = 7356								-- 2007�� 12 �� 23 ��
	local lastDay = 8003								-- 2008�� 1  �� 4  ��
	  
	-- 12 �� 31 �� 0 ʱ ~ 1 �� 7 �� 24 ʱ
	if today <= firstDay or today >= lastDay then
		--return 0 --hd edit
	end

	return 1

end

--**********************************
--������������
--**********************************
function x050026_GivePlayerGift( sceneId, selfId, targetId )

	--�رնԻ�����....
	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 1000 )

	--�����ҵȼ�С��25���軻ȡ�ؿ�
	if	GetLevel( sceneId, selfId) < 25 then
		BeginEvent(sceneId)
			AddText( sceneId, "��ng c�p c�a c�c h� kh�ng ��, kh�ng th� �i ph�n th߷ng." )
		EndEvent(sceneId)
		DispatchMissionTips( sceneId, selfId )
		return
	end
	
	--����1���������....
	local ShaoLinHeKaCount = LuaFnGetAvailableItemCount(sceneId, selfId, x050026_g_HeKaId[1])
	local MingJiaoHeKaCount = LuaFnGetAvailableItemCount(sceneId, selfId, x050026_g_HeKaId[2])
	local GaiBangHeKaCount = LuaFnGetAvailableItemCount(sceneId, selfId, x050026_g_HeKaId[3])
	local WuDangHeKaCount = LuaFnGetAvailableItemCount(sceneId, selfId, x050026_g_HeKaId[4])
	local EMeiHeKaCount = LuaFnGetAvailableItemCount(sceneId, selfId, x050026_g_HeKaId[5])
	local XingSuHeKaCount = LuaFnGetAvailableItemCount(sceneId, selfId, x050026_g_HeKaId[6])
	local DaLiHeKaCount = LuaFnGetAvailableItemCount(sceneId, selfId, x050026_g_HeKaId[7])
	local TianShanHeKaCount = LuaFnGetAvailableItemCount(sceneId, selfId, x050026_g_HeKaId[8])
  local XiaoYaoHeKaCount = LuaFnGetAvailableItemCount(sceneId, selfId, x050026_g_HeKaId[9])

  local result = 1
  if ShaoLinHeKaCount < 1 then
    result = 0
  elseif MingJiaoHeKaCount < 1 then
    result = 0
  elseif GaiBangHeKaCount < 1 then
    result = 0
  elseif WuDangHeKaCount < 1 then
    result = 0
  elseif EMeiHeKaCount < 1 then
    result = 0
  elseif XingSuHeKaCount < 1 then
    result = 0
  elseif DaLiHeKaCount < 1 then
    result = 0
  elseif TianShanHeKaCount < 1 then
    result = 0
  elseif XiaoYaoHeKaCount < 1 then
    result = 0
  end    
    
  if result == 0 then
		BeginEvent(sceneId)
			AddText( sceneId, "C�c h� v�n ch�a thu th�p �� to�n b� Thi�p ch�c c�a c�c m�n ph�i, kh�ng th� ti�n h�nh �i." )
		EndEvent(sceneId)
		DispatchMissionTips( sceneId, selfId )
		return
	end
	
	local td = GetDayTime()
	local LastGetGiftTime = GetMissionData(sceneId,selfId,MD_GETGIFT_TIME)
	if td > LastGetGiftTime then
	    SetMissionData( sceneId, selfId, MD_GETGIFT_COUNT, 0 )
	    SetMissionData( sceneId, selfId, MD_GETGIFT_TIME, td )
	end
		
	local GetGiftCount = GetMissionData(sceneId,selfId,MD_GETGIFT_COUNT)
	
	if GetGiftCount >= 10 then
		BeginEvent(sceneId)
			AddText( sceneId, "C�c h� �� s� d�ng h�t t�t c� c� h�i �i ph�n th߷ng c�a ng�y h�m nay r�i, ng�y mai l�i �n nh�." )
		EndEvent(sceneId)
		DispatchMissionTips( sceneId, selfId )
		return
	end	
	
	--��ⱳ���Ƿ��еط�....
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
		BeginEvent(sceneId)
			AddText( sceneId, "Kh�ng gian tay n�i kh�ng ��, kh�ng th� ti�n h�nh �i ph�n th߷ng." )
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	--�Ƿ�ɾ��ʧ��....
	for i, v in x050026_g_HeKaId do
	  if LuaFnDelAvailableItem(sceneId, selfId, v, 1) == 0 then
			 BeginEvent(sceneId)
			 AddText( sceneId, "C�c h� v�n ch�a thu th�p �� to�n b� Thi�p ch�c c�a c�c m�n ph�i, kh�ng th� ti�n h�nh �i." )
		   EndEvent(sceneId)
		   DispatchMissionTips( sceneId, selfId )
		   return
		 end
	 end
	    
	    
	local odds = random(1,100)
	local GiftId = 0   --����ID
	local GiftNum = 0  --��������
	local strtext
	--�����������
	if(GetGiftCount == 0) then             -- ��һ�λ�����
	  if( odds >= 1 and odds <= 32 ) then
	    GiftId = x050026_g_GiftId[1]
	    GiftNum = 3
	    strtext = "Ch�c m�ng c�c h� thu ���c l� v�t Tuy�t c�u h�nh ph�c, ch�c c�c h� ch�i game  vui v�!"
	  elseif( odds >= 33 and odds <= 65 ) then
	    GiftId = x050026_g_GiftId[2]
	    GiftNum = 1
	    strtext = "Ch�c m�ng c�c h� thu ���c l� v�t ph�o hoa Nguy�n ��n, ch�c c�c h� ch�i game  vui v�!"
	  elseif( odds >= 66 and odds <= 98 ) then
	    GiftId = x050026_g_GiftId[3]
	    GiftNum = 1
	    strtext = "Ch�c m�ng c�c h� thu ���c l� v�t Dich Dung �an: H�p K�o, ch�c c�c h� ch�i game  vui v�!"
	  elseif( odds >= 99 and odds <= 100 ) then
	    GiftId = x050026_g_GiftId[6]
	    GiftNum = 1
	    strtext = "Ch�c m�ng c�c h� thu ���c l� v�t Th�ng Thi�n Linh �an, ch�c c�c h� ch�i game  vui v�!"
	  end	
	elseif(GetGiftCount == 1) then           -- �ڶ��λ�����
	  if( odds >= 1 and odds <= 30 ) then
	    GiftId = x050026_g_GiftId[1]
	    GiftNum = 3
	    strtext = "Ch�c m�ng c�c h� thu ���c l� v�t Tuy�t c�u h�nh ph�c, ch�c c�c h� ch�i game  vui v�!"
	  elseif( odds >= 31 and odds <= 63 ) then
	    GiftId = x050026_g_GiftId[2]
	    GiftNum = 1
	    strtext = "Ch�c m�ng c�c h� thu ���c l� v�t ph�o hoa Nguy�n ��n, ch�c c�c h� ch�i game  vui v�!"
	  elseif( odds >= 64 and odds <= 93 ) then
	    GiftId = x050026_g_GiftId[4]
	    GiftNum = 1
	    strtext = "Ch�c m�ng c�c h� thu ���c l� v�t D�ch Dung �an: ��i Linh �an, ch�c c�c h� ch�i game  vui v�!"
	  elseif( odds >= 94 and odds <= 98 ) then
	    GiftId = x050026_g_GiftId[6]
	    GiftNum = 1
	    strtext = "Ch�c m�ng c�c h� thu ���c l� v�t Th�ng Thi�n Linh �an, ch�c c�c h� ch�i game  vui v�!"
	  elseif( odds >= 99 and odds <= 100 ) then
	    GiftId = x050026_g_GiftId[8]
	    GiftNum = 1
	    strtext = "Ch�c m�ng c�c h� thu ���c l� v�t Th� C��i H�c Th�, ch�c c�c h� ch�i game  vui v�!"
	  end	
	elseif(GetGiftCount == 2) then            -- �����λ�����
	  if( odds >= 1 and odds <= 30 ) then
	    GiftId = x050026_g_GiftId[1]
	    GiftNum = 3
	    strtext = "Ch�c m�ng c�c h� thu ���c l� v�t Tuy�t c�u h�nh ph�c, ch�c c�c h� ch�i game  vui v�!"
	  elseif( odds >= 31 and odds <= 60 ) then
	    GiftId = x050026_g_GiftId[2]
	    GiftNum = 1
	    strtext = "Ch�c m�ng c�c h� thu ���c l� v�t ph�o hoa Nguy�n ��n, ch�c c�c h� ch�i game  vui v�!"
	  elseif( odds >= 61 and odds <= 90 ) then
	    GiftId = x050026_g_GiftId[5]
	    GiftNum = 1
	    strtext = "Ch�c m�ng c�c h� thu ���c l� v�t Dich dung �an: C�y Th�ng, ch�c c�c h� ch�i game  vui v�!"
	  elseif( odds >= 91 and odds <= 95 ) then
	    GiftId = x050026_g_GiftId[6]
	    GiftNum = 1
	    strtext = "Ch�c m�ng c�c h� thu ���c l� v�t Th�ng Thi�n Linh �an, ch�c c�c h� ch�i game  vui v�!"
	  elseif( odds >= 96 and odds <= 100 ) then
	    GiftId = x050026_g_GiftId[7]
	    GiftNum = 1
	    strtext = "Ch�c m�ng c�c h� thu ���c l� v�t Th� c��i B�ch V�n, ch�c c�c h� ch�i game  vui v�!"
	  end		
	elseif(GetGiftCount == 3) then            -- ���Ĵλ�����
	  if( odds >= 1 and odds <= 15 ) then
	    GiftId = x050026_g_GiftId[1]
	    GiftNum = 3
	    strtext = "Ch�c m�ng c�c h� thu ���c l� v�t Tuy�t c�u h�nh ph�c, ch�c c�c h� ch�i game  vui v�!"
	  elseif( odds >= 16 and odds <= 30 ) then
	    GiftId = x050026_g_GiftId[2]
	    GiftNum = 1
	    strtext = "Ch�c m�ng c�c h� thu ���c l� v�t ph�o hoa Nguy�n ��n, ch�c c�c h� ch�i game  vui v�!"
	  elseif( odds >= 31 and odds <= 50 ) then
	    GiftId = x050026_g_GiftId[3]
	    GiftNum = 1
	    strtext = "Ch�c m�ng c�c h� thu ���c l� v�t Dich Dung �an: H�p K�o, ch�c c�c h� ch�i game  vui v�!"
	  elseif( odds >= 51 and odds <= 70 ) then
	    GiftId = x050026_g_GiftId[4]
	    GiftNum = 1
	    strtext = "Ch�c m�ng c�c h� thu ���c l� v�t D�ch Dung �an: ��i Linh �an, ch�c c�c h� ch�i game  vui v�!"
	  elseif( odds >= 71 and odds <= 90 ) then
	    GiftId = x050026_g_GiftId[5]
	    GiftNum = 1
	    strtext = "Ch�c m�ng c�c h� thu ���c l� v�t Dich dung �an: C�y Th�ng, ch�c c�c h� ch�i game  vui v�!"
	  elseif( odds >= 91 and odds <= 95 ) then
	    GiftId = x050026_g_GiftId[8]
	    GiftNum = 1
	    strtext = "Ch�c m�ng c�c h� thu ���c l� v�t Th� c��i B�ch V�n, ch�c c�c h� ch�i game  vui v�!"
	  elseif( odds >= 96 and odds <= 100 ) then
	    GiftId = x050026_g_GiftId[7]
	    GiftNum = 1
	    strtext = "Ch�c m�ng c�c h� thu ���c l� v�t Th� c��i H�c Th�, ch�c c�c h� ch�i game  vui v�!"
	  end	
	elseif(GetGiftCount == 4 or GetGiftCount == 5) then     -- ����λ���������λ�����
	  if( odds >= 1 and odds <= 15 ) then
	    GiftId = x050026_g_GiftId[1]
	    GiftNum = 3
	    strtext = "Ch�c m�ng c�c h� thu ���c l� v�t Tuy�t c�u h�nh ph�c, ch�c c�c h� ch�i game  vui v�!"
	  elseif( odds >= 16 and odds <= 30 ) then
	    GiftId = x050026_g_GiftId[2]
	    GiftNum = 1
	    strtext = "Ch�c m�ng c�c h� thu ���c l� v�t ph�o hoa Nguy�n ��n, ch�c c�c h� ch�i game  vui v�!"
	  elseif( odds >= 31 and odds <= 45 ) then
	    GiftId = x050026_g_GiftId[3]
	    GiftNum = 1
	    strtext = "Ch�c m�ng c�c h� thu ���c l� v�t Dich Dung �an: H�p K�o, ch�c c�c h� ch�i game  vui v�!"
	  elseif( odds >= 46 and odds <= 60 ) then
	    GiftId = x050026_g_GiftId[4]
	    GiftNum = 1
	    strtext = "Ch�c m�ng c�c h� thu ���c l� v�t D�ch Dung �an: ��i Linh �an, ch�c c�c h� ch�i game  vui v�!"
	  elseif( odds >= 61 and odds <= 74 ) then
	    GiftId = x050026_g_GiftId[5]
	    GiftNum = 1
	    strtext = "Ch�c m�ng c�c h� thu ���c l� v�t Dich dung �an: C�y Th�ng, ch�c c�c h� ch�i game  vui v�!"
	  elseif( odds >= 75 and odds <= 80 ) then
	    GiftId = x050026_g_GiftId[6]
	    GiftNum = 1
	    strtext = "Ch�c m�ng c�c h� thu ���c l� v�t Th�ng Thi�n Linh �an, ch�c c�c h� ch�i game  vui v�!"
	  elseif( odds >= 81 and odds <= 90 ) then
	    GiftId = x050026_g_GiftId[8]
	    GiftNum = 1
	    strtext = "Ch�c m�ng c�c h� thu ���c l� v�t Th� c��i H�c Th�, ch�c c�c h� ch�i game  vui v�!"
	  elseif( odds >= 91 and odds <= 100 ) then
	    GiftId = x050026_g_GiftId[7]
	    GiftNum = 1
	    strtext = "Ch�c m�ng c�c h� thu ���c l� v�t Th� c��i B�ch V�n, ch�c c�c h� ch�i game  vui v�!"
	  end	
	  elseif(GetGiftCount > 5) then     -- ����λ���������λ�����
	  if( odds >= 1 and odds <= 15 ) then
	    GiftId = x050026_g_GiftId[1]
	    GiftNum = 3
	    strtext = "Ch�c m�ng c�c h� thu ���c l� v�t Tuy�t c�u h�nh ph�c, ch�c c�c h� ch�i game  vui v�!"
	  elseif( odds >= 16 and odds <= 30 ) then
	    GiftId = x050026_g_GiftId[2]
	    GiftNum = 1
	    strtext = "Ch�c m�ng c�c h� thu ���c l� v�t ph�o hoa Nguy�n ��n, ch�c c�c h� ch�i game  vui v�!"
	  elseif( odds >= 31 and odds <= 45 ) then
	    GiftId = x050026_g_GiftId[3]
	    GiftNum = 1
	    strtext = "Ch�c m�ng c�c h� thu ���c l� v�t Dich Dung �an: H�p K�o, ch�c c�c h� ch�i game  vui v�!"
	  elseif( odds >= 46 and odds <= 60 ) then
	    GiftId = x050026_g_GiftId[4]
	    GiftNum = 1
	    strtext = "Ch�c m�ng c�c h� thu ���c l� v�t D�ch Dung �an: ��i Linh �an, ch�c c�c h� ch�i game  vui v�!"
	  elseif( odds >= 61 and odds <= 74 ) then
	    GiftId = x050026_g_GiftId[5]
	    GiftNum = 1
	    strtext = "Ch�c m�ng c�c h� thu ���c l� v�t Dich dung �an: C�y Th�ng, ch�c c�c h� ch�i game  vui v�!"
	  elseif( odds >= 75 and odds <= 80 ) then
	    GiftId = x050026_g_GiftId[6]
	    GiftNum = 1
	    strtext = "Ch�c m�ng c�c h� thu ���c l� v�t Th�ng Thi�n Linh �an, ch�c c�c h� ch�i game  vui v�!"
	  elseif( odds >= 81 and odds <= 90 ) then
	    GiftId = x050026_g_GiftId[8]
	    GiftNum = 1
	    strtext = "Ch�c m�ng c�c h� thu ���c l� v�t Th� c��i H�c Th�, ch�c c�c h� ch�i game  vui v�!"
	  elseif( odds >= 91 and odds <= 100 ) then
	    GiftId = x050026_g_GiftId[7]
	    GiftNum = 1
	    strtext = "Ch�c m�ng c�c h� thu ���c l� v�t Th� c��i B�ch V�n, ch�c c�c h� ch�i game  vui v�!"
	  end	
	end
	
	BeginAddItem( sceneId )
		nIndex = AddItem( sceneId, GiftId, GiftNum )
	local ret = EndAddItem( sceneId, selfId )
	if ret <= 0 then 
		return
	end
	AddItemListToHuman(sceneId,selfId)
	SetMissionData( sceneId, selfId, MD_GETGIFT_COUNT, GetGiftCount+1 )
	
	BeginEvent( sceneId )
		AddText( sceneId, strtext )
	EndEvent( sceneId )
  DispatchMissionTips( sceneId, selfId )
  
	--ϵͳ����
	local	bagpos = -1
	bagpos = GetBagPosByItemSn(sceneId, selfId, GiftId)
		
  local ItemInfo
	if bagpos ~= -1 then
	  ItemInfo = GetBagItemTransfer( sceneId, selfId, bagpos )
	end
	local PlayerName = GetName(sceneId,selfId)
	local str = format( "#cff99ccT�ng T�ng X�ng! L�c D߽ng n�o nhi�t v� c�ng, #{_INFOUSR%s} mang tr�n tay Thi�p ch�c ng�y l� c�a C�u ��i m�n ph�i �i l� ph�m #{_INFOMSG%s} vui v� ra v�. Nguy�n ch�c cho t�t c� c�c ��i hi�p Gi�ng sinh An l�nh N�m m�i H�nh Ph�c!", PlayerName, ItemInfo )
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )

end

--**********************************
--��ý�����ȡ��Ʒ����
--**********************************
function x050026_GetGiftCount( sceneId, selfId )
	  
	local td = GetDayTime()
	local LastGetGiftTime = GetMissionData(sceneId,selfId,MD_GETGIFT_TIME)

	if td > LastGetGiftTime then
	    SetMissionData( sceneId, selfId, MD_GETGIFT_COUNT, 0 )
	    SetMissionData( sceneId, selfId, MD_GETGIFT_TIME, td )
	end
		
	local GetGiftCount = GetMissionData(sceneId,selfId,MD_GETGIFT_COUNT)

	return GetGiftCount

end

--**********************************
--����������
--**********************************
function x050026_CheckAccept( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x050026_OnAccept( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x050026_OnAbandon( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x050026_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--����Ƿ�����ύ
--**********************************
function x050026_CheckSubmit( sceneId, selfId )
end

--**********************************
--�ύ
--**********************************
function x050026_OnSubmit( sceneId, selfId, targetId, selectRadioId )
end

--**********************************
--ɱ����������
--**********************************
function x050026_OnKillObject( sceneId, selfId, objdataId ,objId )
end

--**********************************
--���������¼�
--**********************************
function x050026_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x050026_OnItemChanged( sceneId, selfId, itemdataId )
end
