--Ð¤u trß¶ng Phøng Hoàng C± Thành
--NPC H² trþ
--Author: Kenvin Sói

--************************--
x930502_g_ScriptId = 930502
--************************--
x930502_g_Map_ID=0							--ID map d¸ch chuy¬n v«
x930502_g_Pos_X=264							--T÷a ðµ X
x930502_g_Pos_Y=252							--T÷a ðµ Y
--************************--
x930502_g_NPC_Array=
{
	["Jin"]					=	{	Name="Kim sÑ giä",		CampID=200	},		--Phe Kim						
	["Mu"]					=	{	Name="Mµc sÑ giä",		CampID=201	},		--Phe Mµc
	["Shui"]				=	{	Name="Thüy sÑ giä",		CampID=202	},		--Phe Thüy
	["Hoa"]					=	{	Name="Höa sÑ giä",		CampID=203	},		--Phe Höa
	["Tu"]					=	{	Name="Th± sÑ giä",		CampID=204	},		--Phe Th±
	["Feng"]				=	{	Name="Phong sÑ giä",	CampID=205	},		--Phe Phong
	["Tian"]				=	{	Name="Thiên sÑ giä",	CampID=206	},		--Phe Thiên
	["Di"]					=	{	Name="Ð¸a sÑ giä",		CampID=207	},		--Phe Ð¸a
}
--************************--

--*****************************--
--*     On Default Event      *--
--*****************************--
function x930502_OnDefaultEvent(sceneId,selfId,targetId)

	--************************--
	local NPC_CampID
	for i,Guild in x930502_g_NPC_Array do
		if Guild.Name==GetName(sceneId,targetId) then
			NPC_CampID=Guild.CampID
			break
		end
	end
	--************************--
	local Flag=GetMissionData(sceneId,selfId,MD_FENGHUANG_FLAG)
	--************************--
	if Flag==NPC_CampID then
		BeginEvent(sceneId)
			AddText(sceneId,"Phe chúng ta chï có th¬ ghi ðßþc ði¬m b¢ng cách hµ t¯ng chiªn kÏ t× #GPhøng Hoàng Chiªn KÏ Ðài#W v« ch² #GThüy tinh thÕch#W ðã chiªm giæ ðßþc. M²i l¥n hµ kÏ thành công, gia tång #G200#W ði¬m tích lûy cho cä phe.")
			AddText(sceneId,"Tuy nhiên c¥n chú ý ð¸ch nhân phe khác r¤t ðông và lþi hÕi, hãy bäo toàn tính mÕng.")
			AddNumText(sceneId,x930502_g_ScriptId,"Tr¸ li®u",6,1)
			AddNumText(sceneId,x930502_g_ScriptId,"Tr· v« thành th¸",6,0)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--************************--
	
end
--*****************************--
--*     On Event Request      *--
--*****************************--
function x930502_OnEventRequest(sceneId,selfId,targetId,eventId)

	--************************--
	if GetNumText()==0 then
		CallScriptFunction((400900),"TransferFunc",sceneId,selfId,x930502_g_Map_ID,x930502_g_Pos_X,x930502_g_Pos_Y)
	end
	--************************--
	if GetNumText()==1 then
		CallScriptFunction(000064,"Restore_hpmp",sceneId,selfId,targetId)
		RestoreStrikePoint(sceneId,selfId)
		RestoreRage(sceneId,selfId)
		BeginEvent(sceneId)
			AddText(sceneId,"Tr¸ li®u thành công!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--************************--
	
end
