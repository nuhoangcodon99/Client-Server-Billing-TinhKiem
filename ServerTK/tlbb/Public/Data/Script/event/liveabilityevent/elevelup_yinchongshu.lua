--������������c�p

--�ű���
x713593_g_ScriptId = 713593

--��npc��������to� � ��ߵ�c�p
x713593_g_nMaxLevel = 100

--**********************************
--������ں���
--**********************************
function x713593_OnDefaultEvent( sceneId, selfId, targetId )
	--��Ҽ���to� � ��c�p
	AbilityLevel = QueryHumanAbilityLevel(sceneId, selfId, ABILITY_YINCHONGSHU)
	--�������������to� � ������
	ExpPoint = GetAbilityExp(sceneId, selfId, ABILITY_YINCHONGSHU)
	--�����ж�

	--�ж���ng����ngTinh T�c�ɵ���,����ngTinh T�c���Ӳ���ѧϰ
		if GetMenPai(sceneId,selfId) ~= MP_XINGSU then
			BeginEvent(sceneId)
        		AddText(sceneId,"Ng߽i kh�ng ph�i l� � t� b�n bang, ta kh�ng th� d�y ng߽i");
        	EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
	--�����û��ѧ��������
	if AbilityLevel < 1	then
		BeginEvent(sceneId)
			strText = "Ng߽i v�n ch�a h�c k� n�ng d�n tr�ng thu�t"
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--�������ܵ�c�p�Ѿ�������npc���ܽ�to� � ��Χ
	if AbilityLevel >= x713593_g_nMaxLevel then
		BeginEvent(sceneId)
			--[ QUFEI 2007-07-17 15:30 �޸� ]
			strText = "Tr߾c m�t k� n�ng n�y ch� c� th� h�c �n c�p 100"
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	else
		--DispatchAbilityInfo(sceneId, selfId, targetId,x713593_g_ScriptId, ABILITY_YINCHONGSHU, LEVELUP_ABILITY_ASSISTANT[AbilityLevel+1].Money, LEVELUP_ABILITY_ASSISTANT[AbilityLevel+1].HumanExp, LEVELUP_ABILITY_ASSISTANT[AbilityLevel+1].AbilityExpLimitShow,LEVELUP_ABILITY_ASSISTANT[AbilityLevel+1].HumanLevelLimit)
		local tempScriptId = x713593_g_ScriptId;
		local tempAbilityId = ABILITY_YINCHONGSHU;
		local tempAbilityLevel = AbilityLevel + 1;
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(tempAbilityId, tempAbilityLevel);
		if ret and ret == 1 then
			DispatchAbilityInfo(sceneId, selfId, targetId,tempScriptId, tempAbilityId, demandMoney, demandExp, limitAbilityExpShow, limitLevel);
		end
	end
end

--**********************************
--�о��¼�
--**********************************
function x713593_OnEnumerate( sceneId, selfId, targetId )
		--���������c�p����ʾѡ��
		if 1 then
			AddNumText(sceneId,x713593_g_ScriptId,"Th�ng c�p k� n�ng d�n tr�ng thu�t", 12, 1)
		end
		return
end

--**********************************
--���Ti�p th�����
--**********************************
function x713593_CheckAccept( sceneId, selfId )
end

--**********************************
--Ti�p th�
--**********************************
function x713593_OnAccept( sceneId, selfId, ABILITY_YINCHONGSHU )
end
