--Phø bän Binh Thánh KÏ Tr§n
--Gia Lu§t Di­m
--Code by Sói

--******************--


x910205_Item_ttpx ={
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

x910205_Item_ttpx_vip ={

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
x910205_Item_ttpx_vip_rate = 50 -- ty le rot x910205_Item_ttpx_vip



--******************--

--******************--
x910205_g_ScriptId=910205
--******************--
x910205_g_Boss_Name="Gia Lu§t Di­m"																--Tên cüa BOSS
--******************--
x910205_g_AttackMode=0																			--TrÕng thái chiªn ð¤u
x910205_g_Status=1																				--TrÕng thái m¤t máu ð¬ thi tri¬n skill
--******************--
x910205_g_Skill_Index=1685																		--KÛ nång Thiên Höa Nhiên Khung
--******************--
x910205_g_Monster_Dialogue=
{																								--L¶i nói cüa Boss
	[1]=x910205_g_Boss_Name.." ðã xu¤t hi®n!",
	[2]="Các ngß½i mu¯n nªm mùi Höa Di®m Chß¾c Thân, bän cô nß½ng cûng không nÞ lòng nào t× ch¯i!",
	[3]="Ðã giªt chªt "..x910205_g_Boss_Name..": 1/1",
	[4]="Höa Di®m Ngßu cüa ta, ðã ðªn lúc ngß½i hi®n thân giúp bän cô nß½ng r°i, hãy giªt chúng cho ta!",
}
--******************--
x910205_g_Monster={	Index=15076,	Name="Höa Di®m Ngßu",	ScriptID=-1		}					--Höa Di®m Ngßu
--******************--
x910205_g_Impact_Increase_Attack=12609															--Hi®u Ñng tång công kích cho Höa Di®m Ngßu
x910205_g_Impact_Increase_CritAttack=12610														--Hi®u Ñng chính xác và hµi công kích cho Höa Di®m Ngßu
--******************--

--**********************************--
--*             On Init            *-- 
--**********************************--
function x910205_OnInit(sceneId,selfId)

	--******************--
	MonsterTalk(sceneId,selfId,"Binh Thánh KÏ Tr§n",x910205_g_Monster_Dialogue[2])				--Câu nói khai chiªn cüa Boss
	x910205_GlobalNews(sceneId,x910205_g_Monster_Dialogue[1])									--Thông báo Boss ðã vào chiªn ð¤u cho toàn th¬ ngß¶i ch½i
	x910205_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--

end
--**********************************--
--*         On Heart Beat          *--
--**********************************--
function x910205_OnHeartBeat(sceneId,selfId,nTick)												--Hàm này s¨ check liên tøc m²i mili giây khi nào Boss còn s¯ng

	--******************--
	if LuaFnIsCharacterLiving(sceneId,selfId)~=1 then											--Nªu Boss ðã chªt thì ng×ng hoÕt ðµng cüa Script
		return
	end
	--******************--
	if MonsterAI_GetIntParamByIndex(sceneId,selfId,x910205_g_AttackMode)==0 then
		return
	end
	--******************--
	x910205_UseMySkill(sceneId,selfId)															--SØ døng kÛ nång
	--******************--

end
--**********************************--
--*        On Enter Combat         *--
--**********************************--
function x910205_OnEnterCombat(sceneId,selfId,enmeyId)

	--******************--
	x910205_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910205_g_AttackMode,1)
	--******************--

end
--**********************************--
--*        On Leave Combat         *--
--**********************************--
function x910205_OnLeaveCombat(sceneId,selfId)

	--******************--
	x910205_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--

end
--**********************************--
--*       On Kill Character        *--
--**********************************--
function x910205_OnKillCharacter(sceneId,selfId,targetId)
	
	--******************--
	--******************--
	
end
--**********************************--
--*             On Die             *--
--**********************************--
function x910205_OnDie(sceneId,selfId,killerId)

	--******************--
	x910205_GlobalNews(sceneId,x910205_g_Monster_Dialogue[3])
	--******************--
	LuaFnSetCopySceneData_Param(sceneId,9,5)													--C§p nh§t bß¾c hoÕt ðµng phø bän
	--******************--
	x910205_DeleteOldMonster(sceneId)
	--******************--
	for i=0,GetNearTeamCount(sceneId,killerId)-1  do
		local nPlayerId=GetNearTeamMember(sceneId,killerId,i)
		AddMonsterDropItem(sceneId,selfId,nPlayerId,x910205_Item_ttpx[random(getn(x910205_Item_ttpx))])
		local ran = random(100)
		if ran < x910205_Item_ttpx_vip_rate then
			AddMonsterDropItem(sceneId,selfId,nPlayerId,x910205_Item_ttpx_vip[random(getn(x910205_Item_ttpx_vip))])
		end
		local Current_Activity_Point=GetMissionData(sceneId,nPlayerId,MD_CURRENT_ACTIVITY_POINT)
		SetMissionData(sceneId,nPlayerId,MD_CURRENT_ACTIVITY_POINT,Current_Activity_Point+25)
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ ðã gia tång 25 ði¬m hoÕt ðµng!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,nPlayerId)
	end
	--******************--
	
