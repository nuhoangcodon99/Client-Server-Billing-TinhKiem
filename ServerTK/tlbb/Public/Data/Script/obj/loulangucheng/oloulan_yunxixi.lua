--¥��NPC....
--���񷻷���....

x001111_g_scriptId = 001111
x001111_g_shoptableindex = 27

--**********************************
--�¼��������
--**********************************
function x001111_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "#{LLGC_20080324_01}" )
		AddNumText( sceneId, x001111_g_scriptId, "Ng߽i mu�n mua g� n�o?", 7, 0 )
		
		AddNumText(sceneId,x001111_g_scriptId,"Gi�m �nh t� ch�t tr�n th�",6,1)
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x001111_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x001111_g_shoptableindex )
	elseif GetNumText() == 1 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			UICommand_AddInt( sceneId, 6 )				--���޲�ѯ��֧
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 3 )	--�������޽���
	end
end
