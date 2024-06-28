--×°±¸´ò¿×

--½Å±¾ºÅ
x311201_g_ScriptId	= 311201

																
function x311201_OnStiletto_Fashion( sceneId, selfId, idBagPos)

	local	tEquipGemTable	= {16}

	local	Bore_Count			= GetBagGemCount( sceneId, selfId, idBagPos )
	local nLevel					= GetBagItemLevel( sceneId, selfId, idBagPos )
	local EquipType				= LuaFnGetBagEquipType( sceneId, selfId, idBagPos )
	local find						= 0

	for i, gem in tEquipGemTable do
		if gem == EquipType then
			find							= 1
		end
	end
	if find == 0 then
		x311201_NotifyTip( sceneId, selfId, "#{SZPR_091023_34}" )
		return
	end
	if Bore_Count >0 then
			x311201_NotifyFailTips( sceneId, selfId, "#{SZPR_091023_35}" )
			return
	end
		local ret = LuaFnCostMoneyWithPriority( sceneId, selfId, 100000 )
		if ret < 0 then
			x311201_NotifyFailTips( sceneId, selfId, "#{ZSZB_090421_24}" )
			return
		end
	local vp = LuaFnGetAvailableItemCount(sceneId,selfId,30503134)
	if vp<1 then
		x311201_NotifyTip(sceneId, selfId,"#{SZPR_091023_36}")	
		return
	end
	ret	= AddBagItemSlot( sceneId, selfId, idBagPos )
	if ret == -1 then
		x311201_NotifyTip( sceneId, selfId, "Xu¤t hi®n l²i. Mã l²i: 1" )
	elseif ret == -2 then
		x311201_NotifyTip( sceneId, selfId, "Xu¤t hi®n l²i. Mã l²i: 2" )
	elseif ret == -3 then
		x311201_NotifyTip( sceneId, selfId, "#{SZPR_091023_34}" )
	elseif ret == -4 then
		x311201_NotifyTip( sceneId, selfId, "#{SZPR_091023_35}" ) --modi:lby2008-5-21µ±Íæ¼ÒÆóÍ¼´òµÚËÄ¸ö¿ÕµÄÊ±ºò±¨´í
		--x311201_NotifyTip( sceneId, selfId, "Id bag "..idBagPos ) 	
	else
		LuaFnDelAvailableItem(sceneId,selfId, 30503134, 1)
		x311201_NotifyTip( sceneId, selfId, "#{SZPR_091023_37}" )

		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 49, 0);
		
	end


end

--**********************************
--ÐÑÄ¿ÌáÊ¾
--**********************************
function x311201_NotifyTip( sceneId, selfId, Msg )

	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end

																
