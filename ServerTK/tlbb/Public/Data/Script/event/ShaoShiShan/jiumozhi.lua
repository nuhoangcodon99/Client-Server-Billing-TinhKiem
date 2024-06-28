--Thiªu Th¤t S½n
--Cßu Ma Trí
--Author: Hoàng Steven

--******************--

x910162_Item_ttpx ={
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
x910162_Item_ttpx_rate = 25 -- ty le rot x910162_Item_ttpx

x910162_Item_ttpx_vip ={
30501361,--Công lñc ðan
30503134, --kim thoa (duc lo)
30503135, --Th¶i trang ph¯i sÑc ði¬m xuyªt phù
30503136, --Th¶i trang ph¯i sÑc thanh tr× phù
30503137, --Th¶i trang ph¯i sÑc gia công phù

20503061, --Trang b¸ Tinh thông phù
20503061, --Trang b¸ Tinh thông phù
20503061, --Trang b¸ Tinh thông phù
}
x910162_Item_ttpx_vip_rate = 10 -- ty le rot x910162_Item_ttpx_vip

--******************--

--******************--
x910162_g_ScriptId=910162
--******************--
x910162_g_Boss_Name="Cßu Ma Trí"																--Tên cüa BOSS
--******************--
x910162_g_Skill_Index=1013																		--KÛ nång Höa Di®m Ðao
x910162_g_Skill_CD=15000																		--Th¶i gian lãnh khß¾c Höa Di®m Ðao
--******************--
x910162_g_Impact_Die=9780																		--Impact 1 hit died
x910162_g_Impact_Stronger=9787																	--Ph¤n lñc nh¤t kích
x910162_g_Impact_LostHP=9785																	--Impact lost HP
--******************--
x910162_g_Disciples_Called_Time=30000															--Th¶i gian lãnh khß¾c g÷i tín ð°
--******************--
x910162_g_Disciples=
{
	[1]=	{	Index=14265,	Name="Tín ð°",	Pos_X=118,	Pos_Y=164	},
	[2]=	{	Index=14265,	Name="Tín ð°",	Pos_X=130,	Pos_Y=164	},
	[3]=	{	Index=14265,	Name="Tín ð°",	Pos_X=142,	Pos_Y=164	},
}
--******************--
x910162_g_Skill_Timer=1																			--Th¶i gian kÛ nång
x910162_g_Call_Disciples_Timer=2																--Th¶i gian g÷i Tín Ð°
x910162_g_AttackMode=3																			--TrÕng thái chiªn ð¤u
--******************--
x910162_g_Patrol_Index=0																		--TrÕng thái di chuy¬n
--******************--
x910162_g_Circle={	Index=1021,	Pos_X=130,	Pos_Y=168	}										--Ðài hiªn thân
--******************--
x910162_g_Monster_Dialogue={																	--L¶i nói cüa Boss
	[1]=x910162_g_Boss_Name.." ðã xu¤t hi®n!",
	[2]="H×m... M¤y tên ðáng ghét này... Các ngß½i ðã xúc phÕm ðªn ti¬u tång, l¥n này ti¬u tång s¨ cho các ngß½i nªm mùi!",
	[3]="M¤y tín ð° các ngß½i còn ch¶ gì næa. Mau qua ðây. Ta phäi dùng máu cüa các ngß½i ð¬ phª bö công lñc cüa lû kh¯n này!",
	[4]="ÐÕi Luân Minh Vß½ng, hãy ban cho ti¬u nhân cuµc s¯ng vînh cØu!",
	[5]="Nªm mùi Höa Di®m Ðao ðây!",
	[6]="Ðã giªt chªt "..x910162_g_Boss_Name..": 1/1",
}
--******************--

--**********************************--
--*             On Init            *-- 
--**********************************--
function x910162_OnInit(sceneId,selfId)

	--******************--
	MonsterTalk(sceneId,selfId,"",x910162_g_Monster_Dialogue[2])								--Câu nói khai chiªn cüa Boss
	x910162_GlobalNews(sceneId,x910162_g_Monster_Dialogue[1])									--Thông báo Boss ðã vào chiªn ð¤u cho toàn th¬ ngß¶i ch½i
	x910162_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--

end
--**********************************--
--*         On Heart Beat          *--
--**********************************--
function x910162_OnHeartBeat(sceneId,selfId,nTick)												--Hàm này s¨ check liên tøc m²i mili giây khi nào Boss còn s¯ng

	--******************--
	if LuaFnIsCharacterLiving(sceneId,selfId)~=1 then											--Nªu Boss ðã chªt thì ng×ng hoÕt ðµng cüa Script
		return
	end
	--******************--
	if MonsterAI_GetIntParamByIndex(sceneId,selfId,x910162_g_AttackMode)==0 then
		return
	end
	--******************--
	x910162_CheckMyDisciplesPos(sceneId,selfId)													--Ki¬m tra tín ð° có ði vào vòng tròn không
	--******************--
	x910162_UseMySkill(sceneId,selfId,nTick)													--SØ døng kÛ nång
	x910162_CallMyDisciples(sceneId,selfId,nTick)												--G÷i Tín Ð°
	--******************--

end
--**********************************--
--*        On Enter Combat         *--
--**********************************--
function x910162_OnEnterCombat(sceneId,selfId,enmeyId)

	--******************--
	x910162_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910162_g_AttackMode,1)
	--******************--

