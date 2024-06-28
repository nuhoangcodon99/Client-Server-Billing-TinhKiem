--Ω≈±æ∫≈
x808236_g_scriptId = 808236

x808236_pha_khang_bang = 29743
x808236_pha_khang_hoa = 29759
x808236_pha_khang_huyen = 29775
x808236_pha_khang_doc = 29791
x808236_trungxung_cong = 29807


function x808236_OnImpactFadeOut( sceneId, selfId, impactId )
	if GetHp( sceneId, selfId ) == 0 then
		--return
	end
	--lo’n x’ ch≤ targetId, selfId
	local targetId = LuaFnGetTargetObjID(sceneId, selfId)
	--BroadMsgByChatPipe( sceneId, selfId, "selfId : "..selfId.." targetId : "..targetId.." ", 4 )	
	if targetId < 0 or targetId == selfId then
		return
	end
	--x808236_NotifyFailTips( sceneId, targetId, "selfId : "..selfId.." targetId : "..targetId.." Xinfa : "..x808236_XinFaAddition( sceneId, targetId ).."")	
	--x808236_NotifyFailTips( sceneId, selfId, "selfId : "..selfId.." targetId : "..targetId.." Xinfa : "..x808236_XinFaAddition( sceneId, selfId ).."")
	
	local ret=random(1,4)	
	if ret== 1 then
		local targetId = LuaFnGetTargetObjID(sceneId, selfId)
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, targetId, x808236_XinFaAddition( sceneId, selfId )+x808236_pha_khang_bang -1, 0 )
	elseif ret== 2 then
		local targetId = LuaFnGetTargetObjID(sceneId, selfId)
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, targetId, x808236_XinFaAddition( sceneId, selfId )+x808236_pha_khang_hoa -1, 0 )
	elseif ret== 3 then
		local targetId = LuaFnGetTargetObjID(sceneId, selfId)
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, targetId, x808236_XinFaAddition( sceneId, selfId )+x808236_pha_khang_huyen -1, 0 )
	elseif ret== 4 then
		local targetId = LuaFnGetTargetObjID(sceneId, selfId)
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, targetId, x808236_XinFaAddition( sceneId, selfId )+x808236_pha_khang_doc -1, 0 )
	end
	local targetId = LuaFnGetTargetObjID(sceneId, selfId)
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, targetId, x808236_XinFaAddition( sceneId, selfId )+x808236_trungxung_cong - 1, 0 )
	
end

--**********************************
-- –ƒ∑®º”≥…
--**********************************
function x808236_XinFaAddition( sceneId, selfId )
	local nXinfaLevel = LuaFnGetXinFaLevel(sceneId, selfId, 61)
	local nAdditon = 0
	if nXinfaLevel>=150 then
		nAdditon = 15
	elseif nXinfaLevel>=140 and nXinfaLevel<150 then
		nAdditon = 14
	elseif nXinfaLevel>=130 and nXinfaLevel<140 then
		nAdditon = 13
	elseif nXinfaLevel>=120 and nXinfaLevel<130 then
		nAdditon = 12
	elseif nXinfaLevel>=110 and nXinfaLevel<120 then
		nAdditon = 11
	elseif nXinfaLevel>=100 and nXinfaLevel<110 then
		nAdditon = 10
	elseif nXinfaLevel>=90 and nXinfaLevel<100 then
		nAdditon = 9
	elseif nXinfaLevel>=80 and nXinfaLevel<90 then
		nAdditon = 8
	elseif nXinfaLevel>=70 and nXinfaLevel<80 then
		nAdditon = 7
	elseif nXinfaLevel>=60 and nXinfaLevel<70 then
		nAdditon = 6
	elseif nXinfaLevel>=50 and nXinfaLevel<60 then
		nAdditon = 5
	elseif nXinfaLevel>=40 and nXinfaLevel<50 then
		nAdditon = 4
	elseif nXinfaLevel>=30 and nXinfaLevel<40 then
		nAdditon = 4
	elseif nXinfaLevel>=20 and nXinfaLevel<30 then
		nAdditon = 3
	elseif nXinfaLevel>=10 and nXinfaLevel<20 then
		nAdditon = 2
	elseif nXinfaLevel<10 then
		nAdditon = 1
	end
	return nAdditon
end

function x808236_NotifyFailTips( sceneId, selfId, Tip )

	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end