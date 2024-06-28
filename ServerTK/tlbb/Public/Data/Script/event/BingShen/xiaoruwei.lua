--Phø bän Binh Thánh KÏ Tr§n
--Tiêu Nhß Úy
--Code by Sói

--******************--


x910204_Item_ttpx ={
50131001, --Bång Lam Lßu Vân (C¤p 1)
50131002,--TØ Vi Tinh Quang (C¤p 1)
50131003,--Thuý Ng÷c Tinh Tr¥n (C¤p 1)
50131004,--Tranh Änh Nhß Mµng (C¤p 1)
50131005,--Hoa LÕc H°ng Tr¥n (C¤p 1)
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
}

x910204_Item_ttpx_vip ={

30501361,--Công lñc ðan
30503134, --kim thoa (duc lo)
30503135, --Th¶i trang ph¯i sÑc ði¬m xuyªt phù
30503136, --Th¶i trang ph¯i sÑc thanh tr× phù
30503137, --Th¶i trang ph¯i sÑc gia công phù


30501361,--Công lñc ðan
30503134, --kim thoa (duc lo)
30503135, --Th¶i trang ph¯i sÑc ði¬m xuyªt phù
30503136, --Th¶i trang ph¯i sÑc thanh tr× phù
30503137, --Th¶i trang ph¯i sÑc gia công phù

30501361,--Công lñc ðan
30503134, --kim thoa (duc lo)
30503135, --Th¶i trang ph¯i sÑc ði¬m xuyªt phù
30503136, --Th¶i trang ph¯i sÑc thanh tr× phù
30503137, --Th¶i trang ph¯i sÑc gia công phù

30501361,--Công lñc ðan
30503134, --kim thoa (duc lo)
30503135, --Th¶i trang ph¯i sÑc ði¬m xuyªt phù
30503136, --Th¶i trang ph¯i sÑc thanh tr× phù
30503137, --Th¶i trang ph¯i sÑc gia công phù

30501361,--Công lñc ðan
30503134, --kim thoa (duc lo)
30503135, --Th¶i trang ph¯i sÑc ði¬m xuyªt phù
30503136, --Th¶i trang ph¯i sÑc thanh tr× phù
30503137, --Th¶i trang ph¯i sÑc gia công phù

30501361,--Công lñc ðan
30503134, --kim thoa (duc lo)
30503135, --Th¶i trang ph¯i sÑc ði¬m xuyªt phù
30503136, --Th¶i trang ph¯i sÑc thanh tr× phù
30503137, --Th¶i trang ph¯i sÑc gia công phù

20503061, --Trang b¸ Tinh thông phù
20503061, --Trang b¸ Tinh thông phù
20503061, --Trang b¸ Tinh thông phù

30010080, --Chân Nguyên Phách
30010081, --Chân Nguyên Tinh Phách
}
x910204_Item_ttpx_vip_rate = 40 -- ty le rot x910204_Item_ttpx_vip



--******************--

--******************--
x910204_g_ScriptId=910204
--******************--
x910204_g_Boss_Name="Tiêu Nhß Úy"																--Tên cüa BOSS
x910204_g_Friend_Name="Tiêu Nhß Quân"															--Tên cüa BOSS ð°ng hành
--******************--
x910204_g_AttackMode=0																			--TrÕng thái chiªn ð¤u
x910204_g_Status=1																				--TrÕng thái m¤t máu ð¬ thi tri¬n skill
x910204_g_Skill_Timer=2																			--TrÕng thái m¤t máu ð¬ thi tri¬n skill
--******************--
x910204_g_Skill_Index=1686																		--KÛ nång Trúc Lâm Tr§n
x910204_g_Skill_CD=20000																		--Th¶i gian phøc h°i kÛ nång Trúc Lâm Tr§n
x910204_g_TrapObj=646																			--CÕm bçy
--******************--
x910204_g_Monster_Dialogue=
{																								--L¶i nói cüa Boss
	[1]=x910204_g_Boss_Name.." ðã xu¤t hi®n!",
	[2]="LÕc chân vào r×ng trúc này là các ngß½i cûng s¨ ðªn ngày t§n thª!",
	[3]="Ðã giªt chªt "..x910204_g_Boss_Name..": 1/1",
}
--******************--
x910204_g_Monster=
{
	["Tong Xin Zhu - Zi"]		=	{	Index=15041,	Name="Ð°ng Tâm Trúc - TØ (Úy)",			Title="Kháng nµi công",		Impact=12602,	ScriptID=-1		},	--Ð°ng Tâm Trúc - TØ	(Kháng nµi công)
	["Tong Xin Zhu - Bai"]		=	{	Index=15036,	Name="Ð°ng Tâm Trúc - BÕch (Úy)",		Title="Kháng ngoÕi công",	Impact=12603,	ScriptID=-1		},	--Ð°ng Tâm Trúc - BÕch	(Kháng ngoÕi công)
	["Tong Xin Zhu - Lan"]		=	{	Index=15061,	Name="Ð°ng Tâm Trúc - Lam (Úy)",		Title="Kháng bång công",	Impact=12605,	ScriptID=-1		},	--Ð°ng Tâm Trúc - Lam	(Kháng bång công)
	["Tong Xin Zhu - Hong"]		=	{	Index=15056,	Name="Ð°ng Tâm Trúc - H°ng (Úy)",		Title="Kháng höa công",		Impact=12606,	ScriptID=-1		},	--Ð°ng Tâm Trúc - H°ng	(Kháng höa công)
	["Tong Xin Zhu - Huang"]	=	{	Index=15046,	Name="Ð°ng Tâm Trúc - Hoàng (Úy)",		Title="Kháng huy«n công",	Impact=12607,	ScriptID=-1		},	--Ð°ng Tâm Trúc - Hoàng	(Kháng huy«n công)
	["Tong Xin Zhu - Lv"]		=	{	Index=15051,	Name="Ð°ng Tâm Trúc - Løc (Úy)",		Title="Kháng ðµc công",		Impact=12608,	ScriptID=-1		},	--Ð°ng Tâm Trúc - Løc	(Kháng ðµc công)
}
--******************--

