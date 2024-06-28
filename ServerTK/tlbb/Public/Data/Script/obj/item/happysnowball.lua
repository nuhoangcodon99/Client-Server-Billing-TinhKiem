--07Ê¥µ®Ôªµ©

--ÐÒ¸£Ñ©ÇòÊ¹ÓÃ½Å±¾


--½Å±¾ºÅ
x300064_g_scriptId = 300064

x300064_g_GiftTbl = {

	30501101, --D¸ dung ðan; Tuyªt nhân
	30501102,--D¸ dung ðan; Bång kh¯i
	30501015,--D¸ Dung Ðan: Tuyªt S½n Li®p Nhân
	30501125,--Dich Dung Ðan: Cây Giáng Sinh
	--30008022,--Chiªu bài: Ðao kiªm tranh phong
	--30008023,
	--30008024,
	30505034,--Phi hoä lßu tinh
	30505035,--Bát di®n lung linh
	30505036,--Tuyªt lÕc vô h¢n
	30505037--LÕc anh tân phân


}

function x300064_OnDefaultEvent( sceneId, selfId, bagIndex )

end

function x300064_IsSkillLikeScript( sceneId, selfId)
	return 1; --Õâ¸ö½Å±¾ÐèÒª¶¯×÷Ö§³Ö
end

function x300064_CancelImpacts( sceneId, selfId )
	return 0; --²»ÐèÒªÕâ¸ö½Ó¿Ú£¬µ«Òª±£Áô¿Õº¯Êý,²¢ÇÒÊ¼ÖÕ·µ»Ø0¡£
end


function x300064_OnConditionCheck( sceneId, selfId )

	--Ð£ÑéÊ¹ÓÃµÄÎïÆ·
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end

	local targetId = LuaFnGetTargetObjID(sceneId, selfId)
	if targetId < 0 then
		return 0
	end

	local objType = GetCharacterType( sceneId, targetId )

	if objType == 1 then--´òµÄÊÇÍæ¼Ò....

			--²»ÄÜ¶Ô×Ô¼ºÊ¹ÓÃ....
		if selfId == targetId then
			LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
			return 0
		end

	elseif objType == 2 then--´òµÄÊÇNPC....

		if GetName(sceneId,targetId) ~= " ÐÕi Tuyªt Nhân " then
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

	if objType == 1 then--´òµÄÊÇÆäËûÍæ¼Ò....

		--1/12¸ÅÂÊ(9%)´òÖÐ¶Ô·½....¸ø¶Ô·½Ò»¸öÌØÐ§....²¢ÐÑÄ¿ÌáÊ¾....
		local rand = random(100)
		if rand < 9 then
				LuaFnSendSpecificImpactToUnit(sceneId, targetId, targetId, targetId, 10482, 0)
				BeginEvent( sceneId )
					AddText( sceneId, "Các hÕ ðã b¸ "..LuaFnGetName(sceneId,selfId).." ném mµt HÕnh Phúc Tuyªt C¥u" )
				EndEvent( sceneId )
				DispatchMissionTips( sceneId, targetId )
		end

	elseif objType == 2 then--´òµÄÊÇÑ©ÈË....
		if GetName(sceneId,targetId) ~= " ÐÕi Tuyªt Nhân " then
			LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
			return 1
		end

		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 10481, 0)


	else

		LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
		return 1

	end

	--40¼¶(º¬)Ê¹ÓÃ±¾ÎïÆ·ÓÐÒ»¶¨¼¸ÂÊ»á»ñµÃ½±Æ·....
	if GetLevel(sceneId, selfId) < 40 then
		return 1
	end

	--1/500»ñµÃ¶«Î÷....
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

		msg = format("#{_INFOUSR%s}#P ném mµt quä #HTuyªt C¥u HÕnh Phúc#P. #{_INFOMSG%s}#P t× trên tr¶i r½i xu¯ng chui l÷t vào tai näi cüa #{_INFOUSR%s}#P th§t là may m¡n!", playerName, transfer, playerName )
		BroadMsgByChatPipe(sceneId, selfId, msg, 4)

	end

	return 1;

end


function x300064_OnActivateEachTick( sceneId, selfId)
	return 1;
end
