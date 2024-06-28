--�䵱NPC
--�ž���
--��ͨ

 x012007_g_ScriptId=012007
--447	��������
--448	������������
--449	����������
--450	��������
--451	���������
--452	��������ţ
--453	������¹
--454	��������
--455	����������
--456	�������׻�
--457	�������������
--458	������������
--459	�����������
--460	��������׷�
--461	����������ţ
--462	��������¹
--463	�������׵�
--464	����������
--**********************************
--�¼��������
--**********************************
function  x012007_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  V� L��ng Ph�t, ta c� th� truy�n d�y cho � t� V� �ang kh� n�ng �i�u khi�n Ti�n H�c.")
		if	GetMenPai( sceneId, selfId) == 3 then
			if	(0==LuaFnHaveSpecificEquitation(  sceneId, selfId, 450))	then
				AddNumText(sceneId, x012007_g_ScriptId,"H�c k� thu�t H�c",12,40)
			end
			if	(0==LuaFnHaveSpecificEquitation(  sceneId, selfId, 459))	then
				AddNumText(sceneId, x012007_g_ScriptId,"H�c k� thu�t Kim D�c H�c",12,60)
			end
		end
		AddNumText( sceneId, x012007_g_ScriptId, "T�m hi�u v� k� thu�t", 11, 100 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function  x012007_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_014}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	if GetNumText() == 40 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{XXQS_13}" )
			AddNumText(sceneId, x012007_g_ScriptId,"C�",-1,0)
      AddNumText(sceneId, x012007_g_ScriptId,"Kh�ng",-1,999)			
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	
	if GetNumText() == 60 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{XXQS_14}" )
			AddNumText(sceneId, x012007_g_ScriptId,"C�",-1,1)
      AddNumText(sceneId, x012007_g_ScriptId,"Kh�ng",-1,999)			
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	
	if GetNumText() == 999 then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		return
	end
	
	local level = GetLevel( sceneId, selfId)
	local skill = GetNumText()
	if skill == 0 or skill == 1 then
	  CallScriptFunction((210299), "OnDefaultEvent",sceneId, selfId,targetId, level, skill)
	end
end

