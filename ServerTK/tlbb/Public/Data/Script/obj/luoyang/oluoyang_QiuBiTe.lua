--���˽ڻ
--�һ����˽�����

--�ű���
x000152_g_ScriptId = 000152

x000152_StartTime   = 14044 --14/2/2014
x000152_EndTime     = 14059 --01/03/2014

x000152_g_Gift = 	30501166

x000152_item1 = 20700011 --t�nh nh�n k�t
x000152_item1_need = 520
x000152_item1_recv = 30504132 --Tr�ng tr�n th�: Ch߽ng Ng�
x000152_item2 = 20700012 --si t�nh ng�c
--buffer��Ӧ��ID
x000152_BufferID = 74

x000152_g_GiftTbl = {
	30505193,
	30505194,
	38000529,
}

x000152_ItemList_ThuCuoi_VIP ={
	30309724,-- Tr�ng tr�n th�: Ni�n Th� 85
	30309725,-- Tr�ng tr�n th�: Ni�n Th� 95 
	30505121, --Tr�ng X� Nga V߽ng
	30309095, --Tr�ng tr�n th� : Mao Mao Ng�u
	30309092,--Tr�ng tr�n th� : Th�i Th��ng Long T�
	38000529, --B� T�ch T�n Di�p
	30309097,--Tr�ng tr�n th� : Ti�u L�ng Nh�n
	30309098, --Tr�ng tr�n th� : Phong �i�u
	30309091, --Tr�ng tr�n th� : An T�
	30309096,--Tr�ng tr�n th� : Gi�n Ti�u Hoa
	30309094,-- Tr�ng tr�n th� : Th�nh Trang Ti�u L�c
	30309092,-- Tr�ng tr�n th� : Th�i Th��ng Long T�
	30309093 , --Tr�ng tr�n th� : C�n Lu�n Ti�n Tu�n
--10141431,--M� V� v�nh c�u
--10141432,--Th� c��i: V�n Th�y Kim T�nh Th�
--10141433,--Th� c��i: X�ch Ti�u Vi�m Lang
--10141434,--Th� c��i: Thi�n H� Linh Th߾c

--10141435,--Th� c��i: H�c Thi�n M�
--10141436,--Th� c��i: U Lam H�i Long
--10141437,--Th� c��i: Huy�n аng H�i Long
--10141438,--Th� c��i: �m Vi�n H�c Thi�n V�n
--10141439,--Th� c��i: �m Vi�n B�ch Thi�n V�n

--Add th� 6/2013
10141470,--T�a k�: Tinh H�ng V�n Ch�u
10141476,--Th� c��i: �m Vi�m Minh S�
10141483,--Th� c��i: H� Kh�ng H�ng H�n
10141489,--Th� c��i: T߶ng V�n H�c
-- Add th� 10/2013
--10141505,--Th� c��i: �ng Long Huy�n H�n

-- Add th� DM
--10141492,--Th� c��i: Kim Ti�n B�o
--10141493,--Th� c��i: V�n Tuy�t B�o
--10141497,--Th� c��i: U Minh B�o
-- Add thu 1/2014
--10141521,--T�a k�: Nhung Tuy�t Th�n Ng�u
10141546,--T�a k�: Чu Чu Tuy�t Khi�u
10141534,--T�a k�: Th߽ng H�i Long C�u
--10141540,--T�a k�: B�ch Bi�n Kim C߽ng

10141507,--C�nh: Vi�m V� 30

10141535,--T�a k�: Th߽ng H�i Long C�u 30
}

