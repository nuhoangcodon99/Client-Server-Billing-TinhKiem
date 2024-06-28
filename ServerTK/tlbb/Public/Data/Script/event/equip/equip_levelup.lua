--װ������
--�ű���
x809263_g_ScriptId = 809263

--װ������UI 1003

--**********************************
--�о��¼�
--**********************************
function x809263_OnEnumerate( sceneId, selfId, targetId )

end


--**********************************
--װ������
--**********************************
function x809263_EquipLevelUp( sceneId, selfId, nItemIndex1, nItemIndex2)
	ret = LuaFnIsItemAvailable( sceneId, selfId, nItemIndex1 )
	if ret ~= 1 then
		BeginEvent(sceneId)
		AddText(sceneId,"Kh�ng d�ng ���c trang b� n�y");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	ret = LuaFnIsItemAvailable( sceneId, selfId, nItemIndex2 )
	if ret ~= 1 then
		BeginEvent(sceneId)
		AddText(sceneId,"Th�ng c�p B�o Th�ch kh�ng c� t�c d�ng");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	equip_level = GetBagItemLevel( sceneId, selfId, nItemIndex1 )
	if equip_level < 60 then
		BeginEvent(sceneId)
		AddText(sceneId,"Trang b� t� c�p 60 tr� xu�ng kh�ng ���c th�ng c�p");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	gem_index = LuaFnGetItemTableIndexByIndex( sceneId, selfId, nItemIndex2 )
	if gem_index ~= 30900008 then
		--������ʯ
		BeginEvent(sceneId)
		AddText(sceneId,"Trang b� th�ng c�p c�n th�ng c�p B�o Th�ch");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	money = GetMoney( sceneId, selfId )
	need_money = GetBagItemLevel( sceneId, selfId, nItemIndex1 ) * 20000
	if money < need_money then
		BeginEvent(sceneId)
		AddText(sceneId,"Kh�ng �� ng�n l��ng");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	ret = GetGemEmbededCount( sceneId, selfId, nItemIndex1 )
	if ret ~= 0 then
		BeginEvent(sceneId)
		AddText(sceneId,"Trang b� kh�m B�o Th�ch trang b� kh�ng ���c th�ng c�p");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	ret, arg0 = LuaFnEquipLevelUp( sceneId, selfId, nItemIndex1, nItemIndex2 )
	
	local text="Th�ng c�p trang b� th�nh c�ng"
	if ret == 0 then
		LuaFnEraseItem( sceneId, selfId, nItemIndex2 )
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 49, 0);
		LuaFnCostMoney( sceneId, selfId, need_money )
		if arg0 == 0 then
			text="Ch�c m�ng!! Trang b� n�ng c�p th�nh c�ng, mau �i xem trang b� m�i sau khi th�ng c�p"
		else
			text="Ch�c m�ng!! Trang b� n�ng c�p th�nh c�ng, nh�ng ��ng c�p l�m m�nh b� gi�m 1, gi� ��y ��ng c�p l�m m�nh trang b� l�"..tostring(arg0)
		end
	end

	if ret == -1 then
		text="Kh�ng bi�t l�i"
	end

	if ret == -2 then
		text="Kh�ng d�ng ���c trang b� n�y"
	end
	
	if ret == -3 then
		text="Th�ng c�p B�o Th�ch kh�ng c� t�c d�ng"
	end

	if ret == -6 then
		text="Kh�ng bi�t l�i"
	end

	if ret == -7 then
		LuaFnEraseItem( sceneId, selfId, nItemIndex2 )
		LuaFnCostMoney( sceneId, selfId, need_money )
		text="Th�t kh�ng may, trang b� th�ng c�p c�a c�c h� b� th�t b�i!"
	end

	if ret == -8 then
		text="Trang b� kh�ng th� th�ng c�p"
	end

	BeginEvent(sceneId)
	AddText(sceneId,text)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end
