--���˵�Npc
--��ͨ

--�ű���
x125003_g_scriptId = 125003

--�̵���
x125003_g_ShopTabId_1	= 143
x125003_g_ShopTabId_2	= 27

--��ӵ�е��¼�ID�б�
x125003_g_eventList={}

--**********************************
--�¼��������
--**********************************

function x125003_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"C�c h� g�i ch�t g� kh�ng? � ��y t�i c� r�t nhi�u � �n u�ng. Gi� c� c�ng ngang v�i th�nh L�c D߽ng �y!")
		AddNumText(sceneId,x125003_g_scriptId,"Mua thu�c v� th�c �n",7,0)
		AddNumText(sceneId,x125003_g_scriptId,"Mua � �n cho tr�n th�",7,1)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x125003_OnEventRequest( sceneId, selfId, targetId, eventId )
	local	key	= GetNumText()
	
	if key == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x125003_g_ShopTabId_1 )
	end
	if key == 1 then
		DispatchShopItem( sceneId, selfId, targetId, x125003_g_ShopTabId_2 )
	end
end

