--¥��NPC
--������
--��ͨ

x001158_g_ScriptId	= 001158

--**********************************
--�¼��������
--**********************************
function x001158_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "  Trong t�y v�c, B�ch L�c �� l� th� c��i hi�m c�. Tr߾c ��y ch� c� qu� t�c m�i c��i nh�ng lo�i th� cao sang n�y. Nh�ng gi� ��y th� l�i kh�c, ng߶i trong khu v�c n�y xem B�ch L�c �� l� th� c��i t��ng tr�ng cho s� t�i ph�...#rT�i h� ��y hi�n �ang c� b�n" )
		AddNumText( sceneId, x001158_g_ScriptId, "Mua v�t c��i", 7, 1 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x001158_OnEventRequest( sceneId, selfId, targetId )
	local	key	= GetNumText()
	if key == 1 then
		DispatchShopItem( sceneId, selfId, targetId, 185 )
	end
end

--**********************************
--�Ի�����ʾ
--**********************************
function x001158_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
