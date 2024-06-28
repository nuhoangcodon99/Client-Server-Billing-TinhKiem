--Tinh giác trân thú
--Tinh giác ng÷c bµi
--Author: Hoàng Steven (Kenvin Sói)

--********************--
x930702_g_scriptId = 930702
--********************--
x930702_g_ItemList={}
x930702_g_ItemList[30010090]={	Min=0,	Max=9	}
x930702_g_ItemList[30010091]={	Min=10,	Max=19	}
x930702_g_ItemList[30010092]={	Min=20,	Max=29	}
x930702_g_ItemList[30010093]={	Min=30,	Max=39	}
x930702_g_ItemList[30010094]={	Min=40,	Max=49	}
x930702_g_ItemList[30010095]={	Min=50,	Max=59	}
x930702_g_ItemList[30010096]={	Min=60,	Max=69	}
x930702_g_ItemList[30010097]={	Min=70,	Max=79	}
x930702_g_ItemList[30010098]={	Min=80,	Max=89	}
x930702_g_ItemList[30010099]={	Min=90,	Max=99	}
--********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x930702_OnDefaultEvent(sceneId,selfId,bagIndex)

	--********************--
	--********************--

end
--**********************************--
--*      Is Skill Like Script      *--
--**********************************--
function x930702_IsSkillLikeScript(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
	
end
--**********************************--
--*         Cancel Impacts         *--
--**********************************--
function x930702_CancelImpacts(sceneId,selfId)

	--********************--
	return 0
	--********************--
	
end
--**********************************--
--*       On Condition Check       *--
--**********************************--
function x930702_OnConditionCheck(sceneId,selfId)

	--********************--
	if LuaFnVerifyUsedItem(sceneId,selfId)~=1 then
		return 0
	end
	--********************--
	if 1==1 then
		return 0
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
	local Item_Index=LuaFnGetItemIndexOfUsedItem(sceneId,selfId)
	--********************--
	local Pet_Xiulian_Point=GetMissionData(sceneId,selfId,MD_PET_XIULIAN_LEVEL)
	--********************--
	if not x930702_g_ItemList[Item_Index] then
		BeginEvent(sceneId)
			AddText(sceneId,"V§t ph¦m b¸ l²i, hãy thông báo cho GM!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return 0
	end
	--********************--
	if Pet_Xiulian_Point<x930702_g_ItemList[Item_Index].Min or Pet_Xiulian_Point>x930702_g_ItemList[Item_Index].Max then
		BeginEvent(sceneId)
			AddText(sceneId,"C¤p ðµ Trân thú Tinh giác cüa các hÕ không n¢m trong khoäng "..x930702_g_ItemList[Item_Index].Min.." - "..x930702_g_ItemList[Item_Index].Max..", không th¬ dùng v§t ph¦m này!")
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
function x930702_OnDeplete(sceneId,selfId)
	
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
function x930702_OnActivateOnce(sceneId,selfId)

	--********************--
	local Item_Index=LuaFnGetItemIndexOfUsedItem(sceneId,selfId)
	--********************--
	local Pet_Xiulian_Point=GetMissionData(sceneId,selfId,MD_PET_XIULIAN_LEVEL)
	--********************--
	if not x930702_g_ItemList[Item_Index] then
		BeginEvent(sceneId)
			AddText(sceneId,"V§t ph¦m b¸ l²i, hãy thông báo cho GM!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return 0
	end
	--********************--
	if Pet_Xiulian_Point<x930702_g_ItemList[Item_Index].Min or Pet_Xiulian_Point>x930702_g_ItemList[Item_Index].Max then
		BeginEvent(sceneId)
			AddText(sceneId,"C¤p ðµ Trân thú Tinh giác cüa các hÕ không n¢m trong khoäng "..x930702_g_ItemList[Item_Index].Min.." - "..x930702_g_ItemList[Item_Index].Max..", không th¬ dùng v§t ph¦m này!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return 0
	end
	--********************--
	SetMissionData(sceneId,selfId,MD_PET_XIULIAN_LEVEL,Pet_Xiulian_Point+1)
	--********************--
	BeginEvent(sceneId)
		AddText(sceneId,"Chúc m×ng các hÕ ðã gia tång c¤p ðµ Tinh giác trân thú thành công. C¤p ðµ hi®n tÕi cüa các hÕ là "..(Pet_Xiulian_Point+1).."!")
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
function x930702_OnActivateEachTick(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
end