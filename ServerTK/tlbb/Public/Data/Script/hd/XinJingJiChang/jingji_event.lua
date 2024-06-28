--T�n C�nh K� Tr߶ng
--T�c gi�: Kenny Hi�u (Sex)
--Code by S�i

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
	AddNumText(sceneId,x125020_g_ScriptId,"T�n C�nh K� Tr߶ng",9,1)      
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
			AddText(sceneId,"#BT�n C�nh k� tr߶ng")
			AddText(sceneId,"   Tr�ng th�i c��i chung th� kh�ng th� ti�n v�o!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return 0
	end
	--********************--
	if GetLevel(sceneId,selfId)<35 then
		BeginEvent(sceneId)
			AddText(sceneId,"#BT�n C�nh k� tr߶ng")
			AddText(sceneId,"   Mu�n v�o C�nh k� tr߶ng c�n ��t c�p � t�i thi�u l� c�p 35!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return 0
	end
	--********************--
	if LuaFnHasTeam(sceneId,selfId)==0 then
		BeginEvent(sceneId)
			AddText(sceneId,"#BT�n C�nh k� tr߶ng")
			AddText(sceneId,"   C�c h� c�n c� m�t t� �i!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return 0
	end
	--********************--
	if LuaFnIsTeamLeader(sceneId,selfId)~=1 then
		BeginEvent(sceneId)
			AddText(sceneId,"#BT�n C�nh k� tr߶ng")
			AddText(sceneId,"   Ta c�n g�p �i tr߷ng!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return 0
	end
	--********************--
	if GetTeamSize(sceneId,selfId)~=GetNearTeamCount(sceneId,selfId) then
		BeginEvent(sceneId)
			AddText(sceneId,"#BT�n C�nh k� tr߶ng")
			AddText(sceneId,"   C�c h� c�n tri�u t�p �� �i ng� c�a m�nh �n ch� ta m�i c� th� ti�n v�o!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return 0,""
	end
	--********************--
	if GetItemCount(sceneId,selfId,40002000)>=1 then
		BeginEvent(sceneId)
			AddText(sceneId,"#BT�n C�nh k� tr߶ng")
			AddText(sceneId,"   Trong tr�ng th�i v�n chuy�n kh�ng th� v�o C�nh k� tr߶ng!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return 0
	end
	--********************--
	if IsHaveMission(sceneId,selfId,4021)>0 then
		BeginEvent(sceneId)
			AddText(sceneId,"#BT�n C�nh k� tr߶ng")
			AddText(sceneId,"   Trong tr�ng th�i v�n chuy�n kh�ng th� v�o C�nh k� tr߶ng!")
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
		AddText(sceneId,"C�c h� �� t� n�n. T�m th�i h�n m� trong 1 ph�t. N�u c�c h� tr� l�i ��ng c�u h�i c�a Tr�ng nguy�n th� tr�ng th�i h�n m� s� bi�n m�t.")
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
	local str=format("@*;SrvMsg;SCA:#YVu C�u Li�n#P h� to: C�c v� anh h�ng, #{_INFOUSR%s}#P �� l� ch� nh�n c�a nh�ng b�u v�t trong #Gb�o s߽ng l�p l�nh#P. Nh�ng ng߶i kh�c h�y ki�n tr� � #GC�nh K� Tr߶ng#P ti�p t�c tranh �o�t b�u v�t trong #GB�o s߽ng nh�#P �i!",GetName(sceneId,selfId))
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
	SetCharacterName(sceneId,MstId,"B�o s߽ng l�p l�nh")
	SetCharacterDieTime(sceneId,MstId,3600000)
	--********************--
	
end
--**********************************--
--*       Create Normal Box        *--
--**********************************--
function x125020_CreateNormalBox(sceneId)

	--********************--
	MonsterTalk(sceneId,-1,"C�nh K� Tr߶ng","Xu�t hi�n r�t nhi�u B�o s߽ng nh�...")
	--********************--
	local MstId=LuaFnCreateMonster(sceneId,5002,57,74,3,0,900006)
	SetCharacterName(sceneId,MstId,"B�o s߽ng")
	SetCharacterDieTime(sceneId,MstId,3600000)
	--********************--
	local MstId=LuaFnCreateMonster(sceneId,5002,81,52,3,0,900006)
	SetCharacterName(sceneId,MstId,"B�o s߽ng")
	SetCharacterDieTime(sceneId,MstId,3600000)
	--********************--
	local MstId=LuaFnCreateMonster(sceneId,5002,107,75,3,0,900006)
	SetCharacterName(sceneId,MstId,"B�o s߽ng")
	SetCharacterDieTime(sceneId,MstId,3600000)
	--********************--
	local MstId=LuaFnCreateMonster(sceneId,5002,130,99,3,0,900006)
	SetCharacterName(sceneId,MstId,"B�o s߽ng")
	SetCharacterDieTime(sceneId,MstId,3600000)
	--********************--
	local MstId=LuaFnCreateMonster(sceneId,5002,107,125,3,0,900006)
	SetCharacterName(sceneId,MstId,"B�o s߽ng")
	SetCharacterDieTime(sceneId,MstId,3600000)
	--********************--
	local MstId=LuaFnCreateMonster(sceneId,5002,82,147,3,0,900006)
	SetCharacterName(sceneId,MstId,"B�o s߽ng")
	SetCharacterDieTime(sceneId,MstId,3600000)
	--********************--
	local MstId=LuaFnCreateMonster(sceneId,5002,57,125,3,0,900006)
	SetCharacterName(sceneId,MstId,"B�o s߽ng")
	SetCharacterDieTime(sceneId,MstId,3600000)
	--********************--
	local MstId=LuaFnCreateMonster(sceneId,5002,32,99,3,0,900006)
	SetCharacterName(sceneId,MstId,"B�o s߽ng")
	SetCharacterDieTime(sceneId,MstId,3600000)
	--********************--
	
end