--**********************************--
--*             On Init            *-- 
--**********************************--
function x910204_OnInit(sceneId,selfId)

	--******************--
	MonsterTalk(sceneId,selfId,"Binh Thánh KÏ Tr§n",x910204_g_Monster_Dialogue[2])				--Câu nói khai chiªn cüa Boss
	x910204_GlobalNews(sceneId,x910204_g_Monster_Dialogue[1])									--Thông báo Boss ðã vào chiªn ð¤u cho toàn th¬ ngß¶i ch½i
	x910204_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--

end
--**********************************--
--*         On Heart Beat          *--
--**********************************--
function x910204_OnHeartBeat(sceneId,selfId,nTick)												--Hàm này s¨ check liên tøc m²i mili giây khi nào Boss còn s¯ng

	--******************--
	if LuaFnIsCharacterLiving(sceneId,selfId)~=1 then											--Nªu Boss ðã chªt thì ng×ng hoÕt ðµng cüa Script
		return
	end
	--******************--
	if MonsterAI_GetIntParamByIndex(sceneId,selfId,x910204_g_AttackMode)==0 then
		return
	end
	--******************--
	x910204_UseMySkill(sceneId,selfId,nTick)													--SØ døng kÛ nång
	--******************--

end
--**********************************--
--*        On Enter Combat         *--
--**********************************--
function x910204_OnEnterCombat(sceneId,selfId,enmeyId)

	--******************--
	x910204_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910204_g_AttackMode,1)
	--******************--

end
--**********************************--
--*        On Leave Combat         *--
--**********************************--
function x910204_OnLeaveCombat(sceneId,selfId)

	--******************--
	x910204_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--

end
--**********************************--
--*       On Kill Character        *--
--**********************************--
function x910204_OnKillCharacter(sceneId,selfId,targetId)
	
	--******************--
	--******************--
	
end
--**********************************--
--*             On Die             *--
--**********************************--
function x910204_OnDie(sceneId,selfId,killerId)

	--******************--
	x910204_GlobalNews(sceneId,x910204_g_Monster_Dialogue[3])
	--******************--
	if x910204_CheckMyFriendLeft(sceneId,selfId)==1 then
		LuaFnSetCopySceneData_Param(sceneId,9,3)												--C§p nh§t bß¾c hoÕt ðµng phø bän
	else
		LuaFnSetCopySceneData_Param(sceneId,9,4)												--C§p nh§t bß¾c hoÕt ðµng phø bän
	end
	--******************--
	x910204_DeleteOldMonster(sceneId)
	--******************--
	if LuaFnGetCopySceneData_Param(sceneId,31)~=1 then
		for i=0,GetNearTeamCount(sceneId,killerId)-1  do
			local nPlayerId=GetNearTeamMember(sceneId,killerId,i)
			AddMonsterDropItem(sceneId,selfId,nPlayerId,x910204_Item_ttpx[random(getn(x910204_Item_ttpx))])
			local ran = random(100)
			if ran < x910204_Item_ttpx_vip_rate then
				AddMonsterDropItem(sceneId,selfId,nPlayerId,x910204_Item_ttpx_vip[random(getn(x910204_Item_ttpx_vip)-1)])
			end
			local Current_Activity_Point=GetMissionData(sceneId,nPlayerId,MD_CURRENT_ACTIVITY_POINT)
			SetMissionData(sceneId,nPlayerId,MD_CURRENT_ACTIVITY_POINT,Current_Activity_Point+10)
			BeginEvent(sceneId)
				AddText(sceneId,"Các hÕ ðã gia tång 10 ði¬m hoÕt ðµng!")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,nPlayerId)
		end
		LuaFnSetCopySceneData_Param(sceneId,31,1)
	end
	--******************--

