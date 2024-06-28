--Hµp ph¥n thß·ng hoÕt ðµng m²i ngày
--Code by Sói

--*******************--
x930600_g_ScriptID=930600
--*******************--
x930600_g_Client_Server=07032015

x930600_g_disabled=0 --1 -> disable function

--*******************--
x930600_g_Box_Item_List_1={															--Các v§t ph¦m trong hòm 1 (Cùi)
	{	Index=20503062,	Name="Ly Höa",					Icon="set:ZhenYuan7 image:ZhenYuan7_4",						Percent=100	},	--Ly Höa
	{	Index=20503061,	Name="Trang B¸ Tinh Thông Phù",	Icon="set:ZhenYuan7 image:ZhenYuan7_5",						Percent=10	},	--Trang b¸ Tinh Thông Phù
}
--*******************--
x930600_g_Box_Item_List_2={															--Các v§t ph¦m trong hòm 2 (Bình thß¶ng)
	{	Index=20503062,	Name="Ly Höa",					Icon="set:ZhenYuan7 image:ZhenYuan7_4",						Percent=100	},	--Ly Höa
	{	Index=20503061,	Name="Trang B¸ Tinh Thông Phù",	Icon="set:ZhenYuan7 image:ZhenYuan7_5",						Percent=50	},	--Trang b¸ Tinh Thông Phù
	{	Index=30010080,	Name="Chân Nguyên Phách",		Icon="set:ZhenYuan6 image:ZhenYuan6_16",					Percent=5	},	--Chân Nguyên Phách
}
--*******************--
x930600_g_Box_Item_List_3={															--Các v§t ph¦m trong hòm 3 (T¯t)
	{	Index=20503062,	Name="Ly Höa",					Icon="set:ZhenYuan7 image:ZhenYuan7_4",						Percent=100	},	--Ly Höa
	{	Index=20503061,	Name="Trang B¸ Tinh Thông Phù",	Icon="set:ZhenYuan7 image:ZhenYuan7_5",						Percent=80	},	--Trang b¸ Tinh Thông Phù
	{	Index=30010080,	Name="Chân Nguyên Phách",		Icon="set:ZhenYuan6 image:ZhenYuan6_16",					Percent=10	},	--Chân Nguyên Phách
	{	Index=30010081,	Name="Chân Nguyên Tinh Phách",	Icon="set:ZhenYuan7 image:ZhenYuan7_1",						Percent=1	},	--Chân Nguyên Tinh Phách
}
--*******************--
x930600_g_Box_Item_List_4={															--Các v§t ph¦m trong hòm 4 (Quý)
	{	Index=30010080,	Name="Chân Nguyên Phách",		Icon="set:ZhenYuan6 image:ZhenYuan6_16",					Percent=100	},	--Chân Nguyên Phách
	{	Index=30010081,	Name="Chân Nguyên Tinh Phách",	Icon="set:ZhenYuan7 image:ZhenYuan7_1",						Percent=5	},	--Chân Nguyên Tinh Phách
	{	Index=30010081,	Name="Chân Nguyên Tinh Phách",	Icon="set:ZhenYuan7 image:ZhenYuan7_2",						Percent=1	},	--Chân Nguyên Tinh Phách--Chân Nguyên Linh Phách
}
--*******************--

