--������
--����

--�ű���
x013001_g_scriptId = 013001
x013001_g_eventList={224900,229009,808004,229012,808092}
--**********************************
--�¼��������
--**********************************
function x013001_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  L�o n�p B�n Nh�n, th� ch� t�m l�o n�p c� chuy�n g�?")
		local mp = GetMenPai(sceneId, selfId)
		if mp == 9 then 
			AddNumText(sceneId, x013001_g_scriptId, "Gia nh�p m�n ph�i",6,0)
		end
		AddNumText(sceneId, x013001_g_scriptId, "Gi�i thi�u m�n ph�i",8,1)
		AddNumText(sceneId, x013001_g_scriptId, "H�c K� n�ng c�a m�n ph�i?",8,6)		--ָ·������ѧϰ��
		for i, eventId in x013001_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x013001_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x013001_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, MP_DALI )
			return
		end
	end
	if GetNumText()==0	then

		x013001_g_MenPai = GetMenPai(sceneId, selfId)
		if x013001_g_MenPai == 6  then
			BeginEvent(sceneId)
				AddText(sceneId, "Ng߽i l�i �n ��a c�t v�i ta r�i, ng߽i �� l� � t� Thi�n Long T�, c�n b�i s� g� n�a")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		if x013001_g_MenPai ~= 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ng߽i �� l� cao � c�a m�n ph�i kh�c r�i, Thi�n Long T� c�a ch�ng ta nh�, l�m sao ch� ���c ��i Ph�t nh� ng߽i")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end

		BeginEvent(sceneId)
			AddText(sceneId, "#{MenpaiInfo_006}")
			AddNumText(sceneId, x013001_g_scriptId, "Ta mu�n b�i nh�p Thi�n Long",6,3)
			AddNumText(sceneId, x013001_g_scriptId, "T�i h� ch�a mu�n b�i s�",8,4)
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
	
	if	GetNumText()==3	then
			if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 2 then
				BeginEvent(sceneId)
					AddText(sceneId,"  H�y s�p x�p l�i tay n�i, c�n 2 v� tr� tr�ng, ta s� th߷ng cho ng߽i!")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			elseif GetLevel( sceneId, selfId ) < 10 then
				BeginEvent(sceneId)
					AddText(sceneId,"Th� ch� ��i t�i ���c c�p 10 h�ng t�i b�i s� h�c ngh�!")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			else
				x013001_g_MenPai = GetMenPai(sceneId, selfId)
				if x013001_g_MenPai == 6 then
					BeginEvent(sceneId)
						AddText(sceneId, "Ng߽i l�i �n ��a c�t v�i ta r�i, ng߽i �� l� � t� Thi�n Long T�, c�n b�i s� g� n�a")
					EndEvent(sceneId)
					DispatchEventList(sceneId,selfId,targetId)
					--����ֵΪ9��ʾ������
				elseif x013001_g_MenPai==9	then
					AddText(sceneId,"V�y b�t �u t� ��y, ng߽i ch�nh l� � t� c�a Thi�n Long T�")
					LuaFnJoinMenpai(sceneId, selfId, targetId, 6)

					-- ���ó�ʼ��Npc��ϵֵ
					CallScriptFunction( 200099, "InitRelation", sceneId, selfId )

					-- ����ص��ķ�����Ϊ10����  37,40,41
					LuaFnSetXinFaLevel(sceneId,selfId,37,10)
					LuaFnSetXinFaLevel(sceneId,selfId,40,10)
					LuaFnSetXinFaLevel(sceneId,selfId,41,10)

					BeginEvent(sceneId)
						AddText(sceneId,"C�c h� �� gia nh�p Thi�n Long T�!");
					EndEvent(sceneId)
					DispatchMissionTips(sceneId,selfId)
					--����ҷ���,��������������,����׬Ǯ
					LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{LevelMail_menpai_5}" )
					--LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{OBJ_tianlong_0001}" )
					
					--���ɽ����ټ���
					for i=1, 20 do
						TryRecieveItem( sceneId, selfId, 30501001, 1 )
					end
					x013001_MsgBox( sceneId, selfId, "L�y ���c 20 t�m Chi�u t�p l�nh c�a m�n ph�i" )

					if TryRecieveItem( sceneId, selfId, 10124008, 1 ) >= 0 then
						str		= "#YC�c h� �� nh�n ���c "..GetItemName( sceneId, 10124008 ).."��"
						x013001_MsgBox( sceneId, selfId, str )
					end
				
					if	LuaFnGetSex( sceneId, selfId)==0	then
						LuaFnMsg2Player( sceneId, selfId,"C�c h� �� gia nh�p Thi�n Long T�!",MSG2PLAYER_PARA)
						LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 166, 0)
						CallScriptFunction( 224900, "OnDefaultEvent",sceneId, selfId, targetId )
					else
						LuaFnMsg2Player( sceneId, selfId,"C�c h� �� gia nh�p Thi�n Long T�!",MSG2PLAYER_PARA)
						LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 166, 0)
						CallScriptFunction( 224900, "OnDefaultEvent",sceneId, selfId, targetId )
					end
				else
					BeginEvent(sceneId)
						AddText(sceneId,"Ng߽i �� l� cao � c�a m�n ph�i kh�c r�i, Thi�n Long T� c�a ch�ng ta nh�, l�m sao ch� ���c ��i Ph�t nh� ng߽i")
					EndEvent(sceneId)
					DispatchEventList(sceneId,selfId,targetId)
				end
			end
	elseif	GetNumText()==1	then
		BeginEvent(sceneId)
			AddText(sceneId, "#{OBJ_tianlong_0003}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--ָ·
	if GetNumText()==6 then
		BeginEvent(sceneId)
			AddText(sceneId, "B�n quan (97, 67) c� th� d�y ng߽i k� n�ng chi�n �u c�a m�n ph�i ta. �ng � ngay b�n ta")
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, 97, 67, "B�n Qu�n" )
		return
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x013001_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x013001_g_eventList do
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
function x013001_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x013001_g_eventList do
		if missionScriptId == findId then
			x013001_OnDefaultEvent( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x013001_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x013001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x013001_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x013001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x013001_OnDie( sceneId, selfId, killerId )
end

--**********************************
--��Ϣ��ʾ
--**********************************
function x013001_MsgBox( sceneId, selfId, str )
	Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
