--���ض�m�t �����NPC
--Ҧ��Ҧ����Ҧ����Ҧ�١�Ҧ��
--ҩ��

x039001_g_shoptableindex=14
x039001_g_scriptId = 39001


--**********************************
--�¼��������
--**********************************
function x039001_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, " Ti�m n�y chuy�n ph� tr�ch cung �ng d��c ph�m v�t ph�m c�a B�o T�ng еng. M�i t�ng �u c� ph�n ti�m" )
		AddNumText( sceneId, x039001_g_scriptId, "Mua", 7, 0 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x039001_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x039001_g_shoptableindex )
	end
end