end
--**********************************--
--*        On Leave Combat         *--
--**********************************--
function x910162_OnLeaveCombat(sceneId,selfId)

	--******************--
	x910162_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--

end
--**********************************--
--*       On Kill Character        *--
--**********************************--
function x910162_OnKillCharacter(sceneId,selfId,targetId)
	
	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if nHumanId==targetId then
			local PlayerName=GetName(sceneId,targetId)
			MonsterTalk(sceneId,selfId,"","Ha ha... Mµt tên kh¯n ðã gøc ngã... Ha ha...")		--Boss chª di­u ngß¶i ch½i b¸ giªt
		end
	end
	--******************--
	
end
--**********************************--
--*             On Die             *--
--**********************************--
function x910162_OnDie(sceneId,selfId,killerId)

	--******************--
	x910162_DeleteMyDisciples(sceneId)															--Xóa t¤t cä Tín ð°
	--******************--
	x910162_GlobalNews(sceneId,x910162_g_Monster_Dialogue[6])
	--******************--
	LuaFnSetCopySceneData_Param(sceneId,8,2)
	--******************--
	for i=0,GetNearTeamCount(sceneId,killerId)-1  do
		local ran = random(100)
		if ran < x910162_Item_ttpx_rate then
			AddMonsterDropItem(sceneId,selfId,GetNearTeamMember(sceneId,killerId,i),x910162_Item_ttpx[random(getn(x910162_Item_ttpx))])
		end
		local ran = random(100)
		if ran < x910162_Item_ttpx_vip_rate then
			AddMonsterDropItem(sceneId,selfId,GetNearTeamMember(sceneId,killerId,i),x910162_Item_ttpx_vip[random(getn(x910162_Item_ttpx_vip)-1)])
		end
		local nPlayerId=GetNearTeamMember(sceneId,killerId,i)
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
function x910162_ResetMyAI(sceneId,selfId)

	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910162_g_Skill_Timer,x910162_g_Skill_CD)		--Th¶i gian kÛ nång
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910162_g_Call_Disciples_Timer,x910162_g_Disciples_Called_Time)		--Th¶i gian kÛ nång
	--******************--
	x910162_DeleteMyDisciples(sceneId)															--Xóa t¤t cä Tín ð°
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910162_g_AttackMode,0)
	--******************--
	
end
--**********************************--
--*      Delete My Disciples       *--
--**********************************--
function x910162_DeleteMyDisciples(sceneId)

	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==x910162_g_Disciples[1].Name then
			SetCharacterDieTime(sceneId,MonsterId,100)
		end
	end
	--******************--
	
