--�ű���
x808237_g_scriptId = 808237

function x808237_OnImpactFadeOut( sceneId, selfId, impactId )
	
	
	
	if GetHp( sceneId, selfId ) == 0 then		
		return		
	else
		
		
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 29582, 0 ) --kh�ng d�ng dc k� n�ng
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 29583, 0 ) --mi�n d�ch hi�u �ng x�u
			
	end
end

--**********************************
-- �ķ��ӳ�
--**********************************
function x808237_XinFaAddition( sceneId, selfId )
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

function x808237_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end