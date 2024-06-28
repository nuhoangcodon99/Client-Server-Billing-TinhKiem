-- ��ɽ�۽�
-- �ؼ��ű�

x001235_g_scriptId = 001235

x001235_g_SmallBoxBuff = {
				{name="t� s�c b� c�p ", buff=8053}, 
				{name="ho�ng s�c b� c�p ", buff=8052}, 
				{name="l�c s�c b� c�p ", buff=8051}, 
				{name="b�ch s�c b� c�p ", buff=8050}, 
				{name="h�c s�c b� c�p ", buff=8049}, 
				{name="lam s�c b� c�p ", buff=8048}, 
				{name="h�ng s�c b� c�p ", buff=8047}, 
}

--**********************************
--���⽻��:�����ж�
--**********************************
function x001235_OnActivateConditionCheck( sceneId, selfId, activatorId )
	-- �������ϵ�buff
	return 1
end

--**********************************
--���⽻��:���ĺͿ۳�����
--**********************************
function x001235_OnActivateDeplete( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--���⽻��:������ɹ���Ч����
--**********************************
function x001235_OnActivateEffectOnce( sceneId, selfId, activatorId )
	
	-- �������Npc�����������+buff��
	local szName = GetName(sceneId, selfId)
	for i=1, getn(x001235_g_SmallBoxBuff)  do
		if szName == x001235_g_SmallBoxBuff[i].name  then
			LuaFnDeleteMonster(sceneId, selfId)
			LuaFnSendSpecificImpactToUnit(sceneId, activatorId, activatorId, 
										activatorId, x001235_g_SmallBoxBuff[i].buff, 100 )
		end
	end	
	
	return 1
end

--**********************************
--���⽻��:������ÿʱ������Ч����
--**********************************
function x001235_OnActivateEffectEachTick( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--���⽻��:������ʼʱ�����⴦��
--**********************************
function x001235_OnActivateActionStart( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--���⽻��:��������ʱ�����⴦��
--**********************************
function x001235_OnActivateCancel( sceneId, selfId, activatorId )
	return 0
end

--**********************************
--���⽻��:�����ж�ʱ�����⴦��
--**********************************
function x001235_OnActivateInterrupt( sceneId, selfId, activatorId )
	return 0
end

function x001235_OnActivateInterrupt( sceneId, selfId, activatorId )

end

