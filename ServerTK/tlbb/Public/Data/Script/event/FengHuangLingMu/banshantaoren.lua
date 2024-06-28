--Phø bän Phøng Hoàng Lång Mµ
--Bàn S½n ÐÕo Nhân
--Code by Sói

--******************--
x930511_g_ScriptId=930511
--******************--
x930511_g_Gift={																				--Ph¥n thß·ng
	50131002,	--TØ Vi Tinh Quang (C¤p 1)
	50131002,	--TØ Vi Tinh Quang (C¤p 1)
	50131002,	--TØ Vi Tinh Quang (C¤p 1)
	50131001,	--Bång Lam Lßu Vân (C¤p 1)
	50131001,	--Bång Lam Lßu Vân (C¤p 1)
	50131001,	--Bång Lam Lßu Vân (C¤p 1)
	50131005,	--Hoa LÕc H°ng Tr¥n (C¤p 1)
	50131005,	--Hoa LÕc H°ng Tr¥n (C¤p 1)
	50131005,	--Hoa LÕc H°ng Tr¥n (C¤p 1)
	50131003,	--Thúy Ng÷c Tinh Tr¥n (C¤p 1)
	50131003,	--Thúy Ng÷c Tinh Tr¥n (C¤p 1)
	50131003,	--Thúy Ng÷c Tinh Tr¥n (C¤p 1)
	50131004,	--Tranh Änh Nhß Mµng (C¤p 1)
	50131004,	--Tranh Änh Nhß Mµng (C¤p 1)
	50131004,	--Tranh Änh Nhß Mµng (C¤p 1)
	30503134,	--Kim thoa
	30010080,	--Chân nguyên phách
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503062,	--Ly höa
	20503061,	--Trang b¸ tinh thông phù
}
--******************--
x930511_g_Boss_Name="Bàn S½n ÐÕo Nhân"															--Tên cüa BOSS
--******************--
x930511_g_AttackMode=0																			--TrÕng thái chiªn ð¤u
x930511_g_TrapTimer=1																			--Th¶i gian còn lÕi ð¬ kích n± bom
x930511_g_SkillTimer=2																			--Th¶i gian g÷i ra bom
x930511_g_BoomActived=3																			--G÷i bom chßa
--******************--
x930511_g_Monster_Dialogue=
{																								--L¶i nói cüa Boss
	[1]=x930511_g_Boss_Name.." ðã xu¤t hi®n!",
	[2]="Nhæng kë nào dám qu¤y r¥y sñ yên bình cüa Phøng Hoàng Lång Mµ, kë ðó phäi chªt!",
	[3]="Ðã giªt chªt "..x930511_g_Boss_Name..": 1/1",
	[4]="Hãy nªm mùi cüa Nhiên Thiêu BÕo ÐÕn và Cao BÕo ÐÕn ði!",
}
--******************--
x930511_g_Monster=
{
	{	Index=13777,	Name="Nhiên Thiêu BÕo ÐÕn",	Impact=12602	},							--Nhiên Thiêu BÕo ÐÕn
	{	Index=13768,	Name="Cao BÕo ÐÕn",			Impact=12604	},							--Cao BÕo ÐÕn
}
--******************--
x930511_g_Trap_Exsit_Time=10000																	--Th¶i gian t°n tÕi bom (Sau th¶i gian này bom s¨ phát n± nªu không b¸ phá hüy)
x930511_g_Skill_Time=20000																		--Th¶i gian giæa 2 l¥n g÷i bom
--******************--

--**********************************--
--*             On Init            *-- 
--**********************************--
function x930511_OnInit(sceneId,selfId)

	--******************--
	MonsterTalk(sceneId,selfId,"Phøng Hoàng Lång Mµ",x930511_g_Monster_Dialogue[2])				--Câu nói khai chiªn cüa Boss
	x930511_GlobalNews(sceneId,x930511_g_Monster_Dialogue[1])									--Thông báo Boss ðã vào chiªn ð¤u cho toàn th¬ ngß¶i ch½i
	x930511_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--

