--Phø bän Tàng Kinh Các
--All Monsters
--Author: Hoàng Steven

--******************--
x910125_g_ScriptId=910125
--******************--
x910125_Item_Normal={
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503062,--Ly Höa
20503061, --Trang b¸ Tinh thông phù
}
--******************--
x910125_Rate_Item=30
--******************--

--**********************************--
--*             On Die             *--
--**********************************--
function x910125_OnDie(sceneId,selfId,killerId)

	--******************--
	for i=0,GetNearTeamCount(sceneId,killerId)-1 do
		local nRan=random(100)
		if getn(x910125_Item_Normal)>0 and nRan<=x910125_Rate_Item then
			AddMonsterDropItem(sceneId,selfId,GetNearTeamMember(sceneId,killerId,i),x910125_Item_Normal[random(getn(x910125_Item_Normal))])
		end
	end
	--******************--
	
end