--**********************************
--�¼��������
--**********************************
function x000152_OnDefaultEvent( sceneId, selfId,targetId  )
	BeginEvent(sceneId)
		AddText(sceneId,"#{QRJ_81009_02}")
		local curDayTime = GetDayTime()
		if (curDayTime>=x000152_StartTime and curDayTime<x000152_EndTime) then
			AddNumText(sceneId,x000152_g_ScriptId,"Nh�n l�nh �i Th�n Chi Ti�n",6,0)
			AddNumText(sceneId,x000152_g_ScriptId,"бi ph�n th߷ng N� H�n �i Th�n",6,1)
			AddNumText(sceneId,x000152_g_ScriptId,"Hoa H�ng Truy�n T�nh",6,1000)
		end 
		AddNumText(sceneId,x000152_g_ScriptId,"Li�n quan ho�t �ng N� H�n �i Th�n",11,2)
		AddNumText(sceneId, x000152_g_ScriptId, "#{YHJZ_081007_2}", 11, 3);
		
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x000152_OnEventRequest( sceneId, selfId, targetId, eventId )
		
		if GetNumText() == 0 then
			x000152_GiveArrow(sceneId, selfId, targetId, eventId)
		elseif GetNumText() == 1 then
			x000152_GiveGift(sceneId, selfId, targetId, eventId)
		elseif GetNumText() == 2 then
			x000152_NotifyFailBox(sceneId, selfId,targetId,"#{QRJ_81009_01}")
		elseif GetNumText() == 3 then
			x000152_NotifyFailBox(sceneId, selfId, targetId,"#{YHJZ_081007_48}")
		elseif GetNumText() == 1000 then --hoa hong truyen tinh
			BeginEvent(sceneId)
				AddNumText(sceneId,x000152_g_ScriptId,"Nh�n ph�n th߷ng Hoa H�ng Truy�n T�nh",6,1001)
				AddNumText(sceneId,x000152_g_ScriptId,"бi danh hi�u Hoa H�ng Truy�n T�nh",6,1002)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			
		elseif GetNumText() == 1001 then
			x000152_hoahong_truyentinh(sceneId, selfId, targetId, eventId)
		elseif GetNumText() == 1002 then
			x000152_doidanhhieu_truyentinh(sceneId, selfId, targetId, eventId)
		end
		
end

--**********************************
-- �Ի�������Ϣ��ʾ
--**********************************
function x000152_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

function x000152_GiveArrow(sceneId, selfId, targetId, eventId)
		--20��������
		if GetLevel( sceneId, selfId ) < 20 then
			x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_03}" )
			return
		end
		
		--�жϽ����Ƿ����
		local td = GetDayTime()
		local LastGetGiftTime = GetMissionData(sceneId,selfId,MD_QINGRENJIE_ARROWDAY)
		if td <= LastGetGiftTime then
				x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_04}" )
			return
		    --SetMissionData( sceneId, selfId, MD_QINGRENJIE_ARROWCOUNT, 0 )
		    SetMissionData( sceneId, selfId, MD_QINGRENJIE_ARROWDAY, td )			
		end 
		
		-- ��鱳���ռ�
		if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
				BeginEvent(sceneId)
				AddText( sceneId, "#{QRJ_81009_14}" )
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
		else
			
				--����Ҷ��������
			BeginAddItem( sceneId )
				local nIndex = AddItem( sceneId, x000152_g_Gift, 1 )
			local ret = EndAddItem( sceneId, selfId )
			if ret <= 0 then 
				return
			end
			AddItemListToHuman(sceneId,selfId)
			--����NPC�ĶԻ� 
			x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_24}" )
			
			--��Ŀ��ʾ
			BeginEvent(sceneId) 
				AddText( sceneId, "#{QRJ_81009_25}" )
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			--SetMissionData(sceneId, selfId, MD_QINGRENJIE_ARROWCOUNT,1)
			SetMissionData(sceneId, selfId, MD_QINGRENJIE_ARROWDAY,td)
		end
		
