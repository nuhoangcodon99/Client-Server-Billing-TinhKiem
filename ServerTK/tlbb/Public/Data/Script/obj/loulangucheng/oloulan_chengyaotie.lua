--¥��NPC....
--������ع���....

--�ű���
x001101_g_ScriptId = 001101

--**********************************
--�¼��������
--**********************************
function x001101_OnDefaultEvent( sceneId, selfId, targetId )

	
	BeginEvent( sceneId )
		AddText( sceneId, "#{LLGC_20080324_13}" )
		AddNumText( sceneId, x001101_g_ScriptId, "Gi�m �nh t� ch�t trang b�", 6, 1 )
		AddNumText( sceneId, x001101_g_ScriptId, "��c l� trang b� c�c h�n", 6, 2 )--��������һ�ִ�׷�ʽ����������ɶ�������
		AddNumText( sceneId, x001101_g_ScriptId, "Kh�m n�m trang b� c�c h�n", 6, 3 )
		AddNumText( sceneId, x001101_g_ScriptId, "Tr�ch tr� B�o Th�ch c�c h�n", 6, 4 )
		AddNumText( sceneId, x001101_g_ScriptId, "Tr� gi�p li�n quan �n kh�m n�m c�c h�n", 11, 5 )
		
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x001101_OnEventRequest( sceneId, selfId, targetId, eventId )

	
	if GetNumText() == 1 then

		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1001 )

	elseif GetNumText() == 2 then

--		BeginUICommand( sceneId )
--		UICommand_AddInt( sceneId, targetId )
--		EndUICommand( sceneId )
--		DispatchUICommand( sceneId, selfId, 75117 )

	BeginEvent( sceneId )
		AddText( sceneId, "Xin l�a ch�n ph߽ng th�c ��c l� c�c h�n:" )
		AddNumText( sceneId, x001101_g_ScriptId, "S� d�ng �i�m Kim Chi Ti�n � ��c l�", 6, 10 )
		AddNumText( sceneId, x001101_g_ScriptId, "S� d�ng H�n Ng�c Tinh T�y � ��c l�", 6, 11 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
		
	elseif GetNumText() == 3 then
	
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 751107 )
	
	elseif GetNumText() == 4 then

		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 25702 )
		
	elseif GetNumText() == 5 then

		BeginEvent( sceneId )
		AddText( sceneId, "#{XQC_20080509_34}" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	elseif GetNumText() == 10 then
	
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, 1 )		--type�����ֵ���Ǻ���
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 75117 )
	
	elseif GetNumText() == 11 then
	
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, 2 )		--type�����ֵ���Ǻ���
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 75117 )
		
	end

end
