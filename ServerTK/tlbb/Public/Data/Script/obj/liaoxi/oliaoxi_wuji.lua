--����NPC
--�伪
--5������ͼֽ��

x021007_g_scriptId = 021007
x021007_g_shoptableindex = 107

--**********************************
--�¼��������
--**********************************
function x021007_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "G�n ��y kh�ch �n l�m b�n � ng�y c�ng nhi�u, sao, Trung Nguy�n l�i s�p giao tranh r�i h�?" )
		AddNumText( sceneId, x021007_g_scriptId, "Ng߽i mu�n mua g� n�o?", 7, 0 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x021007_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x021007_g_shoptableindex )
	end
end
