--Фu tr߶ng Ph�ng Ho�ng C� Th�nh
--Th�y Tinh Th�ch
--Author: Kenvin S�i

--******************--
x930503_g_ScriptId=930503
x930503_g_Impact=12750															--Hi�u �ng bi�n th�n h� k�
--******************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x930503_OnDefaultEvent(sceneId,selfId,targetId)

	--******************--
	local Flag=GetMissionData(sceneId,selfId,MD_FENGHUANG_FLAG)
	--******************--
	if Flag==GetUnitCampID(sceneId,targetId,targetId) then
		BeginEvent(sceneId)
			AddText(sceneId,"Phe c�c h� ch� c� th� ghi ���c �i�m b�ng c�ch h� t�ng chi�n k� v� ch� #GTh�y tinh th�ch#W �� chi�m gi� ���c. M�i l�n h� k� th�nh c�ng, gia t�ng #G200#W �i�m t�ch l�y cho c� phe.")
			AddText(sceneId,"H�y mau mau t�i ch� #GPh�ng Ho�ng Chi�n K�#W �o�t l�y chi�n k� v� ��y �i!")
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,x930503_g_Impact)>0 then
				LuaFnCancelSpecificImpact(sceneId,selfId,x930503_g_Impact)
				CallScriptFunction(930500,"FinishStealFlag",sceneId,selfId)
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--******************--
	
end
--**********************************--
--*             On Die             *--
--**********************************--
function x930503_OnDie(sceneId,selfId,killerId)

	--******************--
	local Flag=GetMissionData(sceneId,killerId,MD_FENGHUANG_FLAG)
	local Owner_Name=""
	if Flag==200 then
		Owner_Name="Kim"
	elseif Flag==201 then
		Owner_Name="M�c"
	elseif Flag==202 then
		Owner_Name="Th�y"
	elseif Flag==203 then
		Owner_Name="H�a"
	elseif Flag==204 then
		Owner_Name="Th�"
	elseif Flag==205 then
		Owner_Name="Phong"
	elseif Flag==206 then
		Owner_Name="Thi�n"
	elseif Flag==207 then
		Owner_Name="иa"
	end
	--******************--
	local str="Phe "..Owner_Name.." �� chi�m ���c "..GetName(sceneId,selfId)..", �i�m t�ch l�y to�n phe t�ng 20 �i�m!"
	--******************--
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)																			--T�ng s� ng߶i ch�i trong chi�n tr߶ng
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)																	--Id ng߶i ch�i th� i
		BeginEvent(sceneId)
			AddText(sceneId,str)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,HumanId)
	end
	--******************--
	local MstId=-1
	--******************--
	local x,y
	if GetName(sceneId,selfId)=="Ho�ng S�c Th�y Tinh" then
		MstId=14007
		x=92
		y=90
	elseif GetName(sceneId,selfId)=="L�c S�c Th�y Tinh" then
		MstId=14009
		x=229
		y=90
	elseif GetName(sceneId,selfId)=="Chanh S�c Th�y Tinh" then
		MstId=14005
		x=230
		y=230
	elseif GetName(sceneId,selfId)=="T� S�c Th�y Tinh" then
		MstId=14003
		x=91
		y=229
	end
	--******************--
	local Monster_Index=LuaFnCreateMonster(sceneId,MstId,x,y,3,0,930503)														--Kh�i t�o Th�y Tinh m�i
	SetCharacterName(sceneId,Monster_Index,GetName(sceneId,selfId))																--Set t�n cho Th�y tinh
	SetCharacterTitle(sceneId,Monster_Index,"Ch� s� h�u: "..Owner_Name)															--Set danh hi�u s� h�u cho Th�y tinh
	SetUnitCampID(sceneId,Monster_Index,Monster_Index,Flag)																		--Set tr�ng th�i chi�n �u cho Th�y tinh
	--******************--
	CallScriptFunction(930500,"OnStolenStone",sceneId,Flag)
	--******************--
	
end