end
--**********************************--
--*     Check My Disciples Pos     *--
--**********************************--
function x910162_CheckMyDisciplesPos(sceneId,selfId)

	--******************--
	local nMonsterNum=GetMonsterCount(sceneId)
	for i=0,nMonsterNum-1 do
		local MonsterId=GetMonsterObjID(sceneId,i)
		if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==x910162_g_Disciples[1].Name then
			local x,y=GetWorldPos(sceneId,MonsterId)
			if floor(sqrt((x-x910162_g_Circle.Pos_X)*(x-x910162_g_Circle.Pos_X)+(y-x910162_g_Circle.Pos_Y)*(y-x910162_g_Circle.Pos_Y)))<=1 then
				LuaFnSendSpecificImpactToUnit(sceneId,MonsterId,MonsterId,MonsterId,x910162_g_Impact_Die,0)--Tín ð° thª mÕng
				LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,x910162_g_Impact_Stronger,0)	--Cßu Ma Trí tång công lñc
				local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
				for i=0,nHumanCount-1 do
					local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
					if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 then
						LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,nHumanId,x910162_g_Impact_LostHP,0)
					end
				end
			end
		end
	end
	--******************--
	
end
--**********************************--
--*       Call My Disciples        *--
--**********************************--
function x910162_CallMyDisciples(sceneId,selfId,nTick)

	--******************--
	local Time_Skill=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910162_g_Call_Disciples_Timer)		--L¤y th¶i gian lãnh khß¾c kÛ nång cüa Boss
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910162_g_Call_Disciples_Timer,Time_Skill-nTick)		--C§p nh§t th¶i gian lãnh khß¾c cüa kÛ nång
	if Time_Skill<=0 then																				--Ðã ðªn gi¶ dùng kÛ nång
		x910162_CallDisciples(sceneId,selfId)															--SØ døng kÛ nång
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910162_g_Call_Disciples_Timer,x910162_g_Disciples_Called_Time)	--C§p nh§t lÕi th¶i gian lãnh khß¾c cüa kÛ nång
	end
	--******************--
	
end
--**********************************--
--*         Call Disciples         *--
--**********************************--
function x910162_CallDisciples(sceneId,selfId)

	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,9)													--L¤y level phø bän
	--******************--
	MonsterTalk(sceneId,selfId,"",x910162_g_Monster_Dialogue[3])
	--******************--
	for i=1,getn(x910162_g_Disciples) do
		local Monster_Index=LuaFnCreateMonster(sceneId,x910162_g_Disciples[i].Index+nDec,x910162_g_Disciples[i].Pos_X,x910162_g_Disciples[i].Pos_Y,10,0,-1)--G÷i Tín ð°
		SetCharacterName(sceneId,Monster_Index,x910162_g_Disciples[i].Name)
		SetPatrolId(sceneId,Monster_Index,x910162_g_Patrol_Index)										--Thiªp l§p trÕng thái di chuy¬n
		MonsterTalk(sceneId,Monster_Index,"",x910162_g_Monster_Dialogue[4])
	end
	--******************--
	
end
--**********************************--
--*          Use My Skill          *--
--**********************************--
function x910162_UseMySkill(sceneId,selfId,nTick)

	--******************--
	local Time_Skill=MonsterAI_GetIntParamByIndex(sceneId,selfId,x910162_g_Skill_Timer)			--L¤y th¶i gian lãnh khß¾c kÛ nång cüa Boss
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x910162_g_Skill_Timer,Time_Skill-nTick)			--C§p nh§t th¶i gian lãnh khß¾c cüa kÛ nång
	if Time_Skill<=0 then																		--Ðã ðªn gi¶ dùng kÛ nång
		x910162_UseSkill(sceneId,selfId)														--SØ døng kÛ nång
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x910162_g_Skill_Timer,x910162_g_Skill_CD)	--C§p nh§t lÕi th¶i gian lãnh khß¾c cüa kÛ nång
	end
	--******************--
	
end
--**********************************--
--*           Use Skill            *--
--**********************************--
function x910162_UseSkill(sceneId,selfId)

	--******************--
	local x,y=GetWorldPos(sceneId,selfId)														--L¤y t÷a ðµ cüa Boss
	LuaFnUnitUseSkill(sceneId,selfId,x910162_g_Skill_Index,x,y,0,1)								--Boss sØ døng kÛ nång
	--******************--
	
end
--**********************************--
--*           Global News          *--
--**********************************--
function x910162_GlobalNews(sceneId,Tips)

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
