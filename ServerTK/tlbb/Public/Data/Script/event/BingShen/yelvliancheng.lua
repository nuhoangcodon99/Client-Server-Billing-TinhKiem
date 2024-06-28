--Phø bän Binh Thánh KÏ Tr§n
--Gia Lu§t Liên Thành
--Code by Sói

--******************--




x910206_Item_ttpx ={
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

x910206_Item_ttpx_vip ={

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
x910206_Item_ttpx_vip_rate = 60 -- ty le rot x910206_Item_ttpx_vip


--******************--

--******************--
x910206_g_ScriptId=910206
--******************--
x910206_g_Boss_Name="Gia Lu§t Liên Thành"														--Tên cüa BOSS
--******************--
x910206_g_AttackMode=0																			--TrÕng thái chiªn ð¤u
x910206_g_Status=1																				--TrÕng thái m¤t máu ð¬ thi tri¬n skill
x910206_g_KillTimer=2																			--Th¶i gian kill cä pt
--******************--
x910206_g_Impact_One_Hit_Die=9780																--Hi®u Ñng mµt ð§p chªt luôn
--******************--
x910206_g_Monster_Dialogue=
{																								--L¶i nói cüa Boss
	[1]=x910206_g_Boss_Name.." ðã xu¤t hi®n!",
	[2]="Ðªn cØa äi này xem ra cûng có chút bän lînh. Thôi thì ð¬ lão gia ta tiªp ngß½i v§y!",
	[3]="Ðã giªt chªt "..x910206_g_Boss_Name..": 1/1",
	[4]="Hãy nªm mùi ThÕch Ðôi Tr§n Pháp cüa ta...",
	[5]="Hß không äo änh, thi tri¬n...",
	[6]="%s#R cùng t± ðµi ác chiªn quyªt li®t tÕi #GLiêu Quân KÏ Tr§n#R, ðánh bÕi #GGia Lu§t Liên Thành#R cùng ðám lâu la, phen này gian kh± song vô cùng tñ hào. #GÐÕi Liêu Chinh Nam Vß½ng#R ðã b¸ tiêu di®t, #GÐÕi T¯ng#R ta ðßþc bình yên r°i!",
}
--******************--
x910206_g_Monster=
{
	["Shi Dui - Wai"]	=	{	Index=15091,	Name="ThÕch Ðôi - NgoÕi",	Title="Kháng ngoÕi công",	Impact=12603,	ScriptID=-1		},	--ThÕch ðôi kháng ngoÕi công
	["Shi Dui - Nei"]	=	{	Index=15091,	Name="ThÕch Ðôi - Nµi",		Title="Kháng nµi công",		Impact=12602,	ScriptID=-1		},	--ThÕch ðôi kháng nµi công
}
--******************--
x910206_g_Avarta=
{
	["Tie Gut"]			=	{	Index=15081,	Name="Liên Thành Thiªt C¯t",		Title="Thiªt C¯t",				ScriptID=-1		},		--Gia Lu§t Liên Thành - Thiªt C¯t
	["Yuan Shen"]		=	{	Index=15096,	Name="Liên Thành Nguyên Th¥n",		Title="Nguyên Th¥n",			ScriptID=-1		},		--Gia Lu§t Liên Thành - Nguyên Th¥n
}
--******************--

--**********************************--
--*             On Init            *-- 
--**********************************--
function x910206_OnInit(sceneId,selfId)

	--******************--
	MonsterTalk(sceneId,selfId,"Binh Thánh KÏ Tr§n",x910206_g_Monster_Dialogue[2])				--Câu nói khai chiªn cüa Boss
	x910206_GlobalNews(sceneId,x910206_g_Monster_Dialogue[1])									--Thông báo Boss ðã vào chiªn ð¤u cho toàn th¬ ngß¶i ch½i
	x910206_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--

end
--**********************************--
--*         On Heart Beat          *--
--**********************************--
function x910206_OnHeartBeat(sceneId,selfId,nTick)												--Hàm này s¨ check liên tøc m²i mili giây khi nào Boss còn s¯ng

	--******************--
	if LuaFnIsCharacterLiving(sceneId,selfId)~=1 then											--Nªu Boss ðã chªt thì ng×ng hoÕt ðµng cüa Script
		return
	end
	--******************--
	if MonsterAI_GetIntParamByIndex(sceneId,selfId,x910206_g_AttackMode)==0 then
		return
	end
	--******************--
	x910206_UseMySkill(sceneId,selfId,nTick)													--SØ døng kÛ nång
	--******************--

end
--**********************************--
--*        On Enter Combat         *--
--**********************************--
function x910206_OnEnterCombat(sceneId,selfId,enmeyId)

	--******************--
	x910206_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910206_g_AttackMode,1)
	--******************--

end
--**********************************--
--*        On Leave Combat         *--
--**********************************--
function x910206_OnLeaveCombat(sceneId,selfId)

	--******************--
	x910206_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--

end
--**********************************--
--*       On Kill Character        *--
--**********************************--
function x910206_OnKillCharacter(sceneId,selfId,targetId)
	
	--******************--
	--******************--
	
end
--**********************************--
--*             On Die             *--
--**********************************--
function x910206_OnDie(sceneId,selfId,killerId)

	--******************--
	x910206_GlobalNews(sceneId,x910206_g_Monster_Dialogue[3])
	--******************--
	LuaFnSetCopySceneData_Param(sceneId,9,6)													--C§p nh§t bß¾c hoÕt ðµng phø bän
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910206_g_Status,100)							--C§p nh§t thao tác Boss
	--******************--
	x910206_DeleteOldMonster(sceneId)
	--******************--
	local str=format(x910206_g_Monster_Dialogue[6],GetName(sceneId,killerId))
	AddGlobalCountNews(sceneId,str)
	--******************--
	local TeammateCount = GetNearTeamCount(sceneId,killerId)
	for i=0,TeammateCount-1 do
		local nPlayerId=GetNearTeamMember(sceneId,killerId,i)
		AddMonsterDropItem(sceneId,selfId,nPlayerId,x910206_Item_ttpx[random(getn(x910206_Item_ttpx))])
		local ran = random(100)
		if ran < x910206_Item_ttpx_vip_rate then
			AddMonsterDropItem(sceneId,selfId,nPlayerId,x910206_Item_ttpx_vip[random(getn(x910206_Item_ttpx_vip))])
		end
		local Current_Activity_Point=GetMissionData(sceneId,nPlayerId,MD_CURRENT_ACTIVITY_POINT)
		SetMissionData(sceneId,nPlayerId,MD_CURRENT_ACTIVITY_POINT,Current_Activity_Point+50)
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ ðã gia tång 50 ði¬m hoÕt ðµng!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,nPlayerId)
	end
	--******************--
	
