--����NPC
--��ͳ
--�����ϰ�

x000059_g_ShopTabId	= 15

x000059_g_ScriptId	= 000059

--**********************************
--�¼��������
--**********************************
function x000059_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  H�y �n th� n�m c�c th� ch� Minh Tr�n L�u � L�c D߽ng, ��m b�o c�c h� �n r�i s� kh�ng mu�n r�i xa L�c D߽ng n�a")
		AddNumText(sceneId,x000059_g_ScriptId,"Mua th�c �n",7,0)
--		AddNumText(sceneId,x000059_g_ScriptId,"������",6,1)
--		AddNumText(sceneId,x000059_g_ScriptId,"������",6,2)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x000059_OnEventRequest( sceneId, selfId, targetId, eventId )
	local	key	= GetNumText()
	local	ene	= GetHumanEnergy( sceneId, selfId )	--����
	local	vig	= GetHumanVigor( sceneId, selfId )	--����
	
	if key == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x000059_g_ShopTabId )
		
	elseif key == 1 then
		if ene >= 40 then
			SetHumanEnergy( sceneId, selfId, ene-40 )
			AddMoney( sceneId, selfId, 3000 )
			x000059_MsgBox( sceneId, selfId, "C�c h� l�m th�m ti�u hao 40 tinh l�c, ��t ���c 30 �ng b�c" );
		else
			x000059_MsgBox( sceneId, selfId, "Tinh l�c c�a c�c h� kh�ng �� 40 �i�m, �ng ch� kh�ng mu�n c�c h� ph�i l�m th�m" );
		end
	elseif key == 2 then
		if vig >= 40 then
			SetHumanVigor( sceneId, selfId, vig-40 )
			AddMoney( sceneId, selfId, 3000 )
			x000059_MsgBox( sceneId, selfId, "C�c h� l�m th�m ti�u hao 40 ho�t l�c, ��t ���c 30 �ng b�c" );
		else
			x000059_MsgBox( sceneId, selfId, "Ho�t l�c c�n ch�a ��t 40, �ng ch� kh�ng mu�n cho c�c h� l�m th�m" );
		end
	end
end

--**********************************
--��Ϣ��ʾ
--**********************************
function x000059_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
