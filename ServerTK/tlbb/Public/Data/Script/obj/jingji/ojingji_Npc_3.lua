-- 125013
-- ������

--�ű���
x125013_g_scriptId = 125013

--��ӵ�е��¼�ID�б�
x125013_g_eventList={}

x125013_g_Goto = {
			{name="Khu�t B�nh Nguy�n ",scene=2,x=177,z=135,scname="��i L�"},
			{name="��o Th�y Ti�m ",scene=0,x=250,z=250,scname="L�c D߽ng"},
			{name="C� T� Ngh� ",scene=1,x=285,z=225,scname="T� Ch�u"},
			{name="T�ng Tri Ng�c ",scene=420,x=155,z=130,scname="Th�c H� C� Tr�n"},
}

--**********************************
--�¼��б�
--**********************************
function x125013_UpdateEventList( sceneId, selfId, targetId )
	BeginEvent(sceneId)
		
		local szName = GetName(sceneId, targetId)
		
		local level = GetLevel( sceneId, targetId)
		
		if szName == "T�ng Tri Ng�c " and level < 20 then
			--str = "  ʮ�ֱ�Ǹ�����ӹ���Ŀǰ��δ���š������ӹ�����ʽ����֮���Ҳ��������ȥ�أ�"
			str = "  R�t xin l�i, ��ng c�p c�a b�n d߾i 20 kh�ng th� �n Th�c H� C� Tr�n"
			AddText(sceneId, str);
		else
		
			for i, scene in x125013_g_Goto  do
				if scene.name == GetName(sceneId, targetId)  then
					local str = ""
					str = "  C�c h� c� mu�n �n " .. scene.scname .. " kh�ng ?"
					AddText(sceneId, str);
					AddNumText( sceneId, x125013_g_scriptId, "H�y ��a t�i �n " .. scene.scname ,9 ,1  )
				end
			end
		end
		
		for i, eventId in x125013_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x125013_OnDefaultEvent( sceneId, selfId,targetId )
	x125013_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x125013_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	if GetNumText()==1  then
		for i, Scene in x125013_g_Goto  do
			if Scene.name == GetName(sceneId, targetId)  then
				--add by Vega 2008-09-28
				if Scene.scname == "Th�c H� C� Tr�n" then
					BeginUICommand(sceneId)
						UICommand_AddInt(sceneId, x125013_g_scriptId);
						UICommand_AddInt(sceneId, targetId);
						UICommand_AddString(sceneId, "GotoShuHeGuZhen");
						UICommand_AddString(sceneId, "Th�c H� C� Tr�n l� n�i nguy hi�m, b�n c� ch�c mu�n v�o?");
					EndUICommand(sceneId)
					DispatchUICommand(sceneId,selfId, 24)
					return				
				else

					CallScriptFunction((400900), "TransferFunc",sceneId, selfId, Scene.scene, Scene.x, Scene.z)
					return
				end
			end
		end
		return
	end

	for i, findId in x125013_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x125013_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x125013_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			end
			return
		end
	end
end

--**********************************
--�ܾ���NPC������
--**********************************
function x125013_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x125013_g_eventList do
		if missionScriptId == findId then
			x125013_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x125013_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x125013_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x125013_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x125013_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x125013_OnDie( sceneId, selfId, killerId )
end

--add by Vega 2008-09-28
function x125013_GotoShuHeGuZhen( sceneId, selfId, targetId )
	CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 420, 155, 130, 20 );
	return
end
