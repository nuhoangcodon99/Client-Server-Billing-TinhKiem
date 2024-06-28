--H�p ch�u b�u C�nh K� Tr߶ng
--Code by S�i

--**********************--
x900005_g_scriptId=900005
--**********************--
x900005_g_Item_List=
{
	30010080,	--CN Ph�ch
	30010090,	--Tinh gi�c ng�c b�i (C�p 1)
	20503061,	--Trang b� tinh th�ng ph�
	30503137,	--Th�i trang ph�i s�c gia c�ng ph�
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
	MonsterTalk(sceneId,-1,"C�nh K� Tr߶ng",GetName(sceneId,activatorId).." �ang c� g�ng m� B�o s߽ng l�p l�nh!")
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
	MonsterTalk(sceneId,-1,"C�nh K� Tr߶ng",GetName(sceneId,activatorId).." �� m� B�o s߽ng th�nh c�ng!")
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
		AddText(sceneId,"C�c h� �� gia t�ng 100 �i�m ho�t �ng!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,activatorId)
	--**********************--
	CallScriptFunction(125020,"CreateNormalBox",sceneId)							--G�i ra 8 c�i h�m con
	CallScriptFunction(125020,"OpenVipBox",sceneId,activatorId)						--Thao t�c khi m� ra B�o s߽ng l�p l�nh
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