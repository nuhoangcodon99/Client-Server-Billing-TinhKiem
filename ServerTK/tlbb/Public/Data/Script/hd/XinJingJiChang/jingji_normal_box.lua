--Hµp châu báu CÕnh KÛ Trß¶ng
--Code by Sói

--**********************--
x900006_g_scriptId=900006
--**********************--
x900006_g_Item_List=
{
	50131002,	--TØ Vi Tinh Quang (C¤p 1)
	50131002,	--TØ Vi Tinh Quang (C¤p 1)
	50131002,	--TØ Vi Tinh Quang (C¤p 1)
	50131001,	--Bång Lam Lßu Vân (C¤p 1)
	50131001,	--Bång Lam Lßu Vân (C¤p 1)
	50131001,	--Bång Lam Lßu Vân (C¤p 1)
	50131005,	--Hoa LÕc H°ng Tr¥n (C¤p 1)
	50131005,	--Hoa LÕc H°ng Tr¥n (C¤p 1)
	50131005,	--Hoa LÕc H°ng Tr¥n (C¤p 1)
	50131003,	--Thúy Ng÷c Tinh Tr¥n (C¤p 1)
	50131003,	--Thúy Ng÷c Tinh Tr¥n (C¤p 1)
	50131003,	--Thúy Ng÷c Tinh Tr¥n (C¤p 1)
	50131004,	--Tranh Änh Nhß Mµng (C¤p 1)
	50131004,	--Tranh Änh Nhß Mµng (C¤p 1)
	50131004,	--Tranh Änh Nhß Mµng (C¤p 1)
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	30010080,	--Chân nguyên phách
	20503061,	--Trang b¸ tinh thông phù
	30010089,	--Võ H°n Dung Hþp Ðan
	30010089,	--Võ H°n Dung Hþp Ðan
	30010089,	--Võ H°n Dung Hþp Ðan
	30010089,	--Võ H°n Dung Hþp Ðan
	30010089,	--Võ H°n Dung Hþp Ðan
	30010089,	--Võ H°n Dung Hþp Ðan
	30010089,	--Võ H°n Dung Hþp Ðan
	30010089,	--Võ H°n Dung Hþp Ðan
	30010089,	--Võ H°n Dung Hþp Ðan
}
--**********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x900006_OnDefaultEvent(sceneId,selfId,targetId)
	
	--**********************--
	--**********************--
	
end
--**********************************--
--*  On Activate Condition Check   *--
--**********************************--
function x900006_OnActivateConditionCheck(sceneId,selfId,activatorId)

	--**********************--
	return 1
	--**********************--
	
end
--**********************************--
--*      On Activate Deplete       *--
--**********************************--
function x900006_OnActivateDeplete(sceneId,selfId,activatorId)

	--**********************--
	return 1
	--**********************--
	
end
--**********************************--
--*    On Activate Effect Once     *--
--**********************************--
function x900006_OnActivateEffectOnce(sceneId,selfId,activatorId)
	
	--**********************--
	BeginEvent(sceneId)
		AddText(sceneId,"Các hÕ ðã m· Bäo sß½ng thành công!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,activatorId)
	--**********************--
	SetCharacterDieTime(sceneId,selfId,100)
	--**********************--
	local x,y=GetWorldPos(sceneId,selfId)
	--**********************--
	local nItem_List={}
	local Free={}
	for i=1,4 do
		local z=random(getn(x900006_g_Item_List))
		while Free[z]==1 do
			z=random(getn(x900006_g_Item_List))
		end
		Free[z]=1
		nItem_List[i]=x900006_g_Item_List[z]
	end
	--**********************--
	local nBoxId=DropBoxEnterScene(x,y,sceneId)
	if nBoxId>-1 then
		AddItemToBox(sceneId,nBoxId,QUALITY_CREATE_BY_BOSS,4,nItem_List[1],nItem_List[2],nItem_List[3],nItem_List[4])
	end
	SetItemBoxOwner(sceneId,nBoxId,LuaFnGetGUID(sceneId,activatorId))
	--**********************--
	local Current_Activity_Point=GetMissionData(sceneId,activatorId,MD_CURRENT_ACTIVITY_POINT)
	SetMissionData(sceneId,activatorId,MD_CURRENT_ACTIVITY_POINT,Current_Activity_Point+10)
	--**********************--
	BeginEvent(sceneId)
		AddText(sceneId,"Các hÕ ðã gia tång 10 ði¬m hoÕt ðµng!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,activatorId)
	--**********************--
	return 1
	--**********************--
	
end
--**********************************--
--*  On Activate Effect Each Tick  *--
--**********************************--
function x900006_OnActivateEffectEachTick(sceneId,selfId,activatorId)

	--**********************--
	return 1
	--**********************--
	
end
--**********************************--
--*    On Activate Action Start    *--
--**********************************--
function x900006_OnActivateActionStart(sceneId,selfId,activatorId)
	
	--**********************--
	return 1
	--**********************--
	
end
--**********************************--
--*       On Activate Cancel       *--
--**********************************--
function x900006_OnActivateCancel(sceneId,selfId,activatorId)

	--**********************--
	return 0
	--**********************--
	
end
--**********************************--
--*      On Activate Interrupt     *--
--**********************************--
function x900006_OnActivateInterrupt(sceneId,selfId,activatorId)
	
	--**********************--
	return 0
	--**********************--
	
end