end 
--**********************************
-- �Ի�������Ϣ��ʾ
--**********************************
function x000152_GiveGift(sceneId, selfId, targetId, eventId)

	if LuaFnHasTeam( sceneId, selfId ) == 0 then
		x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_06}" )
		return
	end
	if LuaFnIsTeamLeader( sceneId, selfId ) == 0 then 
		x000152_NotifyFailBox( sceneId, selfId,targetId, "#{QRJ_81009_07}" )
		return
	end
	
	if GetTeamSize( sceneId, selfId ) ~=2 then
	  x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_08}" )
	  return
	end
	
		-- ȡ����Ҹ����Ķ��������������Լ���
	local nearteammembercount = GetNearTeamCount( sceneId, selfId )
	
	if nearteammembercount ~= LuaFnGetTeamSize( sceneId, selfId ) then
		x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_09}" )
		return
	end
	
	--����Ա��GUID,��ת��ΪOBjID
	local ID1 = GetNearTeamMember( sceneId, selfId, 0 )
	local ID2 = GetNearTeamMember( sceneId, selfId, 1 )
	
	--�ж����˵��Ա�
	if (LuaFnGetSex(sceneId,ID1) == LuaFnGetSex(sceneId,ID2)) then
		x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_10}" )
		return
	end
	
	--�жϽ����Ƿ����
	local td = GetDayTime()
	local LastSelfGiftTime  = GetMissionData(sceneId,ID1,MD_QINGRENJIE_KISSDAY)
	
	--��¼�Ѿ��콱������
	local iCount = 0
	--��¼�Ѿ��콱������
	local strName =""
	
	--�ӳ��Ƿ����
	if (td <= LastSelfGiftTime) then
		iCount =iCount+1
		strName = LuaFnGetName(sceneId,ID1)
		--x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_12}"..LuaFnGetName(sceneId,ID1).."#{QRJ_81009_13}" )
	end 
	
	--��Ա�Ƿ����
	LastSelfGiftTime  = GetMissionData(sceneId,ID2,MD_QINGRENJIE_KISSDAY)
	
	if (td <= LastSelfGiftTime) then
		iCount =iCount+1
		strName = LuaFnGetName(sceneId,ID2)
		--x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_12}"..LuaFnGetName(sceneId,ID2).."#{QRJ_81009_13}" )
	end 
	
	if (iCount ==1) then
		x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_12}"..strName.."#{QRJ_81009_13}" )
		return 
	end
	if (iCount ==2) then
		x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81114_1}" )
		return 
	end
	
	--������ͬʱ���˰���֮��
	if (0==LuaFnHaveImpactOfSpecificDataIndex(sceneId, ID1,x000152_BufferID) or 0==LuaFnHaveImpactOfSpecificDataIndex(sceneId, ID2,x000152_BufferID)) then
		x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_11}" )
		return
	end
	
	
	
	-- �ӳ���鱳���ռ�
	if LuaFnGetPropertyBagSpace( sceneId, ID1 ) < 1 then
			--������ʾ���ı����ռ䲻��
			BeginEvent(sceneId)
			AddText( sceneId, "#{QRJ_81009_14}" )
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,ID1)
			--��һ����ʾAAA�����ռ䲻��
			BeginEvent(sceneId)
			AddText( sceneId, LuaFnGetName(sceneId,ID1).."#{QRJ_81009_15}" )
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,ID2)
			return
	end 
		
	--��Ա��鱳���ռ�
	if LuaFnGetPropertyBagSpace( sceneId, ID2 ) < 1 then
			--������ʾ���ı����ռ䲻��
			BeginEvent(sceneId)
			AddText( sceneId, "#{QRJ_81009_14}" )
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,ID2)
			--��һ����ʾAAA�����ռ䲻��
			BeginEvent(sceneId)
			AddText( sceneId, LuaFnGetName(sceneId,ID2).."#{QRJ_81009_15}" )
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,ID1)
			return
	end 
		
	--ɾ���������ϵ�buffer
	LuaFnCancelSpecificImpact(sceneId, ID1,x000152_BufferID)
	LuaFnCancelSpecificImpact(sceneId, ID2,x000152_BufferID)
		
	--�����˰���֮�ǽ���
	local nGiftIndex = x000152_RandomGift()

	BeginAddItem( sceneId )
	local nIndex = AddItem( sceneId, x000152_g_GiftTbl[nGiftIndex], 1 )
	local ret = EndAddItem( sceneId, ID1 )
	if ret <= 0 then 
		return
	end
	AddItemListToHuman(sceneId,ID1)
	SetMissionData(sceneId, ID1, MD_QINGRENJIE_KISSDAY,td)
	local str ="#{QRJ_81009_26}#{_ITEM"..x000152_g_GiftTbl[nGiftIndex].."}"
	--�������Ŀ��ʾ
		BeginEvent(sceneId)
			AddText( sceneId, str)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,ID1)
	
	if (nGiftIndex ==3) then
		local	bagpos = GetBagPosByItemSn(sceneId, ID1, x000152_g_GiftTbl[nGiftIndex])
		local szTransferEquip = GetBagItemTransfer(sceneId,ID1, bagpos)
		local str = format( "#{_INFOUSR%s}".."#{QRJ_81009_23}#{_INFOMSG%s}#{QRJ_81009_27}", LuaFnGetName(sceneId,ID1),szTransferEquip)
		BroadMsgByChatPipe( sceneId, ID1, str, 4 )
		AuditQingRenJieShiZhuang(sceneId,ID1)
	end 
	
	--�͵ڶ����˰���֮�ǽ���
	nGiftIndex = x000152_RandomGift()
	
	BeginAddItem( sceneId )
	nIndex = AddItem( sceneId, x000152_g_GiftTbl[nGiftIndex], 1 )
	local ret = EndAddItem( sceneId, ID2 )
	if ret <= 0 then 
		return
	end
	
	AddItemListToHuman(sceneId,ID2)
	str ="#{QRJ_81009_26}#{_ITEM"..x000152_g_GiftTbl[nGiftIndex].."}"
	--�������Ŀ��ʾ
	BeginEvent(sceneId)
		AddText( sceneId, str)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,ID2)

	SetMissionData(sceneId, ID2, MD_QINGRENJIE_KISSDAY,td)
	if (nGiftIndex ==3) then
		local	bagpos = GetBagPosByItemSn(sceneId, ID2, x000152_g_GiftTbl[nGiftIndex])
		local szTransferEquip = GetBagItemTransfer(sceneId,ID2, bagpos)
		local str = format( "#{_INFOUSR%s}".."#{QRJ_81009_23}#{_INFOMSG%s}#{QRJ_81009_27}", LuaFnGetName(sceneId,ID2),szTransferEquip)
		BroadMsgByChatPipe( sceneId, ID2, str, 4 )
		AuditQingRenJieShiZhuang(sceneId,ID2)
	end 
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,ID1,18,0)
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,ID2,18,0)
	x000152_NotifyFailBox( sceneId, selfId, targetId, "#{QRJ_81009_16}" )
	
