--����
--�ػʹ��ͻ���ɽ

--�ű���
x008112_g_ScriptId	= 008112

--��ӵ�е��¼�ID�б�
x008112_g_Transport = 400900

x008112_g_Impact_Transport_Mission = 113 -- ����״̬��Ч--[tx45130]
--Ŀ�곡��
--**********************************
--�¼��������
--**********************************
function x008112_OnDefaultEvent( sceneId, selfId, targetId )
	local	nam	= GetName( sceneId, selfId )

	BeginEvent( sceneId )
	AddText( sceneId, nam..", ti�n v�o Sa M�c Phi Sa �i theo h߾ng t�y ch�nh l� H�a Di�m S�n! T� H�a Di�m S�n c� th� �n ���c Cao X߽ng C� Qu�c. �o�n �߶ng n�y r�t nguy hi�m, ch� c� nh�ng anh h�ng #Gtr�n c�p 90 #Wm�i c� �� t� c�ch b߾c v�o." )
	AddNumText( sceneId, x008112_g_ScriptId, "Ъn H�a Di�m S�n", 9, 0 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x008112_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetLevel( sceneId, selfId ) < 90 then 
		BeginEvent( sceneId )
			AddText( sceneId, "N�i n�y v� c�ng nguy hi�m m� h�nh nh� c�c h� ch�a �� ��ng c�p 90. H�y ngh� cho s� an to�n c�a c�c h� � h�y r�n luy�n ti�p. Sau n�y h�y �n t�m ta." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	else 
		--[tx45130]	
		local haveImpact = LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x008112_g_Impact_Transport_Mission)
		if haveImpact == 1 then
				BeginEvent(sceneId)
					AddText(sceneId,"#{Transfer_090304_1}");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
		end
		--[/tx45130]
		CallScriptFunction((x008112_g_Transport), "TransferFunc",sceneId, selfId, 423, 223, 29, 90, 1000)
	end
end
