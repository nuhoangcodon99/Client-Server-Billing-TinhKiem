--����NPC
--����ү
--��ͨ

x000100_g_scriptId 	= 181000
x000100_g_gotoact	 	= 2
x000100_g_YBBTIntro =11     --Ԫ����̯����
x000100_g_leave			= 20

--**********************************
--�¼��������
--**********************************
function x000100_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"   Hoan ngh�nh �� t�i, v�a nh�n �� bi�t ngay c�c h� l� kh�ch qu�, ta �� th�ng b�o cho b�n t�ng b� l�m t�t c�ng vi�c ti�p ��i r�i, c�c h� gi� c� mu�n t�i t�ng b� c�a ch�ng ta kh�ng?")
		
		AddNumText( sceneId, x000100_g_scriptId, "Ph�a tr߾c l� Ti�n trang t�ng b�", 9, x000100_g_gotoact)
		AddNumText( sceneId, x000100_g_scriptId, "Gi�i thi�u Ti�n trang", 11, x000100_g_YBBTIntro)
		--AddNumText( sceneId, x000100_g_scriptId, "�뿪����", -1, x000100_g_leave)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x000100_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == x000100_g_gotoact then
		--NewWorld(sceneId,selfId,181,65,62)
		CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 181,65,62)
	elseif GetNumText() == x000100_g_YBBTIntro then
	  BeginEvent( sceneId )
			AddText( sceneId, "#{YBBT_081023_2}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	elseif GetNumText() == x000100_g_leave then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
	end
end
