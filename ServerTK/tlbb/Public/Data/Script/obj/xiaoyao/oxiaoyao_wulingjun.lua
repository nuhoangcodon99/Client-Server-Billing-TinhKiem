--��ңNPC
--�����
--��ͨ

 x014004_g_ScriptId=014004
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
--459	������������
--460	��������׷�
--461	����������ţ
--462	��������¹
--463	�������׵�
--464	����������
--**********************************
--�¼��������
--**********************************
function  x014004_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta l� s� ph� c�a nh�ng con Tu�n l�c � Ti�u Dao n�y. Ng߽i mu�n h�c g� n�o ?")
		if	GetMenPai( sceneId, selfId) == 8 then
			if	(0==LuaFnHaveSpecificEquitation(  sceneId, selfId, 453))	then
				AddNumText(sceneId, x014004_g_ScriptId,"H�c k� thu�t: L�c",12,40)
			end
			if	(0==LuaFnHaveSpecificEquitation(  sceneId, selfId, 462))	then
				AddNumText(sceneId, x014004_g_ScriptId,"H�c k� thu�t: B�ch L�c",12,60)
			end
		end
		AddNumText( sceneId, x014004_g_ScriptId, "V� h�c k� thu�t", 11, 100 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function  x014004_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_016}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
  
  if GetNumText() == 40 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{XXQS_09}" )
			AddNumText(sceneId, x014004_g_ScriptId,"аng �",-1,0)
      			AddNumText(sceneId, x014004_g_ScriptId,"Kh�ng, c�m �n",-1,999)			
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	
	if GetNumText() == 60 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{XXQS_10}" )
			AddNumText(sceneId, x014004_g_ScriptId,"аng �",-1,1)
      			AddNumText(sceneId, x014004_g_ScriptId,"Kh�ng, c�m �n",-1,999)			
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
