--Phø bän Binh Thánh KÏ Tr§n
--Tiêu D§t Phong
--Code by Sói

--******************--


x910202_Item_ttpx ={
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

x910202_Item_ttpx_vip ={

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

30010080, --Chân Nguyên Phách
30010081, --Chân Nguyên Tinh Phách
}
x910202_Item_ttpx_vip_rate = 30 -- ty le rot x910202_Item_ttpx_vip



--******************--

--******************--
x910202_g_ScriptId=910202
--******************--
x910202_g_Boss_Name="Tiêu D§t Phong"															--Tên cüa BOSS
--******************--
x910202_g_AttackMode=0																			--TrÕng thái chiªn ð¤u
x910202_g_Status=1																				--TrÕng thái m¤t máu ð¬ thi tri¬n skill
x910202_g_Attack_Status=2																		--TrÕng thái Toàn Phong còn s¯ng không
x910202_g_FengLeiDan_Timer=3																	--Th¶i gian g÷i Phong Lôi ÐÕn
--******************--
x910202_g_Monster_Dialogue=
{																								--L¶i nói cüa Boss
	[1]=x910202_g_Boss_Name.." ðã xu¤t hi®n!",
	[2]="Thiên Ðß¶ng rµng bß¾c ngß½i không ði, ð¸a ngøc vô môn ngß½i lÕi ðªn!",
	[3]="Ðã giªt chªt "..x910202_g_Boss_Name..": 1/1",
	[4]="Hãy hÑng ch¸u tr§n gió kinh hoàng này ði. Xông lên Toàn Phong cüa ta, møc tiêu là %s và %s!",
	[5]="Hãy cho chúng nó th¤y khä nång sinh sän không ng×ng cüa các ngß½i ði!",
}
--******************--
x910202_g_Monster=
{
	["Chun Feng"]		=	{	Index=15011,	Name="Toàn Phong",		ScriptID=-1		},		--Toàn Phong
	["Feng Lei Dan"]	=	{	Index=15016,	Name="Phong Lôi ÐÕn",	ScriptID=-1		},		--Phong Lôi ÐÕn
}
--******************--
x910202_g_Impact_Bind_Magic_Attack=12602														--Hi®u Ñng mi­n d¸ch sát thß½ng Nµi công
x910202_g_Impact_Attack_By_ChunFeng=12604														--Hi®u Ñng phát n± cüa Toàn Phong
--******************--

--**********************************--
--*             On Init            *-- 
--**********************************--
function x910202_OnInit(sceneId,selfId)

	--******************--
	MonsterTalk(sceneId,selfId,"Binh Thánh KÏ Tr§n",x910202_g_Monster_Dialogue[2])				--Câu nói khai chiªn cüa Boss
	x910202_GlobalNews(sceneId,x910202_g_Monster_Dialogue[1])									--Thông báo Boss ðã vào chiªn ð¤u cho toàn th¬ ngß¶i ch½i
	x910202_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--

end
--**********************************--
--*         On Heart Beat          *--
--**********************************--
function x910202_OnHeartBeat(sceneId,selfId,nTick)												--Hàm này s¨ check liên tøc m²i mili giây khi nào Boss còn s¯ng

	--******************--
	if LuaFnIsCharacterLiving(sceneId,selfId)~=1 then											--Nªu Boss ðã chªt thì ng×ng hoÕt ðµng cüa Script
		return
	end
	--******************--
	if MonsterAI_GetIntParamByIndex(sceneId,selfId,x910202_g_AttackMode)==0 then
		return
	end
	--******************--
	if x910202_CheckHaveFengLeiDanLeft(sceneId)==1 then											--Ki¬m tra xem Phong Lôi ÐÕn còn s¯ng không
		local nTime=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910202_g_FengLeiDan_Timer)
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910202_g_FengLeiDan_Timer,nTime-nTick)
		if nTime-nTick<=0 then																	--Nªu ðã sau th¶i gian 30 giây thì tÕo thêm 1 Phong Lôi ÐÕn m¾i
			MonsterAI_SetIntParamByIndex(sceneId,selfId,x910202_g_FengLeiDan_Timer,10000)
			x910202_CreateFengLeiDan(sceneId,selfId)
		end
	end
	--******************--
	if x910202_CheckHaveChunFengLeft(sceneId)==0 and MonsterAI_GetIntParamByIndex(sceneId,selfId,x910202_g_Attack_Status)==1 then--Ki¬m tra xem Toàn Phong còn s¯ng không
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910202_g_Attack_Status,0)
		local x,y=LuaFnGetCopySceneData_Param(sceneId,20),LuaFnGetCopySceneData_Param(sceneId,21)
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,x,x910202_g_Impact_Attack_By_ChunFeng,0)
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,y,x910202_g_Impact_Attack_By_ChunFeng,0)
	end
	--******************--
	x910202_UseMySkill(sceneId,selfId)															--SØ døng kÛ nång
	--******************--

