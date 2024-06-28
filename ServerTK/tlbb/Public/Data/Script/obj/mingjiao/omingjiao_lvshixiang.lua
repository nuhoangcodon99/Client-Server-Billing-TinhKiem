--����NPC
--��ʦ��
--��ͨ

x011006_g_scriptId = 009002
x011006_g_eventList={222900,808004}
--**********************************
--�¼��������
--**********************************
function x011006_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  T�u gia l� Minh Gi�o H�u s� L� S� T߽ng, n�u mu�n gia nh�p Minh Gi�o, h�y t�i T�u gia! mu�n u�ng r��u, c�ng t�i t�m t�u gia!")
		local mp = GetMenPai(sceneId, selfId)
		if mp == 9 then 
			AddNumText(sceneId, x011006_g_scriptId, "Gia nh�p m�n ph�i",6,0)
		end
		AddNumText(sceneId, x011006_g_scriptId, "Gi�i thi�u m�n ph�i",8,1)
		AddNumText(sceneId, x011006_g_scriptId, "H�c K� n�ng c�a m�n ph�i?",8,6)		--ָ·������ѧϰ��
		for i, eventId in x011006_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x011006_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText()==0	then

		x011006_g_MenPai = GetMenPai(sceneId, selfId)
		if x011006_g_MenPai == 1 then
			BeginEvent(sceneId)
				AddText(sceneId, "Tr� n�y c�ng ��a ���c sao? N�u l�m t�u gia b�c t�c, tr� c�a ng߽i 1000 �i�m c�ng hi�n h�y c�n �t")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		if x011006_g_MenPai ~= 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"G� n�y hay g�m nh�! ng߽i �� l� ng߶i c�a m�n ph�i kh�c, c�n t�i t�m Minh Gi�o ta l�m g�?")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end

		BeginEvent(sceneId)
			AddText(sceneId, "#{MenpaiInfo_001}")
			AddNumText(sceneId, x011006_g_scriptId, "Ta mu�n b�i nh�p Minh Gi�o",6,3)
			AddNumText(sceneId, x011006_g_scriptId, "T�i h� ch�a mu�n b�i s�",8,4)
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
				AddText(sceneId,"Gi�o h�i Minh Gi�o ta, ch� thu nh�n ng߶i t� c�p 10 tr� l�n")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			x011006_g_MenPai = GetMenPai(sceneId, selfId)
			if x011006_g_MenPai == 1 then
				BeginEvent(sceneId)
					AddText(sceneId, "Tr� n�y c�ng ��a ���c sao? N�u l�m t�u gia b�c t�c, tr� c�a ng߽i 1000 �i�m c�ng hi�n h�y c�n �t")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			--����ֵΪ9��ʾ������
			elseif x011006_g_MenPai==9	then
				LuaFnJoinMenpai(sceneId, selfId, targetId, 1)

				-- ���ó�ʼ��Npc��ϵֵ
				CallScriptFunction( 200099, "InitRelation", sceneId, selfId )

				-- ����ص��ķ�����Ϊ10����  7,10,11
				LuaFnSetXinFaLevel(sceneId,selfId,7,10)
				LuaFnSetXinFaLevel(sceneId,selfId,10,10)
				LuaFnSetXinFaLevel(sceneId,selfId,11,10)

				BeginEvent(sceneId)
	  					AddText(sceneId,"C�c h� �� gia nh�p Minh Gi�o!");
	  			EndEvent(sceneId)
	  			DispatchMissionTips(sceneId,selfId)
	  			
	  			if TryRecieveItem( sceneId, selfId, 10124001, 1 ) >= 0 then
					str		= "#YC�c h� �� nh�n ���c "..GetItemName( sceneId, 10124001 ).."��"
					x011006_MsgBox( sceneId, selfId, str )				
				end
				
				
				--����ҷ���,��������������,����׬Ǯ
				LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{LevelMail_menpai_2}" )
				--LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{OBJ_mingjiao_0001}" )
				
				--���ɽ����ټ���
				for i=1, 20 do
					TryRecieveItem( sceneId, selfId, 30501001, 1 )
				end
				x011006_MsgBox( sceneId, selfId, "L�y ���c 20 t�m Chi�u t�p l�nh c�a m�n ph�i" )

				if	LuaFnGetSex( sceneId, selfId)==0	then
					LuaFnMsg2Player( sceneId, selfId,"C�c h� �� gia nh�p Minh Gi�o!",MSG2PLAYER_PARA)
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 161, 0)
					CallScriptFunction( 222900, "OnDefaultEvent",sceneId, selfId, targetId )
				else
					LuaFnMsg2Player( sceneId, selfId,"C�c h� �� gia nh�p Minh Gi�o!",MSG2PLAYER_PARA)
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 161, 0)
					CallScriptFunction( 222900, "OnDefaultEvent",sceneId, selfId, targetId )
				end
			else
				BeginEvent(sceneId)
					AddText(sceneId,"G� n�y hay g�m nh�! ng߽i �� l� ng߶i c�a m�n ph�i kh�c, c�n t�i t�m Minh Gi�o ta l�m g�?")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			end
		end
	elseif	GetNumText()==1	then
		BeginEvent(sceneId)
			AddText(sceneId, "#{OBJ_mingjiao_0002}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	else
		for i, findId in x011006_g_eventList do
			if eventId == findId then
				CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, MP_MINGJIAO )
				return
			end
		end
	end
	--ָ·
	if GetNumText()==6 then
		BeginEvent(sceneId)
			AddText(sceneId, "B�ng V�n Xu�n [108,59] c� th� d�y ng߽i k� n�ng chi�n �u c�a ph�i ta, �ng � ngay b�n c�nh ta")
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, 108, 59, "���f��" )
		return
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x011006_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x011006_g_eventList do
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
function x011006_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
--for i, findId in x011006_g_eventList do
--	if missionScriptId == findId then
--		UpdateEventList( sceneId, selfId, targetId )
--		return
--	end
--end
end

--**********************************
--�������Ѿ���������
--**********************************
function x011006_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x011006_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x011006_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x011006_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x011006_OnDie( sceneId, selfId, killerId )
end

--**********************************
--��Ϣ��ʾ
--**********************************
function x011006_MsgBox( sceneId, selfId, str )
	Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
