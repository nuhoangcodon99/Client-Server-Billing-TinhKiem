--����NPC
--��͡
--5��8��������

x032006_g_scriptId = 032006
x032006_g_shoptableindex = 140

--**********************************
--�¼��������
--**********************************
function x032006_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "� ��y ta c� m�t v�i cu�n s�ch c� th� gi�m �nh trang b�, ng߽i c� mu�n xem kh�ng?" )
		AddNumText( sceneId, x032006_g_scriptId, "Mua Ph� gi�m �nh", 7, 0 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x032006_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x032006_g_shoptableindex )
	end
end
