--������������c�p

--�ű���
x713574_g_ScriptId = 713574

--��npc��������to� � ��ߵ�c�p
x713574_g_nMaxLevel = 10

--**********************************
--������ں���
--**********************************
function x713574_OnDefaultEvent( sceneId, selfId, targetId )
	--��Ҽ���to� � ��c�p
	AbilityLevel = QueryHumanAbilityLevel(sceneId, selfId, ABILITY_XUANBINGSHU)
	--�������������to� � ������
	ExpPoint = GetAbilityExp(sceneId, selfId, ABILITY_XUANBINGSHU)
	--�����ж�

	--�ж���ng����ngThi�n S�n����,����ngThi�n S�n���Ӳ���ѧϰ
		if GetMenPai(sceneId,selfId) ~= MP_TIANSHAN then
			BeginEvent(sceneId)
        		AddText(sceneId,"Ng߽i kh�ng ph�i l� � t� b�n bang, ta kh�ng th� d�y ng߽i");
        	EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
	--�����û��ѧ��������
	if AbilityLevel < 1	then
		BeginEvent(sceneId)
			strText = "Ng߽i v�n ch�a h�c k� n�ng huy�n b�ng thu�t"
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--�������ܵ�c�p�Ѿ�������npc���ܽ�to� � ��Χ
	if AbilityLevel >= x713574_g_nMaxLevel then
		BeginEvent(sceneId)
			strText = "Ta ch� c� th� d�y ng߽i k� n�ng huy�n b�ng thu�t t� c�p 1-10, h�y t�i bang ph�i � h�c c�p cao h�n"
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	else
		--DispatchAbilityInfo(sceneId, selfId, targetId,x713574_g_ScriptId, ABILITY_XUANBINGSHU, LEVELUP_ABILITY_MENPAI[AbilityLevel+1].Money, LEVELUP_ABILITY_MENPAI[AbilityLevel+1].HumanExp, LEVELUP_ABILITY_MENPAI[AbilityLevel+1].AbilityExpLimitShow,LEVELUP_ABILITY_MENPAI[AbilityLevel+1].HumanLevelLimit)
		local tempAbilityId = ABILITY_XUANBINGSHU;
		local tempAbilityLevel = AbilityLevel + 1;
		local ret, demandMoney, demandExp, limitAbilityExp, limitAbilityExpShow, currentLevelAbilityExpTop, limitLevel = LuaFnGetAbilityLevelUpConfig(tempAbilityId, tempAbilityLevel);
		if ret and ret == 1 then
			DispatchAbilityInfo(sceneId, selfId, targetId,x713574_g_ScriptId, tempAbilityId, demandMoney, demandExp, limitAbilityExpShow, limitLevel);
		end
	end
end

--**********************************
--�о��¼�
--**********************************
function x713574_OnEnumerate( sceneId, selfId, targetId )
		--���������c�p����ʾѡ��
		if 1 then
			AddNumText(sceneId,x713574_g_ScriptId,"Th�ng c�p k� n�ng huy�n b�ng thu�t", 12, 1)
		end
		return
end

--**********************************
--���Ti�p th�����
--**********************************
function x713574_CheckAccept( sceneId, selfId )
end

--**********************************
--Ti�p th�
--**********************************
function x713574_OnAccept( sceneId, selfId, ABILITY_XUANBINGSHU )
end
