--�置NPC
--����
--Ұ�ⱦʯ����

x029006_g_scriptId = 029006
x029006_g_shoptableindex = 109

--**********************************
--�¼��������
--**********************************
function x029006_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "Xem h�ng th� ���c, nh�ng ��ng h�ng m� t߷ng t�i vi�c th�m d� lai l�ch B�o Th�ch � ch� ta. M�y huynh � ta ch� c� con �߶ng sinh nhai n�y th�i" )
		AddNumText( sceneId, x029006_g_scriptId, "Xem ng߽i c� h�ng g� t�t", 7, 0 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x029006_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		if(GetLevel(sceneId, selfId) < 30 ) then
			BeginEvent( sceneId )
			AddText( sceneId, "#{BSSR_20080131_01}" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end
		DispatchShopItem( sceneId, selfId, targetId, x029006_g_shoptableindex )
	end
end
