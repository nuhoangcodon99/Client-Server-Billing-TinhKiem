--����NPC
--���¹�
--��ͨ

--�ű���
x000050_g_ScriptId			= 000050

--������
x000050_g_shoptableindex= 11

--**********************************
--�¼��������
--**********************************
function x000050_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
	AddText( sceneId, "  T�i xem �i, binh kh� c�a ta � ��y �u l� lo�i t�t nh�t th�nh L�c D߽ng" )
	AddNumText( sceneId, x000050_g_ScriptId, "Mua binh kh�", 7, 100 )
	AddNumText( sceneId, x000050_g_ScriptId, "Gi�m �nh ch�t l��ng", 6, 101 )
	AddNumText( sceneId, x000050_g_ScriptId, "Gi�m �nh t� ch�t trang b� l�i t� �u", 6, 102 )
	AddNumText( sceneId, x000050_g_ScriptId, "Gi�m �nh ch�t l��ng trang b�", 11, 105 )
	AddNumText( sceneId, x000050_g_ScriptId, "Gi�i thi�u v� gi�m �nh t� ch�t trang b� l�i t� �u", 11, 106 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x000050_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 105 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_081}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	
	if GetNumText() == 106 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_097}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	local	key	= GetNumText()
	if key == 100 then
		DispatchShopItem( sceneId, selfId, targetId, x000050_g_shoptableindex )
	elseif key == 101 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1001 )
	elseif key == 102 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 112233 )
	end
end
