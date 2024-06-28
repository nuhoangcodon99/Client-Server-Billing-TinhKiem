--Thiªu Th¤t S½n
--Tâm Ma - Mµ Dung Bác
--Author: Hoàng Steven

--**********************************--
--*             On Die             *--
--**********************************--
function x910156_OnDie(sceneId,selfId,killerId)

	--******************--
	local Attacker_Index=-1
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 then
			Attacker_Index=nHumanId
			break
		end
	end
	--******************--
	if Attacker_Index==-1 then
		return
	end
	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if GetName(sceneId,MonsterId)=="Mµ Dung Bác" and LuaFnIsCharacterLiving(sceneId,MonsterId)==1 then
			LuaFnSendSpecificImpactToUnit(sceneId,Attacker_Index,Attacker_Index,MonsterId,9766,0)
			break
		end
	end
	--******************--
	
end