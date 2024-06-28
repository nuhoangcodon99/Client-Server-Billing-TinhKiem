--Trang b¸ trân thú
--Code by Sói

--********************--
x930700_g_scriptId = 930700
--********************--
x930700_g_EquipList =
{
	[1]={30000501,30000506,30000511,30000516,30000521,30000526,30000531,30000536,30000541,30000546},--Träo
	[2]={30000502,30000507,30000512,30000517,30000522,30000527,30000532,30000537,30000542,30000547},--Di®n
	[3]={30000503,30000508,30000513,30000518,30000523,30000528,30000533,30000538,30000543,30000548},--Giáp
	[4]={30000504,30000509,30000514,30000519,30000524,30000529,30000534,30000539,30000544,30000549},--Hoàn
	[5]={30000505,30000510,30000515,30000520,30000525,30000530,30000535,30000540,30000545,30000550},--Phù
}
--********************--
x930700_g_Mission_Data =
{
	[1]=MD_PET_EQUIP_CLAW,
	[2]=MD_PET_EQUIP_HAT,
	[3]=MD_PET_EQUIP_CLOTH,
	[4]=MD_PET_EQUIP_CHAPLET,
	[5]=MD_PET_EQUIP_AMULET,
}

--**********************************--
--*        On Default Event        *--
--**********************************--
function x930700_OnDefaultEvent(sceneId,selfId,bagIndex)

	--********************--
	--********************--

end
--**********************************--
--*      Is Skill Like Script      *--
--**********************************--
function x930700_IsSkillLikeScript(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
	
end
--**********************************--
--*         Cancel Impacts         *--
--**********************************--
function x930700_CancelImpacts(sceneId,selfId)

	--********************--
	return 0
	--********************--
	
end
--**********************************--
--*       On Condition Check       *--
--**********************************--
function x930700_OnConditionCheck(sceneId,selfId)

	--********************--
	if LuaFnVerifyUsedItem(sceneId,selfId)~=1 then
		return 0
	end
	--********************--
	local Equip_Index=LuaFnGetItemIndexOfUsedItem(sceneId,selfId)
	local nFound=0
	for i=1,getn(x930700_g_EquipList) do
		for j=1,getn(x930700_g_EquipList[i]) do
			if Equip_Index==x930700_g_EquipList[i][j] then
				nFound=i
				break
			end
		end
		if nFound~=0 then
			break
		end
	end
	--********************--
	for i=0,9 do											
		local High,Low=LuaFnGetPetGUID(sceneId,selfId,i)
		local Pet_ID=LuaFnGetPetObjIdByGUID(sceneId,selfId,High,Low)								
		if Pet_ID~=-1 and Pet_ID then	
			BeginEvent(sceneId)
				AddText(sceneId,"Trân thú ðang trong trÕng thái chiªn ð¤u, không th¬ thay ð±i trang b¸!")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return 0
		end
	end
	--********************--
	if nFound==0 then
		BeginEvent(sceneId)
			AddText(sceneId,"Sai sót nµi bµ, hãy liên h® v¾i GM ð¬ thông báo!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return 0
	end
	--********************--
	return 1
	--********************--
	
end
--**********************************--
--*           On Deplete           *--
--**********************************--
function x930700_OnDeplete(sceneId,selfId)
	
	--********************--
	if LuaFnDepletingUsedItem(sceneId,selfId)>0 then
		return 1
	end
	--********************--
	return 0
	--********************--
	
end
--**********************************--
--*        On Activate Once        *--
--**********************************--
function x930700_OnActivateOnce(sceneId,selfId)

	--********************--
	if LuaFnGetPropertyBagSpace(sceneId,selfId)<1 then
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ c¥n s¡p xªp lÕi 1 ô tr¯ng trong ô ÐÕo cø trß¾c khi thao tác!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return 0
	end
	--********************--
	local Equip_Index=LuaFnGetItemIndexOfUsedItem(sceneId,selfId)
	local nFound=0
	for i=1,getn(x930700_g_EquipList) do
		for j=1,getn(x930700_g_EquipList[i]) do
			if Equip_Index==x930700_g_EquipList[i][j] then
				nFound=i
				break
			end
		end
		if nFound~=0 then
			break
		end
	end
	--********************--
	local Old_Equip=GetMissionData(sceneId,selfId,x930700_g_Mission_Data[nFound])
	SetMissionData(sceneId,selfId,x930700_g_Mission_Data[nFound],Equip_Index)
	--********************--
	if Old_Equip>10000000 then
		TryRecieveItem(sceneId,selfId,Old_Equip,1)
	end
	--********************--
	BeginEvent(sceneId)
		AddText(sceneId,"Trang b¸ trân thú thành công!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--********************--
	CallScriptFunction(930701,"SendParamToClient",sceneId,selfId)
	--********************--
	return 1
	--********************--
	
end
--**********************************--
--*        On Default Event        *--
--**********************************--
function x930700_OnActivateEachTick(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
end