end
--**********************************--
--*        On Enter Combat         *--
--**********************************--
function x910202_OnEnterCombat(sceneId,selfId,enmeyId)

	--******************--
	x910202_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910202_g_AttackMode,1)
	--******************--

end
--**********************************--
--*        On Leave Combat         *--
--**********************************--
function x910202_OnLeaveCombat(sceneId,selfId)

	--******************--
	x910202_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--

end
--**********************************--
--*       On Kill Character        *--
--**********************************--
function x910202_OnKillCharacter(sceneId,selfId,targetId)
	
	--******************--
	--******************--
	
end
--**********************************--
--*             On Die             *--
--**********************************--
function x910202_OnDie(sceneId,selfId,killerId)

	--******************--
	x910202_GlobalNews(sceneId,x910202_g_Monster_Dialogue[3])
	LuaFnSetCopySceneData_Param(sceneId,9,2)
	x910202_DeleteOldMonster(sceneId)
	--******************--
	for i=0,GetNearTeamCount(sceneId,killerId)-1  do
		local nPlayerId=GetNearTeamMember(sceneId,killerId,i)
		AddMonsterDropItem(sceneId,selfId,nPlayerId,x910202_Item_ttpx[random(getn(x910202_Item_ttpx))])
		local ran = random(100)
		if ran < x910202_Item_ttpx_vip_rate then
			AddMonsterDropItem(sceneId,selfId,nPlayerId,x910202_Item_ttpx_vip[random(getn(x910202_Item_ttpx_vip)-1)])
		end
		local Current_Activity_Point=GetMissionData(sceneId,nPlayerId,MD_CURRENT_ACTIVITY_POINT)
		SetMissionData(sceneId,nPlayerId,MD_CURRENT_ACTIVITY_POINT,Current_Activity_Point+5)
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ ðã gia tång 5 ði¬m hoÕt ðµng!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,nPlayerId)
	end
	--******************--

end
--**********************************--
--*          Reset My AI           *--
--**********************************--
function x910202_ResetMyAI(sceneId,selfId)

	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910202_g_AttackMode,0)
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910202_g_Status,0)
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910202_g_Attack_Status,0)
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910202_g_FengLeiDan_Timer,30000)
	x910202_DeleteOldMonster(sceneId)
	--******************--
	
end
--**********************************--
--*       Delete Old Monster       *--
--**********************************--
function x910202_DeleteOldMonster(sceneId)

	--******************--
	for i,Monster in x910202_g_Monster do
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
function x910202_UseMySkill(sceneId,selfId)

	--******************--
	local nStep=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910202_g_Status)
	--******************--
	if GetHp(sceneId,selfId)/GetMaxHp(sceneId,selfId)<=0.85 and nStep==0 then								--Khi Boss còn nØa cµt máu thÑ 3
		x910202_CallChunFeng(sceneId,selfId)																--G÷i Toàn phong
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910202_g_Status,1)										--C§p nh§t thao tác Boss
	elseif GetHp(sceneId,selfId)/GetMaxHp(sceneId,selfId)<=0.70 and nStep==1 then							--Khi Boss còn 2 cµt máu
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x910202_g_Impact_Bind_Magic_Attack,0)	--Boss nh§n trÕng thái mi­n d¸ch nµi công
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910202_g_Status,2)										--C§p nh§t thao tác Boss
	elseif GetHp(sceneId,selfId)/GetMaxHp(sceneId,selfId)<=0.5 and nStep==2 then							--Khi Boss còn nØa cµt máu thÑ 2
		x910202_CallFengLeiDan(sceneId,selfId)																--G÷i Phong lôi ðÕn
		LuaFnCancelSpecificImpact(sceneId,selfId,x910202_g_Impact_Bind_Magic_Attack)						--Hüy trÕng thái mi­n d¸ch nµi công
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910202_g_Status,3)										--C§p nh§t thao tác Boss
	elseif GetHp(sceneId,selfId)/GetMaxHp(sceneId,selfId)<=0.3 and nStep==3 then							--Khi Boss còn 1 cµt máu
		x910202_CallChunFeng(sceneId,selfId)																--G÷i Toàn phong
		x910202_CallFengLeiDan(sceneId,selfId)																--G÷i Phong lôi ðÕn
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910202_g_Status,100)									--C§p nh§t thao tác Boss
	end
	--******************--
	