end
--**********************************--
--*          Reset My AI           *--
--**********************************--
function x910204_ResetMyAI(sceneId,selfId)

	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910204_g_AttackMode,0)
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910204_g_Status,0)
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910204_g_Skill_Timer,x910204_g_Skill_CD)
	x910204_DeleteOldMonster(sceneId)
	--******************--
	
end
--**********************************--
--*       Delete Old Monster       *--
--**********************************--
function x910204_DeleteOldMonster(sceneId)

	--******************--
	for i,Monster in x910204_g_Monster do
		local nMonsterNum=GetMonsterCount(sceneId)
		for i=0,nMonsterNum-1 do
			local MonsterId=GetMonsterObjID(sceneId,i)
			if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==Monster.Name then
				SetCharacterDieTime(sceneId,MonsterId,100)
			end
		end
	end
	--******************--
	
end
--**********************************--
--*          Use My Skill          *--
--**********************************--
function x910204_UseMySkill(sceneId,selfId,nTick)

	--******************--
	local Last_Time=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910204_g_Skill_Timer)
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910204_g_Skill_Timer,Last_Time-nTick)
	--******************--
	if Last_Time-nTick<=0 then
		x910204_ActiveMyTrap(sceneId,selfId)																--SØ døng kÛ nång ð£t bçy
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910204_g_Skill_Timer,x910204_g_Skill_CD)				--Ð£t lÕi th¶i gian lãnh khß¾c
	end
	--******************--
	local nStep=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910204_g_Status)
	--******************--
	if GetHp(sceneId,selfId)/GetMaxHp(sceneId,selfId)<=0.35 and nStep==0 then								--Khi Boss còn 35% máu
		x910204_CallTongXinZhu(sceneId,selfId)																--G÷i 6 cây Ð°ng Tâm Trúc
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910204_g_Status,100)									--C§p nh§t thao tác Boss
	end
	--******************--
	if MonsterAI_GetIntParamByIndex(sceneId,selfId,x910204_g_Status)==100 then
		x910204_CheckMonsterLeft(sceneId,selfId)															--Ki¬m tra s¯ Ð°ng Tâm Trúc còn lÕi
	end
	--******************--
	
end
--**********************************--
--*         Active My Trap         *--
--**********************************--
function x910204_ActiveMyTrap(sceneId,selfId)

	--******************--
	local x,y=GetWorldPos(sceneId,selfId)
	--******************--
	LuaFnUnitUseSkill(sceneId,selfId,x910204_g_Skill_Index,x,y,0,1)
	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,nHumanId)==1 then
			local x1,y1=GetWorldPos(sceneId,nHumanId)
			CreateSpecialObjByDataIndex(sceneId,selfId,x910204_g_TrapObj,x1,y1,0)
		end
	end
	--******************--
	
end
--**********************************--
--*       Call Tong Xin Zhu        *--
--**********************************--
function x910204_CallTongXinZhu(sceneId,selfId)

	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,8)
	--******************--
	local x,y=GetWorldPos(sceneId,selfId)
	for i,Monster in x910204_g_Monster do
		local Monster_Index=LuaFnCreateMonster(sceneId,Monster.Index+nDec,x+random(10)-random(10),y+random(10)-random(10),3,0,Monster.ScriptID)	--G÷i Ð°ng Tâm Trúc
		SetCharacterName(sceneId,Monster_Index,Monster.Name)
		SetCharacterTitle(sceneId,Monster_Index,Monster.Title)
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,Monster.Impact,0)
		LuaFnSendSpecificImpactToUnit(sceneId,Monster_Index,Monster_Index,Monster_Index,Monster.Impact,0)
	end
	--******************--
	
end
--**********************************--
--*    Check Tong Xin Zhu Left     *--
--**********************************--
function x910204_CheckMonsterLeft(sceneId,selfId)

	--******************--
	for i,Monster in x910204_g_Monster do
		local nMonsterNum=GetMonsterCount(sceneId)
		local Have_Monster=0
		for i=0,nMonsterNum-1 do
			local MonsterId=GetMonsterObjID(sceneId,i)
			if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==Monster.Name then
				Have_Monster=1
				break
			end
		end
		if Have_Monster==0 and LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,Monster.Impact)>0 then
			LuaFnCancelSpecificImpact(sceneId,selfId,Monster.Impact)
		end
	end
	--******************--
	
end
--**********************************--
--*      Check My Friend Left      *--
--**********************************--
function x910204_CheckMyFriendLeft(sceneId,selfId)

	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==x910204_g_Friend_Name then
			return 1
		end
	end
	--******************--
	return 0
	--******************--
	
end
--**********************************--
--*           Global News          *--
--**********************************--
function x910204_GlobalNews(sceneId,Tips)

	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 then
			BeginEvent(sceneId)
				AddText(sceneId,Tips)
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,nHumanId)
		end
	end
	--******************--

end