--07ʥ��Ԫ��

--�Ҹ�ѩ��ʹ�ýű�


--�ű���
x300064_g_scriptId = 300064

x300064_g_GiftTbl = {

	30501101, --D� dung �an; Tuy�t nh�n
	30501102,--D� dung �an; B�ng kh�i
	30501015,--D� Dung �an: Tuy�t S�n Li�p Nh�n
	30501125,--Dich Dung �an: C�y Gi�ng Sinh
	--30008022,--Chi�u b�i: �ao ki�m tranh phong
	--30008023,
	--30008024,
	30505034,--Phi ho� l�u tinh
	30505035,--B�t di�n lung linh
	30505036,--Tuy�t l�c v� h�n
	30505037--L�c anh t�n ph�n


}

function x300064_OnDefaultEvent( sceneId, selfId, bagIndex )

end

function x300064_IsSkillLikeScript( sceneId, selfId)
	return 1; --����ű���Ҫ����֧��
end

function x300064_CancelImpacts( sceneId, selfId )
	return 0; --����Ҫ����ӿڣ���Ҫ�����պ���,����ʼ�շ���0��
end


function x300064_OnConditionCheck( sceneId, selfId )

	--У��ʹ�õ���Ʒ
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end

	local targetId = LuaFnGetTargetObjID(sceneId, selfId)
	if targetId < 0 then
		return 0
	end

	local objType = GetCharacterType( sceneId, targetId )

	if objType == 1 then--��������....

			--���ܶ��Լ�ʹ��....
		if selfId == targetId then
			LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
			return 0
		end

	elseif objType == 2 then--�����NPC....

		if GetName(sceneId,targetId) ~= " ��i Tuy�t Nh�n " then
			LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
			return 0
		end

	else

		LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
		return 0

	end

	return 1

end

function x300064_OnDeplete( sceneId, selfId )
	if(LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1;
	end
	return 0;
end

function x300064_OnActivateOnce( sceneId, selfId )
	
	local targetId = LuaFnGetTargetObjID(sceneId, selfId)
	if targetId < 0 then
		return 1
	end
	local objType = GetCharacterType( sceneId, targetId )

	if objType == 1 then--������������....

		--1/12����(9%)���жԷ�....���Է�һ����Ч....����Ŀ��ʾ....
		local rand = random(100)
		if rand < 9 then
				LuaFnSendSpecificImpactToUnit(sceneId, targetId, targetId, targetId, 10482, 0)
				BeginEvent( sceneId )
					AddText( sceneId, "C�c h� �� b� "..LuaFnGetName(sceneId,selfId).." n�m m�t H�nh Ph�c Tuy�t C�u" )
				EndEvent( sceneId )
				DispatchMissionTips( sceneId, targetId )
		end

	elseif objType == 2 then--�����ѩ��....
		if GetName(sceneId,targetId) ~= " ��i Tuy�t Nh�n " then
			LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
			return 1
		end

		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 10481, 0)


	else

		LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
		return 1

	end

	--40��(��)ʹ�ñ���Ʒ��һ�����ʻ��ý�Ʒ....
	if GetLevel(sceneId, selfId) < 40 then
		return 1
	end

	--1/500��ö���....
	local GoodLuck = random(100)
	if GoodLuck  >50 then --hd edit 20/12/2013
		return 1
	end

	local idx = random( getn(x300064_g_GiftTbl) )
	local ItemId = x300064_g_GiftTbl[idx]
	local BagIndex = TryRecieveItem( sceneId, selfId, ItemId, QUALITY_MUST_BE_CHANGE )
	if BagIndex ~= -1 then

		local playerName = GetName(sceneId, selfId)
		local transfer = GetBagItemTransfer(sceneId,selfId,BagIndex)

		msg = format("#{_INFOUSR%s}#P n�m m�t qu� #HTuy�t C�u H�nh Ph�c#P. #{_INFOMSG%s}#P t� tr�n tr�i r�i xu�ng chui l�t v�o tai n�i c�a #{_INFOUSR%s}#P th�t l� may m�n!", playerName, transfer, playerName )
		BroadMsgByChatPipe(sceneId, selfId, msg, 4)

	end

	return 1;

end


function x300064_OnActivateEachTick( sceneId, selfId)
	return 1;
end
