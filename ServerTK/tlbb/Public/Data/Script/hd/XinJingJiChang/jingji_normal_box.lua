--H�p ch�u b�u C�nh K� Tr߶ng
--Code by S�i

--**********************--
x900006_g_scriptId=900006
--**********************--
x900006_g_Item_List=
{
	50131002,	--T� Vi Tinh Quang (C�p 1)
	50131002,	--T� Vi Tinh Quang (C�p 1)
	50131002,	--T� Vi Tinh Quang (C�p 1)
	50131001,	--B�ng Lam L�u V�n (C�p 1)
	50131001,	--B�ng Lam L�u V�n (C�p 1)
	50131001,	--B�ng Lam L�u V�n (C�p 1)
	50131005,	--Hoa L�c H�ng Tr�n (C�p 1)
	50131005,	--Hoa L�c H�ng Tr�n (C�p 1)
	50131005,	--Hoa L�c H�ng Tr�n (C�p 1)
	50131003,	--Th�y Ng�c Tinh Tr�n (C�p 1)
	50131003,	--Th�y Ng�c Tinh Tr�n (C�p 1)
	50131003,	--Th�y Ng�c Tinh Tr�n (C�p 1)
	50131004,	--Tranh �nh Nh� M�ng (C�p 1)
	50131004,	--Tranh �nh Nh� M�ng (C�p 1)
	50131004,	--Tranh �nh Nh� M�ng (C�p 1)
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	20503062,	--Ly h�a
	30010080,	--Ch�n nguy�n ph�ch
	20503061,	--Trang b� tinh th�ng ph�
	30010089,	--V� H�n Dung H�p �an
	30010089,	--V� H�n Dung H�p �an
	30010089,	--V� H�n Dung H�p �an
	30010089,	--V� H�n Dung H�p �an
	30010089,	--V� H�n Dung H�p �an
	30010089,	--V� H�n Dung H�p �an
	30010089,	--V� H�n Dung H�p �an
	30010089,	--V� H�n Dung H�p �an
	30010089,	--V� H�n Dung H�p �an
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
		AddText(sceneId,"C�c h� �� m� B�o s߽ng th�nh c�ng!")
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
		AddText(sceneId,"C�c h� �� gia t�ng 10 �i�m ho�t �ng!")
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