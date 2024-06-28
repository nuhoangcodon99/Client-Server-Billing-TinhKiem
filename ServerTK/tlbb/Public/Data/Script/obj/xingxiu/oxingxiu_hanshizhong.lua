--����NPC
--������
--��ͨ

x016001_g_scriptId = 016001
x016001_g_eventList={227900,808004}

x016001_g_StudyAbility_NeedMoney = 5550000		--555G
---�������ټ���䷽ID
x016001_g_RecipeId = 563
--˳����ЧID
x016001_g_SpecialEffectID = 18;


--**********************************
--�¼��������
--**********************************
function x016001_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Ta l� ch߷ng m�n nh�n c�a ph�i Tinh T�c. Ta s� gi�p b�ng h�u gia nh�p v�o Tinh T�c !")
		local mp = GetMenPai(sceneId, selfId)
		if mp == 9 then 
			AddNumText(sceneId, x016001_g_scriptId, "Ta mu�n gia nh�p Tinh T�c",6,0)
		end
		AddNumText(sceneId, x016001_g_scriptId, "V� ph�i Tinh T�c",8,1)
		AddNumText(sceneId, x016001_g_scriptId, "H�c k� n�ng ch� ph�",12,2)
		AddNumText(sceneId, x016001_g_scriptId, "Ta ph�i l�m g� � n�ng t�m ph�p",8,6)		--ָ·������ѧϰ��
		for i, eventId in x016001_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x016001_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText()==0	then

		x016001_g_MenPai = GetMenPai(sceneId, selfId)
		if x016001_g_MenPai == 5   then
			BeginEvent(sceneId)
				AddText(sceneId, "B�ng h�u �� l� � t� ph�i Tinh T�c !!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		if x016001_g_MenPai ~= 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"B�ng h�u �� l� � t� c�a m�n ph�i kh�c !")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end

		BeginEvent(sceneId)
			AddText(sceneId, "#{MenpaiInfo_005}")
			AddNumText(sceneId, x016001_g_scriptId, "Ta �ng � gia nh�p Tinh T�c",6,3)
			AddNumText(sceneId, x016001_g_scriptId, "��i ta ngh� 1 l�t",8,4)
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
				AddText(sceneId,"  Tay n�i c�a b�ng h�u kh�ng �� ch� tr�ng !!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		elseif GetLevel( sceneId, selfId ) < 10 then
			BeginEvent(sceneId)
				AddText(sceneId,"Tr߾c ti�n b�n ph�i ��t c�p 10 c�i �� !!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			x016001_g_MenPai = GetMenPai(sceneId, selfId)
			if x016001_g_MenPai == 5 then
				BeginEvent(sceneId)
					AddText(sceneId, "B�ng h�u �� l� � t� c�a ph�i Tinh T�c !!")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			--����ֵΪ9��ʾ������
			elseif x016001_g_MenPai==9	then
				LuaFnJoinMenpai(sceneId, selfId, targetId, 5)

				-- ���ó�ʼ��Npc��ϵֵ
				CallScriptFunction( 200099, "InitRelation", sceneId, selfId )

				-- ����ص��ķ�����Ϊ10����  31,34,35
				LuaFnSetXinFaLevel(sceneId,selfId,31,10)
				LuaFnSetXinFaLevel(sceneId,selfId,34,10)
				LuaFnSetXinFaLevel(sceneId,selfId,35,10)

				BeginEvent(sceneId)
					AddText(sceneId,"Gia nh�p Tinh T�c th�nh c�ng");
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				--����ҷ���,��������������,����׬Ǯ
				LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{LevelMail_menpai_1}" )
				--LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{OBJ_xingxiu_0001}" )
				
				--���ɽ����ټ���
				for i=1, 20 do
					TryRecieveItem( sceneId, selfId, 30501001, 1 )
				end
				x016001_MsgBox( sceneId, selfId, "B�ng h�u v�a nh�n ���c 20 c�i M�n ph�i tri�u t�p l�nh" )

				if TryRecieveItem( sceneId, selfId, 10124005, 1 ) >= 0 then
					str		= "#YB�ng h�u v�a nh�n ���c "..GetItemName( sceneId, 10124005 )
					x016001_MsgBox( sceneId, selfId, str )
				end
				
				if	LuaFnGetSex( sceneId, selfId)==0	then
					LuaFnMsg2Player( sceneId, selfId,"B�ng h�u v�a gia nh�p Tinh T�c th�nh c�ng",MSG2PLAYER_PARA)
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 165, 0)
					CallScriptFunction( 227900, "OnDefaultEvent",sceneId, selfId, targetId )
				else
					LuaFnMsg2Player( sceneId, selfId,"B�ng h�u �� gia nh�p Tinh T�c",MSG2PLAYER_PARA)
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 165, 0)
					CallScriptFunction( 227900, "OnDefaultEvent",sceneId, selfId, targetId )
				end
			else
				BeginEvent(sceneId)
					AddText(sceneId,"B�ng h�u �� l� � t� c�a ph�i kh�c r�i")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			end
		end
	elseif	GetNumText()==1	then
		BeginEvent(sceneId)
			AddText(sceneId, "#{OBJ_xingxiu_0003}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif	GetNumText() == 2 then
	
		x016001_g_MenPai = GetMenPai(sceneId, selfId)
		if x016001_g_MenPai == 5 then

			local RecipeFlag = IsPrescrLearned( sceneId, selfId, x016001_g_RecipeId );
			if RecipeFlag >= 1 then
				BeginEvent(sceneId)
						AddText(sceneId,"B�ng h�u �� h�c k� n�ng Ch� t�o ph�")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
				return 0;
			end
				
			local	lev	= QueryHumanAbilityLevel( sceneId, selfId, 39 )
			if lev < 2 then
					BeginEvent(sceneId)
					AddText(sceneId,"C�n n�ng c�p k� n�ng ch� ph� l�n c�p � 2 #{_EXCHG"..x016001_g_StudyAbility_NeedMoney.."}.")
					EndEvent(sceneId)
					DispatchEventList(sceneId,selfId,targetId)
					return
			end	
				
			if LuaFnGetMoney( sceneId, selfId )+GetMoneyJZ( sceneId, selfId ) < x016001_g_StudyAbility_NeedMoney then
				BeginEvent(sceneId)
						AddText(sceneId,"  B�ng h�u kh�ng �� ng�n l��ng, kh�ng th� n�ng c�p #{_EXCHG"..x016001_g_StudyAbility_NeedMoney.."}")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
				return 0
			else
				BeginEvent(sceneId)
					AddText(sceneId,"  Ь h�c k� n�ng Ch� ph� c�n ti�u t�n #{_EXCHG"..x016001_g_StudyAbility_NeedMoney.."} gold.")
					AddNumText(sceneId, x016001_g_scriptId, "OK",12,999)
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
				return
					
			end

		else
			BeginEvent(sceneId)
				AddText(sceneId, "K� n�ng n�y ta ch� truy�n cho � t� Tinh T�c th�i !")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	
	elseif	GetNumText() == 999 then
		-- �������ǲ���ѧ���˱�Ҫ�ļ��ܲ��ﵽ��Ҫ�ȼ�
		local	lev	= QueryHumanAbilityLevel( sceneId, selfId, 39 )
		if lev < 2 then
			BeginEvent(sceneId)
				AddText(sceneId,"  B�ng h�u c�n n�ng c�p k� n�ng Ch� ph� l�n c�p � 2")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
			
		-- �������ǲ��ǹ�Ǯ
		if GetMoney(sceneId, selfId)+GetMoneyJZ(sceneId, selfId) < x016001_g_StudyAbility_NeedMoney   then
			BeginEvent(sceneId)
				AddText(sceneId, " B�ng h�u kh�ng �� ng�n l��ng !!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
		
		local delMoney,delJiaoZi = LuaFnCostMoneyWithPriority( sceneId, selfId, x016001_g_StudyAbility_NeedMoney )
		if delMoney and delMoney ~= -1  then
			CallScriptFunction( USERECIPE_SCRIPT, "ReadRecipe", sceneId, selfId, x016001_g_RecipeId )
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x016001_g_SpecialEffectID, 0);
			
			BeginEvent(sceneId)
				AddText(sceneId,"B�ng h�u �� h�c ���c k� n�ng Ch� ph� !")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
		
	else
		for i, findId in x016001_g_eventList do
			if eventId == findId then
				CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, MP_XINGSU )
				return
			end
		end
	end
	--ָ·
	if GetNumText()==6 then
		BeginEvent(sceneId)
			AddText(sceneId, "#GThi To�n (96,78) c� th� gi�p b�ng h�u n�ng c�p t�m ph�p. Nh�n #GTAB#W l�n v� t�m ch� #YV� !!")
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, 96, 78, "Voodoo Shih" )
		return
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x016001_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x016001_g_eventList do
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
function x016001_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x016001_g_eventList do
		if missionScriptId == findId then
			x016001_OnDefaultEvent( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x016001_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x016001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x016001_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x016001_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x016001_OnDie( sceneId, selfId, killerId )
end

--**********************************
--��Ϣ��ʾ
--**********************************
function x016001_MsgBox( sceneId, selfId, str )
	Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
