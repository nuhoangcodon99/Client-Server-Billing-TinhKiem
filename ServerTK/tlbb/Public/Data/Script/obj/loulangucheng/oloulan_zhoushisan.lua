--¥��NPC		װ������
--��ʮ��
--�ű���

x001106_g_ScriptId = 001106

--**********************************
--�¼��������
--**********************************
function x001106_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{LLXL_081113_1}")
		AddNumText(sceneId,x001106_g_ScriptId,"Ta c�n s�a trang b�",6,1)
		AddNumText(sceneId,x001106_g_ScriptId,"T�ng s� l�n s�a ch�a", 6, 2) --zchw
		AddNumText(sceneId, x001106_g_ScriptId,"Gi�i thi�u s�a ch�a trang b�",11,12);
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x001106_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 1 then
		
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, -1 )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 19810313 )
	elseif GetNumText() == 2 then
		BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,targetId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1004)
		return
	end
	
	if GetNumText() == 12 then
		BeginEvent(sceneId)						
			AddText(sceneId,"#{function_help_043}#r")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end	
end
