--����NPC
--����ˮ
--��ͨ

 x015007_g_ScriptId=015007
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
function  x015007_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta c� th� d�y � t� Nga My n�ng l�c c��i ph�ng ho�ng")
		if	GetMenPai( sceneId, selfId) == 4 then
			if	(0==LuaFnHaveSpecificEquitation(  sceneId, selfId, 451))	then
				AddNumText(sceneId, x015007_g_ScriptId,"H�c k� thu�t: Thanh Ph�ng",12,40)
			end
			if	(0==LuaFnHaveSpecificEquitation(  sceneId, selfId, 460))	then
				AddNumText(sceneId, x015007_g_ScriptId,"H�c k� thu�t: H�ng B�ch Ph�ng",12,60)
			end
		end
		AddNumText( sceneId, x015007_g_ScriptId, "Gi�i thi�u k� thu�t", 11, 100 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function  x015007_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_017}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	if GetNumText() == 40 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{XXQS_15}" )
			AddNumText(sceneId, x015007_g_ScriptId,"��",-1,0)
      AddNumText(sceneId, x015007_g_ScriptId,"��",-1,999)			
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	
	if GetNumText() == 60 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{XXQS_16}" )
			AddNumText(sceneId, x015007_g_ScriptId,"��",-1,1)
      AddNumText(sceneId, x015007_g_ScriptId,"��",-1,999)			
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

