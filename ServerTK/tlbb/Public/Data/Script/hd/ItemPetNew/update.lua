--Update trang b¸ trân thú
--Code by Sói

--********************--
x930701_g_scriptId=930701
--********************--
x930701_g_Mission_Data =
{
	[1]=MD_PET_EQUIP_CLAW,
	[2]=MD_PET_EQUIP_HAT,
	[3]=MD_PET_EQUIP_CLOTH,
	[4]=MD_PET_EQUIP_CHAPLET,
	[5]=MD_PET_EQUIP_AMULET,
}
--********************--
x930701_g_Impact=
{
	[30000501]={9801,9806},
	[30000502]={9802,9807},
	[30000503]={9803,9808},
	[30000504]={9804,9809},
	[30000505]={9805,9810},
	[30000506]={9811,9816},
	[30000507]={9812,9817},
	[30000508]={9813,9818},
	[30000509]={9814,9819},
	[30000510]={9815,9820},
	[30000511]={9821,9826},
	[30000512]={9822,9827},
	[30000513]={9823,9828},
	[30000514]={9824,9829},
	[30000515]={9825,9830},
	[30000516]={9831,9836,9841},
	[30000517]={9832,9837,9842},
	[30000518]={9833,9838,9843},
	[30000519]={9834,9839},
	[30000520]={9835,9840,9844},
	[30000521]={9851,9856},
	[30000522]={9852,9857},
	[30000523]={9853,9858},
	[30000524]={9854,9859},
	[30000525]={9855,9860},
	[30000526]={9861,9866},
	[30000527]={9862,9867},
	[30000528]={9863,9868},
	[30000529]={9864,9869},
	[30000530]={9865,9870},
	[30000531]={9871,9876,9881},
	[30000532]={9872,9877,9882},
	[30000533]={9873,9878,9883},
	[30000534]={9874,9879},
	[30000535]={9875,9880,9884},
	[30000536]={9891,9896},
	[30000537]={9892,9897},
	[30000538]={9893,9898},
	[30000539]={9894,9899},
	[30000540]={9895,9900},
	[30000541]={9901,9906},
	[30000542]={9902,9907},
	[30000543]={9903,9908},
	[30000544]={9904,9909},
	[30000545]={9905,9910},
	[30000546]={9911,9916,9921},
	[30000547]={9912,9917,9922},
	[30000548]={9913,9918,9923},
	[30000549]={9914,9919},
	[30000550]={9915,9920,9924},
}
--********************--

--**********************************--
--*            On Update           *--
--**********************************--
function x930701_OnUpdate(sceneId,selfId,Request,Param_1,Param_2,Param_3,Param_4)
	
	--********************--							
	x930701_DeleteOldItemSkill(sceneId,selfId)				--Thñc hi®n xóa các skill cû
	--********************--
	if Request==0 then										--Tháo trang b¸ pet xu¯ng
		x930701_ClearSelectEquip(sceneId,selfId,Param_1)
	end
	--********************--
	if Request==1 then										--Add hi®u Ñng vào trang b¸ pet
		x930701_AddImpact(sceneId,selfId)
	end
	--********************--
	if Request==2 then										--Truy«n tham s¯ lên Client
		x930701_SendParamToClient(sceneId,selfId)
	end
	--********************--

end
--**********************************--
--*      Delete Old Item Skill     *--
--**********************************--
function x930701_DeleteOldItemSkill(sceneId,selfId)

	--********************--
	local j=0
	for i=1801,1850 do
		if HaveSkill(sceneId,selfId,i)>0 then
			local Equip_Index=i-1800+3000050
			j=j+1
			SetMissionData(sceneId,selfId,x930701_g_Mission_Data[j],Equip_Index)
			DelSkill(sceneId,selfId,i)
		end
	end
	--********************--
	for i,MD in x930701_g_Mission_Data do
		local Equip_Index=GetMissionData(sceneId,selfId,MD)
		if Equip_Index<30000500 and Equip_Index>3000050 then
			local x=mod(Equip_Index,1000)-50
			Equip_Index=30000500+x
			SetMissionData(sceneId,selfId,MD,Equip_Index)
		end
	end
	--********************--

end
--**********************************--
--*       Clear Select Equip       *--
--**********************************--
function x930701_ClearSelectEquip(sceneId,selfId,Param)

	--********************--
	if LuaFnGetPropertyBagSpace(sceneId,selfId)<1 then
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ c¥n s¡p xªp lÕi 1 ô tr¯ng trong ô ÐÕo cø trß¾c khi thao tác!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	--********************--
	for i=0,9 do											
		local High,Low=LuaFnGetPetGUID(sceneId,selfId,i)
		local Pet_ID=LuaFnGetPetObjIdByGUID(sceneId,selfId,High,Low)								
		if Pet_ID~=-1 and Pet_ID then	
			BeginEvent(sceneId)
				AddText(sceneId,"Trân thú ðang trong trÕng thái chiªn ð¤u, không th¬ tháo gÞ trang b¸!")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return 0
		end
	end
	--********************--
	local Unequiped_Item_Index=GetMissionData(sceneId,selfId,x930701_g_Mission_Data[Param])
	if Unequiped_Item_Index~=0 then
		TryRecieveItem(sceneId,selfId,Unequiped_Item_Index,1)
	end
	--********************--
	SetMissionData(sceneId,selfId,x930701_g_Mission_Data[Param],0)
	--********************--
	x930701_SendParamToClient(sceneId,selfId)
	--********************--

end
--**********************************--
--*           Add Impact           *--
--**********************************--
function x930701_AddImpact(sceneId,selfId)
	--hd add: disable add impact
	if 1==1 then return end;
	--end hd add
	--********************--
	local Pet_Index=-1
	--********************--
	for i=0,9 do											
		local High,Low=LuaFnGetPetGUID(sceneId,selfId,i)
		local Pet_ID=LuaFnGetPetObjIdByGUID(sceneId,selfId,High,Low)								
		if Pet_ID~=-1 and Pet_ID then	
			Pet_Index=Pet_ID
			break
		end
	end
	--********************--
	if Pet_Index==-1 then									--Không có trân thú nào xu¤t chiªn
		return
	end
	--********************--
	local Xiulian_Point=GetMissionData(sceneId,selfId,MD_PET_XIULIAN_LEVEL)
	--********************--
	if Xiulian_Point>0 then
		LuaFnSendSpecificImpactToUnit(sceneId,Pet_Index,Pet_Index,Pet_Index,12900+Xiulian_Point-1,0)
	end
	--********************--
	for i=1,getn(x930701_g_Mission_Data) do
		local Equip_Index=GetMissionData(sceneId,selfId,x930701_g_Mission_Data[i])
		if Equip_Index~=0 then
			for j=1,getn(x930701_g_Impact[Equip_Index]) do
				if LuaFnHaveImpactOfSpecificDataIndex(sceneId,Pet_Index,x930701_g_Impact[Equip_Index][j])<1 then
					LuaFnSendSpecificImpactToUnit(sceneId,Pet_Index,Pet_Index,Pet_Index,x930701_g_Impact[Equip_Index][j],0)
				end
			end
		end
	end
	--********************--

end
--**********************************--
--*      Send Param To Client      *--
--**********************************--
function x930701_SendParamToClient(sceneId,selfId)

	--********************--
	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_PET_EQUIP_CLAW))
		UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_PET_EQUIP_HAT))
		UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_PET_EQUIP_CLOTH))
		UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_PET_EQUIP_CHAPLET))
		UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_PET_EQUIP_AMULET))
		UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_PET_XIULIAN_LEVEL))
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId,201107292)
	--********************--

end
