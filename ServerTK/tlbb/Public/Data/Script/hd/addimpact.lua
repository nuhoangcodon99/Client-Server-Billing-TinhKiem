x892002_g_scriptId = 892002

function x892002_AddImpact1(sceneId,selfId,ItemID,nType)

--x892002_Notice(sceneId,selfId,"ID"..ItemID..", Type"..nType)
	if ItemID == 1 then -- Neu la Trung Lâu Trieu
		if  nType == 1 then
			if LuaFnGetItemCount( sceneId, selfId, 10422155) >= 1 then
				if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 5969) ~= 1 then
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5969, 0 )
				end
			end
		else 
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 5969) == 1 then
				LuaFnCancelSpecificImpact(sceneId,selfId,5969)
			end
		end
	elseif ItemID == 2 then -- Neu la Trung Lâu Quy
		if  nType == 1 then
			if LuaFnGetItemCount( sceneId, selfId, 10423064) >= 1 then
				if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 5970) ~= 1 then
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5970, 0 )
				end
			end
		else 
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 5970) == 1 then
				LuaFnCancelSpecificImpact(sceneId,selfId,5970)
			end
		end
	elseif ItemID == 3 then -- Neu la Trung Lâu Phan
		if  nType == 1 then
			if LuaFnGetItemCount( sceneId, selfId, 10420091) >= 1 then
				if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 5973) ~= 1 then
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5973, 0 )
				end
			end
		else 
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 5973) == 1 then
				LuaFnCancelSpecificImpact(sceneId,selfId,5973)
			end
		end
	elseif ItemID == 4 then -- Neu la Trung Lâu Lieen
		if  nType == 1 then
			if LuaFnGetItemCount( sceneId, selfId, 10420088) >= 1 then
				if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 5975) ~= 1 then
					LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 5975, 0 )
				end
			end
		else 
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 5975) == 1 then
				LuaFnCancelSpecificImpact(sceneId,selfId,5975)
			end
		end
	end
end

function x892002_Notice(sceneId,selfId,msg)
	BeginEvent( sceneId )
		AddText( sceneId, msg)
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end