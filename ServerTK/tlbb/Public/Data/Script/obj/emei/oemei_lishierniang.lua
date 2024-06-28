--����NPC
--��ʮ����
--��ͨ

x015001_g_scriptId = 015001
x015001_g_eventList={226900,808004}
--**********************************
--�¼��������
--**********************************
function x015001_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  L�o th�n l� L� Th�p Nh� N߽ng. #r#rCh߷ng m�n hi�n �ang ch�m ch� nghi�n c�u b� m�t c�a ��o Hoa tr�n, m�y chuy�n l�t v�t nh� nh�n h�c tr� th�u � t� �u do l�o th�n n�y cai qu�n")
		local mp = GetMenPai(sceneId, selfId)
		if mp == 9 then 
			AddNumText(sceneId, x015001_g_scriptId, "Gia nh�p m�n ph�i",6,0)
		end
		AddNumText(sceneId, x015001_g_scriptId, "Gi�i thi�u m�n ph�i",8,1)
		AddNumText(sceneId, x015001_g_scriptId, "H�c K� n�ng c�a m�n ph�i?",8,6)		--ָ·������ѧϰ��
		for i, eventId in x015001_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x015001_OnDefaultEvent( sceneId, selfId,targetId )
	x015001_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x015001_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText()==0	then

		x015001_g_MenPai = GetMenPai(sceneId, selfId)
		if x015001_g_MenPai == 4 then
			BeginEvent(sceneId)
				AddText(sceneId, "Ng߽i l�i t�i qu�y r�y s� ph�, ng߽i �� l� � t� ph�i Nga My, c�n b�i s� g� n�a")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		if x015001_g_MenPai ~= 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ng߽i �� l� cao � c�a m�n ph�i kh�c, ch�ng ta kh�ng thu nh�n ng߽i")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end

		BeginEvent(sceneId)
			AddText(sceneId, "#{MenpaiInfo_004}")
			AddNumText(sceneId, x015001_g_scriptId, "Ta mu�n b�i nh�p ph�i Nga My",6,3)
			AddNumText(sceneId, x015001_g_scriptId, "T�i h� ch�a mu�n b�i s�",8,4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		 
		return
	end
	
	if GetNumText()==4	then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
		return
	end

	if GetNumText()==3	then
		if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 2 then
			BeginEvent(sceneId)
				AddText(sceneId,"  H�y s�p x�p l�i tay n�i, c�n 2 v� tr� tr�ng, ta s� th߷ng cho ng߽i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		elseif GetLevel( sceneId, selfId ) < 10 then
			BeginEvent(sceneId)
				AddText(sceneId,"C�c h� h�y ��i t�i sau c�p 10 l�i t�i b�i s� h�c ngh�!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			x015001_g_MenPai = GetMenPai(sceneId, selfId)
			if x015001_g_MenPai == 4 then
				BeginEvent(sceneId)
					AddText(sceneId, "Ng߽i l�i t�i qu�y r�y s� ph�, ng߽i �� l� � t� ph�i Nga My, c�n b�i s� g� n�a")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			--����ֵΪ9��ʾ������
			elseif x015001_g_MenPai==9	then
				LuaFnJoinMenpai(sceneId, selfId, targetId, 4)

				-- ���ó�ʼ��Npc��ϵֵ
				CallScriptFunction( 200099, "InitRelation", sceneId, selfId )
				
				-- ����ص��ķ�����Ϊ10����  25��28��29
				LuaFnSetXinFaLevel(sceneId,selfId,25,10)
				LuaFnSetXinFaLevel(sceneId,selfId,28,10)
				LuaFnSetXinFaLevel(sceneId,selfId,29,10)
				
				BeginEvent(sceneId)
					AddText(sceneId,"C�c h� �� gia nh�p ph�i Nga My!");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				--����ҷ���,��������������,����׬Ǯ
				LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{LevelMail_menpai_4}" )
				--LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{OBJ_emei_0001}" )
				
				--���ɽ����ټ���
				for i=1, 20 do
					TryRecieveItem( sceneId, selfId, 30501001, 1 )
				end
				x015001_MsgBox( sceneId, selfId, "L�y ���c 20 t�m Chi�u t�p l�nh c�a m�n ph�i" )
				
				if TryRecieveItem( sceneId, selfId, 10124003, 1 ) >= 0 then
					str		= "#YC�c h� �� nh�n ���c #W"..GetItemName( sceneId, 10124003 ).."."
					x015001_MsgBox( sceneId, selfId, str )
				end

				if	LuaFnGetSex( sceneId, selfId)==0	then
					LuaFnMsg2Player( sceneId, selfId,"C�c h� �� gia nh�p ph�i Nga My!",MSG2PLAYER_PARA)
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 164, 0)
					CallScriptFunction( 226900, "OnDefaultEvent",sceneId, selfId, targetId )
				else
					LuaFnMsg2Player( sceneId, selfId,"C�c h� �� gia nh�p ph�i Nga My!",MSG2PLAYER_PARA)
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 164, 0)
					CallScriptFunction( 226900, "OnDefaultEvent",sceneId, selfId, targetId )
				end
			else
				BeginEvent(sceneId)
					AddText(sceneId,"Ng߽i �� l� cao � c�a m�n ph�i kh�c, ch�ng ta kh�ng thu nh�n ng߽i")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			end
		end
	elseif	GetNumText()==1	then
		BeginEvent(sceneId)
			AddText(sceneId, "#{OBJ_emei_0002}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	else
		for i, findId in x015001_g_eventList do
			if eventId == findId then
				CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, MP_EMEI )
				return
			end
		end
	end
	--ָ·
	if GetNumText()==6 then
		BeginEvent(sceneId)
			AddText(sceneId, "Th�i L�c Hoa [98,51] c� th� d�y ng߽i k� n�ng chi�n �u c�a ph�i ta, �ng ta � ngay b�n c�nh ")
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, 98, 51, "Th�i L�c Hoa" )
		return
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x015001_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x015001_g_eventList do
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
function x015001_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x015001_g_eventList do
		if missionScriptId == findId then
			x015001_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x015001_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x015001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x015001_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x015001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x015001_OnDie( sceneId, selfId, killerId )
end

--**********************************
--��Ϣ��ʾ
--**********************************
function x015001_MsgBox( sceneId, selfId, str )
	Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