end
--**********************************--
--*         On Heart Beat          *--
--**********************************--
function x930511_OnHeartBeat(sceneId,selfId,nTick)												--Hàm này s¨ check liên tøc m²i mili giây khi nào Boss còn s¯ng

	--******************--
	if LuaFnIsCharacterLiving(sceneId,selfId)~=1 then											--Nªu Boss ðã chªt thì ng×ng hoÕt ðµng cüa Script
		return
	end
	--******************--
	if MonsterAI_GetIntParamByIndex(sceneId,selfId,x930511_g_AttackMode)==0 then
		return
	end
	--******************--
	x930511_CheckMyBoom(sceneId,selfId,nTick)													--Ki¬m tra xem có kích hoÕt bom không
	--******************--
	x930511_UseMySkill(sceneId,selfId,nTick)													--SØ døng kÛ nång
	--******************--

end
--**********************************--
--*        On Enter Combat         *--
--**********************************--
function x930511_OnEnterCombat(sceneId,selfId,enmeyId)

	--******************--
	x930511_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x930511_g_AttackMode,1)
	--******************--

end
--**********************************--
--*        On Leave Combat         *--
--**********************************--
function x930511_OnLeaveCombat(sceneId,selfId)

	--******************--
	x930511_ResetMyAI(sceneId,selfId)															--Set lÕi các thuµc tính cho Boss
	--******************--

end
--**********************************--
--*       On Kill Character        *--
--**********************************--
function x930511_OnKillCharacter(sceneId,selfId,targetId)
	
	--******************--
	--******************--
	
end
--**********************************--
--*             On Die             *--
--**********************************--
function x930511_OnDie(sceneId,selfId,killerId)

	--******************--
	x930511_GlobalNews(sceneId,x930511_g_Monster_Dialogue[3])
	LuaFnSetCopySceneData_Param(sceneId,9,2)
	x930511_DeleteOldMonster(sceneId)
	--******************--
	for i=0,GetNearTeamCount(sceneId,killerId)-1 do
		local nPlayerId=GetNearTeamMember(sceneId,killerId,i)
		for i=1,random(5) do
			AddMonsterDropItem(sceneId,selfId,nPlayerId,x930511_g_Gift[random(getn(x930511_g_Gift))])
		end
		local Current_Activity_Point=GetMissionData(sceneId,nPlayerId,MD_CURRENT_ACTIVITY_POINT)
		SetMissionData(sceneId,nPlayerId,MD_CURRENT_ACTIVITY_POINT,Current_Activity_Point+10)
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ ðã gia tång 10 ði¬m hoÕt ðµng!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,nPlayerId)
	end
	--******************--
	
end
--**********************************--
--*          Reset My AI           *--
--**********************************--
function x930511_ResetMyAI(sceneId,selfId)

	--******************--
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x930511_g_AttackMode,0)
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x930511_g_SkillTimer,x930511_g_Skill_Time)
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x930511_g_TrapTimer,x930511_g_Trap_Exsit_Time)
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x930511_g_BoomActived,0)
	x930511_DeleteOldMonster(sceneId)
	--******************--
	
end
--**********************************--
--*       Delete Old Monster       *--
--**********************************--
function x930511_DeleteOldMonster(sceneId)

	--******************--
	for i,Monster in x930511_g_Monster do
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
--*         Check My Boom          *--
--**********************************--
function x930511_CheckMyBoom(sceneId,selfId,nTick)

	--******************--
	if MonsterAI_GetIntParamByIndex(sceneId,selfId,x930511_g_BoomActived)==0 then						--Chßa g÷i ra boom
		return
	end
	--******************--
	local nTime=MonsterAI_GetIntParamByIndex(sceneId,selfId,x930511_g_TrapTimer)
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x930511_g_TrapTimer,nTime-nTick)
	--******************--
	if nTime-nTick<=0 then
		x930511_ActiveMyBoom(sceneId)
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x930511_g_TrapTimer,x930511_g_Trap_Exsit_Time)
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x930511_g_BoomActived,0)
	end
	--******************--
	