end
--**********************************--
--*          Reset My AI           *--
--**********************************--
function x910206_ResetMyAI(sceneId,selfId)

	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910206_g_AttackMode,0)
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910206_g_Status,0)
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910206_g_KillTimer,30000)
	x910206_DeleteOldMonster(sceneId)
	--******************--
	
end
--**********************************--
--*       Delete Old Monster       *--
--**********************************--
function x910206_DeleteOldMonster(sceneId)

	--******************--
	for i,Monster in x910206_g_Monster do
		local nMonsterNum=GetMonsterCount(sceneId)
		for i=0,nMonsterNum-1 do
			local MonsterId=GetMonsterObjID(sceneId,i)
			if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==Monster.Name then
				SetCharacterDieTime(sceneId,MonsterId,100)
			end
		end
	end
	--******************--
	for i,Monster in x910206_g_Avarta do
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
function x910206_UseMySkill(sceneId,selfId,nTick)

	--******************--
	local nStep=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910206_g_Status)
	--******************--
	if GetHp(sceneId,selfId)/GetMaxHp(sceneId,selfId)<=0.85 and nStep==0 then								--Khi Boss còn 85% máu
		x910206_CallMyStone(sceneId,selfId)																	--G÷i ThÕch Ðôi
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910206_g_Status,1)										--C§p nh§t thao tác Boss
	elseif GetHp(sceneId,selfId)/GetMaxHp(sceneId,selfId)<=0.65 and nStep==1 then							--Khi Boss còn 65% máu
		x910206_CallMyStone(sceneId,selfId)																	--G÷i ThÕch Ðôi
		x910206_CreateMyAvarta(sceneId,selfId)																--G÷i 2 cái bóng
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910206_g_Status,2)										--C§p nh§t thao tác Boss
	elseif GetHp(sceneId,selfId)/GetMaxHp(sceneId,selfId)<=0.35 and nStep==2 then							--Khi Boss còn 35% máu
		x910206_CallMyStone(sceneId,selfId)																	--G÷i ThÕch Ðôi
		x910206_CreateMyAvarta(sceneId,selfId)																--G÷i 2 cái bóng
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910206_g_Status,3)										--C§p nh§t thao tác Boss
	elseif GetHp(sceneId,selfId)/GetMaxHp(sceneId,selfId)<=0.15 and nStep==3 then							--Khi Boss còn 15% máu
		x910206_CallMyStone(sceneId,selfId)																	--G÷i ThÕch Ðôi
		x910206_CreateMyAvarta(sceneId,selfId)																--G÷i 2 cái bóng
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910206_g_Status,4)										--C§p nh§t thao tác Boss
	elseif nStep==4 then																					--Chu¦n b¸ sau 30s s¨ ti­n cä PT v« MÕnh Bà
		local nTime=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910206_g_KillTimer)
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910206_g_KillTimer,nTime-nTick)
		if nTime-nTick<=0 then
			MonsterAI_SetIntParamByIndex(sceneId,selfId,x910206_g_Status,5)									--C§p nh§t thao tác Boss
			x910206_KillAllPT(sceneId,selfId)
		end
	end
	--******************--
	x910206_CheckMyStone(sceneId,selfId)																	--Ki¬m tra xem còn thÕch ðôi không
	--******************--
	
