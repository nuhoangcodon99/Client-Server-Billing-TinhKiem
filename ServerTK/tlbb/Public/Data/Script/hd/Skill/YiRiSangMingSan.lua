--Ω≈±æ∫≈
x808232_g_scriptId = 808232

x808232_thatminh = 29531 --that minh
x808232_UnDead = 29535 --that minh
x808232_Dead = 29514 --impact tang doc cong len 6 muc tieu xung quanh


function x808232_OnImpactFadeOut( sceneId, selfId, impactId )
	--BroadMsgByChatPipe( sceneId,0, "start script", 4 )
	--lo’n x’ ch≤ targetId, selfId
	local targetId = LuaFnGetTargetObjID(sceneId, selfId)
	--BroadMsgByChatPipe( sceneId, 0, "selfId : "..selfId.." targetId : "..targetId.." ", 4 )	
	if targetId < 0 or targetId == selfId then
		return
	end
	
	if GetHp( sceneId, selfId ) > 0 then
		--BroadMsgByChatPipe( sceneId,0, "Char is undead", 4 )
		if GetTeamSize(sceneId,selfId) >= 2 then
			local member
			for	i=0, GetTeamSize(sceneId,selfId)-1 do
				member = GetNearTeamMember( sceneId, selfId, i )
				--BroadMsgByChatPipe( sceneId, 0, "Test1: "..member.." : "..i, 4 )
			end
			local nPlayerId=GetNearTeamMember( sceneId, selfId, 0 )
			if nPlayerId == selfId  then
				nPlayerId = GetNearTeamMember(sceneId,selfId,1)				
			end
			--BroadMsgByChatPipe( sceneId,0, "Test8: "..nPlayerId, 4 )
			LuaFnSendSpecificImpactToUnit( sceneId, nPlayerId, nPlayerId, nPlayerId, x808232_thatminh, 0 )
		end
		
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x808232_UnDead, 0 )
		--return		
	else
		--BroadMsgByChatPipe( sceneId,0, "Char is dead", 4 )
		--Øi phﬂΩng die r∞i nÍn send lÍn mÏnh
		LuaFnSendSpecificImpactToUnit( sceneId, targetId, targetId, targetId, x808232_Dead, 0 )		
	end
	--BroadMsgByChatPipe( sceneId,0, "End script", 4 )
end

--**********************************
-- –ƒ∑®º”≥…
--**********************************
function x808232_XinFaAddition( sceneId, selfId )
	local nXinfaLevel = LuaFnGetXinFaLevel(sceneId, selfId, 60)
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

function x808232_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end