--����NPC
--��
--5��7��������

x024006_g_scriptId = 024006
x024006_g_shoptableindex = 139

--**********************************
--�¼��������
--**********************************
function x024006_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "Kh�ng sai, t�i h� ch�nh l� ng߶i b�n ph� gi�m �nh, c�c h� mu�n ch�ng?" )
		AddNumText( sceneId, x024006_g_scriptId, "Mua Ph� gi�m �nh", 7, 0 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x024006_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x024006_g_shoptableindex )
	end
end