end
--**********************************--
--*         Call Chun Feng         *--
--**********************************--
function x910202_CallChunFeng(sceneId,selfId)

	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,8)
	--******************--
	local x,y=GetWorldPos(sceneId,selfId)
	--******************--
	for i=1,2 do
		local Monster_Index=LuaFnCreateMonster(sceneId,x910202_g_Monster["Chun Feng"].Index+nDec,x+random(5)-random(5),y+random(5)-random(5),27,0,x910202_g_Monster["Chun Feng"].ScriptID)	--G÷i Toàn phong
		SetCharacterName(sceneId,Monster_Index,x910202_g_Monster["Chun Feng"].Name)
		SetCharacterDieTime(sceneId,Monster_Index,20000)
	end
	--******************--
	local HumanList={}
	local Count=0
	local nHumanNum=LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanNum-1  do
		local PlayerId=LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,PlayerId)==1 and LuaFnIsCanDoScriptLogic(sceneId,PlayerId)==1 and LuaFnIsCharacterLiving(sceneId,PlayerId)==1 then
			Count=Count+1
			HumanList[Count]=PlayerId
		end
	end
	--******************--
	local x,y=HumanList[random(Count)],HumanList[random(Count)]
	--******************--
	LuaFnSetCopySceneData_Param(sceneId,20,x)
	LuaFnSetCopySceneData_Param(sceneId,21,y)
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910202_g_Attack_Status,1)
	--******************--
	local str=format(x910202_g_Monster_Dialogue[4],GetName(sceneId,x),GetName(sceneId,y))
	--******************--
	MonsterTalk(sceneId,selfId,"Binh Thánh KÏ Tr§n",str)
	--******************--
	
end
--**********************************--
--*       Call Feng Lei Dan        *--
--**********************************--
function x910202_CallFengLeiDan(sceneId,selfId)

	--******************--
	for i=1,10 do
		x910202_CreateFengLeiDan(sceneId,selfId)
	end
	--******************--
	MonsterTalk(sceneId,selfId,"Binh Thánh KÏ Tr§n",x910202_g_Monster_Dialogue[5])
	--******************--
	
end
--**********************************--
--*      Create Feng Lei Dan       *--
--**********************************--
function x910202_CreateFengLeiDan(sceneId,selfId)

	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,8)
	--******************--
	local x,y=GetWorldPos(sceneId,selfId)
	local Monster_Index=LuaFnCreateMonster(sceneId,x910202_g_Monster["Feng Lei Dan"].Index+nDec,x+random(5)-random(5),y+random(5)-random(5),27,0,x910202_g_Monster["Feng Lei Dan"].ScriptID)--G÷i Phong lôi ðÕn
	SetCharacterName(sceneId,Monster_Index,x910202_g_Monster["Feng Lei Dan"].Name)
	--******************--
	
end
--**********************************--
--*    Check Have Monster Left     *--
--**********************************--
function x910202_CheckHaveFengLeiDanLeft(sceneId)
	
	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==x910202_g_Monster["Feng Lei Dan"].Name then
			return 1
		end
	end
	--******************--
	return 0
	--******************--
	
end
--**********************************--
--*    Check Have Monster Left     *--
--**********************************--
function x910202_CheckHaveChunFengLeft(sceneId)
	
	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==x910202_g_Monster["Chun Feng"].Name then
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
function x910202_GlobalNews(sceneId,Tips)

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