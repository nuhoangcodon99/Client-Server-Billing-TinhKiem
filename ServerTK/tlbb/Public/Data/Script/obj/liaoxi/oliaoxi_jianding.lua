--����NPC
--����
--7��10��������

x021008_g_scriptId = 021008
x021008_g_shoptableindex = 141

--**********************************
--�¼��������
--**********************************
function x021008_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "Ta t� nh�n trong l�nh v�c gi�m �nh c�ng c� ch�t b�n l�nh, c� th� gi�p g� cho c�c h� ch�ng?" )
		AddNumText( sceneId, x021008_g_scriptId, "Mua Ph� gi�m �nh", 7, 0 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x021008_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x021008_g_shoptableindex )
	end
end
