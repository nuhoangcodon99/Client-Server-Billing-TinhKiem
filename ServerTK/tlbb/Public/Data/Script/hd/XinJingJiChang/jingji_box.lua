--Hµp châu báu CÕnh KÛ Trß¶ng
--Code by Sói

--**********************--
x900005_g_scriptId=900005
--**********************--
x900005_g_Item_List=
{
	30010080,	--CN Phách
	30010090,	--Tinh giác ng÷c bµi (C¤p 1)
	20503061,	--Trang b¸ tinh thông phù
	30503137,	--Th¶i trang ph¯i sÑc gia công phù
}
--**********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x900005_OnDefaultEvent(sceneId,selfId,targetId)
	
	--**********************--
	--**********************--
	
end
--**********************************--
--*  On Activate Condition Check   *--
--**********************************--
function x900005_OnActivateConditionCheck(sceneId,selfId,activatorId)

	--**********************--
	MonsterTalk(sceneId,-1,"CÕnh KÛ Trß¶ng",GetName(sceneId,activatorId).." ðang c¯ g¡ng m· Bäo sß½ng l¤p lánh!")
	--**********************--
	return 1
	--**********************--
	
end
--**********************************--
--*      On Activate Deplete       *--
--**********************************--
function x900005_OnActivateDeplete(sceneId,selfId,activatorId)

	--**********************--
	return 1
	--**********************--
	
end
--**********************************--
--*    On Activate Effect Once     *--
--**********************************--
function x900005_OnActivateEffectOnce(sceneId,selfId,activatorId)
	
	--**********************--
	MonsterTalk(sceneId,-1,"CÕnh KÛ Trß¶ng",GetName(sceneId,activatorId).." ðã m· Bäo sß½ng thành công!")
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
		local z=random(getn(x900005_g_Item_List))
		while Free[z]==1 do
			z=random(getn(x900005_g_Item_List))
		end
		Free[z]=1
		nItem_List[i]=x900005_g_Item_List[z]
	end
	--**********************--
	local nBoxId=DropBoxEnterScene(x,y,sceneId)
	if nBoxId>-1 then
		AddItemToBox(sceneId,nBoxId,QUALITY_CREATE_BY_BOSS,4,nItem_List[1],nItem_List[2],nItem_List[3],nItem_List[4])
	end
	SetItemBoxOwner(sceneId,nBoxId,LuaFnGetGUID(sceneId,activatorId))
	--**********************--
	local Current_Activity_Point=GetMissionData(sceneId,activatorId,MD_CURRENT_ACTIVITY_POINT)
	SetMissionData(sceneId,activatorId,MD_CURRENT_ACTIVITY_POINT,Current_Activity_Point+100)
	--**********************--
	BeginEvent(sceneId)
		AddText(sceneId,"Các hÕ ðã gia tång 100 ði¬m hoÕt ðµng!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,activatorId)
	--**********************--
	CallScriptFunction(125020,"CreateNormalBox",sceneId)							--G÷i ra 8 cái hòm con
	CallScriptFunction(125020,"OpenVipBox",sceneId,activatorId)						--Thao tác khi m· ra Bäo sß½ng l¤p lánh
	--**********************--
	return 1
	--**********************--
	
end
--**********************************--
--*  On Activate Effect Each Tick  *--
--**********************************--
function x900005_OnActivateEffectEachTick(sceneId,selfId,activatorId)

	--**********************--
	return 1
	--**********************--
	
end
--**********************************--
--*    On Activate Action Start    *--
--**********************************--
function x900005_OnActivateActionStart(sceneId,selfId,activatorId)
	
	--**********************--
	return 1
	--**********************--
	
end
--**********************************--
--*       On Activate Cancel       *--
--**********************************--
function x900005_OnActivateCancel(sceneId,selfId,activatorId)

	--**********************--
	return 0
	--**********************--
	
end
--**********************************--
--*      On Activate Interrupt     *--
--**********************************--
function x900005_OnActivateInterrupt(sceneId,selfId,activatorId)
	
	--**********************--
	return 0
	--**********************--
	
end