--******************************************--
--*                On Update               *--
--******************************************--
function x930600_OnUpdate(sceneId,selfId,Number_Status,Request,Type,Number)

	--*******************--
	if x930600_g_disabled==1 then
		BeginEvent(sceneId)
			AddText(sceneId,"Có sai sót, hãy thông báo cho GameMaster!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	if Number_Status~=x930600_g_Client_Server then
		BeginEvent(sceneId)
			AddText(sceneId,"Có sai sót, hãy thông báo cho GameMaster!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	--*******************--
	if Request==0 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_CURRENT_ACTIVITY_POINT))
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,30720151)
	end
	--*******************--
	if Request==1 then
		local Item_ID=-1
		local Item_Icon=""
		local Item_Name=""
		local Current_Point=GetMissionData(sceneId,selfId,MD_CURRENT_ACTIVITY_POINT)
		if Type==1 then
			local x=random(getn(x930600_g_Box_Item_List_1))
			local Selected_List={}
			local Count=0
			while Count==0 do
				local Lucky_Number=random(100)
				for i,y in x930600_g_Box_Item_List_1 do
					if y.Percent>=Lucky_Number then
						Count=Count+1
						Selected_List[Count]=i
					end
				end
			end
			local Pos=Selected_List[random(Count)]
			Item_ID=x930600_g_Box_Item_List_1[Pos].Index
			Item_Icon=x930600_g_Box_Item_List_1[Pos].Icon
			Item_Name=x930600_g_Box_Item_List_1[Pos].Name
			Current_Point=Current_Point-100
		elseif Type==2 then
			local x=random(getn(x930600_g_Box_Item_List_2))
			local Selected_List={}
			local Count=0
			while Count==0 do
				local Lucky_Number=random(100)
				for i,y in x930600_g_Box_Item_List_2 do
					if y.Percent>=Lucky_Number then
						Count=Count+1
						Selected_List[Count]=i
					end
				end
			end
			local Pos=Selected_List[random(Count)]
			Item_ID=x930600_g_Box_Item_List_2[Pos].Index
			Item_Icon=x930600_g_Box_Item_List_2[Pos].Icon
			Item_Name=x930600_g_Box_Item_List_2[Pos].Name
			Current_Point=Current_Point-200
		elseif Type==3 then
			local x=random(getn(x930600_g_Box_Item_List_3))
			local Selected_List={}
			local Count=0
			while Count==0 do
				local Lucky_Number=random(100)
				for i,y in x930600_g_Box_Item_List_3 do
					if y.Percent>=Lucky_Number then
						Count=Count+1
						Selected_List[Count]=i
					end
				end
			end
			local Pos=Selected_List[random(Count)]
			Item_ID=x930600_g_Box_Item_List_3[Pos].Index
			Item_Icon=x930600_g_Box_Item_List_3[Pos].Icon
			Item_Name=x930600_g_Box_Item_List_3[Pos].Name
			Current_Point=Current_Point-500
		elseif Type==4 then
			local x=random(getn(x930600_g_Box_Item_List_4))
			local Selected_List={}
			local Count=0
			while Count==0 do
				local Lucky_Number=random(100)
				for i,y in x930600_g_Box_Item_List_4 do
					if y.Percent>=Lucky_Number then
						Count=Count+1
						Selected_List[Count]=i
					end
				end
			end
			local Pos=Selected_List[random(Count)]
			Item_ID=x930600_g_Box_Item_List_4[Pos].Index
			Item_Icon=x930600_g_Box_Item_List_4[Pos].Icon
			Item_Name=x930600_g_Box_Item_List_4[Pos].Name
			Current_Point=Current_Point-1000
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Có sai sót, hãy thông báo cho GameMaster!")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		if Current_Point<0 then
			BeginEvent(sceneId)
				AddText(sceneId,"Các hÕ không có ðü ði¬m hoÕt ðµng!")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		SetMissionData(sceneId,selfId,MD_CURRENT_ACTIVITY_POINT,Current_Point)
		SetMissionData(sceneId,selfId,MD_CURRENT_ACTIVITY_ITEM_SELECTED,Item_ID)
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,Item_ID)
			UICommand_AddInt(sceneId,Type)
			UICommand_AddInt(sceneId,Number)
			UICommand_AddInt(sceneId,GetMissionData(sceneId,selfId,MD_CURRENT_ACTIVITY_POINT))
			UICommand_AddString(sceneId,Item_Icon)
			UICommand_AddString(sceneId,Item_Name)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,30720152)
	end
	--*******************--
	if Request==2 then
		local Item_Index=GetMissionData(sceneId,selfId,MD_CURRENT_ACTIVITY_ITEM_SELECTED)
		if Item_Index<=0 then
			BeginEvent(sceneId)
				AddText(sceneId,"Các hÕ không có ph¥n thß·ng ð¬ nh§n!")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		if LuaFnGetPropertyBagSpace(sceneId,selfId)<=0 or LuaFnGetMaterialBagSpace(sceneId,selfId)<=0 then
			BeginEvent(sceneId)
				AddText(sceneId,"Túi ðeo thiªu không gian, hãy ki¬m tra lÕi!")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		
		SetMissionData(sceneId,selfId,MD_CURRENT_ACTIVITY_ITEM_SELECTED,0)--set mission da nhan thuong
		
		local BagPos = TryRecieveItem(sceneId,selfId,Item_Index,1)
		if -1 ~= BagPos then
			local szTransferEquip = GetBagItemTransfer(sceneId,selfId, BagPos)
			BeginEvent(sceneId)
			AddText(sceneId,"Nh§n ph¥n thß·ng thành công, các hÕ ðã nh§n ðßþc 1 cái "..GetItemName(sceneId,Item_Index).."!")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			BeginUICommand(sceneId)
			EndUICommand(sceneId)
			
			SetMissionData(sceneId,selfId,MD_CURRENT_ACTIVITY_ITEM_SELECTED,0)--set mission da nhan thuong them lan nua cho chac an :(
			DispatchUICommand(sceneId,selfId,30720153) --truyen ve client
			--system notice 
			local str = format("#cff99cc#{_INFOUSR%s} thông qua hoÕt ðµng #Y [Ði¬m HoÕt ðµng ð±i Ph¥n thß·ng] #cff99cc nh§n ðßþc #Y#{_INFOMSG%s}",GetName(sceneId,selfId),szTransferEquip)
			AddGlobalCountNews(sceneId,str)
			local str1="[Activity Bonus] Name="..GetName(sceneId,selfId)..", Index="..LuaFnGetGUID(sceneId,selfId)..", Activity_Point="..GetMissionData(sceneId,selfId,MD_CURRENT_ACTIVITY_POINT)..", Item_Recieved="..Item_Index
			WriteDebugLog(sceneId,selfId,str1)
		end
		
	end
	--*******************--

end
