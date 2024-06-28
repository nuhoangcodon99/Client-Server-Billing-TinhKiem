--ʥ�𴫵�NPC - ����

x050107_g_ScriptId = 050107; --�ű���
x050107_g_name	="Ch�u V� U�";

--��ӵ�е��¼�ID�б�
x050107_g_eventId_yes = 0;
x050107_g_eventId_no = 1;

--**********************************
--�¼��������
--**********************************
function x050107_OnDefaultEvent( sceneId, selfId, targetId )
	x050107_UpdateEventList( sceneId, selfId, targetId );
end

--**********************************
--�¼��б�
--**********************************
function x050107_UpdateEventList( sceneId, selfId, targetId )
	BeginEvent(sceneId);
		AddText( sceneId, "Ng߽i mu�n r�i kh�i n�i ��y?" );
		AddNumText( sceneId, x050107_g_ScriptId, "X�c nh�n", 9, x050107_g_eventId_yes);
		AddNumText( sceneId, x050107_g_ScriptId, "H�y b�", 8, x050107_g_eventId_no);
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x050107_OnEventRequest( sceneId, selfId, targetId, eventId )
	local selectEventId	= GetNumText();
	
	if selectEventId then
		if selectEventId == x050107_g_eventId_yes then
			NewWorld( sceneId, selfId, 18, 244, 75) ;
		else
			return 0;
		end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x050107_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--�ܾ���NPC������
--**********************************
function x050107_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
end
