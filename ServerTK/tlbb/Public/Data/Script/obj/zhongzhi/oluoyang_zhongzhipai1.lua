--����
--��ֲ��1

--�ű���
x714021_g_ScriptId = 714021

event_xuanzezhiwu = 713550

--ֲ���Ʒ����б�
x714021_g_eventList={20104001,20104003,20104004,20104006,20104010,20104011,
			20105001,20105002,20105005,20105008,20105011} --ֲ��ı��,����scriptId
--**********************************
--�¼��������
--**********************************
function x714021_OnDefaultEvent( sceneId, selfId,targetId )
	--PLANTFLAG[1] =0
	--PLANTFLAG[2] =0
	AbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_ZHONGZHI)
	--�����Ҳ�����ֲ����
	if AbilityLevel == 0	then
		BeginEvent(sceneId)
			AddText(sceneId, "C�c h� c�n h�c k� n�ng tr�ng tr�t tr߾c.")
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
		return
	end
	--�����һ���ֲ����
	if AbilityLevel ~= 0	then
		BeginEvent(sceneId)
			AddText(sceneId, "M�i m�t v�t tr�ng �u c� th� chia th�nh 2 lo�i: thu ho�ch s�m v� mu�n. Th�i gian tr߷ng th�nh c�a lo�i thu ho�ch s�m ch�ng 5 ph�t. Th�i gian tr߷ng th�nh c�a lo�i thu ho�ch mu�n ch�ng 70 ph�t. Nh�ng k�t qu� thu ho�ch ���c r�t nhi�u. anh ch�n lo�i n�o?")
			AddNumText(sceneId, x714021_g_ScriptId, "Tr�ng lo�i thu ho�ch s�m",6,254)
			AddNumText(sceneId, x714021_g_ScriptId, "Tr�ng lo�i thu ho�ch s�m",6,255)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x714021_OnEventRequest( sceneId, selfId, targetId, eventId )
	local name_Index
	local NumText = GetNumText()

	AbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_ZHONGZHI)

	if NumText == 254 or NumText == 255 then
		BeginEvent(sceneId)
			AddText(sceneId, "Xin ch�n lo�i v�t tr�ng")
			--ͨ��x714021_g_eventList��scriptglobal�е�ֲ���б�Աȣ������������ֲ���ܵ�����ʾ��Ӧֲ��
			for i, eventId in x714021_g_eventList do	--������������˿�����ֲ��ֲ���б�
				for j,g_ZhiWuId in V_ZHONGZHI_ID do		--����scriptglobal�е�����ֲ���б�
					if eventId == g_ZhiWuId then
						if AbilityLevel >= V_ZHONGZHI_NEEDLEVEL[j] then --��������ֲ���ܵ�>=��ֲ��Ҫ���ܵ�]

							if NumText == 254 then
								name_Index = j
							else
								name_Index = j + getn(V_ZHONGZHI_NAME)/2
							end

							AddNumText(sceneId, x714021_g_ScriptId, V_ZHONGZHI_NAME[name_Index].."(C�p "..V_ZHONGZHI_NEEDLEVEL[j]..")",6,name_Index)
							break
						end
					end
				end
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return

	end

	zhiwuId = NumText
	for i, findId in x714021_g_eventList do
		if zhiwuId <= getn(V_ZHONGZHI_NAME) then
			CallScriptFunction( 713550, "OnDefaultEvent",sceneId, selfId, targetId, zhiwuId )
			return
		end
	end
end

--**********************************
--���ܴ�NPC��������ʱ��������ӿڣ�
--**********************************
function x714021_OnMissionSubmit( sceneId, selfId, targetId, scriptId )
	for i, findId in x714021_g_eventList do
		if scriptId == findId then
			ret = CallScriptFunction( scriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( scriptId, "OnAccept", sceneId, selfId, ABILITY_ZHONGZHI )
				CallScriptFunction( scriptId, "OnDefaultEvent",sceneId, selfId, targetId, ABILITY_ZHONGZHI )
			end
			return
		end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x714021_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x714021_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, ABILITY_ZHONGZHI )
			end
			return
		end
	end
end

