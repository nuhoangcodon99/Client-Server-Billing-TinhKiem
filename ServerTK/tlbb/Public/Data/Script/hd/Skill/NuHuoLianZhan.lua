--�ű���
x808233_g_scriptId = 808233

function x808233_OnImpactFadeOut( sceneId, selfId, impactId )
	
	
	
	if GetHp( sceneId, selfId ) == 0 then		
		return		
	else
		
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32415) == 1 then
		--x808233_NotifyFailTips( sceneId, selfId, "N� H�a Li�n Tr�m nh�t th�c" )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32416, 0 )
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32413) == 0 then
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32413, 0 )
			end
			return
		elseif LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32416) == 1 then
		--x808233_NotifyFailTips( sceneId, selfId, "N� H�a Li�n Tr�m nh� th�c" )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32417, 0 )
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32413) == 0 then
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32413, 0 )
			end
			return
		elseif LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32417) == 1 then
		--x808233_NotifyFailTips( sceneId, selfId, "N� H�a Li�n Tr�m tam th�c" )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32418, 0 )
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32413) == 0 then
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32413, 0 )
			end
			return
		elseif LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32418) == 1 then
		--x808233_NotifyFailTips( sceneId, selfId, "N� H�a Li�n Tr�m t� th�c" )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32419, 0 )
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32413) == 0 then
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32413, 0 )
			end
			return
		elseif LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32419) == 1 then
		--x808233_NotifyFailTips( sceneId, selfId, "N� H�a Li�n Tr�m ng� th�c" )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32420, 0 )
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32413) == 0 then
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32413, 0 )
			end
			return
		elseif LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32420) == 1 then
		--x808233_NotifyFailTips( sceneId, selfId, "N� H�a Li�n Tr�m l�c th�c" )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32421, 0 )
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32413) == 0 then
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32413, 0 )
			end
			return
		elseif LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32421) == 1 then
		--x808233_NotifyFailTips( sceneId, selfId, "N� H�a Li�n Tr�m th�t th�c" )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32422, 0 )
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32413) == 0 then
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32413, 0 )
			end
			return
		elseif LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32422) == 1 then
		--x808233_NotifyFailTips( sceneId, selfId, "N� H�a Li�n Tr�m b�t th�c" )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32423, 0 )
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32413) == 0 then
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32413, 0 )
			end
			return
		elseif LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32423) == 1 then
		--x808233_NotifyFailTips( sceneId, selfId, "N� H�a Li�n Tr�m c�u th�c" )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32424, 0 )
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32413) == 0 then
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32413, 0 )
			end
			return
		elseif LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32424) == 1 then
		--x808233_NotifyFailTips( sceneId, selfId, "N� H�a Li�n Tr�m th�p th�c" )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32425, 0 )
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32413) == 0 then
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32413, 0 )
			end
			return
		elseif LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32425) == 1 then
		--x808233_NotifyFailTips( sceneId, selfId, "N� H�a Li�n Tr�m th�p nh�t th�c" )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32426, 0 )
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32413) == 0 then
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32413, 0 )
			end
			return
		elseif LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32426) == 1 then
		--x808233_NotifyFailTips( sceneId, selfId, "N� H�a Li�n Tr�m th�p nh� th�c" )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32427, 0 )
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32413) == 0 then
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32413, 0 )
			end
			return
		elseif LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32427) == 1 then
		--x808233_NotifyFailTips( sceneId, selfId, "N� H�a Li�n Tr�m th�p tam th�c" )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32428, 0 )
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32413) == 0 then
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32413, 0 )
			end
			return
		elseif LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32428) == 1 then
		--x808233_NotifyFailTips( sceneId, selfId, "N� H�a Li�n Tr�m th�p t� th�c" )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32429, 0 )
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32413) == 0 then
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32413, 0 )
			end
			return
		elseif LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32429) == 1 then
		--x808233_NotifyFailTips( sceneId, selfId, "N� H�a Li�n Tr�m th�p ng� th�c" )
			--LuaFnCancelSpecificImpact(sceneId,selfId,32429) --khong bo impact
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32429, 0 ) --add 
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 32413) == 0 then
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32413, 0 )
			end
			return
		else
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32415, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 32413, 0 )
		end	
	end
end

--**********************************
-- �ķ��ӳ�
--**********************************
function x808233_XinFaAddition( sceneId, selfId )
	local nXinfaLevel = LuaFnGetXinFaLevel(sceneId, selfId, 70)
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

function x808233_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end