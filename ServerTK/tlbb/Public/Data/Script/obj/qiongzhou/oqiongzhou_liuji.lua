--����NPC
--����
--6������ͼֽ��

x035006_g_scriptId = 035006
x035006_g_shoptableindex = 108

--**********************************
--�¼��������
--**********************************
function x035006_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "N�y... mau ch�n th� c�c h� th�ch r�i �i �i, ��ng � m�i ng߶i bi�t ta �ang � ��y." )
		AddNumText( sceneId, x035006_g_scriptId, "Ng߽i mu�n mua g� n�o?", 7, 0 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x035006_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x035006_g_shoptableindex )
	end
end
