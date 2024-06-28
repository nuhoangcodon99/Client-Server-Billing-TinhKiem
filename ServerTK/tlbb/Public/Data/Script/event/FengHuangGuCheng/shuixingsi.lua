--Ð¤u trß¶ng Phøng Hoàng C± Thành
--Thüy Tinh ThÕch
--Author: Kenvin Sói

--******************--
x930503_g_ScriptId=930503
x930503_g_Impact=12750															--Hi®u Ñng biªn thân hµ kÏ
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
			AddText(sceneId,"Phe các hÕ chï có th¬ ghi ðßþc ði¬m b¢ng cách hµ t¯ng chiªn kÏ v« ch² #GThüy tinh thÕch#W ðã chiªm giæ ðßþc. M²i l¥n hµ kÏ thành công, gia tång #G200#W ði¬m tích lûy cho cä phe.")
			AddText(sceneId,"Hãy mau mau t¾i ch² #GPhøng Hoàng Chiªn KÏ#W ðoÕt l¤y chiªn kÏ v« ðây ði!")
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
		Owner_Name="Mµc"
	elseif Flag==202 then
		Owner_Name="Thüy"
	elseif Flag==203 then
		Owner_Name="Höa"
	elseif Flag==204 then
		Owner_Name="Th±"
	elseif Flag==205 then
		Owner_Name="Phong"
	elseif Flag==206 then
		Owner_Name="Thiên"
	elseif Flag==207 then
		Owner_Name="Ð¸a"
	end
	--******************--
	local str="Phe "..Owner_Name.." ðã chiªm ðßþc "..GetName(sceneId,selfId)..", ði¬m tích lûy toàn phe tång 20 ði¬m!"
	--******************--
	local nHuman=LuaFnGetCopyScene_HumanCount(sceneId)																			--T±ng s¯ ngß¶i ch½i trong chiªn trß¶ng
	for i=0,nHuman-1 do
		local HumanId=LuaFnGetCopyScene_HumanObjId(sceneId,i)																	--Id ngß¶i ch½i thÑ i
		BeginEvent(sceneId)
			AddText(sceneId,str)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,HumanId)
	end
	--******************--
	local MstId=-1
	--******************--
	local x,y
	if GetName(sceneId,selfId)=="Hoàng S¡c Thüy Tinh" then
		MstId=14007
		x=92
		y=90
	elseif GetName(sceneId,selfId)=="Løc S¡c Thüy Tinh" then
		MstId=14009
		x=229
		y=90
	elseif GetName(sceneId,selfId)=="Chanh S¡c Thüy Tinh" then
		MstId=14005
		x=230
		y=230
	elseif GetName(sceneId,selfId)=="TØ S¡c Thüy Tinh" then
		MstId=14003
		x=91
		y=229
	end
	--******************--
	local Monster_Index=LuaFnCreateMonster(sceneId,MstId,x,y,3,0,930503)														--Kh·i tÕo Thüy Tinh m¾i
	SetCharacterName(sceneId,Monster_Index,GetName(sceneId,selfId))																--Set tên cho Thüy tinh
	SetCharacterTitle(sceneId,Monster_Index,"Chü s· hæu: "..Owner_Name)															--Set danh hi®u s· hæu cho Thüy tinh
	SetUnitCampID(sceneId,Monster_Index,Monster_Index,Flag)																		--Set trÕng thái chiªn ð¤u cho Thüy tinh
	--******************--
	CallScriptFunction(930500,"OnStolenStone",sceneId,Flag)
	--******************--
	
end