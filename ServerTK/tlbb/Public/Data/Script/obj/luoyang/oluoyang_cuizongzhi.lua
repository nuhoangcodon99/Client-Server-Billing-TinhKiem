--����NPC
--����֮
--��ͨ

x000055_g_shoptableindex=8

x000055_g_scriptId=000055

--**********************************
--�¼��������
--**********************************
function x000055_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  M�i ng߶i n�i t�i u�ng say r�i d�ng v� nh� c�y ng�c tr߾c gi�, ch�ng bi�t ��ng c�ng kh�ng ��ng")
		AddNumText(sceneId,x000055_g_scriptId,"Mua th�t",7,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x000055_OnEventRequest( sceneId, selfId, targetId, eventId )
	DispatchShopItem( sceneId, selfId,targetId, x000055_g_shoptableindex )
end
