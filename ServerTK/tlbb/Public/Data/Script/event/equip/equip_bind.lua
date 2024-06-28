--װ����
--�ű���
x809266_g_ScriptId = 809266

--װ����UI 1005

--**********************************
--�о��¼�
--**********************************
function x809266_OnEnumerate( sceneId, selfId, targetId )
	
end

--**********************************
--װ����
--**********************************
function x809266_FinishBind( sceneId, selfId, itemIndex1, itemIndex2 )
	local text = ""
	local ret = LuaFnIsItemLocked( sceneId, selfId, itemIndex1 )
	
	if ret ~= 0 then
		BeginEvent(sceneId)
		AddText(sceneId,"Kh�ng d�ng ���c trang b� n�y");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	-- ����΢��2008.6.11����¥��10422016����¥��10423024�޷����̡�
	local itemTableIndex = LuaFnGetItemTableIndexByIndex( sceneId, selfId, itemIndex1 )
	if itemTableIndex == 10422016 or itemTableIndex == 10423024 then
		BeginEvent(sceneId)
		AddText(sceneId,"Thi�t b� kh�ng th� Kh�c Minh");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	ret = LuaFnIsItemAvailable( sceneId, selfId, itemIndex2 )
	if ret ~= 1 then
		BeginEvent(sceneId)
		AddText(sceneId,"Kh�ng d�ng ���c ph� b� kh�a");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	local equip_level = GetBagItemLevel( sceneId, selfId, itemIndex1 )
	local gem_index = LuaFnGetItemTableIndexByIndex( sceneId, selfId, itemIndex2 )
	if equip_level < 50 then
		if gem_index ~= 30900013 then
			--�ͼ�������
			BeginEvent(sceneId)
			AddText(sceneId,"Trang b� kh�c minh c�n c� kh�c minh ph� c�p th�p.");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
	else
		if gem_index ~= 30900014 then
			--�߼�������
			BeginEvent(sceneId)
			AddText(sceneId,"Trang b� kh�c minh c�n c� kh�c minh ph� c�p cao.");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
	end
	
	local EquipPoint = LuaFnGetBagEquipType( sceneId, selfId, itemIndex1 )
	local need_money = 0
	local HumanMoney = LuaFnGetMoney( sceneId, selfId ) + GetMoneyJZ(sceneId, selfId);
	if EquipPoint == HEQUIP_WEAPON or EquipPoint == HEQUIP_ARMOR then
		need_money = 500 + equip_level * 200
	else
		need_money = 250 + equip_level * 100
	end
	
	if HumanMoney < need_money then
		text="Mu�n kh�c trang b� n�y c�n #{_EXCHG%d}, ng�n l��ng tr�n ng߶i c�c h� kh�ng ��"
		text=format( text, need_money )
		BeginEvent(sceneId)
		AddText(sceneId,text);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	--����Ƿ��ܹ�����
	ret = LuaFnLockCheck( sceneId, selfId, itemIndex1, need_money )

	if ret == 0 then --�ɹ���
		text="Trang b� kh�c th�nh c�ng"
		LuaFnEquipLock( sceneId, selfId, itemIndex1 )
		LuaFnEraseItem( sceneId, selfId, itemIndex2 )
		LuaFnCostMoneyWithPriority( sceneId, selfId, need_money )
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 49, 0)
		
		szTranItm	= GetBagItemTransfer( sceneId, selfId, itemIndex1 )
		if szTranItm ~= nil then
			szMsg		= format( "#W#{_INFOUSR%s}#{AQ_9}#W#{_INFOMSG%s}#{AQ_10}",
									LuaFnGetName( sceneId, selfId ), szTranItm )
									
			--���澫������ȼ�30���µ�װ�����������̹���						
			if (equip_level >= 30) then
				AddGlobalCountNews( sceneId, szMsg )
			end
			
		end
	end

	if ret == -1 then
		text="Kh�ng bi�t l�i"
	end
	
	if ret == -2 then
		text="Kh�ng d�ng ���c trang b� n�y"
	end
	
	if ret == -3 then
		text="Trang b� �� ���c kh�c"
	end

	BeginEvent(sceneId)
	AddText(sceneId,text);
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end



--**********************************
--װ�������
--**********************************
function x809266_FinishUnBind( sceneId, selfId, itemIndex1, itemIndex2 )
	local check = 0
	if check == 0 then
		BeginEvent(sceneId)
			AddText(sceneId,"Ch�c n�ng �� b� kh�a!");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	local text = ""
	local ret = LuaFnIsItemLocked( sceneId, selfId, itemIndex1 )
	
	if ret ~= 0 then
		BeginEvent(sceneId)
		AddText(sceneId,"Trang b� ch�a ti�n h�nh kh�c minh, kh�ng th� ti�n h�nh tr� minh");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	ret = LuaFnIsItemAvailable( sceneId, selfId, itemIndex2 )
	if ret ~= 1 then
		BeginEvent(sceneId)
		AddText(sceneId,"Tr� minh ph� kh�ng t�c d�ng");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	

	local need_money = 10000
	local HumanMoney = LuaFnGetMoney( sceneId, selfId ) + GetMoneyJZ(sceneId, selfId);
	
	if HumanMoney < need_money then
		text="C�n mang theo trong ng߶i #{_EXCHG%d} � th�c hi�n tr� minh."
		text=format( text, need_money )
		BeginEvent(sceneId)
		AddText(sceneId,text);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	--����Ƿ��ܹ�����
	ret = LuaFnUnLockCheck( sceneId, selfId, itemIndex1, need_money )

	if ret == 0 then --�ɹ���
		LuaFnEquipUnLock( sceneId, selfId, itemIndex1 )
		LuaFnEraseItem( sceneId, selfId, itemIndex2 )
		LuaFnCostMoneyWithPriority( sceneId, selfId, need_money )
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 49, 0)
		
		szTranItm	= GetBagItemTransfer( sceneId, selfId, itemIndex1 )
		if szTranItm ~= nil then
			text		= format( "#{_INFOMSG%s} ho�n th�nh tr� minh",
									szTranItm )
			--AddGlobalCountNews( sceneId, szMsg )
		end
	end

	if ret == -1 then
		text="Kh�ng bi�t l�i."
	end
	
	if ret == -2 then
		text="Kh�ng ���c d�ng trang b� n�y"
	end
	
	if ret == -3 then
		text="Trang b� ch�a ���c kh�c minh, kh�ng th� tr� minh"
	end

	BeginEvent(sceneId)
	AddText(sceneId,text);
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end
