--Script thao t�c Tinh th�ng trang b�
--Author: Kenvin S�i

--****************--
x920500_g_scriptId = 920500
x920500_g_Recipe = 20503061		--Trang b� Th�ng tinh ph�
x920500_g_Firework = 20503062	--Ly h�a
x920500_g_LimitLevel = 30	--cap do tinh thong toi da
x920500_g_Recipe_Need = 1 --so Trang b� Th�ng tinh ph� can de up
x920500_g_LevelNotice =10 --cap do thong bao kenh he thong
--****************--

--*********************************--
--*           On Update           *--
--*********************************--
function x920500_OnUpdate(sceneId,selfId,Request,Param_1,Param_2)

	--****************--
	if Request==0 then
		x920500_SuperWeaponUpdateProperty(sceneId,selfId,Param_1,Param_2)
	end
	--****************--
	if Request==1 then
		x920500_SuperWeaponLevelUpProperty(sceneId,selfId,Param_1)
	end
	--****************--
	
end
--*********************************--
--*  Super Weapon Update Property *--
--*********************************--
function x920500_SuperWeaponUpdateProperty(sceneId,selfId,Pos,Pos1)

	--****************--
	local _,str=LuaFnGetItemCreator(sceneId,selfId,Pos)
	--****************--
	if not str then
		str=""
	end
	--****************--
	if x920500_IsASuperWeapon(sceneId,selfId,str)==1 then
		BeginEvent(sceneId)
			AddText(sceneId,"Trang b� n�y �� ���c Tinh th�ng r�i!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	--****************--
	local Material_Index=LuaFnGetItemTableIndexByIndex(sceneId,selfId,Pos1)
	if Material_Index~=x920500_g_Recipe then
		BeginEvent(sceneId)
			AddText(sceneId,"Nguy�n li�u kh�ng th�ch h�p!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	elseif CostMoney(sceneId,selfId,50000)<0 then
		BeginEvent(sceneId)
			AddText(sceneId,"Ng�n l��ng c�a c�c h� mang theo kh�ng ��!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	--****************--
	EraseItem(sceneId,selfId,Pos1)
	--****************--
	str=str.."~001~"
	--****************--
	LuaFnSetItemCreator(sceneId,selfId,Pos,str)
	--****************--
	BeginEvent(sceneId)
		AddText(sceneId,"Tinh th�ng trang b� th�nh c�ng!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--****************--
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,152,0)
	--****************--
	
end
--**********************************--
--* Super Weapon Level Up Property *--
--**********************************--
function x920500_SuperWeaponLevelUpProperty(sceneId,selfId,Pos)
	
	--****************--
	local _,str=LuaFnGetItemCreator(sceneId,selfId,Pos)
	--****************--
	if not str then
		str=""
	end
	--****************--
	if x920500_IsASuperWeapon(sceneId,selfId,str)==0 then
		BeginEvent(sceneId)
			AddText(sceneId,"Trang b� n�y ch�a ���c Tinh th�ng!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	--*********************--
	local Current_Level=x920500_GetSuperWeaponLevel(sceneId,selfId,str)
	--*********************--
	if Current_Level>=x920500_g_LimitLevel then
		BeginEvent(sceneId)
			AddText(sceneId,"Trang b� n�y �� ���c Tinh th�ng t�i �a!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	elseif LuaFnGetAvailableItemCount(sceneId,selfId,x920500_g_Firework)<Current_Level*15 then
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� c�n c� "..(Current_Level*15).." c�i "..GetItemName(sceneId,x920500_g_Firework).." � th�ng c�p!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	elseif LuaFnGetAvailableItemCount(sceneId,selfId,x920500_g_Recipe)<x920500_g_Recipe_Need then
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� c�n c� "..(x920500_g_Recipe_Need).." c�i "..GetItemName(sceneId,x920500_g_Recipe).." � th�ng c�p!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	elseif CostMoney(sceneId,selfId,50000)<0 then
		BeginEvent(sceneId)
			AddText(sceneId,"Ng�n l��ng c�a c�c h� mang theo kh�ng ��!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	--*********************--
	local x="~%d%d%d~"
	str=gsub(str,x,"")
	str=gsub(str,"~","")
	Current_Level=Current_Level+1
	--*********************--
	local z=tostring(Current_Level)
	while strlen(z)<3 do
		z="0"..z
	end
	--*********************--
	str=str.."~"..z.."~"
	--*********************--
	LuaFnSetItemCreator(sceneId,selfId,Pos,str)
	--*********************--
	LuaFnDelAvailableItem(sceneId,selfId,x920500_g_Firework,(Current_Level-1)*15)
	LuaFnDelAvailableItem(sceneId,selfId,x920500_g_Recipe,x920500_g_Recipe_Need)
	--*********************--
	BeginEvent(sceneId)
		AddText(sceneId,"Th�ng c�p Tinh th�ng trang b� th�nh c�ng!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--*********************--
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,152,0)
	--*********************--
	local Item_Infor=GetBagItemTransfer(sceneId,selfId,Pos)
	local Player_Name=GetName(sceneId,selfId)
	--*********************--
	if Current_Level>= x920500_g_LevelNotice then
		local str=format("#{_INFOUSR%s}#H tr�i qua v� v�n kh� kh�n gian kh�, kh�ng ng�ng n� l�c, cu�i c�ng c�ng �� gia t�ng ���c #YTinh th�ng#H c�a #{_INFOMSG%s}#H l�n �n #Y%d#H!",Player_Name,Item_Infor,Current_Level)
		AddGlobalCountNews(sceneId,str)
	end
	--*********************--
	
end
--**********************************--
--*        Is A Super Weapon       *--
--**********************************--
function x920500_IsASuperWeapon(sceneId,selfId,str)

	--*********************--
	local x="~%d%d%d~"
	local y=strfind(str,x)
	if y then
		return 1
	else
		return 0
	end
	--*********************--

end
--**********************************--
--*     Get Super Weapon Level     *--
--**********************************--
function x920500_GetSuperWeaponLevel(sceneId,selfId,str)

	--*********************--
	local x="~%d%d%d~"
	local y=strfind(str,x)
	if y then
		return tonumber(strsub(str,y+1,y+3))
	else
		return 0
	end
	--*********************--

end