end
--**********************************--
--*          Reset My AI           *--
--**********************************--
function x910205_ResetMyAI(sceneId,selfId)

	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910205_g_AttackMode,0)
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910205_g_Status,0)
	x910205_DeleteOldMonster(sceneId)
	--******************--
	
end
--**********************************--
--*       Delete Old Monster       *--
--**********************************--
function x910205_DeleteOldMonster(sceneId)

	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==x910205_g_Monster.Name then
			SetCharacterDieTime(sceneId,MonsterId,100)
		end
	end
	--******************--
	
end
--**********************************--
--*          Use My Skill          *--
--**********************************--
function x910205_UseMySkill(sceneId,selfId)

	--******************--
	local nStep=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910205_g_Status)
	--******************--
	if GetHp(sceneId,selfId)/GetMaxHp(sceneId,selfId)<=0.85 and nStep==0 then								--Khi Boss còn 85% máu
		local x,y=GetWorldPos(sceneId,selfId)
		LuaFnUnitUseSkill(sceneId,selfId,x910205_g_Skill_Index,x,y,0,1)										--Dùng kÛ nång Thiên Höa Nhiên Khung
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910205_g_Status,1)										--C§p nh§t thao tác Boss
	elseif GetHp(sceneId,selfId)/GetMaxHp(sceneId,selfId)<=0.65 and nStep==1 then							--Khi Boss còn 65% máu
		x910205_CallMyPet(sceneId,selfId)																			--G÷i Höa Di®m Ngßu
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910205_g_Status,2)										--C§p nh§t thao tác Boss
	elseif GetHp(sceneId,selfId)/GetMaxHp(sceneId,selfId)<=0.35 and nStep==2 then							--Khi Boss còn 35% máu
		local x,y=GetWorldPos(sceneId,selfId)
		LuaFnUnitUseSkill(sceneId,selfId,x910205_g_Skill_Index,x,y,0,1)										--Dùng kÛ nång Thiên Höa Nhiên Khung
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910205_g_Status,3)										--C§p nh§t thao tác Boss
	elseif GetHp(sceneId,selfId)/GetMaxHp(sceneId,selfId)<=0.15 and nStep==3 then							--Khi Boss còn 15% máu
		local x,y=GetWorldPos(sceneId,selfId)
		LuaFnUnitUseSkill(sceneId,selfId,x910205_g_Skill_Index,x,y,0,1)										--Dùng kÛ nång Thiên Höa Nhiên Khung
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910205_g_Status,100)									--C§p nh§t thao tác Boss
	end
	--******************--
	
end
--**********************************--
--*          Call My Pet           *--
--**********************************--
function x910205_CallMyPet(sceneId,selfId)

	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,8)
	--******************--
	local x,y=GetWorldPos(sceneId,selfId)
	local Monster_Index=LuaFnCreateMonster(sceneId,x910205_g_Monster.Index+nDec,x+random(5)-random(5),y+random(5)-random(5),27,21,x910205_g_Monster.ScriptID)	--G÷i Höa Di®m Ngßu
	SetCharacterName(sceneId,Monster_Index,x910205_g_Monster.Name)
	SetCharacterDieTime(sceneId,Monster_Index,300000)
	--******************--
	local nHuman={}
	local Count=0
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 then
			Count=Count+1
			nHuman[Count]=nHumanId
		end
	end
	--******************--
	local z=nHuman[random(Count)]
	LuaFnSetCopySceneData_Param(sceneId,22,z)
	--******************--
	local str=format(x910205_g_Monster_Dialogue[4])
	--******************--
	MonsterTalk(sceneId,selfId,"Binh Thánh KÏ Tr§n",str)
	--******************--
	LuaFnSendSpecificImpactToUnit(sceneId,Monster_Index,Monster_Index,Monster_Index,x910205_g_Impact_Increase_Attack,0)
	LuaFnSendSpecificImpactToUnit(sceneId,Monster_Index,Monster_Index,Monster_Index,x910205_g_Impact_Increase_CritAttack,0)
	--******************--
	
end
--**********************************--
--*           Global News          *--
--**********************************--
function x910205_GlobalNews(sceneId,Tips)

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