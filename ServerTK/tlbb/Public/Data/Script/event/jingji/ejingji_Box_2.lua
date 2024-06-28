-- 125023 ����
-- ��ȡbuff�ı���

x125023_g_scriptId = 125023

x125023_g_SmallBoxBuff = {
				{id=1,name="t� s�c b� c�p",buff=8053},
				{id=2,name="ho�ng s�c b� c�p",buff=8052},
				{id=3,name="l�c s�c b� c�p",buff=8051},
				{id=4,name="b�ch s�c b� c�p",buff=8050},
				{id=5,name="h�c s�c b� c�p",buff=8049},
				{id=6,name="lam s�c b� c�p",buff=8048},
				{id=7,name="h�ng s�c b� c�p",buff=8047},
}

--**********************************
--���⽻��:�����ж�
--**********************************
function x125023_OnActivateConditionCheck( sceneId, selfId, activatorId )
	-- �������ϵ�buff
	return 1
end

--**********************************
--���⽻��:���ĺͿ۳�����
--**********************************
function x125023_OnActivateDeplete( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--���⽻��:������ɹ���Ч����
--**********************************
function x125023_OnActivateEffectOnce( sceneId, selfId, activatorId )
	
	-- �������Npc�����������+buff��
	local szName = GetName(sceneId, selfId)
	for i=1, getn(x125023_g_SmallBoxBuff)  do
		if szName == x125023_g_SmallBoxBuff[i].name  then
			LuaFnDeleteMonster(sceneId, selfId)
			LuaFnSendSpecificImpactToUnit(sceneId, activatorId, activatorId, 
										activatorId, x125023_g_SmallBoxBuff[i].buff, 100 )
		end
	end	
	
	return 1
end

--**********************************
--���⽻��:������ÿʱ������Ч����
--**********************************
function x125023_OnActivateEffectEachTick( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--���⽻��:������ʼʱ�����⴦��
--**********************************
function x125023_OnActivateActionStart( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--���⽻��:��������ʱ�����⴦��
--**********************************
function x125023_OnActivateCancel( sceneId, selfId, activatorId )
	return 0
end

--**********************************
--���⽻��:�����ж�ʱ�����⴦��
--**********************************
function x125023_OnActivateInterrupt( sceneId, selfId, activatorId )
	return 0
end

function x125023_OnActivateInterrupt( sceneId, selfId, activatorId )

end