end
--**********************************--
--*         Check My Stone         *--
--**********************************--
function x910206_CheckMyStone(sceneId,selfId)

	--******************--
	for i,Monster in x910206_g_Monster do
		local nMonsterNum=GetMonsterCount(sceneId)
		local HaveMonster=0
		for i=0,nMonsterNum-1 do
			local MonsterId=GetMonsterObjID(sceneId,i)
			if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==Monster.Name then
				HaveMonster=1
				break
			end
		end
		if HaveMonster==0 then
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId,selfId,Monster.Impact) then
				LuaFnCancelSpecificImpact(sceneId,selfId,Monster.Impact)
			end
		end
	end
	--******************--
	
end
--**********************************--
--*         Call My Stone          *--
--**********************************--
function x910206_CallMyStone(sceneId,selfId)

	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,8)
	--******************--
	local x,y=GetWorldPos(sceneId,selfId)
	for i,Monster in x910206_g_Monster do
		local Monster_Index=LuaFnCreateMonster(sceneId,Monster.Index+nDec,x+random(10)-random(10),y+random(10)-random(10),3,0,Monster.ScriptID)	--G÷i ThÕch Ðôi
		SetCharacterName(sceneId,Monster_Index,Monster.Name)
		SetCharacterTitle(sceneId,Monster_Index,Monster.Title)
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,Monster.Impact,0)
		LuaFnSendSpecificImpactToUnit(sceneId,Monster_Index,Monster_Index,Monster_Index,Monster.Impact,0)
	end
	--******************--
	MonsterTalk(sceneId,selfId,"Binh Thánh KÏ Tr§n",x910206_g_Monster_Dialogue[4])
	--******************--
	
end
--**********************************--
--*         Create My Avarta          *--
--**********************************--
function x910206_CreateMyAvarta(sceneId,selfId)

	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,8)
	--******************--
	local x,y=GetWorldPos(sceneId,selfId)
	for i,Monster in x910206_g_Avarta do
		local Monster_Index=LuaFnCreateMonster(sceneId,Monster.Index+nDec,x+random(5)-random(5),y+random(5)-random(5),27,0,Monster.ScriptID)	--G÷i bóng
		SetCharacterName(sceneId,Monster_Index,Monster.Name)
		SetCharacterTitle(sceneId,Monster_Index,Monster.Title)
	end
	--******************--
	MonsterTalk(sceneId,selfId,"Binh Thánh KÏ Tr§n",x910206_g_Monster_Dialogue[5])
	--******************--
	
end
--**********************************--
--*           Kill All PT          *--
--**********************************--
function x910206_KillAllPT(sceneId,selfId)

	--******************--
	if MonsterAI_GetIntParamByIndex(sceneId,selfId,x910206_g_Status)~=5 then
		return
	end
	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,nHumanId)==1 then
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfid,nHumanId,x910206_g_Impact_One_Hit_Die,0)
		end
	end
	--******************--

end
--**********************************--
--*           Global News          *--
--**********************************--
function x910206_GlobalNews(sceneId,Tips)

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