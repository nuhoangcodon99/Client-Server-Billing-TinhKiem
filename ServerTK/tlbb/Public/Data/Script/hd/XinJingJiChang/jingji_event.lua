--Tân CÕnh KÛ Trß¶ng
--Tác giä: Kenny Hiªu (Sex)
--Code by Sói

--********************--
x125020_g_ScriptId=125020
--********************--
x125020_g_Impact_Died=10534
--********************--
x125020_g_Position = {

	{	id=1,	scene=0,	x=143,	z=151	},
	{	id=2,	scene=1,	x=28, 	z=152	},
	{	id=3,	scene=2,	x=149,	z=80	},
	{	id=4,	scene=3,	x=36, 	z=49	},
	{	id=5,	scene=420,	x=33, 	z=49	},
}
--********************--
x125020_g_Title_Index=
{
	["Vip"]		=130,
}
--********************--

--**********************************--
--*          On Enumerate          *--
--**********************************--
function x125020_OnEnumerate(sceneId,selfId,targetId)	

	--********************--
	AddNumText(sceneId,x125020_g_ScriptId,"Tân CÕnh KÛ Trß¶ng",9,1)      
	--********************--
  
end
--**********************************--
--*        On Default Event        *--
--**********************************--
function x125020_OnDefaultEvent(sceneId,selfId,targetId)

	--********************--
	if GetNumText()==1 then
		if x125020_OnCheck(sceneId,selfId,targetId)==1 then
			local Pos_X=0
			local Pos_Y=0
			for i,pos in x125020_g_Position do
				if pos.scene==sceneId  then
					Pos_X=pos.x
					Pos_Y=pos.z
				end
			end
			CallScriptFunction((400900),"TransferFunc",sceneId,selfId,421,Pos_X,Pos_Y)
		end
	end
	--********************--
	