end
--**********************************--
--*         Active My Boom         *--
--**********************************--
function x930511_ActiveMyBoom(sceneId)

	--******************--
	for i,Monster in x930511_g_Monster do
		local nMonsterNum=GetMonsterCount(sceneId)
		for i=0,nMonsterNum-1 do
			local MonsterId=GetMonsterObjID(sceneId,i)
			if LuaFnIsCharacterLiving(sceneId,MonsterId)==1 and GetName(sceneId,MonsterId)==Monster.Name then	
				local x,y=GetWorldPos(sceneId,MonsterId)
				local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)								--Ki¬m tra ngß¶i ch½i có ðÑng g¥n bom không
				for i=0,nHumanCount-1 do
					local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
					local x1,y1=GetWorldPos(sceneId,nHumanId)
					if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 and floor(sqrt((x-x1)*(x-x1)+(y-y1)*(y-y1)))<=5 then
						LuaFnSendSpecificImpactToUnit(sceneId,MonsterId,MonsterId,nHumanId,Monster.Impact)
						for i=0,9 do																	--Ki¬m tra các ô trân thú cüa ngß¶i ch½i xem có trân thú nào ðang xu¤t chiªn
							local High,Low=LuaFnGetPetGUID(sceneId,nHumanId,i)
							local Pet_Index=LuaFnGetPetObjIdByGUID(sceneId,nHumanId,High,Low)								
							if Pet_Index~=-1 and Pet_Index then											--Nªu trân thú này ðang xu¤t chiªn
								LuaFnSendSpecificImpactToUnit(sceneId,MonsterId,MonsterId,Pet_Index,Monster.Impact)
							end
						end
					end
				end
				LuaFnSendSpecificImpactToUnit(sceneId,MonsterId,MonsterId,MonsterId,12602)
				SetCharacterDieTime(sceneId,MonsterId,100)
			end
		end
	end
	--******************--
	
end
--**********************************--
--*          Use My Skill          *--
--**********************************--
function x930511_UseMySkill(sceneId,selfId,nTick)

	--******************--
	local nTime=MonsterAI_GetIntParamByIndex(sceneId,selfId,x930511_g_SkillTimer)
	MonsterAI_SetIntParamByIndex(sceneId,selfId,x930511_g_SkillTimer,nTime-nTick)
	--******************--
	if nTime-nTick<=0 then
		x930511_CallMyBoom(sceneId)
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x930511_g_SkillTimer,x930511_g_Skill_Time)
		MonsterAI_SetIntParamByIndex(sceneId,selfId,x930511_g_BoomActived,1)
	end
	--******************--
	
end
--**********************************--
--*          Call My Boom          *--
--**********************************--
function x930511_CallMyBoom(sceneId)

	--******************--
	local nDec=LuaFnGetCopySceneData_Param(sceneId,8)													--L¤y c¤p ðµ phø bän
	--******************--
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0,nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
		if LuaFnIsObjValid(sceneId,nHumanId)==1 and LuaFnIsCanDoScriptLogic(sceneId,nHumanId)==1 and LuaFnIsCharacterLiving(sceneId,nHumanId)==1 then
			local nRan=random(getn(x930511_g_Monster))
			local x,y=GetWorldPos(sceneId,nHumanId)
			local Monster_Index=LuaFnCreateMonster(sceneId,x930511_g_Monster[nRan].Index+nDec,x,y,3,0,-1)	--Kh·i tÕo Bom
			SetCharacterName(sceneId,Monster_Index,x930511_g_Monster[nRan].Name)
		end
	end
	--******************--
	
end
--**********************************--
--*           Global News          *--
--**********************************--
function x930511_GlobalNews(sceneId,Tips)

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