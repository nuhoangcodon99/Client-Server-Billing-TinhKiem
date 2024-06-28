--Võ h°n
--Linh H°n Toái Phiªn
--Author: Hoàng Steven (Kenvin Sói)

--********************--
x930030_g_scriptId = 930030
--********************--
x930030_g_WuHun=0
--********************--
x930030_g_ItemList={}
x930030_g_ItemList[30010084]=5000
x930030_g_ItemList[30010085]=10000
x930030_g_ItemList[30010086]=15000
x930030_g_ItemList[30010087]=30000
x930030_g_ItemList[30010088]=50000
--********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x930030_OnDefaultEvent(sceneId,selfId,bagIndex)

	--********************--
	--********************--

end
--**********************************--
--*      Is Skill Like Script      *--
--**********************************--
function x930030_IsSkillLikeScript(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
	
end
--**********************************--
--*         Cancel Impacts         *--
--**********************************--
function x930030_CancelImpacts(sceneId,selfId)

	--********************--
	return 0
	--********************--
	
end
--**********************************--
--*       On Condition Check       *--
--**********************************--
function x930030_OnConditionCheck(sceneId,selfId)

	--********************--
	if LuaFnVerifyUsedItem(sceneId,selfId)~=1 then
		return 0
	end
	--********************--
	local WH_Index=LuaFnGetItemTableIndexByIndex(sceneId,selfId,x930030_g_WuHun)
	--********************--
	if WH_Index<1 then
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ c¥n ð£t võ h°n c¥n thång c¤p vào ô ð¥u tiên trong ô ÐÕo cø!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return 0
	end
	--********************--
	local Item_Name=GetItemName(sceneId,WH_Index)
	if strfind(Item_Name,"Bång Phong Chi H°n")==nil and strfind(Item_Name,"Thiên Höa Chi H°n")==nil and strfind(Item_Name,"Cu°ng Lôi Chi H°n")==nil and strfind(Item_Name,"K¸ch Ðµc Chi H°n")==nil then
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ c¥n ð£t võ h°n c¥n thång c¤p vào ô ð¥u tiên trong ô ÐÕo cø!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return 0
	end
	--********************--
	local _,str=LuaFnGetItemCreator(sceneId,selfId,x930030_g_WuHun)
	if not str then
		BeginEvent(sceneId)
			AddText(sceneId,"Võ h°n này chßa c§p nh§t thuµc tính!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return 0
	end
	--********************--
	local Current_Level=tonumber(strsub(str,6,8))
	if Current_Level>=100 then
		BeginEvent(sceneId)
			AddText(sceneId,"Võ h°n này ðã ðÕt ðÆng c¤p t¯i ða.")
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
function x930030_OnDeplete(sceneId,selfId)
	
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
function x930030_OnActivateOnce(sceneId,selfId)

	--********************--
	local Item_Index=LuaFnGetItemIndexOfUsedItem(sceneId,selfId)
	--********************--
	local nExp=x930030_g_ItemList[Item_Index]
	--********************--
	local _,str=LuaFnGetItemCreator(sceneId,selfId,x930030_g_WuHun)
	if not str then
		BeginEvent(sceneId)
			AddText(sceneId,"Võ h°n này chßa c§p nh§t thuµc tính!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return 0
	end
	--********************--
	local Current_Level=tonumber(strsub(str,6,8))
	--********************--
	local EXP_Table={325,422,548,712,925,1202,1562,2030,2639,3166,3799,4558,5469,6562,7874,9448,11337,13604,16324,17956,19751,21726,23898,26287,28915,31806,34986,38484,42332,44448,46670,49003,51453,54025,56726,59562,62540,65667,68950,71708,74576,77559,80661,83887,87242,90731,94360,98134,102059,107161,112519,118144,124051,130253,136765,143603,150783,158322,167821,177890,188563,199876,211868,224580,238054,252337,267477,283525,297701,312586,328215,344625,361856,379948,398945,418892,439836,461827,494154,528744,565756,605358,647733,693074,741589,793500,849045,908478,999325,1099257,1209182,1330100,1463110,1609421,1770363,1947399,2142138,2356351,2591986,0}
	local WH_Index=LuaFnGetItemTableIndexByIndex(sceneId,selfId,x930030_g_WuHun)
	--********************--
	BeginEvent(sceneId)
		AddText(sceneId,"SØ døng Linh H°n Toái Phiªn thành công!")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--********************--
	local x=tonumber(strsub(str,9,15))+nExp
	while x>EXP_Table[Current_Level] do
		local _,str=LuaFnGetItemCreator(sceneId,selfId,x930030_g_WuHun)
		
		local GrowPoint=strsub(str,2,5)
		
		x=x-EXP_Table[Current_Level]
		local ss=tostring(x)
		while strlen(ss)<7 do
			ss="0"..ss
		end
		
		Current_Level=Current_Level+1
		local sss=tostring(Current_Level)
		while strlen(sss)<3 do
			sss="0"..sss
		end
		
		local nGrowPoint=floor(tonumber(GrowPoint)/100)-5
		if nGrowPoint<0 then
			nGrowPoint=0
		end
		
		local Liliang=tonumber(strsub(str,16,18))+random(nGrowPoint)+1
		while strlen(Liliang)<3 do
			Liliang="0"..Liliang
		end
		
		local Liliang_Base=tonumber(strsub(str,19,21))+random(nGrowPoint)+1
		while strlen(Liliang_Base)<3 do
			Liliang_Base="0"..Liliang_Base
		end
		
		local Lingqi=tonumber(strsub(str,22,24))+random(nGrowPoint)+1
		while strlen(Lingqi)<3 do
			Lingqi="0"..Lingqi
		end
		
		local Lingqi_Base=tonumber(strsub(str,25,27))+random(nGrowPoint)+1
		while strlen(Lingqi_Base)<3 do
			Lingqi_Base="0"..Lingqi_Base
		end
		
		local Tili=tonumber(strsub(str,28,30))+random(nGrowPoint)+1
		while strlen(Tili)<3 do
			Tili="0"..Tili
		end
		
		local Tili_Base=tonumber(strsub(str,31,33))+random(nGrowPoint)+1
		while strlen(Tili_Base)<3 do
			Tili_Base="0"..Tili_Base
		end
		
		local Dingli=tonumber(strsub(str,34,36))+random(nGrowPoint)+1
		while strlen(Dingli)<3 do
			Dingli="0"..Dingli
		end
		
		local Dingli_Base=tonumber(strsub(str,37,39))+random(nGrowPoint)+1
		while strlen(Dingli_Base)<3 do
			Dingli_Base="0"..Dingli_Base
		end
		
		local Shenfa=tonumber(strsub(str,40,42))+random(nGrowPoint)+1
		while strlen(Shenfa)<3 do
			Shenfa="0"..Shenfa
		end
		
		local Shenfa_Base=tonumber(strsub(str,43,45))+random(nGrowPoint)+1
		while strlen(Shenfa_Base)<3 do
			Shenfa_Base="0"..Shenfa_Base
		end
		
		
		local str1="+"..GrowPoint..sss..ss..Liliang..Liliang_Base..Lingqi..Lingqi_Base..Tili..Tili_Base..Dingli..Dingli_Base..Shenfa..Shenfa_Base.."+"
		LuaFnSetItemCreator(sceneId,selfId,x930030_g_WuHun,str1)
		
		if Current_Level>=100 then
			break
		end
	end
	--********************--
	if Current_Level<100 then
		local _,str=LuaFnGetItemCreator(sceneId,selfId,x930030_g_WuHun)
			
		local GrowPoint=strsub(str,2,5)
		
		local ss=tostring(x)
		while strlen(ss)<7 do
			ss="0"..ss
		end
			
		Current_Level=Current_Level
		local sss=tostring(Current_Level)
		while strlen(sss)<3 do
			sss="0"..sss
		end
			
		local Liliang=tonumber(strsub(str,16,18))
		while strlen(Liliang)<3 do
			Liliang="0"..Liliang
		end
			
		local Liliang_Base=tonumber(strsub(str,19,21))
		while strlen(Liliang_Base)<3 do
			Liliang_Base="0"..Liliang_Base
		end
			
		local Lingqi=tonumber(strsub(str,22,24))
		while strlen(Lingqi)<3 do
			Lingqi="0"..Lingqi
		end
			
		local Lingqi_Base=tonumber(strsub(str,25,27))
		while strlen(Lingqi_Base)<3 do
			Lingqi_Base="0"..Lingqi_Base
		end
			
		local Tili=tonumber(strsub(str,28,30))
		while strlen(Tili)<3 do
			Tili="0"..Tili
		end
			
		local Tili_Base=tonumber(strsub(str,31,33))
		while strlen(Tili_Base)<3 do
			Tili_Base="0"..Tili_Base
		end
			
		local Dingli=tonumber(strsub(str,34,36))
		while strlen(Dingli)<3 do
			Dingli="0"..Dingli
		end
			
		local Dingli_Base=tonumber(strsub(str,37,39))
		while strlen(Dingli_Base)<3 do
			Dingli_Base="0"..Dingli_Base
		end
			
		local Shenfa=tonumber(strsub(str,40,42))
		while strlen(Shenfa)<3 do
			Shenfa="0"..Shenfa
		end
			
		local Shenfa_Base=tonumber(strsub(str,43,45))
		while strlen(Shenfa_Base)<3 do
			Shenfa_Base="0"..Shenfa_Base
		end
		
		local str1="+"..GrowPoint..sss..ss..Liliang..Liliang_Base..Lingqi..Lingqi_Base..Tili..Tili_Base..Dingli..Dingli_Base..Shenfa..Shenfa_Base.."+"
		LuaFnSetItemCreator(sceneId,selfId,x930030_g_WuHun,str1)
	end
	--********************--
	return 1
	--********************--
	
end
--**********************************--
--*        On Default Event        *--
--**********************************--
function x930030_OnActivateEachTick(sceneId,selfId)

	--********************--
	return 1
	--********************--
	
end