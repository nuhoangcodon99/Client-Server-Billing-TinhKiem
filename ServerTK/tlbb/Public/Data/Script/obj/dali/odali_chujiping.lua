--����NPC
--����ƽ
--����������

x002077_g_scriptId = 002077
x002077_g_shoptableindex = 10

--**********************************
--�¼��������
--**********************************
function x002077_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "    B�n nh�n b�n gi�m �nh ph� m�t ch� �c gia, c� th� gi�m �nh t�t c� c�c lo�i h�nh trang b�, hoan ngh�nh t�i mua!" )
		AddNumText( sceneId, x002077_g_scriptId, "Ng߽i mu�n mua g� n�o?", 7, 0 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x002077_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x002077_g_shoptableindex )
	end
end
