--H�p ph�n th߷ng ho�t �ng m�i ng�y
--Code by S�i

--*******************--
x930600_g_ScriptID=930600
--*******************--
x930600_g_Client_Server=07032015

x930600_g_disabled=0 --1 -> disable function

--*******************--
x930600_g_Box_Item_List_1={															--C�c v�t ph�m trong h�m 1 (C�i)
	{	Index=20503062,	Name="Ly H�a",					Icon="set:ZhenYuan7 image:ZhenYuan7_4",						Percent=100	},	--Ly H�a
	{	Index=20503061,	Name="Trang B� Tinh Th�ng Ph�",	Icon="set:ZhenYuan7 image:ZhenYuan7_5",						Percent=10	},	--Trang b� Tinh Th�ng Ph�
}
--*******************--
x930600_g_Box_Item_List_2={															--C�c v�t ph�m trong h�m 2 (B�nh th߶ng)
	{	Index=20503062,	Name="Ly H�a",					Icon="set:ZhenYuan7 image:ZhenYuan7_4",						Percent=100	},	--Ly H�a
	{	Index=20503061,	Name="Trang B� Tinh Th�ng Ph�",	Icon="set:ZhenYuan7 image:ZhenYuan7_5",						Percent=50	},	--Trang b� Tinh Th�ng Ph�
	{	Index=30010080,	Name="Ch�n Nguy�n Ph�ch",		Icon="set:ZhenYuan6 image:ZhenYuan6_16",					Percent=5	},	--Ch�n Nguy�n Ph�ch
}
--*******************--
x930600_g_Box_Item_List_3={															--C�c v�t ph�m trong h�m 3 (T�t)
	{	Index=20503062,	Name="Ly H�a",					Icon="set:ZhenYuan7 image:ZhenYuan7_4",						Percent=100	},	--Ly H�a
	{	Index=20503061,	Name="Trang B� Tinh Th�ng Ph�",	Icon="set:ZhenYuan7 image:ZhenYuan7_5",						Percent=80	},	--Trang b� Tinh Th�ng Ph�
	{	Index=30010080,	Name="Ch�n Nguy�n Ph�ch",		Icon="set:ZhenYuan6 image:ZhenYuan6_16",					Percent=10	},	--Ch�n Nguy�n Ph�ch
	{	Index=30010081,	Name="Ch�n Nguy�n Tinh Ph�ch",	Icon="set:ZhenYuan7 image:ZhenYuan7_1",						Percent=1	},	--Ch�n Nguy�n Tinh Ph�ch
}
--*******************--
x930600_g_Box_Item_List_4={															--C�c v�t ph�m trong h�m 4 (Qu�)
	{	Index=30010080,	Name="Ch�n Nguy�n Ph�ch",		Icon="set:ZhenYuan6 image:ZhenYuan6_16",					Percent=100	},	--Ch�n Nguy�n Ph�ch
	{	Index=30010081,	Name="Ch�n Nguy�n Tinh Ph�ch",	Icon="set:ZhenYuan7 image:ZhenYuan7_1",						Percent=5	},	--Ch�n Nguy�n Tinh Ph�ch
	{	Index=30010081,	Name="Ch�n Nguy�n Tinh Ph�ch",	Icon="set:ZhenYuan7 image:ZhenYuan7_2",						Percent=1	},	--Ch�n Nguy�n Tinh Ph�ch--Ch�n Nguy�n Linh Ph�ch
}
--*******************--

--******************************************--
--*                On Update               *--
--******************************************--
function x930600_OnUpdate(sceneId,selfId,Number_Status,Request,Type,Number)

	--*******************--
	if x930600_g_disabled==1 then
		BeginEvent(sceneId)
			AddText(sceneId,"C� sai s�t, h�y th�ng b�o cho GameMaster!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	if Number_Status~=x930600_g_Client_Server then
		BeginEvent(sceneId)
			AddText(sceneId,"C� sai s�t, h�y th�ng b�o cho GameMaster!")
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
				AddText(sceneId,"C� sai s�t, h�y th�ng b�o cho GameMaster!")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		if Current_Point<0 then
			BeginEvent(sceneId)
				AddText(sceneId,"C�c h� kh�ng c� �� �i�m ho�t �ng!")
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
				AddText(sceneId,"C�c h� kh�ng c� ph�n th߷ng � nh�n!")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		if LuaFnGetPropertyBagSpace(sceneId,selfId)<=0 or LuaFnGetMaterialBagSpace(sceneId,selfId)<=0 then
			BeginEvent(sceneId)
				AddText(sceneId,"T�i �eo thi�u kh�ng gian, h�y ki�m tra l�i!")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		
		SetMissionData(sceneId,selfId,MD_CURRENT_ACTIVITY_ITEM_SELECTED,0)--set mission da nhan thuong
		
		local BagPos = TryRecieveItem(sceneId,selfId,Item_Index,1)
		if -1 ~= BagPos then
			local szTransferEquip = GetBagItemTransfer(sceneId,selfId, BagPos)
			BeginEvent(sceneId)
			AddText(sceneId,"Nh�n ph�n th߷ng th�nh c�ng, c�c h� �� nh�n ���c 1 c�i "..GetItemName(sceneId,Item_Index).."!")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			BeginUICommand(sceneId)
			EndUICommand(sceneId)
			
			SetMissionData(sceneId,selfId,MD_CURRENT_ACTIVITY_ITEM_SELECTED,0)--set mission da nhan thuong them lan nua cho chac an :(
			DispatchUICommand(sceneId,selfId,30720153) --truyen ve client
			--system notice 
			local str = format("#cff99cc#{_INFOUSR%s} th�ng qua ho�t �ng #Y [�i�m Ho�t �ng �i Ph�n th߷ng] #cff99cc nh�n ���c #Y#{_INFOMSG%s}",GetName(sceneId,selfId),szTransferEquip)
			AddGlobalCountNews(sceneId,str)
			local str1="[Activity Bonus] Name="..GetName(sceneId,selfId)..", Index="..LuaFnGetGUID(sceneId,selfId)..", Activity_Point="..GetMissionData(sceneId,selfId,MD_CURRENT_ACTIVITY_POINT)..", Item_Recieved="..Item_Index
			WriteDebugLog(sceneId,selfId,str1)
		end
		
	end
	--*******************--

end
