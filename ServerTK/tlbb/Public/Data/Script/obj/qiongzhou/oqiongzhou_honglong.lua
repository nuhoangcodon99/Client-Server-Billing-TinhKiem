--����NPC
--����
--Ұ�ⱦʯ����

x035007_g_scriptId = 035007
x035007_g_shoptableindex = 110

--**********************************
--�¼��������
--**********************************
function x035007_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "Ь b�n ���c m�y vi�n ��, huynh � b�n ta ph�i ch�y ��ng ch�y t�y su�t ng�y, c�c h� th�y ��u d� d�ng g�" )
		AddNumText( sceneId, x035007_g_scriptId, "Xem �� ng߽i �em b�n tr�ng th� n�o", 7, 0 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x035007_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		if(GetLevel(sceneId, selfId) < 30 ) then
			BeginEvent( sceneId )
			AddText( sceneId, "#{BSSR_20080131_01}" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end
		DispatchShopItem( sceneId, selfId, targetId, x035007_g_shoptableindex )
	end
end