end

--**********************************
-- �����Ʒ��ID��
--**********************************
function x000152_RandomGift()
	local nMsgIndex = random( 1, 100 )
	if (nMsgIndex<49) then
		return 1
	elseif (nMsgIndex<97) then
		return 2
	end
	
	return 3
end

function x000152_hoahong_truyentinh(sceneId, selfId, targetId, eventId)
	--check bag
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
		x000152_AddText( sceneId, selfId,targetId,"T�i ��ng � �� �y. ")
		return
	end
	--check item
	if (LuaFnGetAvailableItemCount( sceneId, selfId, x000152_item1 ) < x000152_item1_need ) then
		x000152_AddText( sceneId, selfId,targetId,"C�c h� kh�ng c� �� "..x000152_item1_need.." T�nh Nh�n K�t. ")
		return
	end
	--delete item
	LuaFnDelAvailableItem(sceneId,selfId, x000152_item1, x000152_item1_need )
	
	--rec
	--TryRecieveItem( sceneId, selfId, x000152_item1_recv, 1 )
	local randomit = random(getn(x000152_ItemList_ThuCuoi_VIP))
	local BagPos = TryRecieveItem(sceneId,selfId,x000152_ItemList_ThuCuoi_VIP[randomit], QUALITY_MUST_BE_CHANGE )
				
	if -1 ~= BagPos then
		--LuaFnItemBind( sceneId, selfId, BagPos) --list2 la yeu quyet mon phai nen khong co dinh	
		local szTransferEquip = GetBagItemTransfer(sceneId,selfId, BagPos)
		str = format("#P#{_INFOUSR%s} tham gia s� ki�n #Y [Hoa H�ng Truy�n T�nh] #P trong l�c mang nh�ng b�ng hoa xinh �p �n t�ng ng߶i y�u �� nh�n ���c #Y#{_INFOMSG%s}", GetName(sceneId,selfId),szTransferEquip)
		BroadMsgByChatPipe(sceneId, selfId, str, 4)
	end
	x000152_NotifyFailTips( sceneId, selfId, "Nh�n ph�n th߷ng th�nh c�ng" )
	x000152_AddText( sceneId, selfId,targetId, "Nh�n ph�n th߷ng th�nh c�ng." )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
end
function x000152_doidanhhieu_truyentinh(sceneId, selfId, targetId, eventId)
	--check item
	local num =LuaFnGetAvailableItemCount( sceneId, selfId, x000152_item2 )
	if (num < 1 ) then
		x000152_AddText( sceneId, selfId,targetId,"C�c h� kh�ng c� �� Si t�nh ng�c ")
		return
	end
	
	local	title_truyentinh	=
	{
		[0]	= { 303,	305, 307 },		--nu
		[1]	= { 304,	306, 308 },		--nam
	}
	
	local title_recv
	if GetSex( sceneId, selfId ) == 0 then
		title_recv	= title_truyentinh[0]
	else
	  	title_recv	= title_truyentinh[1]
	end
	local stt =1
	local num_del =1
	if num >=10 then 
		stt = 3
		num_del = 10
	elseif  num >=3 then
		stt = 2
		num_del = 3
	elseif  num >=1 then
		stt = 1
		num_del = 1
	end
	
	--add title
	AwardTitle( sceneId, selfId, 19, title_recv[stt] )
	LuaFnDispatchAllTitle( sceneId, selfId )
	--delete item
	LuaFnDelAvailableItem(sceneId,selfId, x000152_item2, num_del )
	
	
	x000152_NotifyFailTips( sceneId, selfId, "бi danh hi�u th�nh c�ng" )
	x000152_AddText( sceneId, selfId,targetId, "бi danh hi�u th�nh c�ng." )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
	
end

function x000152_AddText( sceneId, selfId,targetId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchEventList(sceneId,selfId,targetId)
end
function x000152_NotifyFailTips( sceneId, selfId, Tip )

	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