end
--**********************************--
--*            On Check            *--
--**********************************--
function x125020_OnCheck(sceneId,selfId,targetId)

	--********************--
	if LuaFnGetDRideFlag(sceneId,selfId)~=0 then
		BeginEvent(sceneId)
			AddText(sceneId,"#BTân CÕnh kÛ trß¶ng")
			AddText(sceneId,"   TrÕng thái cßÞi chung thú không th¬ tiªn vào!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return 0
	end
	--********************--
	if GetLevel(sceneId,selfId)<35 then
		BeginEvent(sceneId)
			AddText(sceneId,"#BTân CÕnh kÛ trß¶ng")
			AddText(sceneId,"   Mu¯n vào CÕnh kÛ trß¶ng c¥n ðÕt c¤p ðµ t¯i thi¬u là c¤p 35!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return 0
	end
	--********************--
	if LuaFnHasTeam(sceneId,selfId)==0 then
		BeginEvent(sceneId)
			AddText(sceneId,"#BTân CÕnh kÛ trß¶ng")
			AddText(sceneId,"   Các hÕ c¥n có mµt t± ðµi!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return 0
	end
	--********************--
	if LuaFnIsTeamLeader(sceneId,selfId)~=1 then
		BeginEvent(sceneId)
			AddText(sceneId,"#BTân CÕnh kÛ trß¶ng")
			AddText(sceneId,"   Ta c¥n g£p ðµi trß·ng!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return 0
	end
	--********************--
	if GetTeamSize(sceneId,selfId)~=GetNearTeamCount(sceneId,selfId) then
		BeginEvent(sceneId)
			AddText(sceneId,"#BTân CÕnh kÛ trß¶ng")
			AddText(sceneId,"   Các hÕ c¥n tri®u t§p ðü ðµi ngû cüa mình ðªn ch² ta m¾i có th¬ tiªn vào!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return 0,""
	end
	--********************--
	if GetItemCount(sceneId,selfId,40002000)>=1 then
		BeginEvent(sceneId)
			AddText(sceneId,"#BTân CÕnh kÛ trß¶ng")
			AddText(sceneId,"   Trong trÕng thái v§n chuy¬n không th¬ vào CÕnh kÛ trß¶ng!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return 0
	end
	--********************--
	if IsHaveMission(sceneId,selfId,4021)>0 then
		BeginEvent(sceneId)
			AddText(sceneId,"#BTân CÕnh kÛ trß¶ng")
			AddText(sceneId,"   Trong trÕng thái v§n chuy¬n không th¬ vào CÕnh kÛ trß¶ng!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return 0
	end
	--********************--
	return 1
	--********************--
	
end
--**********************************--
--*     On Scene Player Enter      *--
--**********************************--
function x125020_OnScenePlayerEnter(sceneId,selfId)

	--********************--
	local ran=random(getn(x125020_g_Position))
	local x,z=x125020_g_Position[ran].x,x125020_g_Position[ran].z
	--********************--
	SetPlayerDefaultReliveInfoEx(sceneId,selfId,"%100","%100","0",sceneId,x,z,125020)
	--********************--
	
end
--**********************************--
--*         On Scene Timer         *--
--**********************************--
function x125020_OnSceneTimer(sceneId,selfId)

	--********************--
	local nHumanNum=LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanNum-1 do
		local PlayerId=LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnHasTeam(sceneId,PlayerId)==1  then	
			local nCampID=GetTeamId(sceneId,PlayerId)+210
			SetUnitCampID(sceneId,PlayerId,PlayerId,nCampID)
		else
			SetUnitCampID(sceneId,PlayerId,PlayerId,random(499)+50)
		end
	end
	--********************--
	
end
--**********************************--
--*            On Relive           *--
--**********************************--
function x125020_OnRelive(sceneId,selfId)

	--********************--
	BeginEvent(sceneId)
		AddText(sceneId,"Các hÕ ðã tØ nÕn. TÕm th¶i hôn mê trong 1 phút. Nªu các hÕ trä l¶i ðúng câu höi cüa TrÕng nguyên thì trÕng thái hôn mê s¨ biªn m¤t.")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--********************--
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x125020_g_Impact_Died,0)
	--********************--
	CallScriptFunction(900007,"OnUpdate",sceneId,selfId,0)
	--********************--
	
end
--**********************************--
--*          Open Vip Box          *--
--**********************************--
function x125020_OpenVipBox(sceneId,selfId)

	--********************--
	local str=format("@*;SrvMsg;SCA:#YVu CØu Liên#P hô to: Các v¸ anh hùng, #{_INFOUSR%s}#P ðã là chü nhân cüa nhæng báu v§t trong #Gbäo sß½ng l¤p lánh#P. Nhæng ngß¶i khác hãy kiên trì · #GCÕnh KÛ Trß¶ng#P tiªp tøc tranh ðoÕt báu v§t trong #GBäo sß½ng nhö#P ði!",GetName(sceneId,selfId))
	AddGlobalCountNews(sceneId,str)
	--********************--
	--AwardTitle(sceneId,selfId,5,x125020_g_Title_Index["Vip"])
	--SetCurTitle(sceneId,selfId,5,x125020_g_Title_Index["Vip"])
	--LuaFnDispatchAllTitle(sceneId,selfId)
	--********************--
	
end
--**********************************--
--*         Create Vip Box         *--
--**********************************--
function x125020_CreateVipBox(sceneId)

	--********************--
	local MstId=LuaFnCreateMonster(sceneId,5002,82,100,3,0,900005)
	SetCharacterName(sceneId,MstId,"Bäo sß½ng l¤p lánh")
	SetCharacterDieTime(sceneId,MstId,3600000)
	--********************--
	
end
--**********************************--
--*       Create Normal Box        *--
--**********************************--
function x125020_CreateNormalBox(sceneId)

	--********************--
	MonsterTalk(sceneId,-1,"CÕnh KÛ Trß¶ng","Xu¤t hi®n r¤t nhi«u Bäo sß½ng nhö...")
	--********************--
	local MstId=LuaFnCreateMonster(sceneId,5002,57,74,3,0,900006)
	SetCharacterName(sceneId,MstId,"Bäo sß½ng")
	SetCharacterDieTime(sceneId,MstId,3600000)
	--********************--
	local MstId=LuaFnCreateMonster(sceneId,5002,81,52,3,0,900006)
	SetCharacterName(sceneId,MstId,"Bäo sß½ng")
	SetCharacterDieTime(sceneId,MstId,3600000)
	--********************--
	local MstId=LuaFnCreateMonster(sceneId,5002,107,75,3,0,900006)
	SetCharacterName(sceneId,MstId,"Bäo sß½ng")
	SetCharacterDieTime(sceneId,MstId,3600000)
	--********************--
	local MstId=LuaFnCreateMonster(sceneId,5002,130,99,3,0,900006)
	SetCharacterName(sceneId,MstId,"Bäo sß½ng")
	SetCharacterDieTime(sceneId,MstId,3600000)
	--********************--
	local MstId=LuaFnCreateMonster(sceneId,5002,107,125,3,0,900006)
	SetCharacterName(sceneId,MstId,"Bäo sß½ng")
	SetCharacterDieTime(sceneId,MstId,3600000)
	--********************--
	local MstId=LuaFnCreateMonster(sceneId,5002,82,147,3,0,900006)
	SetCharacterName(sceneId,MstId,"Bäo sß½ng")
	SetCharacterDieTime(sceneId,MstId,3600000)
	--********************--
	local MstId=LuaFnCreateMonster(sceneId,5002,57,125,3,0,900006)
	SetCharacterName(sceneId,MstId,"Bäo sß½ng")
	SetCharacterDieTime(sceneId,MstId,3600000)
	--********************--
	local MstId=LuaFnCreateMonster(sceneId,5002,32,99,3,0,900006)
	SetCharacterName(sceneId,MstId,"Bäo sß½ng")
	SetCharacterDieTime(sceneId,MstId,3600000)
	--********************--
	
end
