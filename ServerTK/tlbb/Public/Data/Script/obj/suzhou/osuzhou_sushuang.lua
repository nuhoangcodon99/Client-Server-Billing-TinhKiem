--��˫

--�ű���
x001059_g_scriptId 				= 001059
x001059_g_shoptableindex	=	35
--**********************************
--�¼��������
--**********************************
function x001059_OnDefaultEvent( sceneId, selfId,targetId )
	AddText( sceneId, "#{QZG_80919_1}" )
	AddNumText( sceneId, x001059_g_scriptId, "Gi�i thi�u th߽ng nh�n", 11, 1 )
	AddNumText( sceneId, x001059_g_scriptId, "M� c�a h�ng", 7, 2 )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x001059_OnEventRequest( sceneId, selfId, targetId, eventId )
	--�ز��̵�
	if GetNumText() == 1 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{SHANGREN_JIESHAO_02}" )		
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 2 then
		if(LuaFnGetAvailableItemCount(sceneId, selfId, 40002000) == 1 ) then
				DispatchShopItem( sceneId, selfId, targetId, x001059_g_shoptableindex )
		else
			BeginEvent(sceneId)
				AddText( sceneId, "C�c h� kh�ng c� ng�n phi�u c�a th߽ng nh�n, giao d�ch gi�a ta v� c�c h� l�m sao c� th� th�c hi�n ���c?" )		
			EndEvent(sceneId)
			DispatchEventList( sceneId, selfId, targetId )
		end
	end
end
