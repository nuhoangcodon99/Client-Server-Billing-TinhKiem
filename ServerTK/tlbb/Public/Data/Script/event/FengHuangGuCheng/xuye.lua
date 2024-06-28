--Фu tr߶ng Ph�ng Ho�ng C� Th�nh
--NPC H� tr�
--Author: Kenvin S�i

--************************--
x930502_g_ScriptId = 930502
--************************--
x930502_g_Map_ID=0							--ID map d�ch chuy�n v�
x930502_g_Pos_X=264							--T�a � X
x930502_g_Pos_Y=252							--T�a � Y
--************************--
x930502_g_NPC_Array=
{
	["Jin"]					=	{	Name="Kim s� gi�",		CampID=200	},		--Phe Kim						
	["Mu"]					=	{	Name="M�c s� gi�",		CampID=201	},		--Phe M�c
	["Shui"]				=	{	Name="Th�y s� gi�",		CampID=202	},		--Phe Th�y
	["Hoa"]					=	{	Name="H�a s� gi�",		CampID=203	},		--Phe H�a
	["Tu"]					=	{	Name="Th� s� gi�",		CampID=204	},		--Phe Th�
	["Feng"]				=	{	Name="Phong s� gi�",	CampID=205	},		--Phe Phong
	["Tian"]				=	{	Name="Thi�n s� gi�",	CampID=206	},		--Phe Thi�n
	["Di"]					=	{	Name="иa s� gi�",		CampID=207	},		--Phe иa
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
			AddText(sceneId,"Phe ch�ng ta ch� c� th� ghi ���c �i�m b�ng c�ch h� t�ng chi�n k� t� #GPh�ng Ho�ng Chi�n K� ��i#W v� ch� #GTh�y tinh th�ch#W �� chi�m gi� ���c. M�i l�n h� k� th�nh c�ng, gia t�ng #G200#W �i�m t�ch l�y cho c� phe.")
			AddText(sceneId,"Tuy nhi�n c�n ch� � �ch nh�n phe kh�c r�t ��ng v� l�i h�i, h�y b�o to�n t�nh m�ng.")
			AddNumText(sceneId,x930502_g_ScriptId,"Tr� li�u",6,1)
			AddNumText(sceneId,x930502_g_ScriptId,"Tr� v� th�nh th�",6,0)
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
			AddText(sceneId,"Tr� li�u th�nh c�ng!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--************************--
	
end
